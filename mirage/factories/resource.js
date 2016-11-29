import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  resourceType(i) {
    switch(i % 3) {
    case 0:
      return "Text";
    case 1:
      return "Image";
    case 2:
      return "Link";
    default:
      return "Unknown";
    }
  },
  text(i) {
    switch(i % 3) {
    case 0:
      return "Some text for this resource";
    case 1:
      return `https://placekitten.com/${200+i}/${200+i}`;
    case 2:
      return "https://en.wikipedia.org/wiki/Special:Random";
    default:
      return "!!! Not implemented !!!";
    }
  },
});
