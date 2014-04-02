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
if [ $# -gt 0 ];then
    installPath=$1
else
    read -p "Please input the installation path (enter to use home directory):" inputPath
    if [ -z $inputPath ];then
        installPath=$HOME
    else
        installPath=$inputPath
    fi
fi

#download install file
if [ ! -f $downloadFile ]; then
    echo "download installation file..."
    curl -O $dlurl
    echo "Download done. "
fi

#extract
echo "Extracting..."
tar zxf $downloadFile
echo "Extracting done."
extracted=`ls |grep -m 1 "$fileName"`

#move to target path
if [ -d $extracted ];then
    echo $extraced
    mv $extracted $installPath
fi
echo "Install finished."
