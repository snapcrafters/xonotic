#!/usr/bin/env bash

if [ $(id -u) -ne 0 ]; then
    echo "Root context required please."
    exit 1
fi

for INTERFACE in joystick; do
    snap connect xonotic:${INTERFACE}
done
