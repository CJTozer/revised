export default function(server) {
  // Default data for development server
  server.createList('book', 10);
  server.createList('resource', 100);
}
