#!/bin/bash

for((i = 16; i < 256; i++)); do
	printf "\e[48;5;${i}m%03d" $i;
	printf '\e[0m';
	[ ! $((($i - 15) % 6)) -eq 0 ] && printf ' ' || printf '\n'
done

printf "\n\n"

for((i = 30; i < 48; i++)); do
	printf "\e[${i}m%03d" $i;
	printf '\e[0m';
	[ ! $((($i - 15) % 6)) -eq 0 ] && printf ' ' || printf '\n'
done

printf "\n"

