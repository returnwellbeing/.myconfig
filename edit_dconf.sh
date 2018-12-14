#! /bin/bash

BASEDIR=$PWD

### DCONF EDIT ###
echo "=== DCONF EDIT START ==="
dconf load /org/gnome/terminal/legacy/profiles:/ < ./.terminal.dconf
echo "=== DCONF EDIT END ==="
