#!/bin/bash
cd /home/php7encode/projects/devops/rxarchitecture
npm install
gulp
find . -type f -not -iname '*.php' -exec sudo -u php7encode cp --parents \{\} /home/php7encode/projects/devops/artifact/ \;
