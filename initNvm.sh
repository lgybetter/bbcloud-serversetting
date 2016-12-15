#fetch nvm to control node version
echo "fetch nvm intsall bash"
wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh
cd ~
echo "source ~/.bashrc"
.bashrc
nvm install stable
nvm use node