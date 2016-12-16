echo "install node version"
nvm install stable
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
wget http://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.2.0.tgz
echo "release and rename mongodb"
tar -zxf -f mongodb-linux-x86_64-3.2.0.tgz
mv mongodb-linux-x86_64-2.2.2 mongodb

echo "add mongodb path"
cd /etc
sed  -i '$ a\export PATH=$PATH:~/mongodb/bin/' profile
echo "setting success then please source file commond: source /etc/profile"