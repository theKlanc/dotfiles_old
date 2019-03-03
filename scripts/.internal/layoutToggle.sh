#!/bin/bash

layout=$(i3-msg -t get_tree | jq -r 'recurse(.nodes[]) | select(.nodes[].focused == true) | .layout')

case "$layout" in
  tabbed) i3-msg layout default ;;
  *) i3-msg layout tabbed ;;
esac