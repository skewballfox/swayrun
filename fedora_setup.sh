#!/usr/bin/env bash

sudo cp swayrun /usr/libexec/swayrun
sudo cp swayrun.desktop /usr/share/wayland-sessions/swayrun.desktop

sudo semanage fcontext -a -e /usr/share/wayland-sessions/sway.desktop /usr/share/wayland-sessions/swayrun.desktop
sudo restorecon /usr/share/wayland-sessions/swayrun.desktop

# the below upowerd should be installed by default, if not change to another
# libexec binary
sudo semanage fcontext -a -e /usr/libexec/upowerd /usr/libexec/swayrun
sudo restorecon -vvRF /usr/libexec/swayrun
