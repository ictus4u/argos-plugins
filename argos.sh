#!/usr/bin/env bash

URL="github.com/p-e-w/argos"
DIR=$(dirname "$0")
PLUGINS="github.com/matryer/bitbar-plugins"

echo "Argos"
echo "---"
echo "$URL | iconName=help-faq-symbolic href='https://$URL'"
echo "$PLUGINS | iconName=help-faq-symbolic href='https://$PLUGINS'"
echo "$DIR | iconName=folder-symbolic href='file://$DIR'"

