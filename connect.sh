#!/usr/bin/env bash
set -euo pipefail

if (( EUID != 0 )); then
    printf 'Run this script with sudo.\n' >&2
    exit 1
fi

snap connect xonotic:joystick
snap connect xonotic:dot-xonotic
