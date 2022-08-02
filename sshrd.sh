#!/bin/bash

chmod +x macos/*


: ${1?"Usage: $0 ipsw link"}
: ${2?"Usage: $0 board cfg, can be iphone6 for example too (no AP part)"}


macos/pzb -g BuildManifest.plist $1 1> /dev/null
macos/pzb -g Firmware/dfu/iBSS.$2.RELEASE.im4p $1 1> /dev/null
