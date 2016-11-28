import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  resource_type(i) { return "Text"; },
  text(i) { return `Text for resource ${i}`; }
});
