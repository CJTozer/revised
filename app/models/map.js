import Ember from 'ember';
import DS from 'ember-data';
import MapBuilder from 'npm:map-maker';

export default DS.Model.extend( {
  spec_obj: DS.attr(),
  // Hack for now as I can't get Ember.computed, and the promise return to work.
  retrieved_svg_data: DS.attr(),
  svg_data: Ember.computed( 'spec_obj', function() {
    var self = this;
    return DS.PromiseObject.create( {
      promise: new Promise( function( resolve, reject ) {
        new MapBuilder()
          .spec( this.get( 'specObj' ) )
          .onError( ( err ) => {
            reject( err );
          } )
          .onSuccess( ( data ) => {
            self.set( 'retrieved_svg_data', data );
            resolve( data );
          } )
          .build_map();
        // Ember.run.later(function() {
        //   self.set( 'retrieved_svg_data', 'OKOKOK' );
        //   resolve( 'OK' );
        // }, 1000);
      } ),
    } );
  } ),
} );
