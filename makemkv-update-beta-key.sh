#!/bin/sh

usage() {
    echo "usage: $(basename $0) KEY CONFIG_FILE

This script updates the MakeMKV configuration with the provided key.
"
}

KEY=$(wget -qO- https://cable.ayra.ch/makemkv/api.php?raw)

CONFIG_FILE=/root/.MakeMKV/settings.conf

# Get the current  key.
CUR_KEY="$(sed -n 's|^[ \t]*app_Key[ \t]*=[ \t]*"\(.*\)"[ \t]*$|\1|gp' "$CONFIG_FILE")"

# If not the same, update it.
if [ "$CUR_KEY" != "$KEY" ]; then
    echo "Updating registration key..."
    if grep -q '^app_Key ' "$CONFIG_FILE"; then
        sed -i "/^[ \t]*app_Key[ \t]*=/c\app_Key = \"$KEY\"" "$CONFIG_FILE"
    else
        echo "app_Key = \"$KEY\"" >> "$CONFIG_FILE"
    fi
else
    echo "Registration key already up-to-date."
fi

# vim: set ft=sh 