#!/bin/bash

cd $HOME/fangyuan/local
curday=`date +%Y%m%d%H%M%S`

############## git clone #######################
git clone -b dev git@192.168.168.137:fangyuan/fangyuan-server.git fangyuan-server-${curday}
cd fangyuan-server-${curday}
cp -a $HOME/fangyuan/local/fangyuan-server-7014/app/public app/public/

############## remove file #####################
rm -rf .git/
rm -rf test/
rm .gitlab-ci.yml
rm .gitignore
rm config/.gitignore
rm .sequelizerc
rm changelog.md
rm config/config.default.js
rm config/config.unittest.js
rm .autod.conf.js
rm -rf app/contract/
rm app/controller/test.js

############## zip file #########################
cd $HOME/fangyuan/local
rm ./fangyuan-server.zip
# zip -r $HOME/fangyuan/local/fangyuan-server.zip $HOME/fangyuan/local/fangyuan-server-${curday}
zip -r ./fangyuan-server.zip ./fangyuan-server-${curday}