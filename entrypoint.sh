#!/bin/bash
set -x

pwd
git status
git rev-parse --git-dir
git rev-parse --show-toplevel
git log --pretty='%Cred%h%Creset %C(yellow)%ai%Creset - %s <%C(bold blue)%ae%Creset>%Cgreen%d%Creset' --graph -10

exec cargo checkmate "$1"
