UGID=32011
USER=mycroft

mkdir -p /home/$USER/.config/pulse/ && cp -r /etc/skel/.config/pulse/default.pa /home/$USER/.config/pulse/
chown -R $UGID:$UGID /home/$USER/.config/
