# Script to run just one time, after homebrew installation (http://brew.sh/)

# Homebrew taps for needed dependencies
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

# General dependencies
brew install pkg-config
brew install makedepend
brew install openssl
brew install libmetalink
brew insatll libssh2
brew insatll libidn
brew install readline
brew install icu4c
brew install pcre
brew install gettext
brew install autoconf
brew install automake
brew install libtool
brew install scons
brew install gdbm
brew install swig
brew install cmake
brew install ossp-uuid
brew install tcl-tk --enable-threads

brew install curl --with-libmetalink --with-openssl --with-ssh

brew install sqlite --with-functions --with-icu4c

brew install python

brew install git --with-brewed-curl --with-brewed-openssl --with-gettext --with-pcre

brew install wget --enable-iri

brew install mariadb

#brew install postgres --enable-dtrace --with-python
brew install postgres --enable-dtrace --with-python --no-tcl

# PHP dependencies
brew install libpng
brew install freetype
brew install jpeg
brew install unixodbc
brew install zlib
brew install gmp
brew install libxml2 --with-python
brew install libxslt
brew install tidy
brew install re2c
brew install flex

brew install php55 --with-gmp --with-homebrew-curl --with-homebrew-openssl --with-pgsql --with-phpdbg --with-tidy

git clone git@github.com:rupa/z.git ~/Dev/code/z
