UGID=32011
USER=mycroft

cp /var/tmp/BCM43430A1.hcd /etc/firmware/
cp /var/tmp/BCM4345C0.hcd /etc/firmware/
cp /var/tmp/brcm43438.service /usr/lib/systemd/system/

systemctl enable brcm43438.service
systemctl enable bluetooth.service
