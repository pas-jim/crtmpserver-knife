#!/bin/bash
cd builders/cmake
cmake .
cmake -DCMAKE_BUILD_TYPE=Release -DCRTMPSERVER_INSTALL_PREFIX=/opt/crtmpd
make
make install

