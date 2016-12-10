import Ember from 'ember';

export default Ember.Component.extend({
  didInsertElement: function () {
    var tooltipped = this.$('.tooltipped').tooltip({delay: 50});
    this.set('tooltipped', tooltipped);
  },

  willDestroyElement: function () {
    this.$('.tooltipped').tooltip('remove');
    this.get('tooltipped').stop();
  },
});
