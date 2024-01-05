#!/bin/sh

version="$1"

if [ -z "$version" ]; then
    echo "Usage: $0 <version>"
    exit 1
fi

cd src
gcc -O3 helloworld.c -o helloworld
cd ..

sudo rm -rf helloworld-$version

mkdir -p helloworld-$version/usr/local/bin
mkdir -p helloworld-$version/DEBIAN
cp DEBIAN/control helloworld-$version/DEBIAN
mv src/helloworld helloworld-$version/usr/local/bin

sudo chown -R 0:0 helloworld-$version/

dpkg -b helloworld-$version