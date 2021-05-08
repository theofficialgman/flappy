clear
cd
echo "Flappy Bird script started!"
echo "Installing Dependencies"
echo
sudo apt install --assume-yes subversion subversion libsdl1.2-dev libsdl2-mixer-dev libsdl2-dev libsdl-mixer1.2-dev libsdl2-image-dev
sudo apt install --assume-yes libsndio*
echo
echo "Downloading the game"
# svn export https://github.com/cobalt2727/L4T-Megascript/trunk/assets/FlappyBird
# cd FlappyBird
# mv flappy.sh -t /$HOME/RetroPie/roms/ports
# cd
rm -r FlappyBird
wget -q https://github.com/theofficialgman/flappy/archive/master.zip
unzip master.zip
rm master.zip
mv flappy-master flappy
cd flappy
chmod 777 ./Builds/Linux/5c_1
echo
echo "Erasing files to save space..."
echo
rm .gitignore
rm Makefile
sudo rm -rf ./Code
sudo rm -rf ./.git
sudo rm -rf ./DevDox
sudo rm -rf ./Promotion
echo
echo "Adding to applications menu"
echo
sudo rm -f /usr/share/applications/flappy.desktop
sudo mv flappy.desktop -t /usr/share/applications
cd
sudo rm -rf /usr/share/flappy
sudo mv flappy -t /usr/share
echo
echo "Game installed!"
sleep 2
echo
echo "Sending you back to the main menu..."
