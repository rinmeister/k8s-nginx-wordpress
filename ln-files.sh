#!/bin/bash

declare -a bestanden
for file in /etc/nginx/sites-available/*
do
    bestanden=("${bestanden[@]}" "$(basename $file)")
done
echo ${bestanden[@]}
for bestand in ${bestanden[@]}
do
    ln -s /etc/nginx/sites-available/$bestand /etc/nginx/sites-enabled/$bestand
done

