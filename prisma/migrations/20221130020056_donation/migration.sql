/*
  Warnings:

  - Added the required column `uuid` to the `Donation` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Donation" ADD COLUMN     "uuid" TEXT NOT NULL;
