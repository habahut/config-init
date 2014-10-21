#/bin/bash

mkdir ~/bin

## just in case
sudo apt-get install -y git-core

### tmux set up
sudo apt-get install -y tmux
mv capsChange ~/bin/capsChange
mv .tmux.conf ~/.tmux.conf

mv statusbar ~/bin/statusbar

### keypass
mv mah_keys.kdbx ~/mah_keys.kdbx
#apt-get install keypass??? Doesn't seem to be available. Have keys for when it is necessary

## bro pages
sudo apt-get install -y ruby
sudo gem install bropages


mv .bashrc ~/.bashrc
mv .bash_aliases ~/.bash_aliases


sudo apt-get remove -y vim-tiny
sudo apt-get install -y vim
mv .vim ~/.vim

sudo apt-get install -y python-pip

sudo apt-get install -y compizconfig-settings-manager

# install google-chrome
sudo apt-get -y install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo apt-get -f -y install

# disable amazon lens shopping bullshit
gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"
