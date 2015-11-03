#!/system/bin/sh

ss_restart=$(getprop persist.sys.ssr.rl); 
secureprop=$(getprop ro.secure); 
echo $ss_restart;
echo $secureprop;
case $ss_restart in
    0)
	  echo "related" > /sys/bus/msm_subsys/devices/subsys0/restart_level
	  echo "related" > /sys/bus/msm_subsys/devices/subsys1/restart_level
	  echo "related" > /sys/bus/msm_subsys/devices/subsys2/restart_level
	  echo "related" > /sys/bus/msm_subsys/devices/subsys3/restart_level
	;;
	1)
	  echo "system" > /sys/bus/msm_subsys/devices/subsys0/restart_level
	  echo "system" > /sys/bus/msm_subsys/devices/subsys1/restart_level
	  echo "system" > /sys/bus/msm_subsys/devices/subsys2/restart_level
	  echo "system" > /sys/bus/msm_subsys/devices/subsys3/restart_level
    ;;
    *)
	if busybox [ "$secureprop" -eq "0" ];then
	  echo "eng"
	  echo "system" > /sys/bus/msm_subsys/devices/subsys0/restart_level
	  echo "system" > /sys/bus/msm_subsys/devices/subsys1/restart_level
	  echo "system" > /sys/bus/msm_subsys/devices/subsys2/restart_level
	  echo "system" > /sys/bus/msm_subsys/devices/subsys3/restart_level
	else
	  echo "user"
	  echo "related" > /sys/bus/msm_subsys/devices/subsys0/restart_level
	  echo "related" > /sys/bus/msm_subsys/devices/subsys1/restart_level
	  echo "related" > /sys/bus/msm_subsys/devices/subsys2/restart_level
	  echo "related" > /sys/bus/msm_subsys/devices/subsys3/restart_level
	fi	
    ;;
esac
