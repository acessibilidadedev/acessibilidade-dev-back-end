/*
  Warnings:

  - You are about to drop the column `access_type` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `deficiency` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `knowledge_area` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `User` table. All the data in the column will be lost.
  - Added the required column `first_name` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "User" DROP COLUMN "access_type",
DROP COLUMN "deficiency",
DROP COLUMN "knowledge_area",
DROP COLUMN "name",
ADD COLUMN     "access_control" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "disability" TEXT,
ADD COLUMN     "first_name" TEXT NOT NULL,
ADD COLUMN     "specialist_area" TEXT;
