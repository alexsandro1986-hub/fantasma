import { PrismaClient } from "@prisma/client"
//import { getPrismaClient } from "@prisma/client/runtime/library"

const prisma = new PrismaClient()

async function main() {
    const result = await prisma.usuario.create({
        data: {
            nomeusuario: "Handrai",
            tiposanguineo: "AB-",
            idadeusuairo: 40,
            emailusuario: "handrai@gmail.com",
            senhausuario:"avfd",

            possuialergias:{
                create:{
                    alergias: {
                        connect: {
                            alergias: "Gluten"
                                }
                 
                            }
                    }
             },
            enderecousuario:{
                create:{
                    logradourousuario:"Rua do Nada",
                    numerocasausuario:683,
                    ncepusuario:289456553

                }
            },
            contatoemergencia:{
                create:{
                    nomecontatoemergencia:"Luiza",
                    emailcontatoemergencia:"luiza.com",                
                    telefoneemergencia: '3333334443'
                }
            },
            doadorsangue: {
                create: {
                 doadorsangue: 'Sim'
}
            },
            doadororgao: {
                create: {
                    doadororgao: 'Não'
                }
            },
            comorbidade:{
                create:{
                    comorbidade: "Hipertensão"
                }
            },
            telusuario: {
                create: {
                    telefoneusuario: 234567940
                }
            }

        
        },
    });


    console.log(result);
}
main()



// async function main() {
//     const result = await prisma.alergias.create({
//         data: {
            
//                     alergias:""
                 
//                 }
//             })
//             console.log(result)

//     }


//     main();

// async function main() {
// const result = await prisma.temcontatoemergencia.create({
//     data: {
//         fk_cod_contatoemergencia: 2,
//         fk_cod_usuario: "624c1dc6-c81a-44bc-a073-33f642fd0f39",
//     },
//   });


// console.log(result);

// }

// main();
