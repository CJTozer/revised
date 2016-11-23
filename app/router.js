import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('titles');
  this.route('title', {path: 'titles/:title_id'});
});

export default Router;
