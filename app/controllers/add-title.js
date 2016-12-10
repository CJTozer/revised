import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    submitAction : function(){
      console.log(this.model);
      this.model.save();
      this.transitionToRoute('titles');
    }
  }
});
