#!/bin/sh
# Links coreutils.

set -e

function generate_util {
  util="$1"
  ./bin/template.py "$util"
}

dir="$HOME/.local/bin"
rm -rf "$dir"
mkdir -p "$dir"
for util in $(coreutils --list)
do
  generate_util $util > $dir/$util
done
chmod +x $dir/*
