#./install.sh node 4.4.0 mongodb 3.2.0
echo "install node version"
nvm install v$2
echo "install node success now use node"
nvm use node

echo "install cnpm"
npm install cnpm -g
echo "install pm2"
cnpm install pm2 -g

echo "fetch nginx"
apt-get install nginx
echo "install nginx success"

cd ~
echo "fetch mongodb"
wget http://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$4.tgz
echo "release and rename mongodb"
tar -zxf -f mongodb-linux-x86_64-$4.tgz
mv mongodb-linux-x86_64-$4 mongodb

echo "add mongodb path"
cd /etc
sed  -i '$ a\export PATH=$PATH:~/mongodb/bin/' profile
echo "setting success then please source file commond: source /etc/profile"