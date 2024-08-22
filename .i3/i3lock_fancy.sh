#!/bin/bash

scrot -o /tmp/i3lockbg.png
mogrify -scale 10% -scale 1000% /tmp/i3lockbg.png
i3lock -n -i /tmp/i3lockbg.png
