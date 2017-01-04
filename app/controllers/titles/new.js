import Ember from 'ember';

export default Ember.Controller.extend( {
  actions: {
    submitAction: function() {
      this.model.save();
      // Model hasn't got its ID yet...
      this.transitionToRoute( 'title', this.model );
    },
  },
} );
