const { PrismaClient } = require('@prisma/client')
const prisma = new PrismaClient()

async function main() {
    const result =await prisma.usuario.delete({
        where:{
            cod_usuario:'624c1dc6-c81a-44bc-a073-33f642fd0f39'
        },
       
    });

console.log(result)

}

main();