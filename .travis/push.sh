#!/bin/bash

set -x
if [ $TRAVIS_BRANCH == 'master' ] ; then

  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"

  git checkout -b test
  touch file.txt
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"

  git remote add deploy https://yonicd:${GH_TOKEN}@github.com/yonicd/rtravis.git
  git push --force deploy test -v

else
    echo "Not deploying, since this branch isn't master."
fi