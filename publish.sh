#!/bin/bash

OUT_DIR="tuannq-nii.github.io"

# build jekyll to OUt_DIR
bundle exec jekyll build -d $OUT_DIR

# copy CNAME to OUT_DIR
cp DATA/CNAME tuannq-nii.github.io/

# push to github
cd $OUT_DIR
git add .
git commit -m "update"
git push origin master

