#!/bin/bash
cd /home/php7encode/projects/devops/artifact
rm -rf node_modules
lastServerCommit=$(date "+%d_%m_%y__%H_%M_%S")
zip -r $lastServerCommit.zip .
aws s3 cp ./artifact.zip s3://opsbucketdemo/devops/
