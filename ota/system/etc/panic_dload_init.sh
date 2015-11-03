#!/system/bin/sh

panic_dload=$(getprop persist.sys.panic_dload); 
secureprop=$(getprop ro.secure); 
echo $panic_dload;
echo $secureprop;
case $panic_dload in
    0)
	  echo 0 > /sys/module/restart/parameters/enable_panic_dload
	;;
	1)
	  echo 1 > /sys/module/restart/parameters/enable_panic_dload

    ;;
    *)
	if busybox [ "$secureprop" -eq "0" ];then
	  echo "eng"
	  echo 1 > /sys/module/restart/parameters/enable_panic_dload

	else
	  echo "user"
	  echo 0 > /sys/module/restart/parameters/enable_panic_dload

	fi	
    ;;
esac
