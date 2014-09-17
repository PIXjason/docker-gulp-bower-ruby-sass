#!/bin/bash

/etc/init.d/xvfb start

echo 'Launching Integration Tests ...'

export DISPLAY=:10

#
# Run the protractor tests (more or less ripped off from: http://angular.github.io/protractor/#/tutorial)
#
protractor conf.js -Djava.security.egd=file:/dev/./urandom

#
# Make sure to tear down the xvfb service
#
/etc/init.d/xvfb stop


