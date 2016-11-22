import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  title(i) { return `Title ${i}`; },
  Author(i) { return `Author ${200+i}`; },
});
