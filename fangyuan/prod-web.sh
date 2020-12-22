#!/bin/bash

cd $HOME/fangyuan/local
curday=`date +%Y%m%d%H%M%S`
# git clone git@192.168.168.137:fangyuan/fangyuan-web.git -b dev fangyuan-web-${curday}
# git clone git@192.168.168.137:fangyuan/fangyuan-web.git -b 91-broker-company-option-vest-list fangyuan-web-${curday}
branch=`cd ./fangyuan-web-7015 && git branch -a | grep "*" | awk '{print $2}'`
git clone git@192.168.168.137:fangyuan/fangyuan-web.git -b ${branch} fangyuan-web-${curday}
echo "git branch is: ${branch}"

cd $HOME/fangyuan/local
cd fangyuan-web-${curday}
rm -rf .git/
rm .gitlab-ci.yml
# rm -rf test/
# rm .gitignore
# rm .sequelizerc
# rm changelog.md
# rm config/config.default.js
# rm config/config.unittest.js
# rm .autod.conf.js
# npm run build
# cp -a $HOME/fangyuan/local/changepassword ./changepassword/

cd ..
rm ./fangyuan-web.zip
zip -r ./fangyuan-web.zip ./fangyuan-web-${curday}


