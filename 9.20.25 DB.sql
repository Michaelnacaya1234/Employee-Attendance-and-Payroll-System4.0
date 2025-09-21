-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2025 at 12:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbattendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `attendance_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `time_in` time DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  `status` enum('present','absent','leave','late','undertime') DEFAULT 'present',
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`attendance_id`, `employee_id`, `attendance_date`, `time_in`, `time_out`, `status`, `remarks`, `created_at`) VALUES
(1, 3, '0000-00-00', NULL, NULL, 'present', '', '2025-09-14 06:56:50'),
(2, 5, '0000-00-00', NULL, NULL, 'present', '', '2025-09-14 06:56:50'),
(3, 8, '0000-00-00', NULL, NULL, 'present', '', '2025-09-14 06:56:50'),
(4, 2, '0000-00-00', NULL, NULL, 'present', '', '2025-09-14 06:56:50'),
(5, 18, '0000-00-00', NULL, NULL, 'present', '', '2025-09-14 06:56:50'),
(6, 13, '0000-00-00', NULL, NULL, 'present', '', '2025-09-14 06:56:50'),
(7, 15, '0000-00-00', NULL, NULL, 'present', '', '2025-09-14 06:56:50'),
(8, 16, '0000-00-00', NULL, NULL, 'present', '', '2025-09-14 06:56:50'),
(9, 1, '0000-00-00', NULL, NULL, 'present', '', '2025-09-14 06:56:50'),
(10, 6, '0000-00-00', NULL, NULL, 'present', '', '2025-09-14 06:56:51'),
(11, 4, '0000-00-00', NULL, NULL, 'present', '', '2025-09-14 06:56:51'),
(12, 14, '0000-00-00', NULL, NULL, 'present', '', '2025-09-14 06:56:51'),
(25, 3, '2025-09-14', NULL, NULL, 'present', '', '2025-09-14 06:57:51'),
(26, 5, '2025-09-14', NULL, NULL, 'present', '', '2025-09-14 06:57:51'),
(27, 8, '2025-09-14', NULL, NULL, 'present', '', '2025-09-14 06:57:51'),
(28, 2, '2025-09-14', NULL, NULL, 'present', '', '2025-09-14 06:57:52'),
(29, 18, '2025-09-14', NULL, NULL, 'present', '', '2025-09-14 06:57:52'),
(30, 13, '2025-09-14', NULL, NULL, 'present', '', '2025-09-14 06:57:52'),
(31, 15, '2025-09-14', NULL, NULL, 'present', '', '2025-09-14 06:57:52'),
(32, 16, '2025-09-14', NULL, NULL, 'present', '', '2025-09-14 06:57:52'),
(33, 1, '2025-09-14', NULL, NULL, 'present', '', '2025-09-14 06:57:52'),
(34, 6, '2025-09-14', NULL, NULL, 'present', '', '2025-09-14 06:57:52'),
(35, 4, '2025-09-14', NULL, NULL, 'present', '', '2025-09-14 06:57:52'),
(36, 14, '2025-09-14', NULL, NULL, 'present', '', '2025-09-14 06:57:52'),
(49, 13, '2025-09-20', NULL, NULL, 'leave', 'Leave approved', '2025-09-20 01:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendancereports`
--

