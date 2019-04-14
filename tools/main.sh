#!/bin/bash
SCRIPT="tools/build.js";
if [ -d 'out' ]; then rm -rf out; fi;
mkdir out;
mkdir out/blog;
mkdir out/portfolio;
mkdir out/media;
mkdir out/fonts;
cp static/media/* out/media/;
cp -r static/fonts/* out/fonts/;
if [ "$DEBUG" = true ]; then node --inspect-brk $SCRIPT; else node $SCRIPT; fi;