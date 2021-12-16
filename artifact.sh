#!/bin/bash
project=`jq -r '.projectName.name' value.json`
cd /home/php7encode/projects/$project/artifact
rm -rf node_modules
rm -rf .git
rm -rf .gitignore
rm -f ..gitignore.swp
rm -f .htaccess
zip -r artifact.zip .
aws s3 cp ./artifact.zip s3://opsbucketdemo/$project/buildArtifact/
cd ..
rm -rf artifact/*