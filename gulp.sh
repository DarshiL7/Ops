#!/bin/bash
project=`jq -r '.projectName.name' value.json`
repo=`jq -r '.projectName.repoName' value.json`
cd /home/php7encode/projects/$project/$repo
npm install
gulp
find . -type f -not -iname '*.php' -exec sudo -u php7encode cp --parents \{\} /home/php7encode/projects/$project/artifact/ \;
