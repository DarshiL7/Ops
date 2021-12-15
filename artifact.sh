#!/bin/bash
cd /home/php7encode/projects/devops/artifact
rm -rf node_modules
rm -rf .git
rm -rf .gitignore
rm -f ..gitignore.swp
rm -f .htaccess
lastServerCommit=$(date "+%d_%m_%y__%H_%M_%S")
zip -r $lastServerCommit.zip .
aws s3 cp ./$lastServerCommit.zip s3://opsbucketdemo/devops/
rm -rf $lastServerCommit.zip
