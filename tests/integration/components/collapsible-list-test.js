import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent( 'collapsible-list', 'Integration | Component | collapsible list', {
  integration: true,
} );

test( 'it renders', function( assert ) {
  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render( hbs`{{collapsible-list}}` );

  assert.equal( this.$().text().trim(), '' );

  // Template block usage:
  this.render( hbs`
    {{#collapsible-list}}
      template block text
    {{/collapsible-list}}
  ` );

  assert.equal( this.$().text().trim(), 'template block text' );
} );
