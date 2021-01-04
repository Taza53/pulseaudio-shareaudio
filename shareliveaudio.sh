#!/bin/bash

pactl load-module module-null-sink sink_name="virtual_speaker" sink_properties=device.description="virtual_speaker"

pactl load-module module-remap-source master="virtual_speaker.monitor" source_name="virtual_mic" source_properties=device.description="virtual_mic"

pactl load-module module-loopback sink="virtual_speaker" latency_msec=1

pactl load-module module-loopback sink="virtual_speaker" latency_msec=1
