import Ember from 'ember';

export default Ember.Component.extend({
  didInsertElement: function () {
    console.log(this.$('.materialboxed'));
    var materialBoxed = this.$('.materialboxed').materialbox();
    this.set('materialBoxed', materialBoxed);
  },

  willDestroyElement: function () {
    this.get('materialBoxed').stop();
  },
});
