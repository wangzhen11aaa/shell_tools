#!/bin/bash

ret=$(git push 2>&1)
echo "ret: $ret"
while [[ $ret =~ '访问权限'|'过早' ]];
do
  ret=$(git push 2>&1)
done

