#!/sbin/sh

insmod /vendor/lib/modules/sprd_vibrator.ko

wait /sys/class/timed_output/vibrator/enable
chmod 664 /sys/class/timed_output/vibrator/enable
chown root system /sys/class/timed_output/vibrator/enable
