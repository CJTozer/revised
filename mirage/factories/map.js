import { Factory } from 'ember-cli-mirage';

export default Factory.extend( {
  spec_obj( i ) {
    return {
      test: i,
    };
  },
} );
