# Example Debian Package

This repository contains an example package for a Debian packaging tutorial.

It follows this [tutorial](https://www.sindastra.de/p/1684/how-to-make-a-basic-debian-and-ubuntu-package-deb-the-easy-way).

In order to build the package the source code needs to be compiled.
```bash
gcc -O3 helloworld.c -o helloworld
```
Afterwards create the following directory structure via this command:
```bash
mkdir -p /usr/local/bin/
```

And copy the created binary into the bin folder.

When this is done, the package can be built with the following command:
```bash
dpkg -b ExampleDebianPackage
```

The resulting ExampleDebianPackage.deb file can be installed with the following command:
```bash
sudo dpkg -i ExampleDebianPackage.deb
```