FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl

#
# http://linuxg.net/how-to-fix-error-sudo-add-apt-repository-command-not-found/
#
RUN apt-get install -y software-properties-common


# SEE installing node:
# https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager

RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN cd usr/bin; ln -s nodejs node; cd ../..

#
# Install git client
#
RUN apt-get install -y git

#
# Installing SASS/Compass
# http://ndever.net/articles/linux/installing-sass-and-compass-ubuntu-1210-1304
#
# ruby-sass
RUN apt-get install -y ruby-full rubygems-integration
RUN gem install sass -v 3.2.19
RUN gem install compass

#
# Install gulp
#
RUN npm install -g gulp
RUN npm install -g bower

#
# Install pip
#
RUN apt-get install -y python-pip

#
# Install aws command line interface
#
RUN pip install awscli