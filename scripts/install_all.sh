#!/bin/sh
./nvidia.sh
./rmbeep.sh
./trans.sh
./utility.sh
./djv.sh
./code.sh
./mpv.sh
./rmhotcorner.sh
./pip.sh
./devtools.sh
./ffmpeg.sh
./handbrake.sh
./openimageio.sh
./ocio_config.sh

# gcc6.x를 이용해서 빌드한다.
scl enable devtoolset-6 ./cmake.sh
scl enable devtoolset-6 ./openexr.sh
scl enable devtoolset-6 ./opencolorio.sh
