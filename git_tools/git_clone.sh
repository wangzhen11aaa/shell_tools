#!/bin/bash

git_repository=$1
echo "$git_repository"
ret=$(git clone $1 2>&1)
echo "ret: $ret"
while [[ $ret =~ '访问权限'|'过早'|'flush 包' ]];
do
  ret=$(git clone $1 2>&1)
done

