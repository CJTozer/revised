import Ember from 'ember';
import DS from 'ember-data';

export default DS.Model.extend({
  text: DS.attr(),
  resourceType: DS.attr(),

  icon: Ember.computed('resourceType', function() {
    console.log(this);
    console.log(this.get('resourceType'));
    console.log(Object.keys(this));

    switch(this.get('resourceType')) {
    case "Text":
      return "short_text";
    case "Image":
      return "photo";
    case "Link":
      return "link";
    default:
      return "help";
    }
  })
});
