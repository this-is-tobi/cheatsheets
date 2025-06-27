#!/bin/bash

mkdir -p ./docs

if [[ ! -f "./docs/01-readme.md" ]] || [[ $(! diff -q "./README.md" "./docs/01-readme.md") ]]; then
  cat ./README.md | sed 's|./sheets/|./|g' > ./docs/01-readme.md
fi

find ./sheets -type f | while read -r sheet; do
  relative_path="${sheet#./sheets/}"
  target_file="./docs/${relative_path}.md"
  mkdir -p "$(dirname "$target_file")"
  if [[ ! -f "$target_file" ]] || [[ $(diff -q "$sheet" "$target_file") ]]; then
    cp "$sheet" "$target_file"
  fi
done
