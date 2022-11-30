/*
  Warnings:

  - You are about to drop the column `create_at` on the `Donation` table. All the data in the column will be lost.
  - You are about to drop the column `display_name` on the `Donation` table. All the data in the column will be lost.
  - Added the required column `displayName` to the `Donation` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Donation" DROP COLUMN "create_at",
DROP COLUMN "display_name",
ADD COLUMN     "createAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "displayName" TEXT NOT NULL;
