#! /bin/sh

set -e

for RESULT in $(grep -rl $1- .)
do
  sed -i 's/'$1'/'$2'/g' $RESULT
  echo "Tag version now set to '$2' in $RESULT"
  git add $RESULT
done
