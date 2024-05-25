const Hapi = require('@hapi/hapi');
require('dotenv').config();


(async () => {
    const server = Hapi.server({
        port: 3000,
        host: 'localhost',
        routes: {
            cors: {
              origin: ['*'],
            },
        },
    })
    await server.start();
    console.log(`Server start at: ${server.info.uri}`);
})();