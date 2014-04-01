#!/bin/bash
#architecture, could be "x86_64" or "i686"
arch="x86_64" 
#version
version="2.4.9"
#filename
fileName="mongodb-linux-$arch-${version}"
downloadFile="${fileName}.tgz"
#download url
dlurl="http://fastdl.mongodb.org/linux/$downloadFile"
#install path
installPath=$HOME
if [ ! -f $downloadFile ]; then
    echo "download installation file..."
    curl -O $dlurl
    echo "Download done. "
fi
echo "Extracting..."
tar zxf $downloadFile
echo "Extracting done."
extracted=`ls |grep -m 1 "$fileName"`
if [ -d $extracted ];then
    echo $extraced
    mv $extracted $installPath
fi
echo "Install finished."
