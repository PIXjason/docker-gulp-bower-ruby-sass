// conf.js

var conf = require('./node_modules/selenium-standalone/conf.js');
exports.config = {
     jasmineNodeOpts: {
        defaultTimeoutInterval: 40000,
        isVerbose: true,
        showColors: true,
        includeStackTrace: true
    },
    chromeDriver: conf.chromeDr.path,
    seleniumServerJar : conf.selenium.path,
    multiCapabilities: [
        {
            browserName: 'firefox'
        },
        {
            browserName: 'chrome'
        }
    ],
    specs: ['spec.js']
};