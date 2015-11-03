#!/system/bin/sh

sdtype=$1

sd0_parth="/storage/sdcard0/log/"
sd1_parth="/storage/sdcard1/log/"

#echo $sdtype
#echo $sd0_parth
#echo $sd1_parth

case $sdtype in
    0)
    
    if [ ! -d "$sd0_parth" ] ; then	
    mkdir "$sd0_parth"
    fi	

    setprop persist.sys.ztelog.sd1 0    
    setprop persist.sys.ztelog.sd0 1
	 
	;;
	1)

    if [ ! -d "$sd1_parth" ] ; then	
    mkdir "$sd1_parth"
    fi	
    setprop persist.sys.ztelog.sd0 0
    setprop persist.sys.ztelog.sd1 1	 
   
    ;;
    *)

    setprop persist.sys.ztelog.sd0 0
    setprop persist.sys.ztelog.sd1 0	 

    ;;
esac

