#!/bin/bash

# remove all files except: CNAME LICENSE README.md
rm 404.html asset-manifest.json favicon.ico index.html precache-manifest.*.js robots.txt service-worker.js

# remove all dirs except: .git scripts
rm -rf css fonts img js static

# copy all from dsound build dir
cp -a ../dsound/build/* .

# remove unneeded stuff
rm -rf img/flags

# copy index to 404.html for github pages to work with SPA
cp index.html 404.html

# done
echo all files updated. please commit and push to github