CREATE TABLE `tblattendancereports` (
  `Report_ID` int(11) NOT NULL,
  `Attendance_ID` int(11) NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `Period_Start` date NOT NULL,
  `Period_End` date NOT NULL,
  `Days_Present` int(11) DEFAULT 0,
  `Days_Absent` int(11) DEFAULT 0,
  `Days_Leave` int(11) DEFAULT 0,
  `Days_Late` int(11) DEFAULT 0,
  `Total_Hours_Worked` decimal(7,2) DEFAULT 0.00,
  `Generated_By` int(11) DEFAULT NULL,
  `Generated_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblattendancereports`
--

INSERT INTO `tblattendancereports` (`Report_ID`, `Attendance_ID`, `Employee_ID`, `Period_Start`, `Period_End`, `Days_Present`, `Days_Absent`, `Days_Leave`, `Days_Late`, `Total_Hours_Worked`, `Generated_By`, `Generated_At`) VALUES
(1, 33, 1, '2025-09-01', '2025-09-30', 1, 0, 0, 0, 0.00, 1, '2025-09-14 07:10:12'),
(2, 28, 2, '2025-09-01', '2025-09-30', 1, 0, 0, 0, 0.00, 1, '2025-09-14 07:10:12'),
(3, 25, 3, '2025-09-01', '2025-09-30', 1, 0, 0, 0, 0.00, 1, '2025-09-14 07:10:12'),
(4, 35, 4, '2025-09-01', '2025-09-30', 1, 0, 0, 0, 0.00, 1, '2025-09-14 07:10:12'),
(5, 26, 5, '2025-09-01', '2025-09-30', 1, 0, 0, 0, 0.00, 1, '2025-09-14 07:10:12'),
(6, 34, 6, '2025-09-01', '2025-09-30', 1, 0, 0, 0, 0.00, 1, '2025-09-14 07:10:12'),
(7, 27, 8, '2025-09-01', '2025-09-30', 1, 0, 0, 0, 0.00, 1, '2025-09-14 07:10:12'),
(8, 30, 13, '2025-09-01', '2025-09-30', 1, 0, 0, 0, 0.00, 1, '2025-09-14 07:10:12'),
(9, 36, 14, '2025-09-01', '2025-09-30', 1, 0, 0, 0, 0.00, 1, '2025-09-14 07:10:12'),
(10, 31, 15, '2025-09-01', '2025-09-30', 1, 0, 0, 0, 0.00, 1, '2025-09-14 07:10:12'),
(11, 32, 16, '2025-09-01', '2025-09-30', 1, 0, 0, 0, 0.00, 1, '2025-09-14 07:10:12'),
(12, 29, 18, '2025-09-01', '2025-09-30', 1, 0, 0, 0, 0.00, 1, '2025-09-14 07:10:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance_daily_summary`
--

CREATE TABLE `tblattendance_daily_summary` (
  `summary_id` int(11) NOT NULL,
  `summary_date` date NOT NULL,
  `total_present` int(11) DEFAULT 0,
  `total_absent` int(11) DEFAULT 0,
  `total_late` int(11) DEFAULT 0,
  `total_leave` int(11) DEFAULT 0,
  `total_undertime` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblattendance_daily_summary`
--

INSERT INTO `tblattendance_daily_summary` (`summary_id`, `summary_date`, `total_present`, `total_absent`, `total_late`, `total_leave`, `total_undertime`, `created_at`) VALUES
(1, '0000-00-00', 12, 0, 0, 0, 0, '2025-09-14 06:56:50'),
(25, '2025-09-14', 12, 0, 0, 0, 0, '2025-09-14 06:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance_employee_daily`
--

CREATE TABLE `tblattendance_employee_daily` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `status` enum('present','absent','leave','late','undertime') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblattendance_employee_daily`
--

INSERT INTO `tblattendance_employee_daily` (`id`, `employee_id`, `attendance_date`, `status`, `created_at`) VALUES
(1, 3, '0000-00-00', 'present', '2025-09-14 06:56:50'),
(2, 5, '0000-00-00', 'present', '2025-09-14 06:56:50'),
(3, 8, '0000-00-00', 'present', '2025-09-14 06:56:50'),
(4, 2, '0000-00-00', 'present', '2025-09-14 06:56:50'),
(5, 18, '0000-00-00', 'present', '2025-09-14 06:56:50'),
(6, 13, '0000-00-00', 'present', '2025-09-14 06:56:50'),
(7, 15, '0000-00-00', 'present', '2025-09-14 06:56:50'),
(8, 16, '0000-00-00', 'present', '2025-09-14 06:56:50'),
(9, 1, '0000-00-00', 'present', '2025-09-14 06:56:50'),
(10, 6, '0000-00-00', 'present', '2025-09-14 06:56:51'),
(11, 4, '0000-00-00', 'present', '2025-09-14 06:56:51'),
(12, 14, '0000-00-00', 'present', '2025-09-14 06:56:51'),
(25, 3, '2025-09-14', 'present', '2025-09-14 06:57:51'),
(26, 5, '2025-09-14', 'present', '2025-09-14 06:57:51'),
(27, 8, '2025-09-14', 'present', '2025-09-14 06:57:52'),
(28, 2, '2025-09-14', 'present', '2025-09-14 06:57:52'),
(29, 18, '2025-09-14', 'present', '2025-09-14 06:57:52'),
(30, 13, '2025-09-14', 'present', '2025-09-14 06:57:52'),
(31, 15, '2025-09-14', 'present', '2025-09-14 06:57:52'),
(32, 16, '2025-09-14', 'present', '2025-09-14 06:57:52'),
(33, 1, '2025-09-14', 'present', '2025-09-14 06:57:52'),
(34, 6, '2025-09-14', 'present', '2025-09-14 06:57:52'),
(35, 4, '2025-09-14', 'present', '2025-09-14 06:57:52'),
(36, 14, '2025-09-14', 'present', '2025-09-14 06:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblaudit_logs`
--

CREATE TABLE `tblaudit_logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblaudit_logs`
--

INSERT INTO `tblaudit_logs` (`log_id`, `user_id`, `action`, `details`, `ip_address`, `created_at`) VALUES
(1, 1, 'login', 'User admin logged in successfully', '::1', '2025-08-20 09:42:11'),
(2, 1, 'logout', 'User admin logged out', '::1', '2025-08-20 10:49:37'),
(3, 9, 'login', 'User mjay@gmail.com logged in successfully', '::1', '2025-08-20 10:49:46'),
(4, 9, 'logout', 'User mjay@gmail.com logged out', '::1', '2025-08-20 10:50:05'),
(5, 1, 'login', 'User admin logged in successfully', '::1', '2025-08-20 10:50:09'),
(6, 1, 'logout', 'User admin logged out', '::1', '2025-08-20 10:51:04'),
(7, 1, 'login', 'User admin logged in successfully', '::1', '2025-08-20 10:51:09'),
(8, 1, 'login', 'User admin logged in successfully', '::1', '2025-08-20 11:00:57'),
(9, 1, 'logout', 'User admin logged out', '::1', '2025-08-20 11:29:39'),
(10, 14, 'login', 'User maria@gmail.com logged in successfully', '::1', '2025-08-20 11:30:23'),
(11, 14, 'logout', 'User maria@gmail.com logged out', '::1', '2025-08-20 11:36:40'),
(12, 3, 'login', 'User michael@gmail.com logged in successfully', '::1', '2025-08-20 11:36:49'),
(13, 3, 'logout', 'User michael@gmail.com logged out', '::1', '2025-08-20 11:36:52'),
(14, 14, 'login', 'User maria@gmail.com logged in successfully', '::1', '2025-08-20 11:37:10'),
(15, 14, 'login', 'User maria@gmail.com logged in successfully', '::1', '2025-08-20 11:39:41'),
(16, 14, 'logout', 'User maria@gmail.com logged out', '::1', '2025-08-20 11:45:18'),
(17, 1, 'login', 'User admin logged in successfully', '::1', '2025-08-20 11:45:24'),
(18, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-08 23:55:02'),
(19, 1, 'logout', 'User admin logged out', '::1', '2025-09-08 23:55:32'),
(20, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-08 23:57:04'),
(21, 1, 'logout', 'User admin logged out', '::1', '2025-09-08 23:57:40'),
(22, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-14 03:28:07'),
(23, 1, 'logout', 'User admin logged out', '::1', '2025-09-14 03:29:45'),
(24, 7, 'login', 'User dong@gmail.com logged in successfully', '::1', '2025-09-14 03:30:11'),
(25, 7, 'logout', 'User dong@gmail.com logged out', '::1', '2025-09-14 06:29:28'),
(26, 1, 'login_failed', 'Failed login for user admin', '::1', '2025-09-14 06:30:06'),
(27, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-14 06:30:28'),
(28, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-14 07:10:00'),
(29, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-14 07:55:06'),
(30, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-14 09:02:35'),
(31, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-16 09:47:01'),
(32, 7, 'login', 'User dong@gmail.com logged in successfully', '::1', '2025-09-16 09:47:31'),
(33, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-16 10:02:17'),
(34, 1, 'logout', 'User admin logged out', '::1', '2025-09-16 10:09:38'),
(35, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-16 10:10:24'),
(36, 1, 'session_timeout', 'Session timed out due to inactivity', '::1', '2025-09-16 11:41:26'),
(37, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-16 11:43:17'),
(38, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-16 11:46:22'),
(39, 1, 'login_failed', 'Failed login for user admin', '::1', '2025-09-16 11:53:18'),
(40, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-16 11:53:48'),
(41, 1, 'logout', 'User admin logged out', '::1', '2025-09-16 12:05:41'),
(42, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-16 12:09:58'),
(43, 1, 'logout', 'User admin logged out', '::1', '2025-09-16 12:10:10'),
(44, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-19 03:53:58'),
(45, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-19 04:42:50'),
(46, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-19 09:16:41'),
(47, 1, 'logout', 'User admin logged out', '::1', '2025-09-19 09:17:06'),
(48, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-19 09:17:37'),
(49, 1, 'logout', 'User admin logged out', '::1', '2025-09-19 09:18:11'),
(50, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 01:26:18'),
(51, 1, 'logout', 'User admin logged out', '::1', '2025-09-20 01:29:55'),
(52, 7, 'login', 'User dong@gmail.com logged in successfully', '::1', '2025-09-20 01:30:14'),
(53, 7, 'logout', 'User dong@gmail.com logged out', '::1', '2025-09-20 01:31:05'),
(54, 6, 'login', 'User roberth@gmail.com logged in successfully', '::1', '2025-09-20 01:31:37'),
(55, 6, 'logout', 'User roberth@gmail.com logged out', '::1', '2025-09-20 01:32:55'),
(56, 5, 'login', 'User frans@gmail.com logged in successfully', '::1', '2025-09-20 01:33:15'),
(57, 5, 'logout', 'User frans@gmail.com logged out', '::1', '2025-09-20 01:36:47'),
(58, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 01:41:37'),
(59, 7, 'login', 'User dong@gmail.com logged in successfully', '::1', '2025-09-20 10:42:34'),
(60, 7, 'logout', 'User dong@gmail.com logged out', '::1', '2025-09-20 10:46:08'),
(61, 7, 'login_failed', 'Failed login for user dong@gmail.com', '::1', '2025-09-20 10:46:21'),
(62, 7, 'login', 'User dong@gmail.com logged in successfully', '::1', '2025-09-20 10:46:34'),
(63, 7, 'logout', 'User dong@gmail.com logged out', '::1', '2025-09-20 10:47:43'),
(64, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 10:47:59'),
(65, 7, 'login', 'User dong@gmail.com logged in successfully', '::1', '2025-09-20 10:53:47'),
(66, 1, 'logout', 'User admin logged out', '::1', '2025-09-20 11:20:19'),
(67, 7, 'login', 'User dong@gmail.com logged in successfully', '::1', '2025-09-20 11:20:37'),
(68, 7, 'logout', 'User dong@gmail.com logged out', '::1', '2025-09-20 11:29:42'),
(69, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 11:29:57'),
(70, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:04:01'),
(71, 1, 'logout', 'User admin logged out', '::1', '2025-09-20 23:04:29'),
(72, 11, 'login', 'User dave@gmail.com logged in successfully', '::1', '2025-09-20 23:04:37'),
(73, 11, 'logout', 'User dave@gmail.com logged out', '::1', '2025-09-20 23:05:12'),
(74, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:05:28'),
(75, 1, 'logout', 'User admin logged out', '::1', '2025-09-20 23:06:45'),
(76, 11, 'login', 'User dave@gmail.com logged in successfully', '::1', '2025-09-20 23:06:51'),
(77, 11, 'logout', 'User dave@gmail.com logged out', '::1', '2025-09-20 23:06:57'),
(78, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:07:06'),
(79, 1, 'logout', 'User admin logged out', '::1', '2025-09-20 23:10:42'),
(80, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:10:49'),
(81, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:11:30'),
(82, 1, 'logout', 'User admin logged out', '::1', '2025-09-20 23:14:55'),
(83, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:15:16'),
(84, 1, 'logout', 'User admin logged out', '::1', '2025-09-20 23:16:49'),
(85, 11, 'login', 'User dave@gmail.com logged in successfully', '::1', '2025-09-20 23:16:58'),
(86, 11, 'logout', 'User dave@gmail.com logged out', '::1', '2025-09-20 23:17:20'),
(87, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:17:26'),
(88, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:20:01'),
(89, 1, 'logout', 'User admin logged out', '::1', '2025-09-20 23:21:18'),
(90, 11, 'login', 'User dave@gmail.com logged in successfully', '::1', '2025-09-20 23:21:26'),
(91, 11, 'logout', 'User dave@gmail.com logged out', '::1', '2025-09-20 23:21:46'),
(92, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:22:01'),
(93, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:26:50'),
(94, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:29:15'),
(95, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:33:43'),
(96, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:35:20'),
(97, 1, 'logout', 'User admin logged out', '::1', '2025-09-20 23:43:32'),
(98, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:43:39'),
(99, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:45:53'),
(100, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-20 23:46:55'),
(101, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-21 00:00:44'),
(102, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-21 00:05:57'),
(103, 1, 'logout', 'User admin logged out', '::1', '2025-09-21 00:08:11'),
(104, 11, 'login', 'User dave@gmail.com logged in successfully', '::1', '2025-09-21 00:08:19'),
(105, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-21 03:18:52'),
(106, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-21 03:21:58'),
(107, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-21 03:48:01'),
(108, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-21 03:59:06'),
(109, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-21 04:04:55'),
(110, 1, 'logout', 'User admin logged out', '::1', '2025-09-21 04:05:22'),
(111, 11, 'login', 'User dave@gmail.com logged in successfully', '::1', '2025-09-21 04:05:29'),
(112, 11, 'logout', 'User dave@gmail.com logged out', '::1', '2025-09-21 04:06:05'),
(113, 7, 'login', 'User dong@gmail.com logged in successfully', '::1', '2025-09-21 04:06:18'),
(114, 7, 'logout', 'User dong@gmail.com logged out', '::1', '2025-09-21 04:06:24'),
(115, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-21 04:06:33'),
(116, 1, 'logout', 'User admin logged out', '::1', '2025-09-21 04:07:59'),
(117, 14, 'login', 'User maria@gmail.com logged in successfully', '::1', '2025-09-21 04:08:13'),
(118, 14, 'logout', 'User maria@gmail.com logged out', '::1', '2025-09-21 04:08:53'),
(119, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-21 04:09:00'),
(120, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-21 04:18:17'),
(121, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-21 04:57:00'),
(122, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-21 05:03:30'),
(123, 1, 'logout', 'User admin logged out', '::1', '2025-09-21 05:04:14'),
(124, 11, 'login', 'User dave@gmail.com logged in successfully', '::1', '2025-09-21 05:04:22'),
(125, 1, 'login', 'User admin logged in successfully', '::1', '2025-09-21 05:06:34'),
(126, 1, 'logout', 'User admin logged out', '::1', '2025-09-21 05:06:55'),
(127, 7, 'login', 'User dong@gmail.com logged in successfully', '::1', '2025-09-21 05:07:04'),
(128, 7, 'logout', 'User dong@gmail.com logged out', '::1', '2025-09-21 05:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbldeductionreports`
--

CREATE TABLE `tbldeductionreports` (
  `Report_ID` int(11) NOT NULL,
  `Deduction_ID` int(11) NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `Payroll_ID` int(11) DEFAULT NULL,
  `Deduction_Amount` decimal(10,2) DEFAULT 0.00,
  `Period_Start` date DEFAULT NULL,
  `Period_End` date DEFAULT NULL,
  `Generated_By` int(11) DEFAULT NULL,
  `Generated_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldeductionreports`
--

INSERT INTO `tbldeductionreports` (`Report_ID`, `Deduction_ID`, `Employee_ID`, `Payroll_ID`, `Deduction_Amount`, `Period_Start`, `Period_End`, `Generated_By`, `Generated_At`) VALUES
(1, 1, 1, NULL, 4500.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(2, 2, 1, NULL, 2500.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(3, 3, 1, NULL, 100.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(4, 4, 1, NULL, 20833.23, NULL, NULL, 1, '2025-09-14 07:10:27'),
(5, 5, 1, NULL, 10.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(6, 1, 2, NULL, 4500.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(7, 2, 2, NULL, 2500.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(8, 3, 2, NULL, 100.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(9, 4, 2, NULL, 20833.23, NULL, NULL, 1, '2025-09-14 07:10:27'),
(10, 5, 2, NULL, 10.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(11, 1, 3, NULL, 4500.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(12, 2, 3, NULL, 2500.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(13, 3, 3, NULL, 100.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(14, 4, 3, NULL, 20833.23, NULL, NULL, 1, '2025-09-14 07:10:27'),
(15, 5, 3, NULL, 10.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(16, 1, 4, NULL, 450.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(17, 2, 4, NULL, 250.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(18, 3, 4, NULL, 100.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(19, 4, 4, NULL, 0.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(20, 5, 4, NULL, 10.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(21, 1, 5, NULL, 450.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(22, 2, 5, NULL, 250.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(23, 3, 5, NULL, 100.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(24, 4, 5, NULL, 0.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(25, 5, 5, NULL, 10.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(26, 1, 6, NULL, 450.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(27, 2, 6, NULL, 250.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(28, 3, 6, NULL, 100.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(29, 4, 6, NULL, 0.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(30, 5, 6, NULL, 10.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(31, 1, 8, NULL, 1350.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(32, 2, 8, NULL, 750.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(33, 3, 8, NULL, 100.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(34, 4, 8, NULL, 1833.40, NULL, NULL, 1, '2025-09-14 07:10:27'),
(35, 5, 8, NULL, 10.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(36, 1, 13, NULL, 45.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(37, 2, 13, NULL, 25.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(38, 3, 13, NULL, 20.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(39, 4, 13, NULL, 0.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(40, 5, 13, NULL, 10.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(41, 1, 14, NULL, 2250.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(42, 2, 14, NULL, 1250.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(43, 3, 14, NULL, 100.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(44, 4, 14, NULL, 6666.75, NULL, NULL, 1, '2025-09-14 07:10:27'),
(45, 5, 14, NULL, 10.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(46, 1, 15, NULL, 450.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(47, 2, 15, NULL, 250.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(48, 3, 15, NULL, 100.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(49, 4, 15, NULL, 0.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(50, 5, 15, NULL, 10.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(51, 1, 16, NULL, 4500.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(52, 2, 16, NULL, 2500.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(53, 3, 16, NULL, 100.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(54, 4, 16, NULL, 20833.23, NULL, NULL, 1, '2025-09-14 07:10:27'),
(55, 5, 16, NULL, 10.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(56, 1, 18, NULL, 450.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(57, 2, 18, NULL, 250.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(58, 3, 18, NULL, 100.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(59, 4, 18, NULL, 0.00, NULL, NULL, 1, '2025-09-14 07:10:27'),
(60, 5, 18, NULL, 10.00, NULL, NULL, 1, '2025-09-14 07:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbldeductions`
--

CREATE TABLE `tbldeductions` (
  `deduct_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT 0.00,
  `amount_type` enum('fixed','percent') DEFAULT 'fixed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbldeductions`
--

INSERT INTO `tbldeductions` (`deduct_id`, `name`, `description`, `amount`, `amount_type`, `created_at`) VALUES
(1, 'SSS', 'Social Security System', 5.00, 'percent', '2025-08-20 09:35:06'),
(2, 'PhilHealth', 'PhilHealth contribution', 300.00, 'fixed', '2025-08-20 09:35:06'),
(3, 'Pag-IBIG', 'Pag-IBIG (HDMF) contribution', 0.00, 'fixed', '2025-08-20 09:35:06'),
(4, 'Withholding Tax', 'Income tax withholding', 0.00, 'fixed', '2025-08-20 09:35:06'),
(5, 'Provident Fund', 'Provident Fund contribution', 10.00, 'percent', '2025-08-20 09:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartmentreports`
--

CREATE TABLE `tbldepartmentreports` (
  `Report_ID` int(11) NOT NULL,
  `Department_ID` int(11) NOT NULL,
  `Total_Employees` int(11) DEFAULT 0,
  `Total_Salary` decimal(12,2) DEFAULT 0.00,
  `Generated_By` int(11) DEFAULT NULL,
  `Generated_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldepartmentreports`
--

INSERT INTO `tbldepartmentreports` (`Report_ID`, `Department_ID`, `Total_Employees`, `Total_Salary`, `Generated_By`, `Generated_At`) VALUES
(1, 1, 3, 120000.00, 1, '2025-09-14 07:10:21'),
(2, 2, 1, 10000.00, 1, '2025-09-14 07:10:21'),
(3, 3, 1, 100000.00, 1, '2025-09-14 07:10:21'),
(4, 4, 1, 100000.00, 1, '2025-09-14 07:10:21'),
(5, 5, 3, 151000.00, 1, '2025-09-14 07:10:21'),
(6, 6, 3, 50000.00, 1, '2025-09-14 07:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`dept_id`, `dept_name`, `description`, `created_at`) VALUES
(1, 'Finance Department', 'Handles company finances', '2025-08-20 09:35:05'),
(2, 'Human Resources Department', 'Oversees people operations', '2025-08-20 09:35:05'),
(3, 'IT Department', 'Manages company IT systems', '2025-08-20 09:35:05'),
(4, 'Marketing Department', 'Handles marketing and promotions', '2025-08-20 09:35:05'),
(5, 'Retail Operations Department', 'Manages retail store operations', '2025-08-20 09:35:05'),
(6, 'Warehouse Department', 'Oversees storage and inventory management', '2025-08-20 09:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment_positions`
--

CREATE TABLE `tbldepartment_positions` (
  `id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `position_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbldepartment_positions`
--

INSERT INTO `tbldepartment_positions` (`id`, `dept_id`, `position_name`) VALUES
(5, 1, 'Accountant'),
(6, 1, 'Accounts Payable Clerk'),
(7, 1, 'Accounts Receivable Clerk'),
(8, 1, 'Cash Handling Specialist'),
(9, 1, 'Payroll Specialist'),
(25, 2, 'HR DIRECTOR'),
(21, 3, 'Cybersecurity Specialist'),
(22, 3, 'Database Administrator'),
(23, 3, 'System Administrator'),
(24, 3, 'Web Developer'),
(1, 4, 'Content Writer'),
(2, 4, 'Event Coordinator'),
(3, 4, 'Marketing Manager'),
(4, 4, 'Social Media Specialist'),
(15, 5, 'Assistant Store Manager'),
(16, 5, 'Bagger'),
(17, 5, 'Cashier'),
(18, 5, 'Product Specialist'),
(19, 5, 'Retail Supervisor'),
(20, 5, 'Store Manager'),
(10, 6, 'Assistant Head'),
(11, 6, 'Diser'),
(12, 6, 'Head'),
(13, 6, 'Merchandiser'),
(14, 6, 'Warehouseman');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployeereports`
--

CREATE TABLE `tblemployeereports` (
  `Report_ID` int(11) NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `Department_ID` int(11) DEFAULT NULL,
  `Position` varchar(100) DEFAULT NULL,
  `Basic_Salary` decimal(10,2) NOT NULL,
  `Status` enum('active','inactive') DEFAULT 'active',
  `Date_Hired` date DEFAULT NULL,
  `Generated_By` int(11) DEFAULT NULL,
  `Generated_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblemployeereports`
--

INSERT INTO `tblemployeereports` (`Report_ID`, `Employee_ID`, `Department_ID`, `Position`, `Basic_Salary`, `Status`, `Date_Hired`, `Generated_By`, `Generated_At`) VALUES
(1, 1, 1, 'Accountant', 100000.00, 'active', '2025-08-20', 1, '2025-09-20 01:46:54'),
(2, 2, 4, 'Marketing Manager', 100000.00, 'active', '2025-08-20', 1, '2025-09-20 01:46:54'),
(3, 3, 5, 'Retail Supervisor', 100000.00, 'active', '2025-08-20', 1, '2025-09-20 01:46:54'),
(4, 4, 2, 'HR DIRECTOR', 10000.00, 'active', '2025-08-20', 1, '2025-09-20 01:46:54'),
(5, 5, 1, 'Accounts Receivable Clerk', 10000.00, 'active', '2025-08-20', 1, '2025-09-20 01:46:54'),
(6, 6, 6, 'Warehouseman', 10000.00, 'active', '2025-08-20', 1, '2025-09-20 01:46:54'),
(7, 8, 6, 'Warehouseman', 30000.00, 'active', '2025-08-20', 1, '2025-09-20 01:46:54'),
(8, 13, 5, 'Product Specialist', 1000.00, 'active', '2025-08-20', 1, '2025-09-20 01:46:54'),
(9, 14, 5, 'Assistant Store Manager', 50000.00, 'active', '2025-08-20', 1, '2025-09-20 01:46:54'),
(10, 15, 6, 'Assistant Head', 10000.00, 'active', '2025-08-20', 1, '2025-09-20 01:46:54'),
(11, 16, 3, 'Cybersecurity Specialist', 100000.00, 'active', '2025-08-20', 1, '2025-09-20 01:46:54'),
(12, 18, 1, 'Accounts Payable Clerk', 10000.00, 'active', '2025-08-20', 1, '2025-09-20 01:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `profile_image` longtext DEFAULT NULL,
  `address` text DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `basic_salary` decimal(10,2) NOT NULL,
  `salary_rate_type` enum('monthly','daily','hourly') DEFAULT 'monthly',
  `date_hired` date DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`employee_id`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `gender`, `email`, `phone`, `profile_image`, `address`, `department`, `position`, `basic_salary`, `salary_rate_type`, `date_hired`, `status`, `created_at`) VALUES
(1, 'michael', 'igtos', 'nacaya', '2025-08-20', 'male', 'michaelnacaya86@gmail.com', '09354786152', NULL, 'bonbon', 'Finance Department', 'Accountant', 100000.00, 'monthly', '2025-08-20', 'active', '2025-08-20 09:49:09'),
(2, 'darwin', 's', 'casipong', '2025-08-20', 'male', 'darwin@gmail.com', '09354786152', NULL, 'bonbon', 'Marketing Department', 'Marketing Manager', 100000.00, 'monthly', '2025-08-20', 'active', '2025-08-20 09:49:52'),
(3, 'francis Oliver', 'g', 'alaba', '2025-08-20', 'male', 'frans@gmail.com', '09354786152', NULL, 'raagas', 'Retail Operations Department', 'Retail Supervisor', 100000.00, 'monthly', '2025-08-20', 'active', '2025-08-20 10:15:18'),
(4, 'roberth', 'NA', 'namoc', '2025-08-20', 'male', 'roberth@gmail.com', '09354786152', NULL, 'carmen', 'Human Resources Department', 'HR DIRECTOR', 10000.00, 'monthly', '2025-08-20', 'active', '2025-08-20 10:16:29'),
(5, 'domingo', 'e', 'ancog', '2025-08-20', 'male', 'dong@gmail.com', '09354786152', NULL, 'raagas', 'Finance Department', 'Accounts Receivable Clerk', 10000.00, 'monthly', '2025-08-20', 'active', '2025-08-20 10:17:51'),
(6, 'mjay', 'igtos', 'nacaya', '2025-08-20', 'male', 'mjay@gmail.com', '09354786153', NULL, 'bonbon', 'Warehouse Department', 'Warehouseman', 10000.00, 'monthly', '2025-08-20', 'active', '2025-08-20 10:46:51'),
(8, 'dave', 'NA', 'angka', '2025-08-20', 'male', 'dave@gmail.com', '09354786152', NULL, 'bonbon', 'Warehouse Department', 'Warehouseman', 30000.00, 'monthly', '2025-08-20', 'active', '2025-08-20 11:03:06'),
(13, 'Angela', 'NA', 'Dela Cruz', '2025-08-20', 'male', 'angle@gmail.com', '09354786152', NULL, 'bonbon', 'Retail Operations Department', 'Product Specialist', 1000.00, 'monthly', '2025-08-20', 'active', '2025-08-20 11:19:48'),
(14, 'John', 'NA', 'Reyes', '2025-08-20', 'male', 'reyes@gmail.com', '09354786152', NULL, 'bonbon', 'Retail Operations Department', 'Assistant Store Manager', 50000.00, 'monthly', '2025-08-20', 'active', '2025-08-20 11:21:05'),
(15, 'Maria', 'NA', 'Dela Cruz', '2025-08-20', 'female', 'maria@gmail.com', '09354786152', NULL, 'bonbon', 'Warehouse Department', 'Assistant Head', 10000.00, 'monthly', '2025-08-20', 'active', '2025-08-20 11:24:03'),
(16, 'Carlo', 'NA', 'Fernandez', '2025-08-20', 'male', 'carlo@gmail.com', '09354786152', NULL, 'bonbon', 'IT Department', 'Cybersecurity Specialist', 100000.00, 'monthly', '2025-08-20', 'active', '2025-08-20 11:25:06'),
(18, 'Sofia', 'NA', 'Cruz', '2025-08-20', 'female', 'sofia@gmail.com', '09354786152', NULL, 'bonbon', 'Finance Department', 'Accounts Payable Clerk', 10000.00, 'monthly', '2025-08-20', 'active', '2025-08-20 11:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee_deductions`
--

CREATE TABLE `tblemployee_deductions` (
  `emp_deduct_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `deduct_id` int(11) NOT NULL,
  `value` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee_financial_details`
--

CREATE TABLE `tblemployee_financial_details` (
  `fin_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `bank_account` varchar(100) DEFAULT NULL,
  `tax_id` varchar(50) DEFAULT NULL,
  `sss_number` varchar(50) DEFAULT NULL,
  `philhealth_number` varchar(50) DEFAULT NULL,
  `pagibig_number` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblemployee_financial_details`
--

INSERT INTO `tblemployee_financial_details` (`fin_id`, `employee_id`, `bank_account`, `tax_id`, `sss_number`, `philhealth_number`, `pagibig_number`, `created_at`) VALUES
(1, 1, '', '', '', '', '', '2025-08-20 09:49:09'),
(2, 2, '', '', '', '50000', '', '2025-08-20 09:49:52'),
(3, 3, '', '', '', '555555', '', '2025-08-20 10:15:18'),
(4, 4, '', '', '', '555555', '', '2025-08-20 10:16:29'),
(5, 5, '', '', '555555', '', '', '2025-08-20 10:17:51'),
(7, 6, '', '111111', '', '', '', '2025-08-20 10:46:51'),
(14, 8, '', '5555555', '', '', '', '2025-08-20 11:03:06'),
(15, 13, '', '5555555', '', '', '', '2025-08-20 11:19:48'),
(16, 14, '', '5555555', '', '', '', '2025-08-20 11:21:05'),
(17, 15, '', '', '', '5555', '', '2025-08-20 11:24:03'),
(18, 16, '', '', '5555555', '', '', '2025-08-20 11:25:06'),
(19, 18, '', '5555555', '', '', '', '2025-08-20 11:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee_workday_summary`
--

CREATE TABLE `tblemployee_workday_summary` (
  `summary_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `total_workdays` int(11) NOT NULL DEFAULT 0,
  `days_present` int(11) NOT NULL DEFAULT 0,
  `days_absent` int(11) NOT NULL DEFAULT 0,
  `days_leave` int(11) NOT NULL DEFAULT 0,
  `days_late` int(11) NOT NULL DEFAULT 0,
  `total_hours_worked` decimal(7,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblemployee_workday_summary`
--

INSERT INTO `tblemployee_workday_summary` (`summary_id`, `employee_id`, `period_id`, `total_workdays`, `days_present`, `days_absent`, `days_leave`, `days_late`, `total_hours_worked`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 1, 1, 0, 0, 0, 0.00, '2025-09-14 07:13:47', '2025-09-14 07:13:47'),
(2, 5, 2, 1, 1, 0, 0, 0, 0.00, '2025-09-14 07:13:47', '2025-09-14 07:13:47'),
(3, 8, 2, 1, 1, 0, 0, 0, 0.00, '2025-09-14 07:13:47', '2025-09-14 07:13:47'),
(4, 2, 2, 1, 1, 0, 0, 0, 0.00, '2025-09-14 07:13:47', '2025-09-14 07:13:47'),
(5, 18, 2, 1, 1, 0, 0, 0, 0.00, '2025-09-14 07:13:47', '2025-09-14 07:13:47'),
(6, 13, 2, 1, 1, 0, 0, 0, 0.00, '2025-09-14 07:13:47', '2025-09-14 07:13:47'),
(7, 15, 2, 1, 1, 0, 0, 0, 0.00, '2025-09-14 07:13:47', '2025-09-14 07:13:47'),
(8, 16, 2, 1, 1, 0, 0, 0, 0.00, '2025-09-14 07:13:47', '2025-09-14 07:13:47'),
(9, 1, 2, 1, 1, 0, 0, 0, 0.00, '2025-09-14 07:13:47', '2025-09-14 07:13:47'),
(10, 6, 2, 1, 1, 0, 0, 0, 0.00, '2025-09-14 07:13:47', '2025-09-14 07:13:47'),
(11, 4, 2, 1, 1, 0, 0, 0, 0.00, '2025-09-14 07:13:47', '2025-09-14 07:13:47'),
(12, 14, 2, 1, 1, 0, 0, 0, 0.00, '2025-09-14 07:13:47', '2025-09-14 07:13:47'),
(13, 3, 3, 0, 0, 0, 0, 0, 0.00, '2025-09-16 10:10:57', '2025-09-16 10:10:57'),
(14, 5, 3, 0, 0, 0, 0, 0, 0.00, '2025-09-16 10:10:57', '2025-09-16 10:10:57'),
(15, 8, 3, 0, 0, 0, 0, 0, 0.00, '2025-09-16 10:10:57', '2025-09-16 10:10:57'),
(16, 2, 3, 0, 0, 0, 0, 0, 0.00, '2025-09-16 10:10:57', '2025-09-16 10:10:57'),
(17, 18, 3, 0, 0, 0, 0, 0, 0.00, '2025-09-16 10:10:57', '2025-09-16 10:10:57'),
(18, 13, 3, 0, 0, 0, 0, 0, 0.00, '2025-09-16 10:10:57', '2025-09-16 10:10:57'),
(19, 15, 3, 0, 0, 0, 0, 0, 0.00, '2025-09-16 10:10:57', '2025-09-16 10:10:57'),
(20, 16, 3, 0, 0, 0, 0, 0, 0.00, '2025-09-16 10:10:57', '2025-09-16 10:10:57'),
(21, 1, 3, 0, 0, 0, 0, 0, 0.00, '2025-09-16 10:10:57', '2025-09-16 10:10:57'),
(22, 6, 3, 0, 0, 0, 0, 0, 0.00, '2025-09-16 10:10:58', '2025-09-16 10:10:58'),
(23, 4, 3, 0, 0, 0, 0, 0, 0.00, '2025-09-16 10:10:58', '2025-09-16 10:10:58'),
(24, 14, 3, 0, 0, 0, 0, 0, 0.00, '2025-09-16 10:10:58', '2025-09-16 10:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblholidays`
--

CREATE TABLE `tblholidays` (
  `id` int(11) NOT NULL,
  `holiday_date` date NOT NULL,
  `holiday_name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_recurring` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 if holiday repeats every year, 0 if one-time only',
  `original_date` date DEFAULT NULL COMMENT 'Original date when recurring holiday was first created (for reference)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblholidays`
--

INSERT INTO `tblholidays` (`id`, `holiday_date`, `holiday_name`, `description`, `created_at`, `updated_at`, `is_recurring`, `original_date`) VALUES
(1, '2026-01-01', 'New Year', 'New Year\'s Day celebrates the start of the new year. It\'s a time for celebration, reflection, and setting new goals. Employees are encouraged to relax and enjoy the day.', '2025-09-20 11:11:19', '2025-09-20 11:28:59', 1, '2026-01-01'),
(2, '2025-01-01', 'New Year', 'New Year\'s Day celebrates the start of the new year. It\'s a time for celebration, reflection, and setting new goals. Employees are encouraged to relax and enjoy the day.', '2025-09-20 11:31:53', '2025-09-20 11:31:53', 0, '2026-01-01'),
(3, '2027-01-01', 'New Year', 'New Year\'s Day celebrates the start of the new year. It\'s a time for celebration, reflection, and setting new goals. Employees are encouraged to relax and enjoy the day.', '2025-09-20 11:32:36', '2025-09-20 11:32:36', 1, '2027-01-01'),
(4, '2028-01-01', 'New Year', 'New Year\'s Day celebrates the start of the new year. It\'s a time for celebration, reflection, and setting new goals. Employees are encouraged to relax and enjoy the day.', '2025-09-20 11:33:36', '2025-09-20 11:33:36', 1, '2028-01-01'),
(5, '2029-01-01', 'New Year', 'New Year\'s Day celebrates the start of the new year. It\'s a time for celebration, reflection, and setting new goals. Employees are encouraged to relax and enjoy the day.', '2025-09-20 11:34:14', '2025-09-20 11:34:14', 1, '2029-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `leave_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `leave_type` varchar(100) NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `approved_by` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`leave_id`, `employee_id`, `start_date`, `end_date`, `reason`, `leave_type`, `status`, `approved_by`, `approved_at`, `rejected_by`, `rejected_at`, `created_at`) VALUES
(2, 13, '2025-09-20', '2025-09-20', 'baho', 'deductible against pay', 'approved', 5, '2025-09-20 09:36:11', NULL, NULL, '2025-09-20 01:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblleave_archive`
--

CREATE TABLE `tblleave_archive` (
  `archive_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `leave_type` varchar(100) NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `approved_by` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `archived_reason` varchar(255) DEFAULT NULL,
  `archived_by` int(11) DEFAULT NULL,
  `archived_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblleave_cancellations`
--

CREATE TABLE `tblleave_cancellations` (
  `cancel_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `cancelled_by_user_id` int(11) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `cancelled_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblleave_types`
--

CREATE TABLE `tblleave_types` (
  `type_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblleave_types`
--

INSERT INTO `tblleave_types` (`type_id`, `name`, `description`, `is_active`, `sort_order`, `created_at`) VALUES
(1, 'vacation', 'Paid time off for rest or personal matters', 1, 1, '2025-09-08 23:54:20'),
(2, 'sick leave', 'Leave due to illness', 1, 2, '2025-09-08 23:54:20'),
(3, 'birthday leave', 'Leave for birthday', 1, 3, '2025-09-08 23:54:20'),
(4, 'deductible against pay', 'Unpaid leave, deducted from pay', 1, 4, '2025-09-08 23:54:20'),
(5, 'maternity', 'Maternity leave', 1, 5, '2025-09-08 23:54:20'),
(6, 'paternity', 'Paternity leave', 1, 6, '2025-09-08 23:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotifications`
--

CREATE TABLE `tblnotifications` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `actor_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `read_at` datetime DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `priority` enum('low','normal','high','urgent') DEFAULT 'normal',
  `delivery_method` enum('in_app','email','sms','all') DEFAULT 'in_app',
  `created_by` int(11) DEFAULT NULL,
  `scheduled_at` datetime DEFAULT NULL,
  `status` enum('draft','pending','sent','failed') DEFAULT 'sent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblnotifications`
--

INSERT INTO `tblnotifications` (`id`, `employee_id`, `message`, `type`, `actor_user_id`, `created_at`, `read_at`, `subject`, `priority`, `delivery_method`, `created_by`, `scheduled_at`, `status`) VALUES
(1, 6, 'Profile updated: Phone: 09354786152 -> 09354786153', 'profile_update', 1, '2025-08-20 10:48:46', NULL, 'Profile_update Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(2, 1, 'Profile updated: Email: michael@gmail.com -> michaelnacaya86@gmail.com', 'profile_update', 1, '2025-09-08 23:55:28', NULL, 'Profile_update Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(3, 14, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-14 07:13:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(4, 4, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-14 07:13:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(5, 6, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-14 07:13:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(6, 1, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-14 07:13:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(7, 16, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-14 07:13:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(8, 15, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-14 07:13:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(9, 13, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-14 07:13:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(10, 18, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-14 07:13:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(11, 2, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-14 07:13:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(12, 8, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-14 07:13:52', '2025-09-21 12:06:01', 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(13, 5, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-14 07:13:52', '2025-09-20 09:30:59', 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(14, 3, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-14 07:13:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(15, 1, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-16 10:03:27', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(16, 5, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-16 10:16:12', '2025-09-20 09:30:59', 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(17, 18, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-16 10:16:12', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(18, 1, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', 1, '2025-09-16 10:16:12', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(19, 3, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', NULL, '2025-09-16 11:41:34', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(20, 5, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', NULL, '2025-09-16 11:41:34', '2025-09-20 09:30:59', 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(21, 8, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', NULL, '2025-09-16 11:41:34', '2025-09-21 12:06:01', 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(22, 2, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', NULL, '2025-09-16 11:41:34', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(23, 18, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', NULL, '2025-09-16 11:41:34', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(24, 13, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', NULL, '2025-09-16 11:41:34', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(25, 15, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', NULL, '2025-09-16 11:41:34', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(26, 16, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', NULL, '2025-09-16 11:41:34', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(27, 1, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', NULL, '2025-09-16 11:41:34', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(28, 6, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', NULL, '2025-09-16 11:41:34', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(29, 4, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', NULL, '2025-09-16 11:41:34', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(30, 14, 'Your payslip has been paid (2025-09-01 → 2025-09-30)', 'payslip_paid', NULL, '2025-09-16 11:41:34', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(31, 13, 'Your leave request was approved', 'approved', 5, '2025-09-20 01:36:11', NULL, 'Approved Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(32, 14, 'Your payslip has been paid (2025-09-16 → 2025-09-30)', 'payslip_paid', 1, '2025-09-20 02:05:51', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(33, 4, 'Your payslip has been paid (2025-09-16 → 2025-09-30)', 'payslip_paid', 1, '2025-09-20 02:05:51', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(34, 6, 'Your payslip has been paid (2025-09-16 → 2025-09-30)', 'payslip_paid', 1, '2025-09-20 02:05:51', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(35, 1, 'Your payslip has been paid (2025-09-16 → 2025-09-30)', 'payslip_paid', 1, '2025-09-20 02:05:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(36, 16, 'Your payslip has been paid (2025-09-16 → 2025-09-30)', 'payslip_paid', 1, '2025-09-20 02:05:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(37, 15, 'Your payslip has been paid (2025-09-16 → 2025-09-30)', 'payslip_paid', 1, '2025-09-20 02:05:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(38, 13, 'Your payslip has been paid (2025-09-16 → 2025-09-30)', 'payslip_paid', 1, '2025-09-20 02:05:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(39, 18, 'Your payslip has been paid (2025-09-16 → 2025-09-30)', 'payslip_paid', 1, '2025-09-20 02:05:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(40, 2, 'Your payslip has been paid (2025-09-16 → 2025-09-30)', 'payslip_paid', 1, '2025-09-20 02:05:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(41, 8, 'Your payslip has been paid (2025-09-16 → 2025-09-30)', 'payslip_paid', 1, '2025-09-20 02:05:52', '2025-09-21 12:06:01', 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(42, 5, 'Your payslip has been paid (2025-09-16 → 2025-09-30)', 'payslip_paid', 1, '2025-09-20 02:05:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(43, 3, 'Your payslip has been paid (2025-09-16 → 2025-09-30)', 'payslip_paid', 1, '2025-09-20 02:05:52', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(44, 14, 'Your payslip has been paid (2025-09-16 → 2025-09-30)', 'payslip_paid', 1, '2025-09-20 02:08:49', NULL, 'Payslip_paid Notification', 'normal', 'in_app', NULL, NULL, 'sent'),
(45, 5, 'sad\n\nwew', 'alert', NULL, '2025-09-20 23:04:15', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(46, 6, 'sad\n\nwew', 'alert', NULL, '2025-09-20 23:04:15', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(47, 8, 'sad\n\nwew', 'alert', NULL, '2025-09-20 23:04:15', '2025-09-21 12:06:01', NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(48, 13, 'sad\n\nwew', 'alert', NULL, '2025-09-20 23:04:15', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(49, 14, 'sad\n\nwew', 'alert', NULL, '2025-09-20 23:04:15', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(50, 18, 'sad\n\nwew', 'alert', NULL, '2025-09-20 23:04:15', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(51, 5, 'wew\n\nwsa', 'attendance', NULL, '2025-09-20 23:06:09', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(52, 6, 'wew\n\nwsa', 'attendance', NULL, '2025-09-20 23:06:09', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(53, 8, 'wew\n\nwsa', 'attendance', NULL, '2025-09-20 23:06:09', '2025-09-21 12:06:01', NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(54, 13, 'wew\n\nwsa', 'attendance', NULL, '2025-09-20 23:06:09', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(55, 14, 'wew\n\nwsa', 'attendance', NULL, '2025-09-20 23:06:09', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(56, 18, 'wew\n\nwsa', 'attendance', NULL, '2025-09-20 23:06:09', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(57, 5, 'swa\n\nswa', 'system', NULL, '2025-09-20 23:15:33', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(58, 6, 'swa\n\nswa', 'system', NULL, '2025-09-20 23:15:33', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(59, 8, 'swa\n\nswa', 'system', NULL, '2025-09-20 23:15:33', '2025-09-21 12:06:01', NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(60, 13, 'swa\n\nswa', 'system', NULL, '2025-09-20 23:15:33', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(61, 14, 'swa\n\nswa', 'system', NULL, '2025-09-20 23:15:33', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(62, 18, 'swa\n\nswa', 'system', NULL, '2025-09-20 23:15:33', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(63, 5, 'Payroll Processing Complete\n\nYour payroll has been processed and will be available shortly. Please check your account for details.', 'payroll', NULL, '2025-09-20 23:16:43', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(64, 6, 'Payroll Processing Complete\n\nYour payroll has been processed and will be available shortly. Please check your account for details.', 'payroll', NULL, '2025-09-20 23:16:43', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(65, 8, 'Payroll Processing Complete\n\nYour payroll has been processed and will be available shortly. Please check your account for details.', 'payroll', NULL, '2025-09-20 23:16:43', '2025-09-21 12:06:01', NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(66, 13, 'Payroll Processing Complete\n\nYour payroll has been processed and will be available shortly. Please check your account for details.', 'payroll', NULL, '2025-09-20 23:16:43', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(67, 14, 'Payroll Processing Complete\n\nYour payroll has been processed and will be available shortly. Please check your account for details.', 'payroll', NULL, '2025-09-20 23:16:43', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(68, 18, 'Payroll Processing Complete\n\nYour payroll has been processed and will be available shortly. Please check your account for details.', 'payroll', NULL, '2025-09-20 23:16:43', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(69, 1, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-20 23:21:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(70, 2, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-20 23:21:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(71, 3, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-20 23:21:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(72, 4, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-20 23:21:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(73, 5, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-20 23:21:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(74, 6, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-20 23:21:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(75, 8, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-20 23:21:00', '2025-09-21 12:06:01', NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(76, 13, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-20 23:21:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(77, 14, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-20 23:21:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(79, 16, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-20 23:21:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(80, 18, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-20 23:21:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(81, 5, 'asd\n\nsad', 'payroll', NULL, '2025-09-20 23:34:17', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(82, 6, 'asd\n\nsad', 'payroll', NULL, '2025-09-20 23:34:17', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(83, 8, 'asd\n\nsad', 'payroll', NULL, '2025-09-20 23:34:17', '2025-09-21 12:06:01', NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(84, 13, 'asd\n\nsad', 'payroll', NULL, '2025-09-20 23:34:17', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(85, 14, 'asd\n\nsad', 'payroll', NULL, '2025-09-20 23:34:17', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(86, 18, 'asd\n\nsad', 'payroll', NULL, '2025-09-20 23:34:17', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(87, 5, 'das\n\nsad', 'reminder', NULL, '2025-09-21 00:08:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(88, 6, 'das\n\nsad', 'reminder', NULL, '2025-09-21 00:08:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(89, 8, 'das\n\nsad', 'reminder', NULL, '2025-09-21 00:08:00', '2025-09-21 12:06:01', NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(90, 13, 'das\n\nsad', 'reminder', NULL, '2025-09-21 00:08:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(91, 14, 'das\n\nsad', 'reminder', NULL, '2025-09-21 00:08:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(92, 18, 'das\n\nsad', 'reminder', NULL, '2025-09-21 00:08:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(93, 5, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 03:48:28', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(94, 6, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 03:48:28', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(95, 8, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 03:48:28', '2025-09-21 12:06:01', NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(96, 13, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 03:48:28', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(97, 14, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 03:48:28', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(98, 18, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 03:48:28', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(99, 5, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 03:59:22', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(100, 6, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 03:59:22', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(101, 8, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 03:59:22', '2025-09-21 12:06:01', NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(102, 13, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 03:59:22', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(103, 14, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 03:59:22', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(104, 18, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 03:59:22', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(105, 5, 'sad\n\nasdasd', 'general', NULL, '2025-09-21 04:05:14', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(106, 6, 'sad\n\nasdasd', 'general', NULL, '2025-09-21 04:05:14', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(108, 13, 'sad\n\nasdasd', 'general', NULL, '2025-09-21 04:05:14', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(109, 14, 'sad\n\nasdasd', 'general', NULL, '2025-09-21 04:05:14', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(110, 18, 'sad\n\nasdasd', 'general', NULL, '2025-09-21 04:05:14', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(111, 1, 'test\n\ntest', 'general', NULL, '2025-09-21 04:07:47', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(112, 2, 'test\n\ntest', 'general', NULL, '2025-09-21 04:07:47', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(113, 3, 'test\n\ntest', 'general', NULL, '2025-09-21 04:07:47', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(114, 15, 'test\n\ntest', 'general', NULL, '2025-09-21 04:07:47', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(115, 16, 'test\n\ntest', 'general', NULL, '2025-09-21 04:07:47', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(116, 1, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-21 05:04:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(117, 2, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-21 05:04:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(118, 3, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-21 05:04:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(119, 4, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-21 05:04:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(120, 5, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-21 05:04:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(121, 6, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-21 05:04:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(122, 8, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-21 05:04:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(123, 13, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-21 05:04:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(124, 14, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-21 05:04:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(125, 15, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-21 05:04:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(126, 16, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-21 05:04:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(127, 18, 'Scheduled System Maintenance\n\nThe system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'system', NULL, '2025-09-21 05:04:00', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(128, 1, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 05:06:44', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(129, 2, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 05:06:44', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(130, 3, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 05:06:44', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(131, 4, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 05:06:44', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(132, 5, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 05:06:44', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(133, 6, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 05:06:44', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(134, 8, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 05:06:44', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(135, 13, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 05:06:44', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(136, 14, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 05:06:44', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(137, 15, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 05:06:44', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(138, 16, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 05:06:44', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent'),
(139, 18, 'Welcome to the Company!\n\nWelcome to our team! We\'re excited to have you on board and look forward to working with you.', 'general', NULL, '2025-09-21 05:06:44', NULL, NULL, 'normal', 'in_app', NULL, NULL, 'sent');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotification_templates`
--

CREATE TABLE `tblnotification_templates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `recipients` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `priority` enum('low','normal','high','urgent') DEFAULT 'normal',
  `delivery_method` enum('in_app','email','sms','all') DEFAULT 'in_app',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblnotification_templates`
--

INSERT INTO `tblnotification_templates` (`id`, `name`, `type`, `recipients`, `subject`, `message`, `priority`, `delivery_method`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Welcome Message', 'general', 'all', 'Welcome to the Company!', 'Welcome to our team! We\'re excited to have you on board and look forward to working with you.', 'normal', 'in_app', 1, '2025-09-21 00:00:00', '2025-09-21 00:00:00'),
(2, 'Payroll Reminder', 'payroll', 'all', 'Payroll Processing Complete', 'Your payroll has been processed and will be available shortly. Please check your account for details.', 'normal', 'email', 1, '2025-09-21 00:00:00', '2025-09-21 00:00:00'),
(3, 'System Maintenance Alert', 'system', 'all', 'Scheduled System Maintenance', 'The system will undergo maintenance on [DATE] from [TIME] to [TIME]. Please save your work and log out before the maintenance window.', 'high', 'all', 1, '2025-09-21 00:00:00', '2025-09-21 00:00:00'),
(4, 'Leave Request Approved', 'leave', 'employee', 'Your Leave Request Has Been Approved', 'Good news! Your leave request for [DATES] has been approved. Enjoy your time off!', 'normal', 'in_app', 1, '2025-09-21 00:00:00', '2025-09-21 00:00:00'),
(5, 'Attendance Reminder', 'attendance', 'all', 'Don\'t Forget to Clock In/Out', 'This is a friendly reminder to clock in when you arrive and clock out when you leave. Accurate time tracking helps us all!', 'low', 'in_app', 1, '2025-09-21 00:00:00', '2025-09-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblovertime_requests`
--

CREATE TABLE `tblovertime_requests` (
  `ot_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `work_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `hours` decimal(5,2) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `approved_by` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpayroll`
--

CREATE TABLE `tblpayroll` (
  `payroll_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `payroll_period_start` date NOT NULL,
  `payroll_period_end` date NOT NULL,
  `basic_salary` decimal(10,2) NOT NULL,
  `total_overtime_hours` decimal(5,2) DEFAULT 0.00,
  `overtime_pay` decimal(10,2) DEFAULT 0.00,
  `deductions` decimal(10,2) DEFAULT 0.00,
  `net_pay` decimal(10,2) NOT NULL,
  `status` enum('processed','paid') DEFAULT 'processed',
  `paid_at` datetime DEFAULT NULL,
  `paid_by` int(11) DEFAULT NULL,
  `slip_downloaded_at` datetime DEFAULT NULL,
  `slip_download_count` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblpayroll`
--

INSERT INTO `tblpayroll` (`payroll_id`, `employee_id`, `payroll_period_start`, `payroll_period_end`, `basic_salary`, `total_overtime_hours`, `overtime_pay`, `deductions`, `net_pay`, `status`, `paid_at`, `paid_by`, `slip_downloaded_at`, `slip_download_count`, `created_at`) VALUES
(1, 3, '2025-09-01', '2025-09-30', 100000.00, 0.00, 0.00, 28533.23, 68133.44, 'paid', '2025-09-14 15:13:52', 1, NULL, 0, '2025-09-14 07:13:47'),
(2, 5, '2025-09-01', '2025-09-30', 10000.00, 0.00, 0.00, 878.33, 8788.34, 'paid', '2025-09-14 15:13:52', 1, NULL, 0, '2025-09-14 07:13:47'),
(3, 8, '2025-09-01', '2025-09-30', 30000.00, 0.00, 0.00, 4243.40, 24756.60, 'paid', '2025-09-14 15:13:52', 1, NULL, 0, '2025-09-14 07:13:47'),
(4, 2, '2025-09-01', '2025-09-30', 100000.00, 0.00, 0.00, 28533.23, 68133.44, 'paid', '2025-09-14 15:13:52', 1, NULL, 0, '2025-09-14 07:13:47'),
(5, 18, '2025-09-01', '2025-09-30', 10000.00, 0.00, 0.00, 878.33, 8788.34, 'paid', '2025-09-14 15:13:52', 1, NULL, 0, '2025-09-14 07:13:47'),
(6, 13, '2025-09-01', '2025-09-30', 1000.00, 0.00, 0.00, 312.83, 653.84, 'paid', '2025-09-14 15:13:52', 1, NULL, 0, '2025-09-14 07:13:47'),
(7, 15, '2025-09-01', '2025-09-30', 10000.00, 0.00, 0.00, 878.33, 8788.34, 'paid', '2025-09-14 15:13:52', 1, NULL, 0, '2025-09-14 07:13:47'),
(8, 16, '2025-09-01', '2025-09-30', 100000.00, 0.00, 0.00, 28533.23, 68133.44, 'paid', '2025-09-14 15:13:52', 1, NULL, 0, '2025-09-14 07:13:47'),
(9, 1, '2025-09-01', '2025-09-30', 100000.00, 0.00, 0.00, 28533.23, 68133.44, 'paid', '2025-09-16 18:03:27', 1, NULL, 0, '2025-09-14 07:13:47'),
(10, 6, '2025-09-01', '2025-09-30', 10000.00, 0.00, 0.00, 878.33, 8788.34, 'paid', '2025-09-14 15:13:52', 1, NULL, 0, '2025-09-14 07:13:47'),
(11, 4, '2025-09-01', '2025-09-30', 10000.00, 0.00, 0.00, 878.33, 8788.34, 'paid', '2025-09-14 15:13:52', 1, NULL, 0, '2025-09-14 07:13:47'),
(12, 14, '2025-09-01', '2025-09-30', 50000.00, 0.00, 0.00, 10600.08, 37733.25, 'paid', '2025-09-14 15:13:52', 1, NULL, 0, '2025-09-14 07:13:47'),
(13, 3, '2025-09-16', '2025-09-30', 100000.00, 0.00, 0.00, 10033.42, 36633.25, 'paid', '2025-09-20 10:05:52', 1, NULL, 0, '2025-09-16 10:10:57'),
(14, 5, '2025-09-16', '2025-09-30', 10000.00, 0.00, 0.00, 553.33, 4113.34, 'paid', '2025-09-20 10:05:52', 1, NULL, 0, '2025-09-16 10:10:57'),
(15, 8, '2025-09-16', '2025-09-30', 30000.00, 0.00, 0.00, 1260.00, 12740.00, 'paid', '2025-09-20 10:05:52', 1, NULL, 0, '2025-09-16 10:10:57'),
(16, 2, '2025-09-16', '2025-09-30', 100000.00, 0.00, 0.00, 10033.42, 36633.25, 'paid', '2025-09-20 10:05:52', 1, NULL, 0, '2025-09-16 10:10:57'),
(17, 18, '2025-09-16', '2025-09-30', 10000.00, 0.00, 0.00, 553.33, 4113.34, 'paid', '2025-09-20 10:05:52', 1, NULL, 0, '2025-09-16 10:10:57'),
(18, 13, '2025-09-16', '2025-09-30', 1000.00, 0.00, 0.00, 280.33, 186.34, 'paid', '2025-09-20 10:05:52', 1, NULL, 0, '2025-09-16 10:10:57'),
(19, 15, '2025-09-16', '2025-09-30', 10000.00, 0.00, 0.00, 553.33, 4113.34, 'paid', '2025-09-20 10:05:52', 1, NULL, 0, '2025-09-16 10:10:57'),
(20, 16, '2025-09-16', '2025-09-30', 100000.00, 0.00, 0.00, 10033.42, 36633.25, 'paid', '2025-09-20 10:05:52', 1, NULL, 0, '2025-09-16 10:10:57'),
(21, 1, '2025-09-16', '2025-09-30', 100000.00, 0.00, 0.00, 10033.42, 36633.25, 'paid', '2025-09-20 10:05:51', 1, NULL, 0, '2025-09-16 10:10:57'),
(22, 6, '2025-09-16', '2025-09-30', 10000.00, 0.00, 0.00, 553.33, 4113.34, 'paid', '2025-09-20 10:05:51', 1, NULL, 0, '2025-09-16 10:10:58'),
(23, 4, '2025-09-16', '2025-09-30', 10000.00, 0.00, 0.00, 553.33, 4113.34, 'paid', '2025-09-20 10:05:51', 1, NULL, 0, '2025-09-16 10:10:58'),
(24, 14, '2025-09-16', '2025-09-30', 50000.00, 0.00, 0.00, 2600.07, 20733.26, 'paid', '2025-09-20 10:08:49', 1, NULL, 0, '2025-09-16 10:10:58'),
(25, 1, '2025-09-16', '2025-09-27', 100000.00, 0.00, 0.00, 6633.42, 30033.25, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:22:55'),
(26, 2, '2025-09-16', '2025-09-27', 100000.00, 0.00, 0.00, 6633.42, 30033.25, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:22:55'),
(27, 3, '2025-09-16', '2025-09-27', 100000.00, 0.00, 0.00, 6633.42, 30033.25, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:22:55'),
(28, 4, '2025-09-16', '2025-09-27', 10000.00, 0.00, 0.00, 488.33, 3178.34, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:22:55'),
(29, 5, '2025-09-16', '2025-09-27', 10000.00, 0.00, 0.00, 488.33, 3178.34, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:22:55'),
(30, 6, '2025-09-16', '2025-09-27', 10000.00, 0.00, 0.00, 488.33, 3178.34, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:22:55'),
(31, 8, '2025-09-16', '2025-09-27', 30000.00, 0.00, 0.00, 990.00, 10010.00, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:22:55'),
(32, 13, '2025-09-16', '2025-09-27', 1000.00, 0.00, 0.00, 273.83, 92.84, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:22:55'),
(33, 14, '2025-09-16', '2025-09-27', 50000.00, 0.00, 0.00, 1650.00, 16683.33, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:22:55'),
(34, 15, '2025-09-16', '2025-09-27', 10000.00, 0.00, 0.00, 488.33, 3178.34, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:22:55'),
(35, 16, '2025-09-16', '2025-09-27', 100000.00, 0.00, 0.00, 6633.42, 30033.25, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:22:55'),
(36, 18, '2025-09-16', '2025-09-27', 10000.00, 0.00, 0.00, 488.33, 3178.34, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:22:55'),
(37, 1, '2025-09-01', '2025-09-15', 100000.00, 0.00, 0.00, 10033.42, 36633.25, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:07'),
(38, 2, '2025-09-01', '2025-09-15', 100000.00, 0.00, 0.00, 10033.42, 36633.25, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:07'),
(39, 3, '2025-09-01', '2025-09-15', 100000.00, 0.00, 0.00, 10033.42, 36633.25, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:07'),
(40, 4, '2025-09-01', '2025-09-15', 10000.00, 0.00, 0.00, 553.33, 4113.34, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:07'),
(41, 5, '2025-09-01', '2025-09-15', 10000.00, 0.00, 0.00, 553.33, 4113.34, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:07'),
(42, 6, '2025-09-01', '2025-09-15', 10000.00, 0.00, 0.00, 553.33, 4113.34, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:07'),
(43, 8, '2025-09-01', '2025-09-15', 30000.00, 0.00, 0.00, 1260.00, 12740.00, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:07'),
(44, 13, '2025-09-01', '2025-09-15', 1000.00, 0.00, 0.00, 280.33, 186.34, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:07'),
(45, 14, '2025-09-01', '2025-09-15', 50000.00, 0.00, 0.00, 2600.07, 20733.26, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:07'),
(46, 15, '2025-09-01', '2025-09-15', 10000.00, 0.00, 0.00, 553.33, 4113.34, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:07'),
(47, 16, '2025-09-01', '2025-09-15', 100000.00, 0.00, 0.00, 10033.42, 36633.25, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:07'),
(48, 18, '2025-09-01', '2025-09-15', 10000.00, 0.00, 0.00, 553.33, 4113.34, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:07'),
(49, 1, '2025-09-21', '2025-09-21', 100000.00, 0.00, 0.00, 466.67, 2866.66, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:22'),
(50, 2, '2025-09-21', '2025-09-21', 100000.00, 0.00, 0.00, 466.67, 2866.66, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:22'),
(51, 3, '2025-09-21', '2025-09-21', 100000.00, 0.00, 0.00, 466.67, 2866.66, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:22'),
(52, 4, '2025-09-21', '2025-09-21', 10000.00, 0.00, 0.00, 271.67, 61.66, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:22'),
(53, 5, '2025-09-21', '2025-09-21', 10000.00, 0.00, 0.00, 271.67, 61.66, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:22'),
(54, 6, '2025-09-21', '2025-09-21', 10000.00, 0.00, 0.00, 271.67, 61.66, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:22'),
(55, 8, '2025-09-21', '2025-09-21', 30000.00, 0.00, 0.00, 315.00, 685.00, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:22'),
(56, 13, '2025-09-21', '2025-09-21', 1000.00, 0.00, 0.00, 252.17, -218.84, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:22'),
(57, 14, '2025-09-21', '2025-09-21', 50000.00, 0.00, 0.00, 358.33, 1308.34, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:22'),
(58, 15, '2025-09-21', '2025-09-21', 10000.00, 0.00, 0.00, 271.67, 61.66, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:22'),
(59, 16, '2025-09-21', '2025-09-21', 100000.00, 0.00, 0.00, 466.67, 2866.66, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:22'),
(60, 18, '2025-09-21', '2025-09-21', 10000.00, 0.00, 0.00, 271.67, 61.66, 'processed', NULL, NULL, NULL, 0, '2025-09-20 23:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayrollreports`
--

CREATE TABLE `tblpayrollreports` (
  `Report_ID` int(11) NOT NULL,
  `Payroll_ID` int(11) NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `Period_Start` date NOT NULL,
  `Period_End` date NOT NULL,
  `Basic_Salary` decimal(10,2) NOT NULL,
  `Total_Deductions` decimal(10,2) DEFAULT 0.00,
  `Net_Pay` decimal(10,2) NOT NULL,
  `Generated_By` int(11) DEFAULT NULL,
  `Generated_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpayrollreports`
--

INSERT INTO `tblpayrollreports` (`Report_ID`, `Payroll_ID`, `Employee_ID`, `Period_Start`, `Period_End`, `Basic_Salary`, `Total_Deductions`, `Net_Pay`, `Generated_By`, `Generated_At`) VALUES
(1, 1, 3, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:14:04'),
(2, 2, 5, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:14:04'),
(3, 3, 8, '2025-09-01', '2025-09-30', 30000.00, 4243.40, 24756.60, 1, '2025-09-14 07:14:04'),
(4, 4, 2, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:14:04'),
(5, 5, 18, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:14:04'),
(6, 6, 13, '2025-09-01', '2025-09-30', 1000.00, 312.83, 653.84, 1, '2025-09-14 07:14:04'),
(7, 7, 15, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:14:04'),
(8, 8, 16, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:14:04'),
(9, 9, 1, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:14:04'),
(10, 10, 6, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:14:04'),
(11, 11, 4, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:14:04'),
(12, 12, 14, '2025-09-01', '2025-09-30', 50000.00, 10600.08, 37733.25, 1, '2025-09-14 07:14:04'),
(13, 1, 3, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:19:41'),
(14, 2, 5, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:19:41'),
(15, 3, 8, '2025-09-01', '2025-09-30', 30000.00, 4243.40, 24756.60, 1, '2025-09-14 07:19:41'),
(16, 4, 2, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:19:41'),
(17, 5, 18, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:19:41'),
(18, 6, 13, '2025-09-01', '2025-09-30', 1000.00, 312.83, 653.84, 1, '2025-09-14 07:19:41'),
(19, 7, 15, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:19:41'),
(20, 8, 16, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:19:41'),
(21, 9, 1, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:19:41'),
(22, 10, 6, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:19:41'),
(23, 11, 4, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:19:41'),
(24, 12, 14, '2025-09-01', '2025-09-30', 50000.00, 10600.08, 37733.25, 1, '2025-09-14 07:19:41'),
(25, 1, 3, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:19:52'),
(26, 2, 5, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:19:52'),
(27, 3, 8, '2025-09-01', '2025-09-30', 30000.00, 4243.40, 24756.60, 1, '2025-09-14 07:19:52'),
(28, 4, 2, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:19:52'),
(29, 5, 18, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:19:52'),
(30, 6, 13, '2025-09-01', '2025-09-30', 1000.00, 312.83, 653.84, 1, '2025-09-14 07:19:52'),
(31, 7, 15, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:19:52'),
(32, 8, 16, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:19:52'),
(33, 9, 1, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:19:52'),
(34, 10, 6, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:19:52'),
(35, 11, 4, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:19:52'),
(36, 12, 14, '2025-09-01', '2025-09-30', 50000.00, 10600.08, 37733.25, 1, '2025-09-14 07:19:52'),
(37, 1, 3, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:20:13'),
(38, 2, 5, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:20:13'),
(39, 3, 8, '2025-09-01', '2025-09-30', 30000.00, 4243.40, 24756.60, 1, '2025-09-14 07:20:13'),
(40, 4, 2, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:20:13'),
(41, 5, 18, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:20:13'),
(42, 6, 13, '2025-09-01', '2025-09-30', 1000.00, 312.83, 653.84, 1, '2025-09-14 07:20:13'),
(43, 7, 15, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:20:13'),
(44, 8, 16, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:20:13'),
(45, 9, 1, '2025-09-01', '2025-09-30', 100000.00, 28533.23, 68133.44, 1, '2025-09-14 07:20:13'),
(46, 10, 6, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:20:13'),
(47, 11, 4, '2025-09-01', '2025-09-30', 10000.00, 878.33, 8788.34, 1, '2025-09-14 07:20:13'),
(48, 12, 14, '2025-09-01', '2025-09-30', 50000.00, 10600.08, 37733.25, 1, '2025-09-14 07:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayroll_archive`
--

CREATE TABLE `tblpayroll_archive` (
  `archive_id` int(11) NOT NULL,
  `payroll_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `payroll_period_start` date NOT NULL,
  `payroll_period_end` date NOT NULL,
  `basic_salary` decimal(10,2) NOT NULL,
  `total_overtime_hours` decimal(5,2) DEFAULT 0.00,
  `overtime_pay` decimal(10,2) DEFAULT 0.00,
  `total_deductions` decimal(10,2) DEFAULT 0.00,
  `net_pay` decimal(10,2) NOT NULL,
  `status` enum('processed','paid') DEFAULT 'processed',
  `archived_reason` varchar(255) DEFAULT NULL,
  `archived_by` int(11) DEFAULT NULL,
  `archived_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpayroll_batch_employees`
--

CREATE TABLE `tblpayroll_batch_employees` (
  `batch_emp_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `basic_salary` decimal(10,2) NOT NULL,
  `overtime_pay` decimal(10,2) DEFAULT 0.00,
  `deductions` decimal(10,2) DEFAULT 0.00,
  `net_pay` decimal(10,2) NOT NULL,
  `status` enum('pending','processed','paid') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblpayroll_batch_employees`
--

INSERT INTO `tblpayroll_batch_employees` (`batch_emp_id`, `batch_id`, `employee_id`, `basic_salary`, `overtime_pay`, `deductions`, `net_pay`, `status`, `created_at`) VALUES
(1, 1, 1, 100000.00, 0.00, 10033.42, 36633.25, 'paid', '2025-09-14 06:31:06'),
(2, 1, 2, 100000.00, 0.00, 10033.42, 36633.25, 'paid', '2025-09-14 06:31:06'),
(3, 1, 3, 100000.00, 0.00, 10033.42, 36633.25, 'paid', '2025-09-14 06:31:06'),
(4, 1, 4, 10000.00, 0.00, 553.33, 4113.34, 'paid', '2025-09-14 06:31:06'),
(5, 1, 5, 10000.00, 0.00, 553.33, 4113.34, 'paid', '2025-09-14 06:31:06'),
(6, 1, 6, 10000.00, 0.00, 553.33, 4113.34, 'paid', '2025-09-14 06:31:06'),
(7, 1, 8, 30000.00, 0.00, 1260.00, 12740.00, 'paid', '2025-09-14 06:31:06'),
(8, 1, 13, 1000.00, 0.00, 280.33, 186.34, 'paid', '2025-09-14 06:31:06'),
(9, 1, 14, 50000.00, 0.00, 2600.07, 20733.26, 'paid', '2025-09-14 06:31:06'),
(10, 1, 15, 10000.00, 0.00, 553.33, 4113.34, 'paid', '2025-09-14 06:31:06'),
(11, 1, 16, 100000.00, 0.00, 10033.42, 36633.25, 'paid', '2025-09-14 06:31:06'),
(12, 1, 18, 10000.00, 0.00, 553.33, 4113.34, 'paid', '2025-09-14 06:31:06'),
(13, 2, 1, 100000.00, 0.00, 28533.23, 68133.44, 'paid', '2025-09-14 06:44:55'),
(14, 2, 2, 100000.00, 0.00, 28533.23, 68133.44, 'paid', '2025-09-14 06:44:55'),
(15, 2, 3, 100000.00, 0.00, 28533.23, 68133.44, 'paid', '2025-09-14 06:44:55'),
(16, 2, 4, 10000.00, 0.00, 878.33, 8788.34, 'paid', '2025-09-14 06:44:55'),
(17, 2, 5, 10000.00, 0.00, 878.33, 8788.34, 'paid', '2025-09-14 06:44:55'),
(18, 2, 6, 10000.00, 0.00, 878.33, 8788.34, 'paid', '2025-09-14 06:44:55'),
(19, 2, 8, 30000.00, 0.00, 4243.40, 24756.60, 'paid', '2025-09-14 06:44:55'),
(20, 2, 13, 1000.00, 0.00, 312.83, 653.84, 'paid', '2025-09-14 06:44:55'),
(21, 2, 14, 50000.00, 0.00, 10600.08, 37733.25, 'paid', '2025-09-14 06:44:55'),
(22, 2, 15, 10000.00, 0.00, 878.33, 8788.34, 'paid', '2025-09-14 06:44:55'),
(23, 2, 16, 100000.00, 0.00, 28533.23, 68133.44, 'paid', '2025-09-14 06:44:55'),
(24, 2, 18, 10000.00, 0.00, 878.33, 8788.34, 'paid', '2025-09-14 06:44:55'),
(25, 3, 1, 100000.00, 0.00, 28533.23, 68133.44, 'paid', '2025-09-16 10:03:06'),
(26, 3, 5, 10000.00, 0.00, 878.33, 8788.34, 'paid', '2025-09-16 10:03:06'),
(27, 3, 18, 10000.00, 0.00, 878.33, 8788.34, 'paid', '2025-09-16 10:03:06'),
(28, 4, 1, 100000.00, 0.00, 900.00, 9100.00, 'paid', '2025-09-16 10:22:41'),
(29, 4, 2, 100000.00, 0.00, 900.00, 9100.00, 'paid', '2025-09-16 10:22:41'),
(30, 4, 3, 100000.00, 0.00, 900.00, 9100.00, 'paid', '2025-09-16 10:22:41'),
(31, 4, 4, 10000.00, 0.00, 315.00, 685.00, 'paid', '2025-09-16 10:22:41'),
(32, 4, 5, 10000.00, 0.00, 315.00, 685.00, 'paid', '2025-09-16 10:22:41'),
(33, 4, 6, 10000.00, 0.00, 315.00, 685.00, 'paid', '2025-09-16 10:22:41'),
(34, 4, 8, 30000.00, 0.00, 445.00, 2555.00, 'paid', '2025-09-16 10:22:41'),
(35, 4, 13, 1000.00, 0.00, 256.50, -156.50, 'paid', '2025-09-16 10:22:41'),
(36, 4, 14, 50000.00, 0.00, 575.00, 4425.00, 'paid', '2025-09-16 10:22:41'),
(37, 4, 15, 10000.00, 0.00, 315.00, 685.00, 'paid', '2025-09-16 10:22:41'),
(38, 4, 16, 100000.00, 0.00, 900.00, 9100.00, 'paid', '2025-09-16 10:22:41'),
(39, 4, 18, 10000.00, 0.00, 315.00, 685.00, 'paid', '2025-09-16 10:22:41'),
(40, 5, 1, 100000.00, 0.00, 6633.42, 30033.25, 'paid', '2025-09-16 11:54:52'),
(41, 5, 2, 100000.00, 0.00, 6633.42, 30033.25, 'paid', '2025-09-16 11:54:52'),
(42, 5, 3, 100000.00, 0.00, 6633.42, 30033.25, 'paid', '2025-09-16 11:54:52'),
(43, 5, 4, 10000.00, 0.00, 488.33, 3178.34, 'paid', '2025-09-16 11:54:52'),
(44, 5, 5, 10000.00, 0.00, 488.33, 3178.34, 'paid', '2025-09-16 11:54:52'),
(45, 5, 6, 10000.00, 0.00, 488.33, 3178.34, 'paid', '2025-09-16 11:54:52'),
(46, 5, 8, 30000.00, 0.00, 990.00, 10010.00, 'paid', '2025-09-16 11:54:52'),
(47, 5, 13, 1000.00, 0.00, 273.83, 92.84, 'paid', '2025-09-16 11:54:52'),
(48, 5, 14, 50000.00, 0.00, 1650.00, 16683.33, 'paid', '2025-09-16 11:54:52'),
(49, 5, 15, 10000.00, 0.00, 488.33, 3178.34, 'paid', '2025-09-16 11:54:52'),
(50, 5, 16, 100000.00, 0.00, 6633.42, 30033.25, 'paid', '2025-09-16 11:54:52'),
(51, 5, 18, 10000.00, 0.00, 488.33, 3178.34, 'paid', '2025-09-16 11:54:52'),
(52, 6, 1, 100000.00, 0.00, 466.67, 2866.66, 'pending', '2025-09-20 23:23:22'),
(53, 6, 2, 100000.00, 0.00, 466.67, 2866.66, 'pending', '2025-09-20 23:23:22'),
(54, 6, 3, 100000.00, 0.00, 466.67, 2866.66, 'pending', '2025-09-20 23:23:22'),
(55, 6, 4, 10000.00, 0.00, 271.67, 61.66, 'pending', '2025-09-20 23:23:22'),
(56, 6, 5, 10000.00, 0.00, 271.67, 61.66, 'pending', '2025-09-20 23:23:22'),
(57, 6, 6, 10000.00, 0.00, 271.67, 61.66, 'pending', '2025-09-20 23:23:22'),
(58, 6, 8, 30000.00, 0.00, 315.00, 685.00, 'pending', '2025-09-20 23:23:22'),
(59, 6, 13, 1000.00, 0.00, 252.17, -218.84, 'pending', '2025-09-20 23:23:22'),
(60, 6, 14, 50000.00, 0.00, 358.33, 1308.34, 'pending', '2025-09-20 23:23:22'),
(61, 6, 15, 10000.00, 0.00, 271.67, 61.66, 'pending', '2025-09-20 23:23:22'),
(62, 6, 16, 100000.00, 0.00, 466.67, 2866.66, 'pending', '2025-09-20 23:23:22'),
(63, 6, 18, 10000.00, 0.00, 271.67, 61.66, 'pending', '2025-09-20 23:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayroll_by_batch`
--

CREATE TABLE `tblpayroll_by_batch` (
  `batch_id` int(11) NOT NULL,
  `batch_name` varchar(100) NOT NULL,
  `payroll_period_start` date NOT NULL,
  `payroll_period_end` date NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `total_employees` int(11) DEFAULT 0,
  `total_amount` decimal(12,2) DEFAULT 0.00,
  `status` enum('pending','processing','completed','failed') DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblpayroll_by_batch`
--

INSERT INTO `tblpayroll_by_batch` (`batch_id`, `batch_name`, `payroll_period_start`, `payroll_period_end`, `department`, `total_employees`, `total_amount`, `status`, `notes`, `generated_by`, `created_at`, `updated_at`) VALUES
(1, 'Batch_1', '2025-09-01', '2025-09-15', NULL, 12, 200759.27, 'processing', NULL, 1, '2025-09-14 06:31:06', '2025-09-20 23:23:10'),
(2, 'September', '2025-09-01', '2025-09-30', NULL, 12, 379619.12, '', NULL, 1, '2025-09-14 06:44:55', '2025-09-16 11:41:34'),
(3, 'Batch_0', '2025-09-01', '2025-09-30', 'Finance Department', 3, 85710.11, '', NULL, 1, '2025-09-16 10:03:06', '2025-09-16 10:16:12'),
(4, 'sss', '2025-09-16', '2025-09-19', NULL, 12, 46648.50, '', NULL, 1, '2025-09-16 10:22:41', '2025-09-16 10:22:51'),
(5, 'rehtrh', '2025-09-16', '2025-09-27', NULL, 12, 162810.84, 'processing', NULL, 1, '2025-09-16 11:54:52', '2025-09-20 23:23:03'),
(6, 'dsf', '2025-09-21', '2025-09-21', NULL, 12, 13549.47, 'processing', NULL, 1, '2025-09-20 23:23:22', '2025-09-20 23:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayroll_period`
--

CREATE TABLE `tblpayroll_period` (
  `period_id` int(11) NOT NULL,
  `period_start` date NOT NULL,
  `period_end` date NOT NULL,
  `status` enum('open','closed') DEFAULT 'open',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblpayroll_period`
--

INSERT INTO `tblpayroll_period` (`period_id`, `period_start`, `period_end`, `status`, `created_at`) VALUES
(1, '2025-08-01', '2025-08-15', 'open', '2025-08-20 09:35:05'),
(2, '2025-09-01', '2025-09-30', 'open', '2025-09-14 07:13:47'),
(3, '2025-09-16', '2025-09-30', 'open', '2025-09-16 10:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayroll_slip_downloads`
--

CREATE TABLE `tblpayroll_slip_downloads` (
  `download_id` int(11) NOT NULL,
  `payroll_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `downloaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpayslip_history`
--

CREATE TABLE `tblpayslip_history` (
  `history_id` int(11) NOT NULL,
  `payroll_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `payroll_period_start` date NOT NULL,
  `payroll_period_end` date NOT NULL,
  `basic_salary` decimal(10,2) NOT NULL,
  `total_overtime_hours` decimal(5,2) DEFAULT 0.00,
  `overtime_pay` decimal(10,2) DEFAULT 0.00,
  `total_deductions` decimal(10,2) DEFAULT 0.00,
  `net_pay` decimal(10,2) NOT NULL,
  `snapshot_details` longtext DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `generated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblsystem_settings`
--

CREATE TABLE `tblsystem_settings` (
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblsystem_settings`
--

INSERT INTO `tblsystem_settings` (`setting_key`, `setting_value`, `updated_at`) VALUES
('absent_deduction_enabled', '1', '2025-09-08 23:54:20'),
('absent_deduction_per_day', '0', '2025-09-08 23:54:20'),
('account_allow_admin_unblock', '1', '2025-09-08 23:54:20'),
('account_lock_enabled', '0', '2025-09-08 23:54:20'),
('account_lock_max_attempts', '5', '2025-09-08 23:54:20'),
('account_lock_window_minutes', '15', '2025-09-08 23:54:20'),
('account_lockout_minutes', '30', '2025-09-08 23:54:20'),
('allow_break_scans', '1', '2025-09-08 23:54:20'),
('clock_in_method', 'qr', '2025-09-08 23:54:20'),
('company_address', '2nd Floor, Ipil Street, Carmen, Cagayan de Oro City, Misamis Oriental, Philippines 9000', '2025-09-08 23:57:37'),
('company_name', 'Unitop', '2025-09-08 23:57:37'),
('default_sick_days', '5', '2025-09-08 23:54:20'),
('default_vacation_days', '5', '2025-09-08 23:54:20'),
('developed_by', '', '2025-09-08 23:54:20'),
('grace_period_minutes', '0', '2025-09-08 23:54:20'),
('late_deduction_enabled', '1', '2025-09-08 23:54:20'),
('late_deduction_per_minute', '0', '2025-09-08 23:54:20'),
('loans_enabled', '1', '2025-09-08 23:54:20'),
('lunch_hours_per_day', '1', '2025-09-08 23:54:20'),
('notify_delivery_option', 'in_app', '2025-09-08 23:54:20'),
('notify_message', '', '2025-09-08 23:54:20'),
('notify_recipient', '', '2025-09-08 23:54:20'),
('notify_recipients', '', '2025-09-08 23:54:20'),
('notify_type', 'general', '2025-09-08 23:54:20'),
('ot_regular_holiday_multiplier', '2.00', '2025-09-08 23:54:20'),
('ot_regular_multiplier', '1.25', '2025-09-08 23:54:20'),
('ot_rest_day_multiplier', '1.30', '2025-09-08 23:54:20'),
('ot_special_holiday_multiplier', '1.50', '2025-09-08 23:54:20'),
('overtime_multiplier', '1.25', '2025-09-08 23:54:20'),
('overtime_tracking_enabled', '1', '2025-09-08 23:54:20'),
('pagibig_enabled', '1', '2025-09-08 23:54:20'),
('pay_period', 'semi_monthly', '2025-09-08 23:54:20'),
('payroll_currency', 'PHP', '2025-09-08 23:54:20'),
('philhealth_enabled', '1', '2025-09-08 23:54:20'),
('rounding_interval_minutes', '0', '2025-09-08 23:54:20'),
('salary_basis', 'monthly', '2025-09-08 23:54:20'),
('sss_enabled', '1', '2025-09-08 23:54:20'),
('standard_work_end_time', '17:00', '2025-09-08 23:54:20'),
('standard_work_start_time', '08:00', '2025-09-08 23:54:20'),
('system_profile', 'production', '2025-09-08 23:54:20'),
('tax_enabled', '1', '2025-09-08 23:54:20'),
('ui_theme', 'blue', '2025-09-20 23:18:50'),
('ui_theme_primary_600', '#2563eb', '2025-09-20 23:18:50'),
('ui_theme_primary_700', '#1d4ed8', '2025-09-20 23:18:50'),
('undertime_deduction_enabled', '1', '2025-09-08 23:54:20'),
('undertime_deduction_per_hour', '100.00', '2025-09-08 23:54:20'),
('undertime_grace_minutes', '0', '2025-09-08 23:54:20'),
('work_hours_per_day', '12', '2025-09-08 23:54:20'),
('work_week', '[\"mon\",\"tue\",\"wed\",\"thu\",\"fri\"]', '2025-09-08 23:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblundertime_requests`
--

CREATE TABLE `tblundertime_requests` (
  `ut_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `work_date` date NOT NULL,
  `hours` decimal(5,2) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `approved_by` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','employee','manager','hr') NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `reset_code` varchar(6) DEFAULT NULL,
  `reset_code_expires` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`user_id`, `username`, `password`, `role`, `employee_id`, `avatar_url`, `reset_code`, `reset_code_expires`, `created_at`) VALUES
(1, 'admin', '$2y$10$tfTFmZPsCEsg4uuCBDNuvu2zRUmwoVabSssOrFcCnDUuQ9gbYcxcC', 'admin', NULL, NULL, NULL, NULL, '2025-08-20 09:42:06'),
(2, 'hr', '$2y$10$T4/xf6s7dyGu7cwLPYJi2ecYxlnBdBRhsyVfkcZiNVqxaoP7m0AQq', 'hr', NULL, NULL, NULL, NULL, '2025-08-20 09:42:06'),
(3, 'michaelnacaya86@gmail.com', '$2y$10$To85lu1W3W4oEMr1dEAryOvESYQUjwHG1jxREXb9rH5i1cTMajYue', 'manager', 1, NULL, NULL, NULL, '2025-08-20 09:49:09'),
(4, 'darwin@gmail.com', '$2y$10$lElhsaLQlifIxX9TXR9MKeR9wKFhsv9qAURullUmWGUfzcL77KJ.S', 'manager', 2, NULL, NULL, NULL, '2025-08-20 09:49:52'),
(5, 'frans@gmail.com', '$2y$10$K//Q0crkOndyxMh0C/OxAei/mIOAiTHigmvl91HDk/BgEQES3B29e', 'manager', 3, NULL, NULL, NULL, '2025-08-20 10:15:18'),
(6, 'roberth@gmail.com', '$2y$10$NoKY5JWM7VATnxxfUgz1KOI4wsdlIxwSY2KocWHJJSEMCQsihFLze', 'hr', 4, NULL, NULL, NULL, '2025-08-20 10:16:29'),
(7, 'dong@gmail.com', '$2y$10$TEMI8aKaE3.dUi51FKURcudqYYCeUsI2NhA2eiSD26.zBsKnyb6LC', 'employee', 5, NULL, NULL, NULL, '2025-08-20 10:17:51'),
(9, 'mjay@gmail.com', '$2y$10$.9p.Pxy4hA5QdbadVs5hLu5rs7GSRYL0scf9M4eqJAiOyLcH378wu', 'employee', 6, NULL, NULL, NULL, '2025-08-20 10:48:15'),
(11, 'dave@gmail.com', '$2y$10$LB3I38FbIAXTWW/m4rEME.r24fiDYaYv1rF73h/ja4K7jxJU/zLbW', 'employee', 8, NULL, NULL, NULL, '2025-08-20 11:03:06'),
(12, 'angle@gmail.com', '$2y$10$/uQQerOin0fxGhXZB9/bee7blFO6/eEmhT2DgjpMXoXr/Vfbvo.y6', 'employee', 13, NULL, NULL, NULL, '2025-08-20 11:19:48'),
(13, 'reyes@gmail.com', '$2y$10$ZcsP14vChRDUKY28WIuz2.yExYsYPhaLEFiN8H83Fqvx54OB78vfO', 'employee', 14, NULL, NULL, NULL, '2025-08-20 11:21:05'),
(14, 'maria@gmail.com', '$2y$10$KwOpkSbKzJzLKCluWpTgTuBNGH.oemYO8uQzc55ZtLYBUcrUg07A.', 'manager', 15, NULL, NULL, NULL, '2025-08-20 11:24:03'),
(15, 'carlo@gmail.com', '$2y$10$3WBnPrwZHUEJcFxHBoCe.OTmy2ACEHDYC6SCwbsEfPIj3IJbwDegm', 'manager', 16, NULL, NULL, NULL, '2025-08-20 11:25:06'),
(16, 'sofia@gmail.com', '$2y$10$vNSdOYl7Q4ECDXrVZuxcfuWo5yRYT1F1WhFRagEVwGPL9mx6HHGUe', 'employee', 18, NULL, NULL, NULL, '2025-08-20 11:27:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD UNIQUE KEY `uniq_attendance_employee_date` (`employee_id`,`attendance_date`);

--
-- Indexes for table `tblattendancereports`
--
ALTER TABLE `tblattendancereports`
  ADD PRIMARY KEY (`Report_ID`),
  ADD KEY `fk_ar_attendance` (`Attendance_ID`),
  ADD KEY `fk_ar_employee` (`Employee_ID`),
  ADD KEY `fk_ar_generated_by` (`Generated_By`);

--
-- Indexes for table `tblattendance_daily_summary`
--
ALTER TABLE `tblattendance_daily_summary`
  ADD PRIMARY KEY (`summary_id`),
  ADD UNIQUE KEY `uniq_summary_date` (`summary_date`);

--
-- Indexes for table `tblattendance_employee_daily`
--
ALTER TABLE `tblattendance_employee_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_emp_date` (`employee_id`,`attendance_date`),
  ADD KEY `fk_emp_daily_employee` (`employee_id`);

--
-- Indexes for table `tblaudit_logs`
--
ALTER TABLE `tblaudit_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `fk_audit_user` (`user_id`);

--
-- Indexes for table `tbldeductionreports`
--
ALTER TABLE `tbldeductionreports`
  ADD PRIMARY KEY (`Report_ID`),
  ADD KEY `fk_dr_deduction` (`Deduction_ID`),
  ADD KEY `fk_dr_employee` (`Employee_ID`),
  ADD KEY `fk_dr_payroll` (`Payroll_ID`),
  ADD KEY `fk_dr_generated_by2` (`Generated_By`);

--
-- Indexes for table `tbldeductions`
--
ALTER TABLE `tbldeductions`
  ADD PRIMARY KEY (`deduct_id`),
  ADD UNIQUE KEY `uniq_deductions_name` (`name`);

--
-- Indexes for table `tbldepartmentreports`
--
ALTER TABLE `tbldepartmentreports`
  ADD PRIMARY KEY (`Report_ID`),
  ADD KEY `fk_dr_department` (`Department_ID`),
  ADD KEY `fk_dr_generated_by` (`Generated_By`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`dept_id`),
  ADD UNIQUE KEY `uniq_departments_name` (`dept_name`);

--
-- Indexes for table `tbldepartment_positions`
--
ALTER TABLE `tbldepartment_positions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_dept_position` (`dept_id`,`position_name`);

--
-- Indexes for table `tblemployeereports`
--
ALTER TABLE `tblemployeereports`
  ADD PRIMARY KEY (`Report_ID`),
  ADD KEY `fk_er_employee` (`Employee_ID`),
  ADD KEY `fk_er_department` (`Department_ID`),
  ADD KEY `fk_er_generated_by` (`Generated_By`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tblemployee_deductions`
--
ALTER TABLE `tblemployee_deductions`
  ADD PRIMARY KEY (`emp_deduct_id`),
  ADD KEY `fk_empded_employee` (`employee_id`),
  ADD KEY `fk_empded_deduct` (`deduct_id`);

--
-- Indexes for table `tblemployee_financial_details`
--
ALTER TABLE `tblemployee_financial_details`
  ADD PRIMARY KEY (`fin_id`),
  ADD UNIQUE KEY `uniq_employee_fin` (`employee_id`);

--
-- Indexes for table `tblemployee_workday_summary`
--
ALTER TABLE `tblemployee_workday_summary`
  ADD PRIMARY KEY (`summary_id`),
  ADD UNIQUE KEY `uniq_emp_period_summary` (`employee_id`,`period_id`),
  ADD KEY `idx_ews_period` (`period_id`);

--
-- Indexes for table `tblholidays`
--
ALTER TABLE `tblholidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_recurring` (`is_recurring`,`holiday_date`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`leave_id`),
  ADD KEY `fk_leaves_employee` (`employee_id`),
  ADD KEY `fk_leaves_approved_by` (`approved_by`),
  ADD KEY `fk_leaves_rejected_by` (`rejected_by`);

--
-- Indexes for table `tblleave_archive`
--
ALTER TABLE `tblleave_archive`
  ADD PRIMARY KEY (`archive_id`),
  ADD KEY `idx_larch_leave` (`leave_id`),
  ADD KEY `idx_larch_employee` (`employee_id`),
  ADD KEY `idx_larch_status` (`status`),
  ADD KEY `idx_larch_archived_at` (`archived_at`),
  ADD KEY `fk_larch_approved_by` (`approved_by`),
  ADD KEY `fk_larch_rejected_by` (`rejected_by`),
  ADD KEY `fk_larch_archived_by` (`archived_by`);

--
-- Indexes for table `tblleave_cancellations`
--
ALTER TABLE `tblleave_cancellations`
  ADD PRIMARY KEY (`cancel_id`),
  ADD KEY `fk_lc_leave` (`leave_id`),
  ADD KEY `fk_lc_employee` (`employee_id`),
  ADD KEY `fk_lc_cancelled_by` (`cancelled_by_user_id`);

--
-- Indexes for table `tblleave_types`
--
ALTER TABLE `tblleave_types`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `uniq_leave_types_name` (`name`),
  ADD KEY `idx_leave_types_active` (`is_active`),
  ADD KEY `idx_leave_types_sort` (`sort_order`);

--
-- Indexes for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_notifications_employee` (`employee_id`),
  ADD KEY `fk_notifications_actor` (`actor_user_id`),
  ADD KEY `idx_notifications_type` (`type`),
  ADD KEY `idx_notifications_priority` (`priority`),
  ADD KEY `idx_notifications_status` (`status`),
  ADD KEY `idx_notifications_created_by` (`created_by`),
  ADD KEY `idx_notifications_scheduled_at` (`scheduled_at`);

--
-- Indexes for table `tblnotification_templates`
--
ALTER TABLE `tblnotification_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_created_by` (`created_by`);

--
-- Indexes for table `tblovertime_requests`
--
ALTER TABLE `tblovertime_requests`
  ADD PRIMARY KEY (`ot_id`),
  ADD KEY `fk_ot_employee` (`employee_id`),
  ADD KEY `fk_ot_approved_by` (`approved_by`),
  ADD KEY `fk_ot_rejected_by` (`rejected_by`),
  ADD KEY `idx_ot_employee_date` (`employee_id`,`work_date`),
  ADD KEY `idx_ot_status` (`status`);

--
-- Indexes for table `tblpayroll`
--
ALTER TABLE `tblpayroll`
  ADD PRIMARY KEY (`payroll_id`),
  ADD KEY `fk_payroll_paid_by` (`paid_by`),
  ADD KEY `idx_payroll_status` (`status`),
  ADD KEY `idx_payroll_period` (`employee_id`,`payroll_period_start`,`payroll_period_end`);

--
-- Indexes for table `tblpayrollreports`
--
ALTER TABLE `tblpayrollreports`
  ADD PRIMARY KEY (`Report_ID`),
  ADD KEY `fk_pr_payroll` (`Payroll_ID`),
  ADD KEY `fk_pr_employee` (`Employee_ID`),
  ADD KEY `fk_pr_generated_by` (`Generated_By`);

--
-- Indexes for table `tblpayroll_archive`
--
ALTER TABLE `tblpayroll_archive`
  ADD PRIMARY KEY (`archive_id`),
  ADD KEY `idx_parch_payroll` (`payroll_id`),
  ADD KEY `idx_parch_employee` (`employee_id`),
  ADD KEY `idx_parch_archived_at` (`archived_at`),
  ADD KEY `fk_parch_archived_by` (`archived_by`);

--
-- Indexes for table `tblpayroll_batch_employees`
--
ALTER TABLE `tblpayroll_batch_employees`
  ADD PRIMARY KEY (`batch_emp_id`),
  ADD KEY `fk_pbe_batch` (`batch_id`),
  ADD KEY `fk_pbe_employee` (`employee_id`);

--
-- Indexes for table `tblpayroll_by_batch`
--
ALTER TABLE `tblpayroll_by_batch`
  ADD PRIMARY KEY (`batch_id`),
  ADD KEY `fk_pbb_generated_by` (`generated_by`);

--
-- Indexes for table `tblpayroll_period`
--
ALTER TABLE `tblpayroll_period`
  ADD PRIMARY KEY (`period_id`),
  ADD UNIQUE KEY `uniq_payroll_period` (`period_start`,`period_end`);

--
-- Indexes for table `tblpayroll_slip_downloads`
--
ALTER TABLE `tblpayroll_slip_downloads`
  ADD PRIMARY KEY (`download_id`),
  ADD KEY `fk_psd_user` (`user_id`),
  ADD KEY `idx_psd_payroll` (`payroll_id`),
  ADD KEY `idx_psd_downloaded_at` (`downloaded_at`);

--
-- Indexes for table `tblpayslip_history`
--
ALTER TABLE `tblpayslip_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `uniq_payslip_per_payroll_employee` (`payroll_id`,`employee_id`),
  ADD KEY `idx_ph_payroll` (`payroll_id`),
  ADD KEY `idx_ph_employee` (`employee_id`),
  ADD KEY `idx_ph_generated_at` (`generated_at`),
  ADD KEY `fk_ph_generated_by` (`generated_by`);

--
-- Indexes for table `tblsystem_settings`
--
ALTER TABLE `tblsystem_settings`
  ADD PRIMARY KEY (`setting_key`);

--
-- Indexes for table `tblundertime_requests`
--
ALTER TABLE `tblundertime_requests`
  ADD PRIMARY KEY (`ut_id`),
  ADD KEY `fk_ut_employee` (`employee_id`),
  ADD KEY `fk_ut_approved_by` (`approved_by`),
  ADD KEY `fk_ut_rejected_by` (`rejected_by`),
  ADD KEY `idx_ut_employee_date` (`employee_id`,`work_date`),
  ADD KEY `idx_ut_status` (`status`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_users_employee` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tblattendancereports`
--
ALTER TABLE `tblattendancereports`
  MODIFY `Report_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblattendance_daily_summary`
--
ALTER TABLE `tblattendance_daily_summary`
  MODIFY `summary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblattendance_employee_daily`
--
ALTER TABLE `tblattendance_employee_daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblaudit_logs`
--
ALTER TABLE `tblaudit_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `tbldeductionreports`
--
ALTER TABLE `tbldeductionreports`
  MODIFY `Report_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbldeductions`
--
ALTER TABLE `tbldeductions`
  MODIFY `deduct_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbldepartmentreports`
--
ALTER TABLE `tbldepartmentreports`
  MODIFY `Report_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbldepartment_positions`
--
ALTER TABLE `tbldepartment_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblemployeereports`
--
ALTER TABLE `tblemployeereports`
  MODIFY `Report_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblemployee_deductions`
--
ALTER TABLE `tblemployee_deductions`
  MODIFY `emp_deduct_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblemployee_financial_details`
--
ALTER TABLE `tblemployee_financial_details`
  MODIFY `fin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblemployee_workday_summary`
--
ALTER TABLE `tblemployee_workday_summary`
  MODIFY `summary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblholidays`
--
ALTER TABLE `tblholidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblleave_archive`
--
ALTER TABLE `tblleave_archive`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleave_cancellations`
--
ALTER TABLE `tblleave_cancellations`
  MODIFY `cancel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleave_types`
--
ALTER TABLE `tblleave_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `tblnotification_templates`
--
ALTER TABLE `tblnotification_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblovertime_requests`
--
ALTER TABLE `tblovertime_requests`
  MODIFY `ot_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpayroll`
--
ALTER TABLE `tblpayroll`
  MODIFY `payroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tblpayrollreports`
--
ALTER TABLE `tblpayrollreports`
  MODIFY `Report_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblpayroll_archive`
--
ALTER TABLE `tblpayroll_archive`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpayroll_batch_employees`
--
ALTER TABLE `tblpayroll_batch_employees`
  MODIFY `batch_emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tblpayroll_by_batch`
--
ALTER TABLE `tblpayroll_by_batch`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpayroll_period`
--
ALTER TABLE `tblpayroll_period`
  MODIFY `period_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpayroll_slip_downloads`
--
ALTER TABLE `tblpayroll_slip_downloads`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpayslip_history`
--
ALTER TABLE `tblpayslip_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblundertime_requests`
--
ALTER TABLE `tblundertime_requests`
  MODIFY `ut_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD CONSTRAINT `fk_att_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE;

--
-- Constraints for table `tblattendancereports`
--
ALTER TABLE `tblattendancereports`
  ADD CONSTRAINT `fk_ar_attendance` FOREIGN KEY (`Attendance_ID`) REFERENCES `tblattendance` (`attendance_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ar_employee` FOREIGN KEY (`Employee_ID`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ar_generated_by` FOREIGN KEY (`Generated_By`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `tblattendance_employee_daily`
--
ALTER TABLE `tblattendance_employee_daily`
  ADD CONSTRAINT `fk_emp_daily_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE;

--
-- Constraints for table `tblaudit_logs`
--
ALTER TABLE `tblaudit_logs`
  ADD CONSTRAINT `fk_audit_user` FOREIGN KEY (`user_id`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `tbldeductionreports`
--
ALTER TABLE `tbldeductionreports`
  ADD CONSTRAINT `fk_dr_deduction` FOREIGN KEY (`Deduction_ID`) REFERENCES `tbldeductions` (`deduct_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dr_employee` FOREIGN KEY (`Employee_ID`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dr_generated_by2` FOREIGN KEY (`Generated_By`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_dr_payroll` FOREIGN KEY (`Payroll_ID`) REFERENCES `tblpayroll` (`payroll_id`) ON DELETE SET NULL;

--
-- Constraints for table `tbldepartmentreports`
--
ALTER TABLE `tbldepartmentreports`
  ADD CONSTRAINT `fk_dr_department` FOREIGN KEY (`Department_ID`) REFERENCES `tbldepartments` (`dept_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dr_generated_by` FOREIGN KEY (`Generated_By`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `tbldepartment_positions`
--
ALTER TABLE `tbldepartment_positions`
  ADD CONSTRAINT `fk_dp_department` FOREIGN KEY (`dept_id`) REFERENCES `tbldepartments` (`dept_id`) ON DELETE CASCADE;

--
-- Constraints for table `tblemployeereports`
--
ALTER TABLE `tblemployeereports`
  ADD CONSTRAINT `fk_er_department` FOREIGN KEY (`Department_ID`) REFERENCES `tbldepartments` (`dept_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_er_employee` FOREIGN KEY (`Employee_ID`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_er_generated_by` FOREIGN KEY (`Generated_By`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `tblemployee_deductions`
--
ALTER TABLE `tblemployee_deductions`
  ADD CONSTRAINT `fk_empded_deduct` FOREIGN KEY (`deduct_id`) REFERENCES `tbldeductions` (`deduct_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_empded_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE;

--
-- Constraints for table `tblemployee_financial_details`
--
ALTER TABLE `tblemployee_financial_details`
  ADD CONSTRAINT `fk_fin_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE;

--
-- Constraints for table `tblemployee_workday_summary`
--
ALTER TABLE `tblemployee_workday_summary`
  ADD CONSTRAINT `fk_ews_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ews_period` FOREIGN KEY (`period_id`) REFERENCES `tblpayroll_period` (`period_id`) ON DELETE CASCADE;

--
-- Constraints for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD CONSTRAINT `fk_leaves_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_leaves_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_leaves_rejected_by` FOREIGN KEY (`rejected_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `tblleave_archive`
--
ALTER TABLE `tblleave_archive`
  ADD CONSTRAINT `fk_larch_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_larch_archived_by` FOREIGN KEY (`archived_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_larch_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_larch_leave` FOREIGN KEY (`leave_id`) REFERENCES `tblleaves` (`leave_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_larch_rejected_by` FOREIGN KEY (`rejected_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `tblleave_cancellations`
--
ALTER TABLE `tblleave_cancellations`
  ADD CONSTRAINT `fk_lc_cancelled_by` FOREIGN KEY (`cancelled_by_user_id`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lc_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lc_leave` FOREIGN KEY (`leave_id`) REFERENCES `tblleaves` (`leave_id`) ON DELETE CASCADE;

--
-- Constraints for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  ADD CONSTRAINT `fk_notifications_actor` FOREIGN KEY (`actor_user_id`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_notifications_created_by` FOREIGN KEY (`created_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_notifications_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE;

--
-- Constraints for table `tblnotification_templates`
--
ALTER TABLE `tblnotification_templates`
  ADD CONSTRAINT `fk_templates_created_by` FOREIGN KEY (`created_by`) REFERENCES `tblusers` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `tblovertime_requests`
--
ALTER TABLE `tblovertime_requests`
  ADD CONSTRAINT `fk_ot_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_ot_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ot_rejected_by` FOREIGN KEY (`rejected_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `tblpayroll`
--
ALTER TABLE `tblpayroll`
  ADD CONSTRAINT `fk_payroll_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_payroll_paid_by` FOREIGN KEY (`paid_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `tblpayrollreports`
--
ALTER TABLE `tblpayrollreports`
  ADD CONSTRAINT `fk_pr_employee` FOREIGN KEY (`Employee_ID`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pr_generated_by` FOREIGN KEY (`Generated_By`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_pr_payroll` FOREIGN KEY (`Payroll_ID`) REFERENCES `tblpayroll` (`payroll_id`) ON DELETE CASCADE;

--
-- Constraints for table `tblpayroll_archive`
--
ALTER TABLE `tblpayroll_archive`
  ADD CONSTRAINT `fk_parch_archived_by` FOREIGN KEY (`archived_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_parch_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_parch_payroll` FOREIGN KEY (`payroll_id`) REFERENCES `tblpayroll` (`payroll_id`) ON DELETE CASCADE;

--
-- Constraints for table `tblpayroll_batch_employees`
--
ALTER TABLE `tblpayroll_batch_employees`
  ADD CONSTRAINT `fk_pbe_batch` FOREIGN KEY (`batch_id`) REFERENCES `tblpayroll_by_batch` (`batch_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pbe_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE;

--
-- Constraints for table `tblpayroll_by_batch`
--
ALTER TABLE `tblpayroll_by_batch`
  ADD CONSTRAINT `fk_pbb_generated_by` FOREIGN KEY (`generated_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `tblpayroll_slip_downloads`
--
ALTER TABLE `tblpayroll_slip_downloads`
  ADD CONSTRAINT `fk_psd_payroll` FOREIGN KEY (`payroll_id`) REFERENCES `tblpayroll` (`payroll_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_psd_user` FOREIGN KEY (`user_id`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `tblpayslip_history`
--
ALTER TABLE `tblpayslip_history`
  ADD CONSTRAINT `fk_ph_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ph_generated_by` FOREIGN KEY (`generated_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_ph_payroll` FOREIGN KEY (`payroll_id`) REFERENCES `tblpayroll` (`payroll_id`) ON DELETE CASCADE;

--
-- Constraints for table `tblundertime_requests`
--
ALTER TABLE `tblundertime_requests`
  ADD CONSTRAINT `fk_ut_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_ut_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ut_rejected_by` FOREIGN KEY (`rejected_by`) REFERENCES `tblusers` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD CONSTRAINT `fk_users_employee` FOREIGN KEY (`employee_id`) REFERENCES `tblemployees` (`employee_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
