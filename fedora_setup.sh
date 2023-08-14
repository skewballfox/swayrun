#!/usr/bin/env bash

sudo cp swayrun /usr/libexec/swayrun
sudo cp swayrun.desktop /usr/share/wayland-sessions/swayrun.desktop

# system_u:object_r:usr_t:s0
sudo semanage fcontext -a -e /usr/share/wayland-sessions/sway.desktop /usr/share/wayland-sessions/swayrun.desktop
sudo restorecon /usr/share/wayland-sessions/swayrun.desktop

# the below upowerd should be installed by default, if not change to another
# libexec binary
# system_u:object_r:bin_t:s0
sudo semanage fcontext -a -e /usr/libexec/xdg-desktop-portal /usr/libexec/swayrun
sudo restorecon -vvRF /usr/libexec/swayrun
