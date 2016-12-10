import Ember from 'ember';
import { RestSerializer } from 'ember-cli-mirage';

// serializers/application.js
const { underscore } = Ember.String;

export default RestSerializer.extend({
  keyForAttribute(attr) {
    return underscore(attr);
  }
});
