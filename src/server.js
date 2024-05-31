const Hapi = require('@hapi/hapi');
require('dotenv').config();

// routes
const routes = require('./api/routes');



const init = async () => {
    const server = Hapi.server({
      port: 3000,
      host: 'localhost',
    });
   
    server.route(routes);
    
    await server.start();
    console.log(`Server berjalan pada ${server.info.uri}`);
  };
   
   
  init();