#!/bin/bash
set -x
whoami
echo $HOME
cat ~/.gitconfig
exec cargo checkmate "$1"
