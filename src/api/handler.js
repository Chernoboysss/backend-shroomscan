async function getAllMushroomHandler(req, h) {
    const responseData = {
        '1': 'jamur',
    }

    const response = h.response({
        status: "success",
        data: {
            jamur: responseData,
        },
    });

    return response;
}

async function getMushroombyIdHandler(request,h){
    const { jamurId } = request.params;
    const responseData = {
        'nama' : 'jamur by id',
    }

    const response = h.response({
        status: "success",
        data: {
            id : jamurId,
            jamur: responseData,
        },
    });

    return response;
}


module.exports = {getAllMushroomHandler,getMushroombyIdHandler};