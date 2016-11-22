export default function() {
  this.namespace = '/api';

  this.get('/titles', function() {
    return {
      data: [{
        type: 'titles',
        id: 'longitude-dava-sobel',
        attributes: {
          title: 'Longitude',
          author: 'Dava Sobel',
        }
      }, {
        type: 'titles',
        id: 'peter-the-great-robert-k-massie',
        attributes: {
          title: 'Peter The Great',
          author: 'Robert K. Massie',
        }
      }, {
        type: 'titles',
        id: 'the-two-koreas-don-oberdorfer',
        attributes: {
          title: 'The Two Koreas',
          author: 'Don Oberdorfer',
        }
      }]
    };
  });
}
