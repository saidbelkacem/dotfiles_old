#!/bin/sh

rofi -modi file-browser-extended -show file-browser-extended \
    -file-browser-cmd "xdg-open"                  \
    -file-browser-dir "/"                         \
    -file-browser-open-multi-key "kb-accept-alt"  \
    -file-browser-open-custom-key "kb-custom-11"  \
    -file-browser-hide-hidden-symbol ""           \
    -file-browser-path-sep "/"                    \
    -file-browser-up-text "up"                    \
    -file-browser-up-icon "go-previous"           \
    -file-browser-oc-search-path                  \
    -file-browser-exclude workspace               
