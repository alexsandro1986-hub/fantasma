/*
  Warnings:

  - A unique constraint covering the columns `[alergias]` on the table `alergias` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "alergias_alergias_key" ON "alergias"("alergias");
