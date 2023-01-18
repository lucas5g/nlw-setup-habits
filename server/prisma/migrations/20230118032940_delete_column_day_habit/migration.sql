/*
  Warnings:

  - You are about to drop the column `dayId` on the `DayHabit` table. All the data in the column will be lost.
  - You are about to drop the column `habitId` on the `DayHabit` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX `DayHabit_dayId_fkey` ON `DayHabit`;

-- DropIndex
DROP INDEX `DayHabit_habitId_fkey` ON `DayHabit`;

-- AlterTable
ALTER TABLE `DayHabit` DROP COLUMN `dayId`,
    DROP COLUMN `habitId`;
