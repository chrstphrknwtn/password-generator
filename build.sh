#!/usr/bin/env bash

SRC_DIR="./src"
OUT_DIR="./build"
SCRIPT_FILE="password-generator.applescript"
ICON_FILE="password-generator.icns"
APP_NAME="Password Generator"

mkdir -p $OUT_DIR
rm -rf $OUT_DIR/*

osacompile -o "$OUT_DIR/$APP_NAME.app" "$SRC_DIR/$SCRIPT_FILE"

rm "$OUT_DIR/$APP_NAME.app/Contents/Resources/applet.icns"
cp "$SRC_DIR/$ICON_FILE" "$OUT_DIR/$APP_NAME.app/Contents/Resources/applet.icns"

echo "  Build: $OUT_DIR/$APP_NAME.app"
