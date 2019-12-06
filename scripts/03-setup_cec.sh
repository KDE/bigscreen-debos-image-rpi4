#!/bin/sh -x

USER=mycroft
GROUP=uinput
UGID=32011

pip3 install python-uinput
pip3 install cec

groupadd ${GROUP}

usermod -a -G ${GROUP} ${USER}

cp -r /etc/skel/.config/autostart-scripts/cec-daemon.py /home/$USER/.config/autostart-scripts/

chown -R $UGID:$UGID /opt/mycroft
chown -R $UGID:$UGID /home/$USER
