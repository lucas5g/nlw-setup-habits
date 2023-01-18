-- DropForeignKey
ALTER TABLE `DayHabit` DROP FOREIGN KEY `DayHabit_dayId_fkey`;

-- DropForeignKey
ALTER TABLE `DayHabit` DROP FOREIGN KEY `DayHabit_habitId_fkey`;

-- AddForeignKey
ALTER TABLE `DayHabit` ADD CONSTRAINT `DayHabit_day_id_fkey` FOREIGN KEY (`day_id`) REFERENCES `Day`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `DayHabit` ADD CONSTRAINT `DayHabit_habit_id_fkey` FOREIGN KEY (`habit_id`) REFERENCES `Habit`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
