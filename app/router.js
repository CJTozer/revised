import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('titles');
  this.route('titles/new');

  this.route('title', {path: 'titles/:title_id'});
  this.route('resource', {path: 'resources/:resource_id'});
});

export default Router;
