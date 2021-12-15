#!/bin/bash
cd /home/php7encode/projects/devops/artifact
rm -rf node_modules
lastServerCommit=$(date "+%d/%m/%y--%H:%M:%S")
zip -r $lastServerCommit.zip .
aws s3 cp ./artifact.zip s3://opsbucketdemo/devops/
