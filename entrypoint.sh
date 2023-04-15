#!/bin/bash
set -x
whoami
cat ~/.gitconfig
exec cargo checkmate "$1"
