import DS from 'ember-data';

export default DS.RESTAdapter.extend({
  host: 'https://revised-server.herokuapp.com',
  namespace: 'v1'
});
