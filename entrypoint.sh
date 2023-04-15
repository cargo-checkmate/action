#!/bin/bash
set -x
git config --global --add safe.directory /github/workspace
exec cargo checkmate "$1"
