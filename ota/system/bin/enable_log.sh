#!/system/bin/sh
if [ $1 == "1" ]
  then   
  echo "enable log"
  setprop persist.sys.ztelog.enable 1
  elif [ $1 == "0" ]
  then
  setprop persist.sys.ztelog.enable 0
  echo "disable log"
fi

