/*
  Warnings:

  - Made the column `dayId` on table `DayHabit` required. This step will fail if there are existing NULL values in that column.
  - Made the column `habitId` on table `DayHabit` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `DayHabit` DROP FOREIGN KEY `DayHabit_dayId_fkey`;

-- DropForeignKey
ALTER TABLE `DayHabit` DROP FOREIGN KEY `DayHabit_habitId_fkey`;

-- AlterTable
ALTER TABLE `DayHabit` MODIFY `dayId` VARCHAR(191) NOT NULL,
    MODIFY `habitId` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `DayHabit` ADD CONSTRAINT `DayHabit_dayId_fkey` FOREIGN KEY (`dayId`) REFERENCES `Day`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `DayHabit` ADD CONSTRAINT `DayHabit_habitId_fkey` FOREIGN KEY (`habitId`) REFERENCES `Habit`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
