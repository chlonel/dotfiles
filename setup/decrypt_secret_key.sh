#!/bin/sh

src_path=$1
dst_path="${HOME}/.config/chezmoi/age_secret_key"

if [ ! -f "$dst_path" ]; then
  mkdir -p $(dirname "$dst_path")
  age --decrypt --output "$dst_path" "$src_path"
  chmod 600 "$dst_path"
fi
