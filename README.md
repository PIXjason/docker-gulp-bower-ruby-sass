A basic setup for a WebUI Continuous Integration server.

Currently defines an Ubuntu container with the following:
- curl
- git
- nodejs
- ruby/rubygems
- sass / compass
- gulp
- bower
- protractor
- python-pip
- aws-cli
- Selenium Standalone instance.
- Wrapper around Xvfb (/etc/init.d/xvfb) to allow reliable {start|stop|status|restart|force-reload}

Selenium / Protractor setup.

Unlike many of the example Dockerfiles in DockerHub, we are not standing up a persistant selenium instance. We are creating and tearing down a selenium/webdriver instance every time a set of integration tests are run.

There are some special selenium setup to get it to run headless chrome and FF:
- https://www.exratione.com/2013/12/angularjs-headless-end-to-end-testing-with-protractor-and-selenium/

Building and testing the Dockerfile:
    docker build -t temp-protractor .
    docker run --privileged -t -i temp-protractor ./testSelenium.sh
