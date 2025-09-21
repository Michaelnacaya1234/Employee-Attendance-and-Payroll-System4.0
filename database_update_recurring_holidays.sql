-- Add recurring holiday support to tblholidays table
-- This allows holidays to be automatically repeated every year

ALTER TABLE `tblholidays` 
ADD COLUMN `is_recurring` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '1 if holiday repeats every year, 0 if one-time only',
ADD COLUMN `original_date` DATE NULL COMMENT 'Original date when recurring holiday was first created (for reference)';

-- Add index for better performance when querying recurring holidays
ALTER TABLE `tblholidays` 
ADD INDEX `idx_recurring` (`is_recurring`, `holiday_date`);

-- Example: Update existing holidays that should be recurring
-- Uncomment and modify these as needed for your existing holidays

-- UPDATE `tblholidays` SET `is_recurring` = 1, `original_date` = `holiday_date` 
-- WHERE `holiday_name` IN ('New Year', 'Christmas Day', 'Independence Day', 'Labor Day');
