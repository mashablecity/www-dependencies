#!/usr/bin/env sh

wget -e robots=off --wait 1 --no-parent -r http://localwiki.net/ri/ --reject-regex "/_"
