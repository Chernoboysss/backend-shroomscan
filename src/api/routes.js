const MushroomHandler = require('./handler');

const routes = [
    {
        method: 'GET',
        path: '/mushrooms',
        handler: MushroomHandler.getAllMushroomHandler,
    },
    {
        method: 'GET',
        path: '/mushrooms/{jamurId}',
        handler: MushroomHandler.getMushroombyIdHandler,
    },
    {
        method: 'GET',
        path: '/recipes',
        handler: MushroomHandler.getAllRecipeHandler,
    },
    {
        method: 'GET',
        path: '/recipes/{resepId}',
        handler: MushroomHandler.getAllRecipebyIdHandler,
    },

];


module.exports = routes;