#!/usr/bin/env bash

cd  "$(dirname ${BASH_SOURCE})";

rsync \
	--exclude ".git" \
	--exclude "README.md" \
	--exclude "LICENSE" \
	--exclude "bootstrap.sh" \
	-avh --no-perms . ~;
source ~/.bash_profile;
