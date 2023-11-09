-- DropIndex
DROP INDEX "e_doador_fk_cod_usuario_key";

-- DropIndex
DROP INDEX "numerotelemergencia_fk_cod_usuario_key";

-- AlterTable
ALTER TABLE "e_doador" ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "e_doador_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "numerotelemergencia" ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "numerotelemergencia_pkey" PRIMARY KEY ("id");
