#!/bin/sh

if pacmd list-sources 2>&1 | grep -q RUNNING && pacmd list-sources 2>&1 | grep -q "muted: yes"; then
    mic=""
elif pacmd list-sources 2>&1 | grep -q RUNNING;then
	mic=""
fi

echo "$mic"
