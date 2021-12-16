#!/bin/bash
cd /home/php7encode/projects/devops/artifact
rm -rf node_modules
rm -rf .git
rm -rf .gitignore
rm -f ..gitignore.swp
rm -f .htaccess
zip -r artifact.zip .
aws s3 cp ./artifact.zip s3://opsbucketdemo/devops/buildArtifact/
rm -rf artifact.zip
