import DS from 'ember-data';

export default DS.Model.extend({
  resource_type: DS.attr(),
  text: DS.attr(),
});
