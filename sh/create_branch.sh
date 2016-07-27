#!/bin/bash/



GIT_HOME=/home/lion/chewen/git/chewen

BRANCH_NAME=$1


if [ -z "$BRANCH_NAME" ]; then
   echo "Useage: $0 branchName"
   exit
fi


if [ -d $GIT_HOME ]; then
  echo "GO TO ${GIT_HOME}"
else
  echo "git home: ${GIT_HOME} not exist"
  exit
fi



cd ${GIT_HOME}

git checkout master

git pull --rebase

git checkout -b ${BRANCH_NAME} origin/master

git config branch.${BRANCH_NAME}.remote origin
git config branch.${BRANCH_NAME}.merge refs/heads/${BRANCH_NAME}

git push origin HEAD

