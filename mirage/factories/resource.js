import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  resource_type(i) {
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
  description(i) {
    switch(i % 3) {
    case 0:
      return `Information about ${i}`;
    case 1:
      return `An image of ${i}`;
    case 2:
      return `Wikipedia: Random Article`;
    default:
      return "!!! Unknown !!!";
    }
  },
  text(i) {
    switch(i % 3) {
    case 0:
      return `Some text for resource ${i}`;
    case 1:
      return `https://placekitten.com/${800+i}/${600+i}`;
    case 2:
      return "https://en.wikipedia.org/wiki/Special:Random";
    default:
      return "!!! Not implemented !!!";
    }
  },
});
