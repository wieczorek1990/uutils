#!/bin/sh
# Links coreutils.

set -e

function generate_util {
  util="$1"
  cat << EOF
#!/bin/sh
# Util calling.
set -e

coreutils $util
EOF
}

dir="$HOME/.local/bin"
rm -rf "$dir"
mkdir -p "$dir"
for util in $(coreutils --list)
do
  generate_util $util > $dir/$util
done
chmod +x $dir/*
