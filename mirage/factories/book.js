import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  title(i) { return `Title ${i}`; },
  author(i) { return `Author ${200+i}`; },
  resources(i) { return [`${i+1}`, `${i+2}`, `${i+3}`]; },
});
