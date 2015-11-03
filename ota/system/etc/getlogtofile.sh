#!/system/bin/sh
######################
# Copyright (C) 2011 by ZTE
#####################
#Rewrite this file from old getlogtofile.sh by yangyulin 20111108
#upgrade to log2.0 to support log setting by system properties by yangyulin 20120814
#[in]persist.sys.ztelog.autolocate    1 indicates saving log to /sdcard/logs if it presents, otherwise /data/local/logs
#                                     0 force locating /data/local/logs 
#                                     [default:1]
#[in]persist.sys.ztelog.mode          "simple" indicates no compressing logs when arrives max rotating cnt. 
#                                     "smart" indicates forcing no compressing on device and compressing on sdcard  
#                                     "complex", compressing         
#                                     [default: "smart"]
#[in]persist.sys.ztelog.prebootcnt    log count for previous boots
#                                     [default:5]
#[in]persist.sys.ztelog.capacity      max size, unit is byte, maxium size for all logs, we will try to arrive
#                                     limit, and at the same time we use FIFO principle to delete
#                                     the oldest log.
#[in]persist.sys.ztelog.packsize      we must split the logs to proper sized packages, otherwise 
#                                     if we arrive maxsize, it's difficult to delete oldest log.
#[in]persist.sys.ztelog.rotatesize    like "512k", unit byte, when current file arrive rotsize it will trigger a rotating.
#[in]persist.sys.ztelog.rotatenum     max rotating file number, when the same kind file's num arrive rotnum, they 
#                                     will be compressed into a package. 
#[in]persist.sys.ztelog.rotatesize_k  k for kernel
#[in]persist.sys.ztelog.rotatenum_k   k for kernel 
#[in]persist.sys.ztelog.rotatesize_m  m for main
#[in]persist.sys.ztelog.rotatenum_m   m for main 
#[in]persist.sys.ztelog.rotatesize_r  r for radio
#[in]persist.sys.ztelog.rotatenum_r   r for radio 
#[in]persist.sys.ztelog.rotatesize_e  e for event
#[in]persist.sys.ztelog.rotatenum_e   e for event
#[in]persist.sys.ztelog.rotatesize_s  s for system
#[in]persist.sys.ztelog.rotatenum_s   s for system
# 

compresslog=1
autolocate=0
LOGDIR=/data/local/log
LNU=5
KROTNUM=17
KROTSIZE=512k
tosdcard=0

function getkernelrotatenum()
{
    kernelrotatenum=$(getprop persist.sys.ztelog.rotatenum_k)
    if [ ! -z $kernelrotatenum ] ; then
        echo $kernelrotatenum
    else
        kernelrotatenum=$(getprop persist.sys.ztelog.rotatenum)
        if [ ! -z $kernelrotatenum ] ; then
            echo $kernelrotatenum
        fi
    fi
}

function getkernelrotatesize()
{
    kernelrotatesize=$(getprop persist.sys.ztelog.rotatesize_k)
    if [ ! -z $kernelrotatesize ] ; then
        echo $kernelrotatesize
    else
        kernelrotatesize=$(getprop persist.sys.ztelog.rotatesize)
        if [ ! -z $kernelrotatesize ] ; then
            echo $kernelrotatesize
        fi
    fi
}

