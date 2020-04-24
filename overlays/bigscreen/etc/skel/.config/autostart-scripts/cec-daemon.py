#!/usr/bin/python3

import cec
import uinput
import time
from configparser import ConfigParser

u = uinput
config = ConfigParser()
keymap = []
config.read('keymap.ini')
keyconfig = config._sections['default-keymap']

for key, value in keyconfig.items():
    keymap.append(getattr(uinput, value))

cec.init()
device = uinput.Device(keymap)

print("Ready")
keystate = None


def onkey(event, key, state):
    assert event == 2
    global keystate
    if state == 0 and keystate is None:
        print("Got Key", key, "state", state)
        keystate = "down"
        device.emit(KEYMAP[key], 1)

    if state > 0:
        if keystate is None:
            print("Got key", key, "state", state)
            device.emit(KEYMAP[key], 1)

        print("Key {0} up after {1}".format(key, state))
        device.emit(KEYMAP[key], 0)
        keystate = None


cec.add_callback(onkey, cec.EVENT_KEYPRESS)

while True:
    time.sleep(9e9)
