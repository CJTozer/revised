import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent( 'animated-tooltip', 'Integration | Component | animated tooltip', {
  integration: true,
} );

test( 'it renders', function( assert ) {
  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render( hbs`{{animated-tooltip}}` );

  assert.equal( this.$().text().trim(), '' );

  // Template block usage:
  this.render( hbs`
    {{#animated-tooltip}}
      template block text
    {{/animated-tooltip}}
  ` );

  assert.equal( this.$().text().trim(), 'template block text' );
} );
