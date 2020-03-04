#!/bin/sh

cat << EOF > /etc/apt/preferences.d/99-xenon
Package: *
Pin: release o=unstable*
Pin-Priority: 1100
EOF

