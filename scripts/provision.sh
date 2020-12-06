#!/bin/bash

# Install kiwix-tools
# wget https://ftp.fau.de/kiwix/nightly/2017-08-13/kiwix-tools_linux64_2017-08-13.tar.gz
# wget https://ftp.fau.de/kiwix/nightly/2018-06-01/kiwix-tools_linux-x86_64-2018-06-01.tar.gz
wget https://download.kiwix.org/release/kiwix-tools/kiwix-tools_linux-x86_64-3.1.2-4.tar.gz
# tar -xvzf kiwix-tools_linux-x86_64-2018-06-01.tar.gz -C ./bin
# tar -xvzf kiwix-tools_linux-x86_64-2018-06-01.tar.gz -C ./bin --strip-components 1
tar -xvzf kiwix-tools_linux-x86_64-3.1.2-4.tar.gz -C ./bin --strip-components 1

