import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  resourceType(i) { return `Text`; },
  text(i) { return `Text for resource ${i}`; },
});
