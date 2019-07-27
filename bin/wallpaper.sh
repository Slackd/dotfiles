#!/bin/bash

shopt -s nullglob
cd /home/sam/Pictures/wallhaven

while true; do
	files=()
	for i in *.jpg *.png; do
		[[ -f $i ]] && files+=("$i")
	done
	range=${#files[@]}

	((range)) && feh --bg-fill "${files[RANDOM % range]}"

	sleep 5m
done
