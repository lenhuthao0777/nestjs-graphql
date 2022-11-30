/*
  Warnings:

  - You are about to drop the column `createAt` on the `Donation` table. All the data in the column will be lost.
  - You are about to drop the column `displayName` on the `Donation` table. All the data in the column will be lost.
  - Added the required column `display_name` to the `Donation` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Donation" DROP COLUMN "createAt",
DROP COLUMN "displayName",
ADD COLUMN     "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "display_name" TEXT NOT NULL;
