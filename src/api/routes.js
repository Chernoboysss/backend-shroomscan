const MushroomHandler = require('./handler');

const routes = [
    {
        method: 'GET',
        path: '/jamur',
        handler: MushroomHandler.getAllMushroomHandler,
    },
    {
        method: 'GET',
        path: '/jamur/{jamurId}',
        handler: MushroomHandler.getMushroombyIdHandler,
    }

];

module.exports = routes;