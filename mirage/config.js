export default function() {
  this.namespace = 'api/v1';

  this.get('https://revised-server.herokuapp.com/v1/titles/titles', (schema) => {
    return schema.titles.all();
  });
}
