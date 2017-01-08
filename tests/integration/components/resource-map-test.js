import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent( 'resource-map', 'Integration | Component | resource map', {
  integration: true,
} );

test( 'it renders', function( assert ) {
  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });
  var
    header,
    body,
    image;

  // Render a link with a dummy object.
  this.set( 'resource', {
    description: 'Test Text Resource',
    text: 'Some Text',
    icon: 'test_icon',
  } );
  this.render( hbs`{{resource-map resource=resource}}` );

  // Check there's a header and a body
  header = this.$( '.collapsible-header' );
  assert.ok( header );
  body = this.$( '.collapsible-body' );
  assert.ok( body );

  // Check the text
  assert.ok( header.text().includes( 'Test Text Resource' ) );
  assert.equal( body.find( 'p' ).html().trim(), 'Some Text' );

  // Check the icon
  image = this.$( '.collapsible-header' ).find( 'i' );
  assert.ok( image );
  assert.equal( image.html().trim(), 'test_icon' );
} );
