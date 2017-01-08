import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent( 'resources-list', 'Integration | Component | resources list', {
  integration: true,
} );

test( 'it renders', function( assert ) {
  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render( hbs`{{resources-list}}` );

  assert.ok( this.$().text().trim().includes( 'No Resources' ) );

  // @@@ TODO - test with an actual list of resources.
} );
