#!/bin/bash
source /root/.nvm/nvm.sh #this loads nvm's environment vars

echo "Running data-processor batch script"
export PATH=/usr/local/bin:$PATH
cd /var/www/gitbegin
NODE_ENV=production node /var/www/gitbegin/server/data-processor/fetchIssuesRepos.js
NODE_ENV=production node /var/www/gitbegin/server/data-processor/refreshRepos.js