function prepare()
{
    echo prepare start
    
    #get log location, if sdcard exists, it has priority
    autolocate_tmp=$(getprop persist.sys.ztelog.autolocate)
    if [ ! -z $autolocate_tmp ] ; then
    autolocate=$autolocate_tmp
    fi
    echo autolocate=$autolocate
    LOGDIR=/data/local/log
    if [ $autolocate -eq 1 ] ; then
        mkdir /sdcard/logs
        chmod 777 /sdcard/logs
    	if [ -d /sdcard/logs ] ; then
            LOGDIR=/sdcard/logs
            tosdcard=1
        else
            mkdir /storage/sdcard0/logs
            chmod 777 /storage/sdcard0/logs
    	    if [ -d /storage/sdcard0/logs ] ; then
                LOGDIR=/storage/sdcard0/logs
                tosdcard=1
            fi
        fi
    fi
    echo LOGDIR=$LOGDIR

    mode_tmp=$(getprop persist.sys.ztelog.mode)
    if [ ! -z $mode_tmp ] ; then
        echo $mode_tmp
    else
        mode_tmp=smart
    fi

    if [ "$mode_tmp" == "simple" ] ; then
        compresslog=0
    elif [ "$mode_tmp" == "smart" ] ; then
        if [ tosdcard -eq 1 ] ; then
            compresslog=1    
        else
            compresslog=0
        fi
    else
        compresslog=1
    fi
    
    echo compresslog=$compresslog
	
	
    #previous boot logs count
    LNU_tmp=$(getprop persist.sys.ztelog.prebootcnt)
    if [ ! -z $LNU_tmp ] ; then
    LNU=$LNU_tmp
    fi
    echo LNU=$LNU
    
    #kernel logs max rotating number
    KROTNUM_tmp=$(getkernelrotatenum)
    if [ ! -z $KROTNUM_tmp ] ; then
    KROTNUM=$KROTNUM_tmp
    fi
    echo KROTNUM=$KROTNUM
    
    #kernel log(*.log) max rotating size
    KROTSIZE_tmp=$(getkernelrotatesize)
    if [ ! -z $KROTSIZE_tmp ] ; then
    KROTSIZE=$KROTSIZE_tmp
    fi
    echo KROTSIZE=$KROTSIZE
    
    
    mkdir $LOGDIR
    chmod 777 $LOGDIR
    mkdir $LOGDIR/kernel
    mkdir $LOGDIR/logcat
    chmod 777 $LOGDIR/*
    
    cd $LOGDIR
    
    for i in $(busybox seq 2 $LNU)
    do
        mv loglast$(($LNU-$i+1)).tar.gz loglast$(($LNU-$i+2)).tar.gz
    done
    
    if [ -f kernel/kernel.log -o -f logcat/logcat_main.log ] ; then
        echo "There are logs, package them!"
        busybox tar -cf loglast1.tar kernel/* logcat/* last_kmsg.txt 
        gzip loglast1.tar
        chmod 777 *
    else
        echo "There is no log!"
    fi
    
    rm logcat/*
    rm kernel/*
    rm last_kmsg.txt
    
    #setprop log.ztelog.filelog 1
    stop logcat_main
    stop logcat_radio
    stop logcat_system
    stop logcat_events
    
    start logcat_main
    start logcat_radio
    start logcat_system
    start logcat_events
    echo prepare end
}

function checksdcard()
{
    tmp=0
    if [ $autolocate -eq 1 ] ; then
        mkdir /sdcard/logs
        chmod 777 /sdcard/logs
        if [ -d /sdcard/logs ] ; then
            tmp=1
        else
            mkdir /storage/sdcard0/logs
            chmod 777 /storage/sdcard0/logs
            if [ -d /storage/sdcard0/logs ] ; then
                tmp=1
            fi
        fi
    fi
	
    echo tmp=$tmp, tosdcard=$tosdcard
	
    if [ $tmp -ne $tosdcard ] ; then
        tosdcard=$tmp
        prepare
    fi
}

prepare

while true
do

checksdcard

cd $LOGDIR/kernel
if busybox test -f kernel.log ; then
    echo "kernel.log exist, append log to it!"
    dmesg -c >> kernel.log
    
    busybox find kernel.log -size +$KROTSIZE | busybox grep kernel.log
    if busybox test $? -eq 0 ; then
        echo "Rotate kernel logs!"
        for i in $(busybox seq 2 $KROTNUM)
        do
        	mv kernel$(($KROTNUM-$i+1)).log kernel$(($KROTNUM-$i+2)).log
        done
        mv kernel.log kernel1.log

        #if simple mode isn't set, we need compress the logs.
        if [ $compresslog -eq 1 ] ; then
            if busybox test -f kernel$KROTNUM.log ; then
                echo "kernel has arrived at max count, package them!"
                if [ -f kernel.log.tar.gz ] ; then
                    mv kernel.log.tar.gz kernel.log.old.tar.gz
                fi
                busybox tar -cf kernel.log.tar *
                
                gzip kernel.log.tar
                chmod 777 kernel.log.tar.gz
                rm kernel*.log
                rm kernel.log.old.tar.gz
            fi
        fi

        echo "" > kernel.log
        chmod 777 kernel.log
    fi    
else
    echo "kernel.log doesn't exist, create it!"
    dmesg -c > kernel.log
    chmod 777 kernel.log
fi

#backup tombstones
cd $LOGDIR/logcat
ls /data/tombstones/*
if busybox test $? -eq 0 ; then
    echo "There are tombstones logs, package them!"
    mkdir tombstones
    busybox cp /data/tombstones/* tombstones/
    busybox rm -f /data/tombstones/tombstone*
    ls tombstones/*
    if busybox test $? -eq 0 ; then
    if busybox test -f tombstones.tar.gz ; then
        echo "tombstones.tar.gz exists!"
    	mv tombstones.tar.gz tombstones.old.tar.gz
        busybox tar -cf tombstones.tar tombstones/* tombstones.old.tar.gz
    else
        echo "tombstones.tar.gz doesn't exist!"
        busybox tar -cf tombstones.tar tombstones/*
    fi
    gzip tombstones.tar
    rm tombstones.old.tar.gz
    fi
    rm -r tombstones
else
    echo "There are no tombstones logs!"
fi


sleep 5

done
