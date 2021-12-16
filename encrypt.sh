#!/bin/bash
project=`jq -r '.projectName.name' value.json`
repo=`jq -r '.projectName.repoName' value.json`
cd /home/php7encode/projects/$project/$repo
chmod +x devopsOps.sh
`./devopsOps.sh`
