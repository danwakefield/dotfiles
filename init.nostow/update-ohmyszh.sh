#!/bin/bash

git checkout ohmyzsh
git pull --rebase
git checkout master
git merge -X theirs --squash -s subtree --no-commit ohmyzsh

