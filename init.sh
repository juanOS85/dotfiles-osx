### Script to run just one time, after homebrew installation (http://brew.sh/)

# Homebrew taps for needed dependencies
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

brew tap --repair

brew update

# General dependencies
brew install pkg-config
brew install makedepend
brew install openssl
brew install libmetalink
brew install libssh2
brew install libidn
brew install readline
brew install icu4c
brew install pcre
brew install xz
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
brew install ssh-copy-id
brew install c-ares
brew install libpng
brew install freetype
brew install jpeg
brew install imagemagick
brew install rtmpdump
brew install gpg
brew install libgpg-error
brew install libgcrypt
brew install libksba
brew install libassuan
brew install pth
brew install pinentry
brew install gpg-agent
brew install aspell

brew install bash
brew install zsh

brew install curl --with-c-ares --with-libidn --with-libmetalink --with-openssl --with-libssh2 --with-rtmpdump

brew install go --with-cc-all

### Utilities

# Vim optional dependecy
brew install lua --with-completion

brew install wget --with-iri

### Development
brew install mariadb --with-archive-storage-engine --with-bench
brew install sqlite --with-functions --with-icu4c
brew install postgres --with-dtrace

# Python
brew install python --with-brewed-tk

# PHP dependencies
brew install unixodbc
brew install zlib
brew install gmp
brew install libxml2 --with-python
brew install libxslt
brew install tidy
brew install re2c
brew install flex

# PHP
brew install php56 --with-gmp --with-homebrew-libxslt --with-homebrew-openssl --with-postgresql --with-tidy
brew install php56-xdebug
brew install php56-imagick
brew install php56-pspell
brew install php56-crypto

# Composer: Dependency Manager for PHP
brew install composer

# VCS
brew install subversion --with-gpg-agent --with-python
brew install git --with-blk-sha1 --with-brewed-curl --with-brewed-openssl --with-brewed-svn --with-gettext --with-pcre --with-persistent-https
# brew install git --with-blk-sha1 --with-gettext --with-pcre --with-persistent-https

# NginX
# for install it with Fushion Passenger support
brew install passenger

brew install nginx --with-debug --with-gunzip --with-passenger --with-spdy

### third-party repos

# RVM: To install and handle several Ruby versions
# Depdencies for RVM and to complile Ruby
brew install grep
brew install ncurses
brew install libffi
brew install glib
brew install mono
brew install libyaml

# Check if RVM isn't install already
if [ ! -d ~/.rvm ]; then
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    curl -sSL https://get.rvm.io | bash -s stable
fi

# After RVM is install
rvm autolibs homebrew

# after install a Ruby version
brew install vim --with-lua --with-tcl

brew install heroku-toolbelt

# Set ZSH as default shell
chsh -s /bin/zsh

# Remove any .bash* file
rm -f .bash_* .bashrc .profile
