#!/usr/bin/env bash

BUILD_DIR="./build"
APP_NAME="Password Generator"

command ./build.sh
cp -R "$BUILD_DIR/$APP_NAME.app" "/Applications"
echo "Install: /Applications"
