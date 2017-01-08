import { moduleForModel, test } from 'ember-qunit';

moduleForModel( 'map', 'Unit | Model | map', {
  // Specify the other units that are required for this test.
  needs: [],
} );

test( 'async.assert() it exists', function( assert ) {
  var
    spec_obj = {
      test: 'thing',
    },
    done = assert.async();
  let model = this.subject( { specObj: spec_obj } );
  // let store = this.store();
  assert.ok( !!model );
  model.get( 'svgData' ).then( function( data ) {
    assert.equal( data, 'OK' );
    done();
  }, function( err ) {
    assert.notOk( err );
  } );
} );
