#!/bin/bash
project=`jq -r '.projectName.name' value.json`
cd /home/php7encode/projects/$project/rxarchitecture
chmod +x devopsOps.sh
`./devopsOps.sh`
