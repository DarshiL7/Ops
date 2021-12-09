#!/bin/bash
CTIME=`date`
sed -i "s/was deployed/was deployed on $CTIME/g" /var/www/html/index.html
chmod 664 /var/www/html/index.html