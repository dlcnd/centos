#!/bin/sh
if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi
cd /home/$USER/app
wget https://github.com/openexr/openexr/archive/v2.3.0.tar.gz
tar -zxvf v2.3.0.tar.gz
cd openexr-2.3.0
cd IlmBase
./bootstrap
#scl enable devtoolset-6 bash
./configure --prefix="/home/$HOME/app/IlmBase"
make
make install
cd ../OpenEXR
./bootstrap
./configure --prefix="/home/$HOME/app/openexr --with-ilmbase-prefix=$HOME/app/IlmBase"
make
make install
cd /home/$USER/app
rm v2.3.0.tar.gz
