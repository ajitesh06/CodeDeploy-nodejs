#!/bin/bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 4.4.5
npm install forever -g
echo "node installed"
rm -rf /home/ec2-user/nodejs
mkdir /home/ec2-user/nodejs
sudo ln -s -f /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deplyment-archive /home/ec2-user/nodejs
