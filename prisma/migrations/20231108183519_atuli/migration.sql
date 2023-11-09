-- DropForeignKey
ALTER TABLE "comorbidade" DROP CONSTRAINT "comorbidade_fk_cod_usuario_fkey";

-- DropForeignKey
ALTER TABLE "contatoemergencia" DROP CONSTRAINT "contatoemergencia_fk_cod_usuario_fkey";

-- DropForeignKey
ALTER TABLE "doadororgao" DROP CONSTRAINT "doadororgao_fk_cod_usuario_fkey";

-- DropForeignKey
ALTER TABLE "doadorsangue" DROP CONSTRAINT "doadorsangue_fk_cod_usuario_fkey";

-- DropForeignKey
ALTER TABLE "enderecousuario" DROP CONSTRAINT "enderecousuario_fk_cod_usuario_fkey";

-- DropForeignKey
ALTER TABLE "possuialergias" DROP CONSTRAINT "possuialergias_fk_cod_alergias_fkey";

-- DropForeignKey
ALTER TABLE "possuialergias" DROP CONSTRAINT "possuialergias_fk_cod_usuario_fkey";

-- DropForeignKey
ALTER TABLE "telusuario" DROP CONSTRAINT "telusuario_fk_cod_usuario_fkey";

-- DropForeignKey
ALTER TABLE "tratamento" DROP CONSTRAINT "tratamento_fk_cod_usuario_fkey";

-- AddForeignKey
ALTER TABLE "comorbidade" ADD CONSTRAINT "comorbidade_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "contatoemergencia" ADD CONSTRAINT "contatoemergencia_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "doadororgao" ADD CONSTRAINT "doadororgao_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "doadorsangue" ADD CONSTRAINT "doadorsangue_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "enderecousuario" ADD CONSTRAINT "enderecousuario_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "possuialergias" ADD CONSTRAINT "possuialergias_fk_cod_alergias_fkey" FOREIGN KEY ("fk_cod_alergias") REFERENCES "alergias"("cod_alergias") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "possuialergias" ADD CONSTRAINT "possuialergias_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "telusuario" ADD CONSTRAINT "telusuario_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tratamento" ADD CONSTRAINT "tratamento_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE CASCADE ON UPDATE CASCADE;
