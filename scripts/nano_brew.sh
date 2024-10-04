#!/bin/bash
sudo mv /usr/bin/nano /usr/bin/nano_old
echo 'include "'"$(brew --cellar nano)"'/*/share/nano/*.nanorc"' >> ~/.nanorc
