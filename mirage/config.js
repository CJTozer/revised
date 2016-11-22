export default function() {
  this.namespace = 'api/v1';

  this.get('/titles', (schema, request) => {
    return schema.titles.all();
  });
}
