#!/bin/bash

set -e

if [ -z "$1" ]; then
  echo -e "Error: No hack name supplied"
  echo -e "\nUsage:\n./startTheHack.sh projectName"
  exit 1
fi

git clone git@github.com:dmatteo/webpack-express-boilerplate.git $1 
cd $1
rm -rf .git

git init
git add .
git commit -m 'Initial Commit'

npm install
