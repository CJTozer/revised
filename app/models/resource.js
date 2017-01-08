import Ember from 'ember';
import DS from 'ember-data';

export default DS.Model.extend( {
  description: DS.attr(),
  text: DS.attr(),
  resource_type: DS.attr(),
  // 'belongsTo' is a bit of a misnomer here, but is the way to get a one-to-many
  // relationship in this direction.
  map: DS.belongsTo( 'map', { async: true } ),

  icon: Ember.computed( 'resource_type', function() {
    // Simply switch on resource_type to get the icon name
    switch ( this.get( 'resource_type' ) ) {
    case 'Text':
      return 'short_text';
    case 'Image':
      return 'photo';
    case 'Link':
      return 'link';
    case 'Map':
      return 'map';
    default:
      return 'help';
    }
  } ),

  // Helpers for handlebars
  isImage: Ember.computed( 'resource_type', function() {
    return this.get( 'resource_type' ) === 'Image';
  } ),
  isLink: Ember.computed( 'resource_type', function() {
    return this.get( 'resource_type' ) === 'Link';
  } ),
  isMap: Ember.computed( 'resource_type', function() {
    return this.get( 'resource_type' ) === 'Map';
  } ),
} );
