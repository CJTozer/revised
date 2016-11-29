import Ember from 'ember';
import DS from 'ember-data';

export default DS.Model.extend({
  text: DS.attr(),
  resource_type: DS.attr(),

  icon: Ember.computed('resource_type', function() {
    // Simply switch on resource_type to get the icon name
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
  }),

  // Helpers for handlebars
  isImage: Ember.computed('resource_type', function() {
    return this.get('resource_type') === 'Image';
  }),
  isLink: Ember.computed('resource_type', function() {
    return this.get('resource_type') === 'Link';
  }),
});
