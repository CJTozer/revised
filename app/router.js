import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('titles', function() {
    this.route('list', { path: '/' }); // Default route
    this.route('list');
    this.route('new');
  });

  this.route("title", { path: "title/:title_id" }, function() {
    this.route("view", { path: "/" }); // Default route
  });

  this.route('resource', {path: 'resources/:resource_id'});
});

export default Router;
