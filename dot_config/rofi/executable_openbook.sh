#!/bin/env bash

  rofi -modi file-browser-extended -show file-browser-extended \
    -line-padding 4 \
    -columns 1 \
    -padding 50 \
    -hide-scrollbar \
    -file-browser-cmd "xdg-open"                  \
    -file-browser-dir "~/Documents/Calibre Library/"         \
    -file-browser-depth 3                         \
    -file-browser-open-multi-key "kb-accept-alt"  \
    -file-browser-open-custom-key "kb-custom-11"  \
    -file-browser-hide-hidden-symbol ""           \
    -file-browser-path-sep "/"                    \
    -file-browser-up-text "up"                    \
    -file-browser-up-icon "go-previous"           \
    -file-browser-oc-search-path                  \
    -file-browser-oc-cmd "gimp;icon:gimp"         \
    -file-browser-exclude workspace               
