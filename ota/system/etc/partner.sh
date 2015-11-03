#!/system/bin/sh

export PATH=/system/bin:$PATH

if [ ! -f /data/system/packages.xml ]; then
   #mkdir /data/app/123
   for pkg in $(ls /system/vendor/partner/)
   do
       ln -s /system/vendor/partner/$pkg /data/app/$pkg 
#       chown -h 1000:1000 /data/app/$pkg
#       chmod -h 644 /data/app/$pkg
   done
   if [ -e /system/lib/libvenus.so ]; then
        mkdir -p /data/lib
        ln -s /system/lib/libvenus.so /data/lib/libvenus.so
   fi

   count=$(find /system/vendor/partner/ -name "*.apk" | grep -c ".apk")
   echo "$count" > /data/local/partner_count.txt
else
  #if [ -e /data/local/partner_count.txt ]; then
     recount=$(find /system/vendor/partner/ -name "*.apk" | grep -c ".apk")
     count=$(cat /data/local/partner_count.txt)
     count=${count:-0}
     if [ $recount -ne $count ]; then
           for pkg in $(ls /system/vendor/partner/)
           do
              ln -s /system/vendor/partner/$pkg /data/app/$pkg 
  #           chown -h 1000:1000 /data/app/$pkg
  #           chmod -h 644 /data/app/$pkg
           done
           echo "$recount" > /data/local/partner_count.txt
     fi
  #fi
fi

#mkdir /data/app/111
