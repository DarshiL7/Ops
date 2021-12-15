#!/bin/bash
cd /home/php7encode/projects/devops/artifact
zip -r arifact.zip .
aws s3 cp ./artifact.zip s3://opsbucketdemo/devops/
