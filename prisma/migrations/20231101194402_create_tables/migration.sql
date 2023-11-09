
-- CreateTable
CREATE TABLE "adm" (
    "cod_adm" SERIAL NOT NULL,
    "loginadm" VARCHAR(40),
    "senhaadm" VARCHAR(40),

    CONSTRAINT "adm_pkey" PRIMARY KEY ("cod_adm")
);

-- CreateTable
CREATE TABLE "alergias" (
    "cod_alergias" SERIAL NOT NULL,
    "alergias" VARCHAR(60),
    "fk_cod_usuario" TEXT NOT NULL,

    CONSTRAINT "alergias_pkey" PRIMARY KEY ("cod_alergias")
);

-- CreateTable
CREATE TABLE "comorbidade" (
    "cod_comorbidade" SERIAL NOT NULL,
    "comorbidade" VARCHAR(60),
    "fk_cod_usuario" TEXT NOT NULL,

    CONSTRAINT "comorbidade_pkey" PRIMARY KEY ("cod_comorbidade")
);

-- CreateTable
CREATE TABLE "contatoemergencia" (
    "cod_contatoemergencia" SERIAL NOT NULL,
    "nomecontatoemergencia" VARCHAR(40),
    "emailcontatoemergencia" VARCHAR(60),
    "fk_cod_usuario" TEXT NOT NULL,

    CONSTRAINT "contatoemergencia_pkey" PRIMARY KEY ("cod_contatoemergencia")
);

-- CreateTable
CREATE TABLE "doadororgao" (
    "cod_doadororgao" SERIAL NOT NULL,
    "doadororgao" VARCHAR(20),
    "fk_cod_usuario" TEXT NOT NULL,

    CONSTRAINT "doadororgao_pkey" PRIMARY KEY ("cod_doadororgao")
);

-- CreateTable
CREATE TABLE "doadorsangue" (
    "cod_doadorsangue" SERIAL NOT NULL,
    "doadorsangue" VARCHAR(20),
    "fk_cod_usuario" TEXT NOT NULL,

    CONSTRAINT "doadorsangue_pkey" PRIMARY KEY ("cod_doadorsangue")
);

-- CreateTable
CREATE TABLE "e_doador" (
    "fk_cod_doadorsangue" INTEGER NOT NULL,
    "fk_cod_doadororgao" INTEGER NOT NULL,
    "fk_cod_usuario" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "enderecousuario" (
    "logradourousuario" VARCHAR(60),
    "numerocasausuario" INTEGER,
    "ncepusuario" INTEGER,
    "fk_cod_usuario" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "numerotelemergencia" (
    "telefoneemergencia" VARCHAR(40),
    "fk_cod_contatoemergencia" INTEGER NOT NULL,
    "fk_cod_usuario" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "possuialergias" (
    "fk_cod_alergias" INTEGER NOT NULL,
    "fk_cod_usuario" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "telusuario" (
    "telefoneusuario" INTEGER,
    "fk_cod_usuario" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "temcontatoemergencia" (
    "fk_cod_contatoemergencia" INTEGER NOT NULL,
    "fk_cod_usuario" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "tratamento" (
    "cod_tratamento" TEXT NOT NULL,
    "enfermidade" VARCHAR(60),
    "periodo" VARCHAR(60),
    "droga" VARCHAR(60),
    "fk_cod_usuario" TEXT NOT NULL,

    CONSTRAINT "tratamento_pkey" PRIMARY KEY ("cod_tratamento")
);

-- CreateTable
CREATE TABLE "usuario" (
    "cod_usuario" TEXT NOT NULL,
    "nomeusuario" VARCHAR(40) NOT NULL,
    "tiposanguineo" VARCHAR(10),
    "idadeusuairo" INTEGER,
    "emailusuario" VARCHAR(40),
    "senhausuario" VARCHAR(40),

    CONSTRAINT "usuario_pkey" PRIMARY KEY ("cod_usuario")
);

-- CreateIndex
CREATE UNIQUE INDEX "e_doador_fk_cod_usuario_key" ON "e_doador"("fk_cod_usuario");

-- CreateIndex
CREATE UNIQUE INDEX "enderecousuario_fk_cod_usuario_key" ON "enderecousuario"("fk_cod_usuario");

-- CreateIndex
CREATE UNIQUE INDEX "numerotelemergencia_fk_cod_usuario_key" ON "numerotelemergencia"("fk_cod_usuario");

-- CreateIndex
CREATE UNIQUE INDEX "possuialergias_fk_cod_usuario_key" ON "possuialergias"("fk_cod_usuario");

-- CreateIndex
CREATE UNIQUE INDEX "telusuario_fk_cod_usuario_key" ON "telusuario"("fk_cod_usuario");

-- CreateIndex
CREATE UNIQUE INDEX "temcontatoemergencia_fk_cod_usuario_key" ON "temcontatoemergencia"("fk_cod_usuario");

-- CreateIndex
CREATE UNIQUE INDEX "tratamento_fk_cod_usuario_key" ON "tratamento"("fk_cod_usuario");

-- AddForeignKey
ALTER TABLE "alergias" ADD CONSTRAINT "alergias_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "comorbidade" ADD CONSTRAINT "comorbidade_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "contatoemergencia" ADD CONSTRAINT "contatoemergencia_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "doadororgao" ADD CONSTRAINT "doadororgao_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "doadorsangue" ADD CONSTRAINT "doadorsangue_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "e_doador" ADD CONSTRAINT "e_doador_fk_cod_doadororgao_fkey" FOREIGN KEY ("fk_cod_doadororgao") REFERENCES "doadororgao"("cod_doadororgao") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "e_doador" ADD CONSTRAINT "e_doador_fk_cod_doadorsangue_fkey" FOREIGN KEY ("fk_cod_doadorsangue") REFERENCES "doadorsangue"("cod_doadorsangue") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "e_doador" ADD CONSTRAINT "e_doador_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "enderecousuario" ADD CONSTRAINT "enderecousuario_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "numerotelemergencia" ADD CONSTRAINT "numerotelemergencia_fk_cod_contatoemergencia_fkey" FOREIGN KEY ("fk_cod_contatoemergencia") REFERENCES "contatoemergencia"("cod_contatoemergencia") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "numerotelemergencia" ADD CONSTRAINT "numerotelemergencia_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "possuialergias" ADD CONSTRAINT "possuialergias_fk_cod_alergias_fkey" FOREIGN KEY ("fk_cod_alergias") REFERENCES "alergias"("cod_alergias") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "possuialergias" ADD CONSTRAINT "possuialergias_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "telusuario" ADD CONSTRAINT "telusuario_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "temcontatoemergencia" ADD CONSTRAINT "temcontatoemergencia_fk_cod_contatoemergencia_fkey" FOREIGN KEY ("fk_cod_contatoemergencia") REFERENCES "contatoemergencia"("cod_contatoemergencia") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "temcontatoemergencia" ADD CONSTRAINT "temcontatoemergencia_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "tratamento" ADD CONSTRAINT "tratamento_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;
