#!/bin/bash

mkdir -p ./docs

rm ./docs/01-readme.md

if [[ ! -f "./docs/01-readme.md" ]] || [[ $(! diff -q "./README.md" "./docs/01-readme.md") ]]; then
  cat ./README.md | sed 's|./sheets/|../sheets/|g' > ./docs/01-readme.md
fi

for sheet in $(ls ./sheets); do
  if [[ ! -f "./docs/${sheet}.md" ]] || [[ $(! diff -q "./sheets/${sheet}" "./docs/${sheet}.md") ]]; then
    cp ./sheets/${sheet} ./docs/${sheet}.md
  fi
done
