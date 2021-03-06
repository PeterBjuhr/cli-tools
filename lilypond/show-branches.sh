#!/bin/bash 

echo "======================================================"; 
git checkout master
for branch in $(git branch --color=never $1 | sed s/*// | sed s/-\>//); do 
  echo "-----------------------------------------------$branch"; 
  git checkout --quiet $branch; git log --oneline master..; 
done
