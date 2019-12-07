#!/bin/sh -ex

USER=mycroft
GROUP=uinput
UGID=32011

groupadd ${GROUP}

usermod -a -G ${GROUP} ${USER}

mkdir -p /home/$USER/.config/autostart-scripts/
cp -r /etc/skel/.config/autostart-scripts/cec-daemon.py /home/$USER/.config/autostart-scripts/

chown -R $UGID:$UGID /opt/mycroft
chown -R $UGID:$UGID /home/$USER

ldconfig

pip3 install wheel
pip3 install python-uinput
pip3 install cec
