#!/usr/bin/env bash

echo “options snd-hda-intel dmic_detect=0” | sudo tee /etc/modprobe.d/alsa-fix.conf
