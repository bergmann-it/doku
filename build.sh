#!/bin/sh
cd ~/doku
git pull
git reset --hard
FORCE_SHOW_EDIT_PAGE_LINK=true NODE_PATH="$(/usr/bin/npm -g root)" node_modules/.bin/antora --fetch --clean antora-playbook.yml
