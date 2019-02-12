#!/bin/sh
cd/ tmp
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py
pip install --user pymediainfo
pip install --user PySide2
pip install --user numpy
pip install --user Cython
ppip install --user openpyxl
pip install --user xlsxwriter
pip install --user xlrd
pip install --user xlwt
pip install --user xlutils
pip install --user pillow 
pip install --user timecode
pip install --user edl
pip install --user opentimelineio

#pip install --upgrade setuptools 
#간혹 이 작업 후 부팅 안되는 컴퓨터 발생 

