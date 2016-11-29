import Ember from 'ember';
import DS from 'ember-data';

export default DS.Model.extend({
  text: DS.attr(),
  resource_type: DS.attr(),

  icon: Ember.computed('resource_type', function() {
    console.log(this);
    console.log(this.get('resource_type'));
    console.log(Object.keys(this));

    switch(this.get('resource_type')) {
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
