-- DropIndex
DROP INDEX `Day_date_key` ON `Day`;

-- CreateIndex
CREATE INDEX `Day_date_idx` ON `Day`(`date`);
