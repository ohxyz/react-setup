#!/bin/sh

if [ $# -eq 0 ]
  then
    echo "Please provide a project name."
    exit 1
fi
    
echo "Create project directory."
rm -rf $1 && mkdir $1

echo "Copy files to $1."
curl https://codeload.github.com/ohxyz/react-get-started/zip/master | tar -xf - -C $1 --strip-components=2 react-get-started-master/src
cd $1

echo "Install node packages."
npm i

echo "Start development."
npm run dev