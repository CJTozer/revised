import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent( 'resource-link', 'Integration | Component | resource link', {
  integration: true,
} );

test( 'it renders', function( assert ) {
  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });
  var
    link,
    image;

  // Render a link with a dummy object.
  this.set( 'resource', {
    description: 'Test Link Resource',
    text: 'http://example.com',
    icon: 'test_icon',
  } );
  this.render( hbs`{{resource-link resource=resource}}` );

  // Check there's a header
  assert.ok( this.$( '.collapsible-header' ) );

  // Check the link
  link = this.$( '.collapsible-header' ).find( 'a' );
  assert.ok( link );
  assert.equal( link.html().trim(), 'Test Link Resource' );
  assert.equal( link[ 0 ].href, 'http://example.com/' );

  // Check the icon
  image = this.$( '.collapsible-header' ).find( 'i' );
  assert.ok( image );
  assert.equal( image.html().trim(), 'test_icon' );
} );
