#!/bin/sh
# Links coreutils.

set -e

for util in $(coreutils --list)
do
  echo $util
done
