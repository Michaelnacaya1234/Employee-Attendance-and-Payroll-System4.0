-- Notification Settings Enhancement SQL Update
-- This script adds new tables and columns to support enhanced notification features

-- Add new columns to existing tblnotifications table
ALTER TABLE tblnotifications 
ADD COLUMN IF NOT EXISTS subject VARCHAR(255) DEFAULT NULL,
ADD COLUMN IF NOT EXISTS priority ENUM('low', 'normal', 'high', 'urgent') DEFAULT 'normal',
ADD COLUMN IF NOT EXISTS delivery_method ENUM('in_app', 'email', 'sms', 'all') DEFAULT 'in_app',
ADD COLUMN IF NOT EXISTS created_by INT DEFAULT NULL,
ADD COLUMN IF NOT EXISTS scheduled_at DATETIME DEFAULT NULL,
ADD COLUMN IF NOT EXISTS status ENUM('draft', 'pending', 'sent', 'failed') DEFAULT 'sent';

-- Create notification templates table
CREATE TABLE IF NOT EXISTS tblnotification_templates (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(50) NOT NULL,
    recipients VARCHAR(100) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    priority ENUM('low', 'normal', 'high', 'urgent') DEFAULT 'normal',
    delivery_method ENUM('in_app', 'email', 'sms', 'all') DEFAULT 'in_app',
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_type (type),
    INDEX idx_created_by (created_by),
    FOREIGN KEY (created_by) REFERENCES tblusers(user_id) ON DELETE CASCADE
);

-- Create notification drafts table (for saving unsent notifications)
CREATE TABLE IF NOT EXISTS tblnotification_drafts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    recipients VARCHAR(100) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    priority ENUM('low', 'normal', 'high', 'urgent') DEFAULT 'normal',
    delivery_method ENUM('in_app', 'email', 'sms', 'all') DEFAULT 'in_app',
    scheduled_at DATETIME DEFAULT NULL,
    created_by INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_created_by (created_by),
    FOREIGN KEY (created_by) REFERENCES tblusers(user_id) ON DELETE CASCADE
);

-- Create audit logs table if it doesn't exist (for notification logging)
CREATE TABLE IF NOT EXISTS tblaudit_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    action VARCHAR(100) NOT NULL,
    details TEXT,
    ip_address VARCHAR(45),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_user_id (user_id),
    INDEX idx_action (action),
    INDEX idx_created_at (created_at),
    FOREIGN KEY (user_id) REFERENCES tblusers(user_id) ON DELETE CASCADE
);

-- Add foreign key constraints to tblnotifications for better data integrity
ALTER TABLE tblnotifications 
ADD CONSTRAINT IF NOT EXISTS fk_notifications_created_by 
FOREIGN KEY (created_by) REFERENCES tblusers(user_id) ON DELETE SET NULL;

-- Insert some sample notification templates (optional)
INSERT IGNORE INTO tblnotification_templates (name, type, recipients, subject, message, priority, delivery_method, created_by) VALUES
('Welcome Message', 'general', 'all', 'Welcome to the Company!', 'Welcome to our team! We''re excited to have you on board and look forward to working with you.', 'normal', 'in_app', 1),
('Payroll Reminder', 'payroll', 'all', 'Payroll Processing Complete', 'Your payroll has been processed and will be available shortly. Please check your account for details.', 'normal', 'email', 1),
('System Maintenance Alert', 'system', 'all', 'Scheduled System Maintenance', 'The system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'high', 'all', 1),
('Leave Request Approved', 'leave', 'employee', 'Your Leave Request Has Been Approved', 'Good news! Your leave request for [DATES] has been approved. Enjoy your time off!', 'normal', 'in_app', 1),
('Attendance Reminder', 'attendance', 'all', 'Don''t Forget to Clock In/Out', 'This is a friendly reminder to clock in when you arrive and clock out when you leave. Accurate time tracking helps us all!', 'low', 'in_app', 1);

-- Update existing notifications to have default values for new columns
UPDATE tblnotifications 
SET 
    subject = CONCAT(UPPER(SUBSTRING(type, 1, 1)), SUBSTRING(type, 2), ' Notification'),
    priority = 'normal',
    delivery_method = 'in_app',
    status = 'sent'
WHERE subject IS NULL OR subject = '';

-- Create indexes for better query performance
CREATE INDEX IF NOT EXISTS idx_notifications_type ON tblnotifications(type);
CREATE INDEX IF NOT EXISTS idx_notifications_priority ON tblnotifications(priority);
CREATE INDEX IF NOT EXISTS idx_notifications_status ON tblnotifications(status);
CREATE INDEX IF NOT EXISTS idx_notifications_created_by ON tblnotifications(created_by);
CREATE INDEX IF NOT EXISTS idx_notifications_scheduled_at ON tblnotifications(scheduled_at);