-- DropIndex
DROP INDEX "temcontatoemergencia_fk_cod_usuario_key";

-- AlterTable
ALTER TABLE "temcontatoemergencia" ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "temcontatoemergencia_pkey" PRIMARY KEY ("id");
