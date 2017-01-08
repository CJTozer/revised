export default function() {
  this.namespace = 'api/v1';

  this.get( 'https://revised-server.herokuapp.com/v1/books', ( schema ) => {
    return schema.books.all();
  } );
  this.post( 'https://revised-server.herokuapp.com/v1/books', ( schema, request ) => {
    // Convert JSON body to an object
    var requestObject = JSON.parse( request.requestBody );
    // Create the new DB entry, and update the request object (with the ID)
    requestObject.book = schema.db.books.insert( requestObject.book );
    return requestObject;
  } );

  this.get( 'https://revised-server.herokuapp.com/v1/books/:id', ( schema, request ) => {
    return schema.books.find( request.params.id );
  } );

  this.get( 'https://revised-server.herokuapp.com/v1/resources/:id', ( schema, request ) => {
    return schema.resources.find( request.params.id );
  } );
}
