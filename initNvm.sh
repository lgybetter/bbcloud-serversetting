#fetch nvm to control node version
echo "fetch nvm intsall bash"
git clone git@github.com:creationix/nvm.git ~/.nvm
cd ~/.nvm
git checkout `git describe --abbrev=0 --tags`
./install.sh
