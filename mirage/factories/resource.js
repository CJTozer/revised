import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  resource_type(i) {
    switch(i % 4) {
    case 0:
      return "Text";
    case 1:
      return "Image";
    case 2:
      return "Link";
    case 3:
      return "Map";
    default:
      return "Unknown";
    }
  },
  description(i) {
    switch(i % 4) {
    case 0:
      return `Information about ${i}`;
    case 1:
      return `An image of ${i}`;
    case 2:
      return `Wikipedia: Random Article`;
    case 3:
      return `A Map of Something`;
    default:
      return "!!! Unknown !!!";
    }
  },
  text(i) {
    switch(i % 4) {
    case 0:
      return `Some text for resource ${i}`;
    case 1:
      return `https://placekitten.com/${800+i}/${600+i}`;
    case 2:
      return "https://en.wikipedia.org/wiki/Special:Random";
    case 3:
      return "!!! TODO - MAP DATA !!!";
    default:
      return "!!! Not implemented !!!";
    }
  },
});
