export default function() {
  this.namespace = 'api/v1';

  this.get('https://revised-server.herokuapp.com/v1/books', (schema) => {
    return schema.books.all();
  });

  this.get('https://revised-server.herokuapp.com/v1/books/:id', (schema, request) => {
    return schema.books.find(request.params.id);
  });

  this.get('https://revised-server.herokuapp.com/v1/resources/:id', (schema, request) => {
    return schema.resources.find(request.params.id);
  });
}
