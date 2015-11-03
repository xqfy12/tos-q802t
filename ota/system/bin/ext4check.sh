#!/system/bin/sh
export PATH=/system/bin:$PATH
PART_ALIAS=$1
MOUNT_LABLE=$2
BLOCK_DEVICE=/dev/block/${PART_ALIAS}

#ZTEBSP yuanjinxing, 20120828, check GROW partition filesystem and format when filesystem is damage. start
if [ ${MOUNT_LABLE} == "GROW" ]
then
    /system/bin/fsck_msdos -p -f ${BLOCK_DEVICE}
	ret=$?
    case "$ret" in
        2) echo "Format GROW"
        /system/bin/newfs_msdos -F 32 -O android -c 8 ${BLOCK_DEVICE}
        ;;

        8) echo "Run Error, Need Repair"
        /system/bin/newfs_msdos -F 32 -O android -c 8 ${BLOCK_DEVICE}
        ;;
    esac
	exit
fi
#ZTEBSP yuanjinxing, 20120828, check GROW partition filesystem and format when filesystem is damage. end

if [ ${MOUNT_LABLE} == "USERDATA" ]
then
    /system/bin/checkdata /system/bin/mke2fs -T ext4 -j -m 0 -b 4096 -L ${MOUNT_LABLE} ${BLOCK_DEVICE}
    case "$?" in
        0)  echo "format in checkdata"
            ;;
    esac
    /system/bin/e2fsck -p ${BLOCK_DEVICE}
    exit
fi

/system/bin/e2fsck -p ${BLOCK_DEVICE}
ret=$?
#if [ $ret -eq 8 ];then
case "$ret" in
   2)echo "need to reboot the phone"
   /system/bin/mke2fs -T ext4 -j -m 0 -b 4096 -L ${MOUNT_LABLE} ${BLOCK_DEVICE}
   /system/bin/tune2fs -C 1 ${BLOCK_DEVICE}
   ;;

   8)echo "need to format the partition..."
   /system/bin/mke2fs -T ext4 -j -m 0 -b 4096 -L ${MOUNT_LABLE} ${BLOCK_DEVICE}
   /system/bin/tune2fs -C 1 ${BLOCK_DEVICE}
   ;;
esac
#fi

# EXIT CODE for e2fsck: 
#     The exit code returned by e2fsck is the sum of the following conditions:
#       0    - No errors
#       1    - File system errors corrected
#       2    - File system errors corrected, system should be rebooted
#       4    - File system errors left uncorrected
#       8    - Operational error
#       16   - Usage or syntax error
#       32   - E2fsck canceled by user request
#       128  - Shared library error
