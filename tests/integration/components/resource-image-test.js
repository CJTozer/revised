import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent( 'resource-image', 'Integration | Component | resource image', {
  integration: true,
} );

test( 'it renders', function( assert ) {
  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render( hbs`{{resource-image}}` );

  assert.ok( this.$( '.collapsible-header' ) );
  assert.ok( this.$( '.collapsible-body' ) );

  // Template block usage:
  this.render( hbs`
    {{#resources-list}}
      template block text
    {{/resources-list}}
  ` );

  assert.ok( this.$( '.collapsible-header' ) );
  assert.ok( this.$( '.collapsible-body' ) );
} );
