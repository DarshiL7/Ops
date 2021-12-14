#!/bin/bash
cd /home/php7encode/projects/devops/rxarchitecture
npm install
gulp
rsync -e "ssh -p2022" -arv projects/devops/full/ ansh1@3.6.79.134:~/public_html/
