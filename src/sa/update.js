import { PrismaClient } from "@prisma/client"

 const prisma = new PrismaClient()


async function main() {
    const result =await prisma.usuario.update({
        where:{
            cod_usuario:'d7c445ff-ce5c-4d2d-9e78-4d6960fbbfa6'
        },
        data:{
           
            alergias:{
                create:{
                    alergias:"Amendoim"
                },
            },
        }

    });

console.log(result)

}

main();


