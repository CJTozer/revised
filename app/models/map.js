import Ember from 'ember';
import DS from 'ember-data';
// import MapBuilder from 'map-maker';

// const { RSVP: { Promise } } = Ember;

export default DS.Model.extend( {
  specObj: DS.attr(),
  svgData: Ember.computed( 'spec_obj', function() {
    // var mapbuilder = new MapBuilder()
    //   .spec( this.get('specObj') )
    //   .onError( ( err ) => {
    //     throw new Error( err );
    //   } )
    //   .onSuccess( ( data ) => {
    //     if ( cmd.test ) {
    //       utils.log.progress( 'Writing to test-site...' );
    //       fs.writeFile( 'test-site/map_data.svg', data, function( err ) {
    //         if ( err ) {
    //           utils.log.error( err );
    //         }
    //       } );
    //     }
    //   } );
    // mapbuilder.build_map();
    return DS.PromiseObject.create( {
      // promise: new Promise( function( resolve, reject ) {
      promise: new Promise( function( resolve ) {
        resolve( 'OK' );
      } ),
    } );
    //
    // return `SVG: ${this.get('specObj')}`;
  } ),
} );
