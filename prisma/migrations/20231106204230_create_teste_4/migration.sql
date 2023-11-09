/*
  Warnings:

  - You are about to drop the `numerotelemergencia` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `temcontatoemergencia` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "numerotelemergencia" DROP CONSTRAINT "numerotelemergencia_fk_cod_contatoemergencia_fkey";

-- DropForeignKey
ALTER TABLE "temcontatoemergencia" DROP CONSTRAINT "temcontatoemergencia_fk_cod_contatoemergencia_fkey";

-- DropForeignKey
ALTER TABLE "temcontatoemergencia" DROP CONSTRAINT "temcontatoemergencia_fk_cod_usuario_fkey";

-- AlterTable
ALTER TABLE "contatoemergencia" ADD COLUMN     "telefoneemergencia" VARCHAR(40);

-- DropTable
DROP TABLE "numerotelemergencia";

-- DropTable
DROP TABLE "temcontatoemergencia";
