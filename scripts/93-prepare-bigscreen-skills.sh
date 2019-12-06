UGID=32011
USER=mycroft

# Unpack mycroft-skills-aarch64.tar.gz to user home
tar -xzf /var/tmp/mycroft-skills-aarch64.tar.gz -C /home/$USER/
rm /var/tmp/mycroft-skills-aarch64.tar.gz
cp -r /etc/skel/.local/* /home/$USER/.local/

chown -R $UGID:$UGID /opt/mycroft
chown -R $UGID:$UGID /home/$USER


