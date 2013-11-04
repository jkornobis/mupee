#!/bin/sh

git stash -q --keep-index

grunt test
RESULT=$?

git stash pop -q

[ $RESULT -ne 0 ] && exit 1
exit 0

