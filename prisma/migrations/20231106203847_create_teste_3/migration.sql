/*
  Warnings:

  - You are about to drop the column `fk_cod_usuario` on the `numerotelemergencia` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "numerotelemergencia" DROP CONSTRAINT "numerotelemergencia_fk_cod_usuario_fkey";

-- AlterTable
ALTER TABLE "numerotelemergencia" DROP COLUMN "fk_cod_usuario";
