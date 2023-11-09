-- DropForeignKey
ALTER TABLE "comorbidade" DROP CONSTRAINT "comorbidade_fk_cod_usuario_fkey";

-- AddForeignKey
ALTER TABLE "comorbidade" ADD CONSTRAINT "comorbidade_fk_cod_usuario_fkey" FOREIGN KEY ("fk_cod_usuario") REFERENCES "usuario"("cod_usuario") ON DELETE RESTRICT ON UPDATE CASCADE;
