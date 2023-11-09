import { PrismaClient } from "@prisma/client"

const prisma = new PrismaClient()

async function main() {
    const result = await prisma.alergias.findMany({
        where:{
            fk_cod_usuario:{
                equals:'79af6ddf-23a5-4b94-9514-2a216fe8c702'
            }
        }
    })

console.log(result)

}

main();