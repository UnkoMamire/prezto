#!/usr/bin/env sh

cd `dirname $0`

git remote -v | grep "upstream" > /dev/null 2>&1
if [ $? != 0 ]; then
	git remote add upstream https://github.com/sorin-ionescu/prezto
fi

git fetch upstream
git merge upstream/master
