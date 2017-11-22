#!/bin/bash

git checkout master
git fetch upstream
git rebase upstream/master
git push origin master
git branch -D pr
git fetch origin --prune

