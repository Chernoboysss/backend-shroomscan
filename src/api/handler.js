const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();

const getAllMushroomHandler = async (request, h) => {
    try {
        const jamur = await prisma.jamur.findMany();

        const response = h.response({
            status : "success",
            data : jamur,
        });
        response.code(200) ;
        return response ;

    } catch (error) {
        const response = h.response({
            status : 'fail',
            message : error,
        })
        response.code(500);
        return response ;
    }
};



const getMushroombyIdHandler = async (request, h) => {
    try {
        const {jamurId} = request.params;
        const jamur = await prisma.jamur.findUnique({
            where: {
                id: parseInt(jamurId),
            },
        });

        if (!jamur) {
            // Jika data tidak ditemukan, kembalikan respons dengan status fail
            const response = h.response({
                status: "fail",
                message: `Jamur dengan id ${jamurId} tidak ditemukan`,
            });
            response.code(404);
            return response;
        }

        const response = h.response({
            status: "success",
            data: jamur
        });
        response.code(200) ;
        return response;
        
    } catch (error) {
        const response = h.response({
            status : 'fail',
            message : error,
        })
        response.code(500);
        return response ;
    }

}

module.exports = {
    getAllMushroomHandler,
    getMushroombyIdHandler
};