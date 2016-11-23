import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  title(i) { return `Title ${i}`; },
  author(i) { return `Author ${200+i}`; },
});