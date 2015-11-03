#!/system/bin/sh


logfile=/data/local/log/hw_shutdown.log

# The default PATH is /usr/bin:/bin when this script is excuted
# from init.rc. If we don't add /system/bin to PATH, $(date) will
# show nothing.
export PATH=/system/bin:$PATH

echo "hw_shutdown: placeholder at $(date)" > $logfile
