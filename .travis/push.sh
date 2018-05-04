#!/bin/bash
  
  set -x
  if [ $TRAVIS_BRANCH == "master" ] ; then
  
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
  
  git checkout -b test
  
  Rscript .travis/travis_run.R
  
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER [skip ci]"
  
  git remote add deploy https://yonicd:${GITHUB_PAT}@github.com/yonicd/rtravis.git
  git push -f deploy test -v
  
  else
  echo "Not deploying, since this branch is not master."
  fi
