#!/bin/sh
# Installs.

set -e

rm -rf uutils
mkdir uutils
cd uutils
git clone --depth=1 https://github.com/uutils/coreutils
cd coreutils
cargo build --release
cargo install --path .
