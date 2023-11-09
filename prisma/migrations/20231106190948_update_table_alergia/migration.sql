/*
  Warnings:

  - You are about to drop the column `fk_cod_usuario` on the `alergias` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "alergias" DROP CONSTRAINT "alergias_fk_cod_usuario_fkey";

-- AlterTable
ALTER TABLE "alergias" DROP COLUMN "fk_cod_usuario";
