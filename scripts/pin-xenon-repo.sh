#!/bin/sh

cat << EOF > /etc/apt/preferences.d/99-xenon
Package: *
Pin: release o=megablast*
Pin-Priority: 1100
EOF

