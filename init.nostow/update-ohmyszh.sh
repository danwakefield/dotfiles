#!/bin/bash

git checkout ohmyzsh
git pull --rebase
git checkout master
git merge --squash -s subtree --no-commit ohmyzsh

