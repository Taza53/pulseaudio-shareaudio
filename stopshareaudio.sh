#!/bin/bash
pactl unload-module module-remap-source

pactl unload-module module-loopback

pactl unload-module module-null-sink
