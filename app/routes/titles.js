import Ember from 'ember';

let titles = [{
  id: 'longitude-dava-sobel',
  title: 'Longitude',
  author: 'Dava Sobel',
}, {
  id: 'peter-the-great-robert-k-massie',
  title: 'Peter The Great',
  author: 'Robert K. Massie',
}, {
  id: 'the-two-koreas-don-oberdorfer',
  title: 'The Two Koreas',
  author: 'Don Oberdorfer',
}];

export default Ember.Route.extend({
  model() {
    return titles;
  }
});
