#!/usr/bin/env bash
#
# install.sh
#

echo "Downloading the Simple OSX Cache Clean"
curl -o osxcc https://raw.githubusercontent.com/cegohub/osx_cache_clean/master/osxcc.sh 2>/dev/null
echo "Starting Simple OSX Cache Clean installation"
sleep 1
chmod +x osxcc
echo "Installing OSX Cache Clean"
sleep 1
sudo mv osxcc /usr/local/bin/osxcc
echo "The app was successfully installed"
echo "Now you can run the app with the command 'osxcc' in your terminal"
