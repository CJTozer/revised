export default function() {
  this.namespace = 'api';

  this.get('/titles', (schema, request) => {
    return schema.titles.all();
  });
}
