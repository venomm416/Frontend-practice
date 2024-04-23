#!/bin/bash
cd .. && cd app
LIST=ls
MODULE=$(ls -d node_modules 2>/dev/null)
if [ -z "$MODULE" ]; then
  echo "Installing node modules"
  npm install
else
  echo "Node modules already installed"
fi