#require git --ununbtu sys version
echo "fetch nvm intsall bash"
./installNvm.sh
echo "install success"
cd ~
./.bashrc
echo "source nvm success now install node"
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
echo "release mongodb and rename"
tar -zxf -f mongodb-linux-x86_64-3.2.0.tgz
mv mongodb-linux-x86_64-2.2.2 mongodb

echo "配置mongodb环境变量"
cd /etc
sed  -i '$ a\ttt' profile
echo "配置成功，进行配置文件生效"
./.profile

echo "服务器搭建成功"


