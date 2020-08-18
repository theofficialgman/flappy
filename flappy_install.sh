clear
cd
echo "Flappy Bird script started!"
echo "Installing Dependencies"
echo
sudo apt install --assume-yes libsdl2-2.0-0 libsdl2-image-2.0-0 libsdl2-mixer-2.0-0 libc6 libpng16-16 libjpeg-turbo8 libtiff5 libwebp6 libmodplug1 libfluidsynth1 libvorbisfile3 libflac8 libmad0 zlib1g liblzma5 libjbig0 libstdc++6 libglib2.0-0 libjack-jackd2-0 libasound2 libpulse0 libsndfile1 libreadline7 libvorbis0a libogg0 libgcc1 libpcre3 libc6 libpulse0 libvorbisenc2 libtinfo5 libdbus-1-3 libxcb1 libsystemd0 libwrap0 libasyncns0 libxau6 libxdmcp6 liblz4-1 libgcrypt20 libc6 libbsd0 libgpg-error0
echo
echo "Downloading the game"
wget https://github.com/theofficialgman/flappy/archive/master.zip
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
