#!/bin/bash -x

declare -A sounds
sounds[dog]="bark"
sounds[cat]="mew"
sounds[bird]="kk"

echo "bird sounds" ${sounds[dog]}
echo "all elements" ${sounds[@]}
echo "keys" ${!sounds[@]}
