/*
  Warnings:

  - You are about to drop the `e_doador` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "e_doador" DROP CONSTRAINT "e_doador_fk_cod_doadororgao_fkey";

-- DropForeignKey
ALTER TABLE "e_doador" DROP CONSTRAINT "e_doador_fk_cod_doadorsangue_fkey";

-- DropForeignKey
ALTER TABLE "e_doador" DROP CONSTRAINT "e_doador_fk_cod_usuario_fkey";

-- DropTable
DROP TABLE "e_doador";
