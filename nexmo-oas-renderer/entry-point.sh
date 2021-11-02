#!/bin/sh

if [ ! -z "$OAS_GIT_PATH" ]; then
  cd /
  mkdir definitions
  cd definitions
  git clone --depth=1 $OAS_GIT_PATH
fi
bundle exec /exe/nexmo-oas-renderer