UGID=32011
USER=mycroft

# Unpack mycroft-skills-arm.tar.gz to user home
tar -xzf /var/tmp/mycroft-skills-arm.tar.gz -C /
rm /var/tmp/mycroft-skills-arm.tar.gz
cp -r /etc/skel/.local/* /home/$USER/.local/
cp -r /etc/xdg/kglobalshortcutsrc /home/$USER/.config/
cp -r /etc/xdg/applications-blacklistrc /home/$USER/.config/
cp -r /etc/skel/.gltronrc /home/$USER/

tar -xzf /var/tmp/dotmycroft-setup-arm.tar.gz -C /home/mycroft

chown -R $UGID:$UGID /opt/mycroft
chown -R $UGID:$UGID /home/$USER


