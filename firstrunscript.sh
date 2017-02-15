mv bashrc ~/.bashrc
mv git-completion.bash ~/git-completion.bash
mv git-prompt.sh ~/git-prompt.sh

mkdir build
cd build

sudo apt-get -y update # ok
sudo apt-get -y upgrade # ok

# Install Telegram

sudo add-apt-repository -y ppa:atareao/telegram # ok needs enter
sudo apt-get -y update # ok
sudo apt-get install -y telegram # ok

# Install cmake

sudo apt-get install -y cmake # ok

# Install Boost Library

sudo apt-get -y install libboost-all-dev # ok

# Install Spotify

sudo apt-key -y adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 # ok
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list # ok
sudo apt-get -y update # ok
sudo apt-get install -y spotify-client # ok

# Install TeamViewer

wget "http://download.teamviewer.com/download/teamviewer_i386.deb" # ok
sudo dpkg -i teamviewer_i386.deb # ok
sudo apt-get -y -f install # ok

# Install Sublime

wget "https://download.sublimetext.com/sublime-text_build-3126_amd64.deb" # ok
sudo dpkg -i sublime-text_build-3126_amd64.deb # ok

# Download pt-br dict for sublime

wget "https://github.com/titoBouzout/Dictionaries/raw/master/Portuguese%20(Brazilian).dic" # ok
wget "https://github.com/titoBouzout/Dictionaries/raw/master/Portuguese%20(Brazilian).aff" # ok
mv Portuguese\ \(Brazilian\).dic ~/.config/sublime-text-3/Packages/User/pt-br.dic # ok
mv Portuguese\ \(Brazilian\).aff ~/.config/sublime-text-3/Packages/User/pt-br.aff # ok

# Install Git

sudo apt-get install -y git # ok

# Install Dropbox

wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf - # ok
mv .dropbox-dist/ ~/.dropbox-dist/ # ok


# Install Texlive

wget "https://raw.githubusercontent.com/scottkosty/install-tl-ubuntu/master/install-tl-ubuntu" # ok
sudo chmod +x install-tl-ubuntu # ok
sudo ./install-tl-ubuntu # ok
sudo apt-get install -y perl-tk # ok

# sudo reboot

sudo visudo # add the /opt/texbin to the line >>> Defaults    secure_path="..."

wget "http://tug.org/fonts/getnonfreefonts/install-getnonfreefonts" # ok
sudo chmod -X install-getnonfreefonts # ok
sudo ./install-getnonfreefonts # ok
getnonfreefonts --all # ok

# Install Okular

sudo apt-get install -y okular # ok

# Install Pygame

sudo apt-get install -y python-pygame # ok

# Install Matplotlib

sudo apt-get install -y python-matplotlib # ok

# Install Scipy

sudo apt-get install -y python-scipy # ok

# Finish install

cd ..
rm -f -r build

