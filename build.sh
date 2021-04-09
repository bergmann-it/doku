#!/bin/sh
cd ~/doku
git pull
git reset --hard
DOCSEARCH_ENABLED=true DOCSEARCH_ENGINE=lunr NODE_PATH="$(/usr/bin/npm -g root)" ~/bin/antora --generator antora-site-generator-lunr --fetch --clean antora-playbook.yml
