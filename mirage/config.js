export default function() {
  this.namespace = 'api/v1';

  this.get('/titles', (schema) => {
    return schema.titles.all();
  });
}
