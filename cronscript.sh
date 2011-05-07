#! /bin/bash

# Author: Kevin Swanson caseonetech.com
# License: GPLv2
# Description:  This script can be used to execute cron-scripts
# for Drupal, Wordpress or any other web application that executes 
# cron jobs by a url.
# The urls.conf file is used to list urls that will be executed.

URLS=urls.conf

# for URL in $(cat $URLS)
while read URL
do
  if [ "${URL:0:1}" != "#" ] && [ "${URL:0:1}" != "" ]
  then
    wget -O - -q -t 1 $URL
     echo $URL
    sleep 2s
  fi
done < $URLS

