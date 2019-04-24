-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2017 at 01:45 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_f_card_id` (IN `card_id` VARCHAR(10))  BEGIN
	IF card_id NOT LIKE 'f%' OR card_id NOT LIKE 'F%' THEN
    	SIGNAL SQLSTATE '45000'
        	SET MESSAGE_TEXT = 'check constraint on teacher.card_id failed' ;
	END IF;            

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` bigint(10) NOT NULL,
  `std_id` bigint(20) DEFAULT NULL,
  `teacher_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `date_time` timestamp NOT NULL,
  `action` varchar(100) NOT NULL,
  `authority` varchar(20) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `std_id`, `teacher_id`, `admin_id`, `date_time`, `action`, `authority`) VALUES
(1, NULL, NULL, 1, '2017-10-28 16:28:36', 'He danced jk lol', 'admin'),
(2, NULL, NULL, 1, '2017-11-06 13:40:36', 'hemant edited MCA-501 - lalala', 'admin'),
(7, NULL, NULL, 1, '2017-11-06 14:03:05', 'hemant edited MCA-501, BCA-101, ', 'admin'),
(8, NULL, NULL, 1, '2017-11-06 14:05:31', 'hemant deleted subjects MCA-501, ', 'admin'),
(9, 23, NULL, NULL, '2017-11-06 14:17:04', '23 edited profile ', 'admin'),
(10, 23, NULL, NULL, '2017-11-06 14:20:48', 'hema edited profile ', 'admin'),
(11, 23, NULL, NULL, '2017-11-06 14:21:06', 'hema updated password ', 'admin'),
(12, NULL, 2, NULL, '2017-11-07 13:58:17', 'harshit edited assignment1 of 1', 'admin'),
(13, NULL, 2, NULL, '2017-11-07 14:03:00', 'harshit edited assignment1 of BCA-501', 'admin'),
(14, NULL, 2, NULL, '2017-11-07 14:03:34', 'harshit deleted file22 of BCA-501', 'admin'),
(15, NULL, 2, NULL, '2017-11-07 14:04:17', 'harshit added kladh of 1', 'admin'),
(16, NULL, 2, NULL, '2017-11-07 14:05:57', 'harshit added adkj of BCA-501', 'admin'),
(17, NULL, 2, NULL, '2017-11-07 14:06:47', 'harshit uploaded attendance of  BCA 2013-16 A of 1', 'admin'),
(18, NULL, 2, NULL, '2017-11-07 14:07:38', 'harshit uploaded attendance of  BCA 2013-16 A of ', 'admin'),
(19, NULL, 2, NULL, '2017-11-07 14:09:13', 'harshit uploaded attendance of  BCA 2013-16 A of BCA-501', 'admin'),
(20, NULL, NULL, 1, '2017-11-07 16:01:26', 'hemant edited class BCA 2016-19 A', 'admin'),
(21, NULL, NULL, 1, '2017-11-07 16:01:57', 'hemant edited classes BCA 2013-16 A, ', 'admin'),
(22, NULL, NULL, 1, '2017-11-07 16:17:59', 'hemant edited batch BCA 2016-19', 'admin'),
(23, NULL, NULL, 1, '2017-11-07 16:18:03', 'hemant edited batch BCA 2016-19', 'admin'),
(24, NULL, NULL, 1, '2017-11-07 16:18:44', 'hemant added batch BCA 2018-21', 'admin'),
(25, NULL, NULL, 1, '2017-11-07 16:25:27', 'hemant added batch BCA 2098-99', 'admin'),
(26, NULL, NULL, 1, '2017-11-07 16:25:30', 'hemant deleted batch BCA 2098-99', 'admin'),
(27, NULL, NULL, 1, '2017-11-08 04:38:53', 'hemant deleted adkj of BCA-501', 'admin'),
(28, NULL, NULL, 1, '2017-11-08 04:39:20', 'hemant deleted sub overview of BCA-101', 'admin'),
(29, NULL, NULL, 1, '2017-11-08 05:56:49', 'hemant updated profile', 'admin'),
(30, NULL, 2, NULL, '2017-11-08 06:50:05', 'harshit added skdhjg of BCA-501', 'teacher'),
(31, NULL, NULL, 1, '2017-11-08 09:41:58', 'hemant edited subject BCA-501 - Software Engineering', 'admin'),
(32, NULL, NULL, 1, '2017-11-08 11:27:25', 'hemant added subject BCA-502', 'admin'),
(33, NULL, NULL, 1, '2017-11-08 11:39:54', 'hemant added subject BCA-4297', 'admin'),
(34, NULL, NULL, 1, '2017-11-08 11:40:08', 'hemant deleted subject ', 'admin'),
(35, NULL, NULL, 1, '2017-11-08 11:40:33', 'hemant deleted subject ', 'admin'),
(36, NULL, NULL, 1, '2017-11-08 11:42:33', 'hemant added subject BCA-502', 'admin'),
(37, NULL, NULL, 1, '2017-11-08 11:42:38', 'hemant deleted subject BCA-502', 'admin'),
(38, NULL, NULL, 1, '2017-11-08 11:43:19', 'hemant added subject jad', 'admin'),
(39, NULL, NULL, 1, '2017-11-08 11:44:56', 'hemant added subject BCA-503', 'admin'),
(40, NULL, NULL, 1, '2017-11-08 11:45:16', 'hemant added subject afd', 'admin'),
(41, NULL, NULL, 1, '2017-11-08 11:45:54', 'hemant added subject ad', 'admin'),
(42, NULL, NULL, 1, '2017-11-08 11:46:28', 'hemant added subject sfaf', 'admin'),
(43, NULL, NULL, 1, '2017-11-08 11:46:50', 'hemant added subject jd', 'admin'),
(44, NULL, NULL, 1, '2017-11-08 11:47:30', 'hemant added subject sfkjsf', 'admin'),
(45, NULL, NULL, 1, '2017-11-08 11:54:05', 'hemant added subject BCA-302', 'admin'),
(46, NULL, NULL, 1, '2017-11-08 12:00:46', 'hemant added subject ddbnng', 'admin'),
(47, NULL, NULL, 1, '2017-11-08 12:01:43', 'hemant added subject mbn', 'admin'),
(48, NULL, NULL, 1, '2017-11-08 12:04:15', 'hemant added subject ggfh', 'admin'),
(49, NULL, NULL, 1, '2017-11-08 12:30:20', 'hemant deleted subjects jad, ', 'admin'),
(50, NULL, NULL, 1, '2017-11-08 12:37:23', 'hemant added subject BCA-603', 'admin'),
(51, NULL, NULL, 1, '2017-11-08 12:37:41', 'hemant deleted subjects afd, ad, sfaf, jd, sfkjsf, ', 'admin'),
(52, NULL, NULL, 1, '2017-11-08 13:12:43', 'hemant edited subjects BCA-603, ', 'admin'),
(53, NULL, NULL, 1, '2017-11-08 13:12:48', 'hemant deleted subjects BCA-603, ', 'admin'),
(54, NULL, NULL, 1, '2017-11-08 13:12:56', 'hemant deleted subjects BCA-503, BCA-302, ', 'admin'),
(55, 23, NULL, NULL, '2017-11-15 11:01:10', 'hema submitted assignment of BCA-501', 'student'),
(56, 23, NULL, NULL, '2017-11-15 11:11:08', 'hema submitted assignment of BCA-501', 'student'),
(57, 23, NULL, NULL, '2017-11-15 11:22:17', 'hema submitted assignment of BCA-501', 'student'),
(58, 23, NULL, NULL, '2017-11-15 11:33:28', 'hema submitted assignment of BCA-501', 'student'),
(59, 23, NULL, NULL, '2017-11-15 11:39:10', 'hema submitted assignment of BCA-501', 'student'),
(60, 23, NULL, NULL, '2017-11-15 11:40:18', 'hema submitted assignment of BCA-501', 'student'),
(61, 23, NULL, NULL, '2017-11-15 11:56:48', 'hema submitted assignment of BCA-501', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` bigint(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `dept_id` bigint(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `thumbnail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `first_name`, `last_name`, `dept_id`, `username`, `password`, `thumbnail`) VALUES
(1, 'Hemant', 'Bathyal', 3, 'hemant', 'hemant', '../pics/adm_users/Hemant59ef5cf83dbc75.12908270.gif');

-- --------------------------------------------------------

--
-- Table structure for table `asgn_solved`
--

CREATE TABLE `asgn_solved` (
  `asgn_solved_id` bigint(20) NOT NULL,
  `down_id` bigint(20) NOT NULL,
  `upload_date` timestamp NOT NULL,
  `std_id` bigint(20) NOT NULL,
  `sub_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `course_batch_id` bigint(20) NOT NULL,
  `cmnt` varchar(100) NOT NULL DEFAULT '-',
  `marks` varchar(20) NOT NULL DEFAULT 'TBA',
  `file_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `asgn_solved`
--

INSERT INTO `asgn_solved` (`asgn_solved_id`, `down_id`, `upload_date`, `std_id`, `sub_id`, `teacher_id`, `course_batch_id`, `cmnt`, `marks`, `file_path`) VALUES
(8, 26, '2017-11-15 11:56:48', 23, 1, 2, 17, 'khjg', '6', '../documents/hema5a0c2b80d741a5.11595755.docx'),
(9, 26, '2017-11-16 13:44:52', 24, 1, 2, 18, '-', '5', '../documents/hema5a0c2b80d741a5.11595755.docx'),
(10, 26, '2017-11-17 13:04:47', 23, 1, 2, 18, '-', 'TBA', '../documents/hema5a0c2b80d741a5.11595755.docx'),
(11, 26, '2017-11-17 13:15:32', 23, 1, 2, 17, '-', '10', '../documents/hema5a0c2b80d741a5.11595755.docx');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_given`
--

CREATE TABLE `assignment_given` (
  `assignment_given_id` bigint(20) NOT NULL,
  `broadcast_date` date NOT NULL,
  `final_date` date DEFAULT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `class_id` bigint(20) NOT NULL,
  `assignment_name` varchar(30) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `file_loc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` bigint(20) NOT NULL,
  `upload_date` date NOT NULL,
  `upload_time` time NOT NULL,
  `lect_attended` bigint(20) NOT NULL,
  `lect_held` bigint(20) NOT NULL,
  `sub_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `std_id` bigint(20) NOT NULL,
  `class_type` varchar(50) DEFAULT 'regular',
  `sem_id` bigint(20) NOT NULL,
  `class_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `upload_date`, `upload_time`, `lect_attended`, `lect_held`, `sub_id`, `teacher_id`, `std_id`, `class_type`, `sem_id`, `class_id`) VALUES
(20, '2017-11-05', '10:16:53', 1, 2, 1, 2, 23, 'Regular', 5, 6),
(21, '2017-11-05', '10:16:53', 1, 2, 1, 2, 19, 'Regular', 5, 6),
(22, '2017-11-05', '10:17:20', 1, 2, 1, 2, 23, 'Regular', 5, 6),
(23, '2017-11-05', '10:17:20', 1, 2, 1, 2, 19, 'Regular', 5, 6),
(24, '2017-11-05', '10:17:46', 0, 2, 1, 2, 23, 'Regular', 5, 6),
(25, '2017-11-05', '10:17:46', 1, 2, 1, 2, 19, 'Regular', 5, 6),
(26, '2017-11-05', '14:48:31', 1, 1, 1, 2, 23, 'Regular', 5, 6),
(27, '2017-11-05', '14:48:31', 1, 1, 1, 2, 19, 'Regular', 5, 6),
(28, '2017-11-07', '19:36:46', 1, 1, 1, 2, 23, 'Regular', 5, 6),
(29, '2017-11-07', '19:36:46', 1, 1, 1, 2, 19, 'Regular', 5, 6),
(30, '2017-11-07', '19:36:46', 1, 1, 1, 2, 25, 'Regular', 5, 6),
(31, '2017-11-07', '19:37:38', 1, 1, 1, 2, 23, 'Regular', 5, 6),
(32, '2017-11-07', '19:37:38', 1, 1, 1, 2, 19, 'Regular', 5, 6),
(33, '2017-11-07', '19:37:38', 1, 1, 1, 2, 25, 'Regular', 5, 6),
(34, '2017-11-07', '19:39:13', 1, 1, 1, 2, 23, 'Regular', 5, 6),
(35, '2017-11-07', '19:39:13', 1, 1, 1, 2, 19, 'Regular', 5, 6),
(36, '2017-11-07', '19:39:13', 1, 1, 1, 2, 25, 'Regular', 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` bigint(20) NOT NULL,
  `course_batch_id` bigint(20) NOT NULL,
  `section` varchar(1) DEFAULT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  `teacher_id` bigint(20) DEFAULT NULL,
  `sem_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `session` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `course_batch_id`, `section`, `dept_id`, `teacher_id`, `sem_id`, `course_id`, `session`) VALUES
(6, 17, 'A', 2, 2, 5, 1, '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `class_group`
--

CREATE TABLE `class_group` (
  `class_group_id` bigint(20) NOT NULL,
  `class_group` varchar(5) NOT NULL,
  `class_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` bigint(20) NOT NULL,
  `course_name` varchar(10) NOT NULL,
  `dept_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `dept_id`) VALUES
(1, 'BCA', 2),
(2, 'MCA', 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_batch`
--

CREATE TABLE `course_batch` (
  `course_batch_id` bigint(20) NOT NULL,
  `class_batch` varchar(15) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_batch`
--

INSERT INTO `course_batch` (`course_batch_id`, `class_batch`, `course_id`, `dept_id`) VALUES
(11, 'BCA 2016-19', 1, 2),
(17, 'BCA 2013-16', 1, 2),
(18, 'BCA 2015-18', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` bigint(20) NOT NULL,
  `dept_name` varchar(10) NOT NULL,
  `abbr` varchar(100) DEFAULT NULL,
  `dir` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `abbr`, `dir`) VALUES
(2, 'FCSA', 'Faculty of Computer Science and Applications', 'Dr. M.K Pandey'),
(3, 'AITS', 'Amrapali Institute Of Technology Science', 'Dr. M.S Bora'),
(5, 'FCBM', 'Faculty of Business Management', 'Dr. B.M Khani'),
(6, 'AIHM', 'Amrapali Institute of Hotel Management', 'Dr. H.M Pandey');

-- --------------------------------------------------------

--
-- Table structure for table `download_materials`
--

CREATE TABLE `download_materials` (
  `down_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `sub_id` bigint(20) NOT NULL,
  `course_batch_id` bigint(20) NOT NULL,
  `upload_date` timestamp NOT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `file_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `download_materials`
--

INSERT INTO `download_materials` (`down_id`, `teacher_id`, `sub_id`, `course_batch_id`, `upload_date`, `file_name`, `description`, `file_path`) VALUES
(26, 2, 1, 17, '2017-10-29 13:27:07', 'assignment1', 'submission date - 2 novadhem,2017', '../documents/assignment159f5d65d1aee42.46671693.docx'),
(29, 2, 1, 17, '2017-11-07 14:04:17', 'kladh', 'sjdk', '../documents/kladh5a01bd613da9e3.52727308.docx'),
(31, 2, 1, 17, '2017-11-08 06:50:05', 'skdhjg', 'lsjfdkh', '../documents/skdhjg5a02a91d8e86a7.60618096.docx');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` bigint(20) NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `start _date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `teacher_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `sem_id` bigint(20) NOT NULL,
  `sem_no` varchar(7) NOT NULL,
  `year` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`sem_id`, `sem_no`, `year`) VALUES
(1, '1', '1'),
(2, '2', '1'),
(3, '3', '2'),
(4, '4', '2'),
(5, '5', '3'),
(6, '6', '3'),
(7, '7', '4'),
(8, '8', '4');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `std_id` bigint(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `roll_no` bigint(20) DEFAULT NULL,
  `card_id` bigint(20) NOT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Deactivated',
  `thumbnail` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_id`, `first_name`, `last_name`, `gender`, `email`, `dob`, `contact`, `roll_no`, `card_id`, `class_id`, `username`, `password`, `status`, `thumbnail`) VALUES
(19, 'karan', 'sati', 'male', 'karan@gmail.com', '2017-10-09', 878787, 40, 100, 6, 'karan', 'karan', 'Activated', NULL),
(23, 'hema', 'koranga', 'Male', 'hema@gmail.com', '2017-10-01', 9898767654, 30, 231, 6, 'hema', 'hema', 'Activated', '../images/std_pics/hema59ef5b28ec8514.00831497.png'),
(24, 'flash', 'zoom', NULL, NULL, NULL, NULL, 1, 19700, 6, NULL, NULL, 'Deactivated', NULL),
(25, 'mahendra', 'singh bora', 'male', 'mahendraeminent@gmail.com', '2017-10-29', 898767557, 50, 232, 6, 'mahendra', 'mahendra', 'Activated', NULL),
(26, 'Amit', 'Mandal', NULL, NULL, NULL, NULL, 12, 412, 6, NULL, NULL, 'Deactivated', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_id` bigint(20) NOT NULL,
  `sub_name` varchar(40) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `overview` varchar(10000) DEFAULT '-',
  `sub_code` varchar(15) NOT NULL,
  `units` bigint(20) DEFAULT NULL,
  `sem_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `sub_name`, `teacher_id`, `overview`, `sub_code`, `units`, `sem_id`, `course_id`) VALUES
(1, 'Software Engineering', 2, 'This is an overview of software engineering. So please be silent for the debate.	lalalala', 'BCA-501', NULL, 5, 1),
(3, 'English', 26, '-', 'BCA-101', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` bigint(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `card_id` varchar(10) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Deactivated',
  `thumbnail` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `first_name`, `last_name`, `dept_id`, `email`, `dob`, `contact`, `gender`, `card_id`, `username`, `password`, `status`, `thumbnail`) VALUES
(2, 'Harshit', 'Mehra', 2, 'hemant.77123bathyal@gmail.com', '1997-04-26', 8243972874, 'Male', 'f123', 'harshit', 'harshit', 'Activated', '../images/teac_pics/harshit59ef5b6635f432.02739147.jpg'),
(26, 'prashant', 'rajput', 2, 'prashant@gmail.com', '2017-10-02', 9898767687, 'male', 'f1212', 'prashant', 'prashant', 'Activated', NULL),
(43, 'flash', 'zoom', 2, NULL, NULL, NULL, NULL, 'f19700', NULL, NULL, 'Deactivated', NULL);

--
-- Triggers `teacher`
--
DELIMITER $$
CREATE TRIGGER `check_f_card_id_before_insert` BEFORE INSERT ON `teacher` FOR EACH ROW BEGIN
		CALL check_f_card_id(new.card_id);
	END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `check_f_card_id_before_update` BEFORE UPDATE ON `teacher` FOR EACH ROW BEGIN
		CALL check_f_card_id(new.card_id);
	END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `std_id` bigint(20) DEFAULT NULL,
  `teacher_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `authority` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `std_id`, `teacher_id`, `admin_id`, `authority`) VALUES
(1, NULL, NULL, 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` bigint(20) NOT NULL,
  `std_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `teacher_id` bigint(20) DEFAULT NULL,
  `login_date_time` timestamp NULL DEFAULT NULL,
  `logout_date_time` timestamp NULL DEFAULT NULL,
  `authority` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `std_id`, `admin_id`, `teacher_id`, `login_date_time`, `logout_date_time`, `authority`) VALUES
(1, NULL, 1, NULL, '2017-10-27 18:30:00', '2017-10-27 18:30:00', 'admin'),
(2, NULL, NULL, 2, '2017-10-28 15:13:51', '2017-10-28 15:13:51', 'teacher'),
(5, NULL, 1, NULL, '2017-10-28 16:10:03', '2017-10-28 16:10:15', 'admin'),
(6, NULL, NULL, 2, '2017-10-28 16:20:41', '2017-10-28 16:20:55', 'teacher'),
(7, 23, NULL, NULL, '2017-10-28 16:21:11', '2017-10-28 16:21:15', 'student'),
(8, NULL, 1, NULL, '2017-10-28 16:21:58', '2017-10-28 16:31:34', 'admin'),
(9, NULL, 1, NULL, '2017-10-29 02:46:07', '2017-10-29 03:03:02', 'admin'),
(10, 23, NULL, NULL, '2017-10-29 03:03:11', '2017-10-29 14:13:53', 'student'),
(11, NULL, 1, NULL, '2017-10-29 03:33:54', '2017-10-29 04:14:53', 'admin'),
(12, NULL, NULL, 2, '2017-10-29 04:15:07', '2017-10-29 04:17:54', 'teacher'),
(13, NULL, NULL, 2, '2017-10-29 04:20:14', '2017-10-29 04:58:14', 'teacher'),
(14, NULL, 1, NULL, '2017-10-29 04:58:23', '2017-10-29 14:14:40', 'admin'),
(15, NULL, NULL, 2, '2017-10-29 05:00:40', '2017-10-29 13:53:18', 'teacher'),
(16, 23, NULL, NULL, '2017-10-29 13:53:23', '2017-10-29 14:13:53', 'student'),
(17, NULL, 1, NULL, '2017-10-29 14:08:33', '2017-10-29 14:14:40', 'admin'),
(18, NULL, 1, NULL, '2017-10-29 14:14:16', '2017-10-29 14:14:40', 'admin'),
(19, NULL, 1, NULL, '2017-10-30 12:54:33', '2017-10-30 16:32:15', 'admin'),
(20, 23, NULL, NULL, '2017-10-30 12:56:03', '2017-10-30 16:50:41', 'student'),
(21, NULL, NULL, 2, '2017-10-30 12:56:17', '2017-11-02 08:52:41', 'teacher'),
(22, NULL, 1, NULL, '2017-10-30 15:33:44', '2017-10-30 16:32:15', 'admin'),
(23, NULL, 1, NULL, '2017-10-30 16:18:50', '2017-10-30 16:32:15', 'admin'),
(24, NULL, 1, NULL, '2017-10-30 16:25:17', '2017-10-30 16:32:15', 'admin'),
(25, 23, NULL, NULL, '2017-10-30 16:32:25', '2017-10-30 16:50:41', 'student'),
(26, NULL, 1, NULL, '2017-10-30 16:50:52', '2017-11-02 10:31:06', 'admin'),
(27, NULL, 1, NULL, '2017-11-02 08:34:44', '2017-11-02 10:31:06', 'admin'),
(28, NULL, NULL, 2, '2017-11-02 08:44:51', '2017-11-02 08:52:41', 'teacher'),
(29, 23, NULL, NULL, '2017-11-02 08:55:11', '2017-11-02 10:51:41', 'student'),
(30, NULL, NULL, 2, '2017-11-02 09:04:03', '2017-11-02 10:51:15', 'teacher'),
(31, NULL, 1, NULL, '2017-11-02 09:13:12', '2017-11-02 10:31:06', 'admin'),
(32, NULL, 1, NULL, '2017-11-02 09:14:42', '2017-11-02 10:31:06', 'admin'),
(33, NULL, 1, NULL, '2017-11-02 09:19:50', '2017-11-02 10:31:06', 'admin'),
(34, NULL, NULL, 2, '2017-11-02 10:22:45', '2017-11-02 10:51:15', 'teacher'),
(35, NULL, 1, NULL, '2017-11-02 10:24:55', '2017-11-02 10:31:06', 'admin'),
(36, NULL, 1, NULL, '2017-11-02 10:25:15', '2017-11-02 10:31:06', 'admin'),
(37, NULL, 1, NULL, '2017-11-02 10:25:16', '2017-11-02 10:31:06', 'admin'),
(38, NULL, 1, NULL, '2017-11-02 10:25:16', '2017-11-02 10:31:06', 'admin'),
(39, NULL, 1, NULL, '2017-11-02 10:25:17', '2017-11-02 10:31:06', 'admin'),
(40, NULL, 1, NULL, '2017-11-02 10:25:17', '2017-11-02 10:31:06', 'admin'),
(41, NULL, 1, NULL, '2017-11-02 10:25:17', '2017-11-02 10:31:06', 'admin'),
(42, NULL, 1, NULL, '2017-11-02 10:25:17', '2017-11-02 10:31:06', 'admin'),
(43, NULL, 1, NULL, '2017-11-02 10:25:17', '2017-11-02 10:31:06', 'admin'),
(44, 23, NULL, NULL, '2017-11-02 10:28:01', '2017-11-02 10:51:41', 'student'),
(45, NULL, 1, NULL, '2017-11-02 10:30:44', '2017-11-02 10:31:06', 'admin'),
(46, NULL, 1, NULL, '2017-11-02 10:45:37', '2017-11-04 05:19:03', 'admin'),
(47, NULL, NULL, 2, '2017-11-02 10:49:09', '2017-11-02 10:51:15', 'teacher'),
(48, 23, NULL, NULL, '2017-11-02 10:51:25', '2017-11-02 10:51:41', 'student'),
(49, NULL, 1, NULL, '2017-11-02 14:43:23', '2017-11-04 05:19:03', 'admin'),
(50, NULL, 1, NULL, '2017-11-02 14:48:18', '2017-11-04 05:19:03', 'admin'),
(51, NULL, 1, NULL, '2017-11-03 12:29:37', '2017-11-04 05:19:03', 'admin'),
(52, NULL, 1, NULL, '2017-11-03 13:02:07', '2017-11-04 05:19:03', 'admin'),
(53, 23, NULL, NULL, '2017-11-04 04:20:13', '2017-11-04 04:20:55', 'student'),
(54, NULL, NULL, 2, '2017-11-04 04:21:02', '2017-11-04 04:21:54', 'teacher'),
(55, NULL, 1, NULL, '2017-11-04 04:22:10', '2017-11-04 05:19:03', 'admin'),
(56, 23, NULL, NULL, '2017-11-04 05:19:17', '2017-11-04 05:45:32', 'student'),
(57, NULL, NULL, 2, '2017-11-04 05:45:43', '2017-11-04 05:46:17', 'teacher'),
(58, 23, NULL, NULL, '2017-11-04 05:46:21', '2017-11-04 06:09:50', 'student'),
(59, NULL, NULL, 2, '2017-11-04 06:09:56', '2017-11-04 06:10:46', 'teacher'),
(60, NULL, 1, NULL, '2017-11-04 06:11:58', '2017-11-04 06:12:21', 'admin'),
(61, NULL, 1, NULL, '2017-11-04 06:12:28', '2017-11-04 06:12:40', 'admin'),
(62, NULL, 1, NULL, '2017-11-04 06:13:46', '2017-11-05 02:34:18', 'admin'),
(63, NULL, 1, NULL, '2017-11-04 07:00:52', '2017-11-05 02:34:18', 'admin'),
(64, NULL, NULL, 2, '2017-11-04 10:56:56', '2017-11-05 04:49:54', 'teacher'),
(65, NULL, 1, NULL, '2017-11-05 02:33:54', '2017-11-05 02:34:18', 'admin'),
(66, NULL, NULL, 2, '2017-11-05 02:34:34', '2017-11-05 04:49:54', 'teacher'),
(67, 23, NULL, NULL, '2017-11-05 04:50:00', '2017-11-05 09:11:44', 'student'),
(68, NULL, 1, NULL, '2017-11-05 05:11:43', '2017-11-05 05:12:13', 'admin'),
(69, 23, NULL, NULL, '2017-11-05 05:12:26', '2017-11-05 09:11:44', 'student'),
(70, NULL, NULL, 2, '2017-11-05 09:11:53', '2017-11-05 10:07:36', 'teacher'),
(71, NULL, 1, NULL, '2017-11-05 10:07:49', '2017-11-05 10:23:24', 'admin'),
(72, NULL, NULL, 2, '2017-11-05 10:23:33', '2017-11-05 10:23:41', 'teacher'),
(73, 23, NULL, NULL, '2017-11-05 10:23:47', '2017-11-05 10:24:55', 'student'),
(74, NULL, 1, NULL, '2017-11-05 10:25:10', '2017-11-05 12:57:16', 'admin'),
(75, NULL, NULL, 2, '2017-11-05 12:57:25', '2017-11-05 13:16:19', 'teacher'),
(76, 23, NULL, NULL, '2017-11-05 13:16:24', '2017-11-05 13:19:21', 'student'),
(77, NULL, 1, NULL, '2017-11-05 13:19:41', '2017-11-05 13:34:04', 'admin'),
(78, 25, NULL, NULL, '2017-11-05 13:35:10', '2017-11-05 13:37:55', 'student'),
(79, NULL, NULL, 2, '2017-11-05 13:38:01', '2017-11-05 13:40:55', 'teacher'),
(80, NULL, 1, NULL, '2017-11-05 13:41:09', '2017-11-05 13:49:09', 'admin'),
(81, NULL, NULL, 2, '2017-11-05 13:49:29', '2017-11-05 14:09:14', 'teacher'),
(82, NULL, 1, NULL, '2017-11-05 14:09:24', '2017-11-05 14:35:43', 'admin'),
(83, 23, NULL, NULL, '2017-11-06 13:24:52', '2017-11-06 13:25:51', 'student'),
(84, NULL, NULL, 2, '2017-11-06 13:26:05', '2017-11-06 13:27:25', 'teacher'),
(85, NULL, 1, NULL, '2017-11-06 13:27:49', '2017-11-06 14:10:20', 'admin'),
(86, 23, NULL, NULL, '2017-11-06 14:10:30', '2017-11-06 14:21:19', 'student'),
(87, NULL, NULL, 2, '2017-11-06 14:21:27', '2017-11-07 14:17:17', 'teacher'),
(88, NULL, 1, NULL, '2017-11-07 13:14:07', '2017-11-07 13:30:08', 'admin'),
(89, NULL, NULL, 2, '2017-11-07 13:30:19', '2017-11-07 14:17:17', 'teacher'),
(90, NULL, 1, NULL, '2017-11-07 13:31:46', '2017-11-09 14:04:04', 'admin'),
(91, NULL, 1, NULL, '2017-11-07 14:17:31', '2017-11-09 14:04:04', 'admin'),
(92, NULL, 1, NULL, '2017-11-08 03:50:46', '2017-11-09 14:04:04', 'admin'),
(93, NULL, NULL, 2, '2017-11-08 06:49:37', '2017-11-15 12:00:38', 'teacher'),
(94, NULL, 1, NULL, '2017-11-08 09:01:15', '2017-11-09 14:04:04', 'admin'),
(95, NULL, 1, NULL, '2017-11-09 03:35:30', '2017-11-09 14:04:04', 'admin'),
(96, NULL, 1, NULL, '2017-11-09 13:38:48', '2017-11-09 14:04:04', 'admin'),
(97, NULL, 1, NULL, '2017-11-09 14:04:09', '2017-11-09 15:20:03', 'admin'),
(98, NULL, 1, NULL, '2017-11-14 13:00:02', '2017-11-14 13:27:10', 'admin'),
(99, 23, NULL, NULL, '2017-11-14 13:27:24', '2017-11-14 13:32:43', 'student'),
(100, NULL, NULL, 2, '2017-11-14 13:33:05', '2017-11-15 12:00:38', 'teacher'),
(101, 23, NULL, NULL, '2017-11-14 13:44:12', '2017-11-16 03:49:06', 'student'),
(102, NULL, NULL, 2, '2017-11-15 09:23:32', '2017-11-15 12:00:38', 'teacher'),
(103, 23, NULL, NULL, '2017-11-15 09:23:50', '2017-11-16 03:49:06', 'student'),
(104, NULL, 1, NULL, '2017-11-15 12:00:49', '2017-11-16 03:40:58', 'admin'),
(105, NULL, 1, NULL, '2017-11-16 03:20:24', '2017-11-16 03:40:58', 'admin'),
(106, 23, NULL, NULL, '2017-11-16 03:41:09', '2017-11-16 03:49:06', 'student'),
(107, NULL, NULL, 2, '2017-11-16 03:50:56', NULL, 'teacher'),
(108, NULL, NULL, 2, '2017-11-16 11:53:08', NULL, 'teacher'),
(109, NULL, NULL, 2, '2017-11-17 08:15:48', NULL, 'teacher'),
(110, NULL, NULL, 2, '2017-11-17 09:30:57', NULL, 'teacher'),
(111, NULL, NULL, 2, '2017-11-17 12:49:27', NULL, 'teacher'),
(112, NULL, 1, NULL, '2017-11-17 13:41:18', '2017-11-17 13:41:53', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `view_attendance`
--

CREATE TABLE `view_attendance` (
  `view_attendance_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `lect_held` bigint(20) NOT NULL,
  `lect_attended` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`),
  ADD KEY `std_id` (`std_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `asgn_solved`
--
ALTER TABLE `asgn_solved`
  ADD PRIMARY KEY (`asgn_solved_id`);

--
-- Indexes for table `assignment_given`
--
ALTER TABLE `assignment_given`
  ADD PRIMARY KEY (`assignment_given_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `sub_id` (`sub_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `std_id` (`std_id`),
  ADD KEY `sem_id` (`sem_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `course_batch_id` (`course_batch_id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `sem_id` (`sem_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `class_group`
--
ALTER TABLE `class_group`
  ADD PRIMARY KEY (`class_group_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `course_batch`
--
ALTER TABLE `course_batch`
  ADD PRIMARY KEY (`course_batch_id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `download_materials`
--
ALTER TABLE `download_materials`
  ADD PRIMARY KEY (`down_id`),
  ADD KEY `sub_id` (`sub_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `course_batch_id` (`course_batch_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`std_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `sem_id` (`sem_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `std_id` (`std_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`),
  ADD KEY `std_id` (`std_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `view_attendance`
--
ALTER TABLE `view_attendance`
  ADD PRIMARY KEY (`view_attendance_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `asgn_solved`
--
ALTER TABLE `asgn_solved`
  MODIFY `asgn_solved_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `assignment_given`
--
ALTER TABLE `assignment_given`
  MODIFY `assignment_given_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `class_group`
--
ALTER TABLE `class_group`
  MODIFY `class_group_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `course_batch`
--
ALTER TABLE `course_batch`
  MODIFY `course_batch_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `download_materials`
--
ALTER TABLE `download_materials`
  MODIFY `down_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `sem_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `std_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sub_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `view_attendance`
--
ALTER TABLE `view_attendance`
  MODIFY `view_attendance_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD CONSTRAINT `fkey_activity_adm_id_admin` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_activity_sub_id_subject` FOREIGN KEY (`std_id`) REFERENCES `student` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_activity_teac_id_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `f_key_admin_dept` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `fkey_atten_claass_id_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_atten_sem_id_semester` FOREIGN KEY (`sem_id`) REFERENCES `semester` (`sem_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_atten_std_id_student` FOREIGN KEY (`std_id`) REFERENCES `student` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_atten_sub_id_subject` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_atten_teac_id_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `fkey_class_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_class_dept` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_class_sem` FOREIGN KEY (`sem_id`) REFERENCES `semester` (`sem_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_class_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_course_batch_class` FOREIGN KEY (`course_batch_id`) REFERENCES `course_batch` (`course_batch_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fkey_course_dept` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_batch`
--
ALTER TABLE `course_batch`
  ADD CONSTRAINT `fkey_course_batch_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_course_batch_dept` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `download_materials`
--
ALTER TABLE `download_materials`
  ADD CONSTRAINT `fkey_cb_id_course_batch` FOREIGN KEY (`course_batch_id`) REFERENCES `course_batch` (`course_batch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_sub_id_subject` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_teacher_id_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fkey_student_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `fkey_subject_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_subject_sem` FOREIGN KEY (`sem_id`) REFERENCES `semester` (`sem_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_subject_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `fkey_teacher_dept` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fkey_users_admin` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_users_student` FOREIGN KEY (`std_id`) REFERENCES `student` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_users_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_log`
--
ALTER TABLE `user_log`
  ADD CONSTRAINT `fkey_user_log_adm` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_user_log_std` FOREIGN KEY (`std_id`) REFERENCES `student` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey_user_log_teac` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
