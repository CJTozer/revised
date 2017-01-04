import Ember from 'ember';

export default Ember.Component.extend( {
  didInsertElement: function() {
    var collapsible = this.$( '.collapsible' ).collapsible();
    this.set( 'collapsible', collapsible );
  },

  willDestroyElement: function() {
    this.get( 'collapsible' ).stop();
  },
} );
