'use strict';

// Include materialize CSS
require('materialize-css/dist/css/materialize.css');
// require('materialize-css/dist/js/materialize.js');

// Extra CSS
require('../css/extra.css');

// Extra JS for running materialize code when the DOM changes
require('../js/dom_monitor.js');

// Require index.html so it gets copied to dist
require('../static/index.html');

var Elm = require('../src/Main.elm');
var mountNode = document.getElementById('main');

// The third value on embed are the initial values for incomming ports into Elm
var app = Elm.Main.embed(mountNode);
