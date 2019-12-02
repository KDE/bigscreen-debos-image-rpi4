#!/bin/sh -x

USER=mycroft
GROUP=uinput

pip3 install cec python-uinput

groupadd ${GROUP}

usermod -a -G ${GROUP} ${USER}
