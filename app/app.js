import Ember from 'ember';
import Resolver from './resolver';
import loadInitializers from 'ember-load-initializers';
import config from './config/environment';

let App;

Ember.MODEL_FACTORY_INJECTIONS = true;

App = Ember.Application.extend( {
  modulePrefix: config.modulePrefix,
  podModulePrefix: config.podModulePrefix,
  Resolver,
} );

loadInitializers( App, config.modulePrefix );

export default App;

// Patch the LinkComponent to handle passing through data- attributes.
Ember.LinkComponent.reopen( {
  attributeBindings: [ 'data-tooltip', 'data-position', 'data-delay' ],
} );
