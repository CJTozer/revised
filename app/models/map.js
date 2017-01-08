import Ember from 'ember';
import DS from 'ember-data';
// import MapBuilder from 'map-maker';

export default DS.Model.extend( {
  specObj: DS.attr(),
  svgData: Ember.computed( 'spec_obj', function() {
    return DS.PromiseObject.create( {
      // promise: new Promise( function( resolve, reject ) {
      promise: new Promise( function( resolve ) {
        // new MapBuilder()
        //   .spec( this.get('specObj') )
        //   .onError( ( err ) => {
        //     reject( err );
        //   } )
        //   .onSuccess( ( data ) => {
        //     resolve( data );
        //   } )
        //   .build_map();
        resolve( 'OK' );
      } ),
    } );
  } ),
} );
