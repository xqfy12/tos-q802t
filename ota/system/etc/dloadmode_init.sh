#!/system/bin/sh

dload=$(getprop persist.sys.dloadmode); 
secureprop=$(getprop ro.secure); 
echo $dload;
echo $secureprop;
case $dload in
    0)
	  echo 0 > /sys/module/restart/parameters/download_mode
	;;
	1)
	  echo 1 > /sys/module/restart/parameters/download_mode

    ;;
    *)
	if busybox [ "$secureprop" -eq "0" ];then
	  echo "eng"
	  echo 1 > /sys/module/restart/parameters/download_mode

	else
	  echo "user"
	  echo 1 > /sys/module/restart/parameters/download_mode

	fi	
    ;;
esac
