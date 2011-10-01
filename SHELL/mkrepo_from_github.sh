#!/bin/sh

REPO=$1

if [ "$REPO" != "" ]
then
  mkdir -p "$REPO_ROOT/$REPO"
  cd "$REPO_ROOT/$REPO"

  git init
  touch README
  git add README
  git commit -m 'first commit'
  git remote add origin git@github.com.:niwacchi/Tools.git
  #git push -u origin master
else 
  echo " No repogitory."
  exit
fi

