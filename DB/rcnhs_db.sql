-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2023 at 05:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rcnhs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `about_id` bigint(20) UNSIGNED NOT NULL,
  `about_category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`about_id`, `about_category_id`, `about_image`, `about_title`, `about_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'ASD', 'ASDASDASD', 'To protect and promote the right of every Filipino to quality, equitable, culture-based, and complete basic education where:\n\nStudents learn in a child-friendly, gender-sensitive, safe, and motivating environment.\nTeachers facilitate learning and constantly nurture every learner.\nAdministrators and staff, as stewards of the institution, ensure an enabling and supportive environment for effective learning to happen.\nFamily, community, and other stakeholders are actively engaged and share responsibility for developing life-long learners.', '2023-04-21 07:48:30', '2023-09-29 04:42:37', NULL),
(2, '2', 'ASDASD', 'ASDASD', 'We dream of Filipinos\nwho passionately love their country\nand whose values and competencies\nenable them to realize their full potential\nand contribute meaningfully to building the nation.\n\nAs a learner-centered public institution,\nthe Department of Education\ncontinuously improves itself\nto better serve its stakeholders.', '0000-00-00 00:00:00', '2023-09-29 04:42:47', NULL),
(3, '3', 'ASDASD', 'ASDASD', 'MAKA-DIYOS <br>\nMAKA-TAO <br>\nMAKAKALIKASAN <br>\nMAKABANSA', '0000-00-00 00:00:00', '2023-09-29 04:22:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `advisory`
--

CREATE TABLE `advisory` (
  `advisory_id` int(20) NOT NULL,
  `strand_acronym_id` bigint(20) NOT NULL,
  `section_name` varchar(225) NOT NULL,
  `adviser_name` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advisory`
--

INSERT INTO `advisory` (`advisory_id`, `strand_acronym_id`, `section_name`, `adviser_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 48, 'F-DELEON', '20', '2023-09-07 05:16:34', '2023-10-02 13:29:41', NULL),
(12, 52, 'VENUS', '36', '2023-09-08 11:40:55', '2023-09-08 11:40:55', NULL),
(13, 51, 'DIAMOND', '37', '2023-09-11 11:59:09', '2023-09-11 11:59:09', NULL),
(14, 46, 'Sampaguita', '35', '2023-09-11 11:59:27', '2023-10-11 13:23:04', NULL),
(15, 59, 'Love', '23', '2023-09-11 11:59:40', '2023-10-11 13:23:15', NULL),
(16, 46, 'Marcos', '40', '2023-09-11 11:59:55', '2023-09-11 11:59:55', NULL),
(20, 51, 'PEARL', '33', '2023-10-02 13:40:20', '2023-10-02 13:40:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` bigint(20) UNSIGNED NOT NULL,
  `announcement_category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcement_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcement_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcement_id`, `announcement_category_id`, `announcement_image`, `announcement_title`, `announcement_description`, `headline`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, '1', 'winnie.png', 'Promoted', 'Congratulations to Ma\'am Julie-Ann S. Padre  on your promotion as Administrative Officer II. ', 'yes', '2023-09-25 13:25:49', '2023-11-15 12:28:40', NULL),
(19, '1', 'rizaldyAglipay.png', 'Promoted!', 'Congratulations to  Ma\'am Angel Ferry R. Bautista on your promotion as Administrative Officer II. ', 'yes', '2023-09-25 13:25:49', '2023-11-15 12:35:55', NULL),
(20, '1', '379408717_732854215525554_374002788996704862_n.jpg', 'Good Job', 'Congratulations! Rio Chico NHS for passing the regional validation for additional strand  for Senior High School - Science and Technology, Engineering, Mathematics ( STEM ) Strand', 'yes', '2023-09-25 13:35:44', '2023-09-25 13:36:32', NULL),
(34, '1', 'brigada.jpg', '#BRIGADA2023', 'TARA NA', 'no', '2023-10-06 01:29:58', '2023-10-06 01:43:22', NULL),
(35, '1', 'adbisory.jpg', '', '', 'no', '2023-10-06 01:43:22', '2023-10-06 01:43:39', NULL),
(36, '1', 'orientation.jpg', 'PARENTS ORIENTATION', 'MONDAY', 'no', '2023-10-06 01:52:56', '2023-10-06 01:53:41', NULL),
(37, '1', 'enrollment.jpg', 'SCHEDULED OF ENROLLMENT', 'ENROLLMENT', 'no', '2023-10-06 01:54:11', '2023-10-06 01:54:47', NULL),
(38, '3', 'billiard.jpg', 'CLARAA CHAMPION', 'CONGRATULATION', 'no', '2023-10-06 01:54:52', '2023-10-06 01:55:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Education', '2023-04-21 03:31:15', '2023-09-06 13:53:02', NULL),
(2, 'Social', '2023-04-22 13:54:16', '2023-04-22 13:54:16', NULL),
(3, 'Sports', '2023-04-22 14:19:11', '2023-10-06 01:56:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `department_acronym` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_acronym`, `department_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SHS', 'SENIOR HIGH SCHOOL', '2023-04-21 03:29:35', '2023-04-21 07:53:02', NULL),
(2, 'JHS', 'JUNIOR HIGH SCHOOL', '2023-04-21 08:02:24', '2023-04-21 08:02:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `gallery_category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`gallery_id`, `gallery_category_id`, `gallery_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(17, '2', 'bg.jpg', '2023-09-27 18:24:18', '2023-09-27 18:24:18', NULL),
(19, '2', 'pic16.JPG', '2023-10-04 20:17:57', '2023-10-04 20:17:57', NULL),
(21, '3', 'billiard.jpg', '2023-10-09 15:06:35', '2023-10-09 15:06:35', NULL),
(25, '3', 'download.jpg', '2021-10-09 15:09:35', '2023-10-19 16:28:29', NULL),
(27, '3', 'c5e96acf6632591428475d2a2c8afed0.jpg', '2022-10-09 15:13:53', '2023-10-19 16:28:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `email`, `password`) VALUES
(1, 'developer', '', 'password'),
(3, 'vincent', 'whatscrazy12@gmail.com', 'd8e3fac873773186f6267887c2348c2a');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2013_04_17_001933_create_permissions_table', 2),
(14, '2014_10_12_000000_create_users_table', 2),
(15, '2023_04_16_002336_create_categories_table', 2),
(16, '2023_04_17_002023_create_offices_table', 2),
(17, '2023_04_17_002126_create_departments_table', 2),
(18, '2023_04_17_002230_create_schoolyears_table', 2),
(19, '2023_04_17_002302_create_abouts_table', 2),
(20, '2023_04_17_002511_create_announcements_table', 2),
(21, '2023_04_17_002628_create_galleries_table', 2),
(22, '2023_04_17_070911_create_teachers_table', 2),
(23, '2023_04_18_001328_create_strands_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_category_id` varchar(225) NOT NULL,
  `news_image` varchar(225) NOT NULL,
  `news_title` varchar(225) NOT NULL,
  `news_description` longtext NOT NULL,
  `headline` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_category_id`, `news_image`, `news_title`, `news_description`, `headline`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, '1', '379526563_735281415282834_6870265496553611304_n.jpg', 'Item Secured!', 'Congratulations, Ma`am Jobelle G. Mallare! Welcome to DepEd! Good luck po, Ma`am Jobelle.', 'yes', '2023-09-22 16:57:11', '2023-10-02 18:10:43', NULL),
(22, '1', '378975508_732910958853213_1229073317985209920_n.jpg', 'Promoted', 'Congratulations to our newly promoted teacher! We are all proud of you! Cheers!', 'yes', '2023-09-25 13:32:28', '2023-10-02 18:10:09', NULL),
(27, '3', '378018178_732942812183361_1038495994654828426_n.jpg', 'Promoted!', 'Congratulations to Ma\'am Julie-Ann S. Padre on your promotion as Administrative Officer II.', 'yes', '2023-10-02 18:09:31', '2023-10-02 18:09:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `office_id` bigint(20) UNSIGNED NOT NULL,
  `office_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`office_id`, `office_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ENGLISH DEPARTMENT', '2023-04-21 03:31:03', '2023-04-21 08:00:38', NULL),
(3, 'MAPEH DEPARTMENT', '2023-04-21 08:00:56', '2023-04-21 08:00:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `permission_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`permission_id`, `permission_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Developer', '2023-04-21 03:26:49', '2023-04-21 03:26:49', NULL),
(17, 'Admin', '2023-08-29 03:21:29', '2023-08-29 03:21:29', NULL),
(18, 'Moderator', '2023-10-09 15:26:18', '2023-10-09 15:26:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sample`
--

CREATE TABLE `sample` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sample`
--

INSERT INTO `sample` (`id`, `username`, `password`, `role`) VALUES
(1, 'vincent', 'password1234', 'developer');

-- --------------------------------------------------------

--
-- Table structure for table `schoolyears`
--

CREATE TABLE `schoolyears` (
  `schoolyear_id` bigint(20) UNSIGNED NOT NULL,
  `schoolyear_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schoolyear_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schoolyears`
--

INSERT INTO `schoolyears` (`schoolyear_id`, `schoolyear_from`, `schoolyear_to`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2022', '2023', '2023-11-13 13:04:36', '2023-11-24 14:00:24', NULL),
(2, '2021', '2022', '2023-11-24 14:19:31', '2023-11-24 14:19:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strands`
--

CREATE TABLE `strands` (
  `strand_id` bigint(20) UNSIGNED NOT NULL,
  `strand_department_id` bigint(20) UNSIGNED NOT NULL,
  `strand_acronym` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `strand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strands`
--

INSERT INTO `strands` (`strand_id`, `strand_department_id`, `strand_acronym`, `strand_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(46, 1, 'HUMSS', 'Humanities and Social Sciences', '2023-04-21 07:57:51', '2023-09-06 13:48:54', NULL),
(48, 1, 'GAS', 'General Academic Strand', '2023-04-21 07:58:40', '2023-04-21 07:58:40', NULL),
(49, 1, 'ABM', 'Accountancy and Business Management', '2023-04-21 07:59:10', '2023-04-21 07:59:10', NULL),
(51, 2, 'G7', 'GRADE 7', '2023-04-21 08:02:50', '2023-04-21 08:02:50', NULL),
(57, 2, 'G-8', 'GRADE 8', '2023-10-05 14:58:39', '2023-10-05 14:58:39', NULL),
(58, 2, 'G9', 'GRADE 9', '2023-10-05 15:03:10', '2023-10-16 15:42:55', NULL),
(59, 2, 'G-10', 'GRADE 10', '2023-10-05 20:43:59', '2023-10-05 20:43:59', NULL),
(60, 2, 'STEM', 'Special Section', '2023-10-18 03:16:48', '2023-10-18 03:16:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_Fname` varchar(225) NOT NULL,
  `student_Mname` varchar(225) NOT NULL,
  `student_Lname` varchar(225) NOT NULL,
  `student_Address` varchar(225) NOT NULL,
  `student_LRN` int(11) NOT NULL,
  `student_email` varchar(225) NOT NULL,
  `student_password` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `student_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_Fname`, `student_Mname`, `student_Lname`, `student_Address`, `student_LRN`, `student_email`, `student_password`, `created_at`, `deleted_at`, `updated_at`, `student_section`) VALUES
(3, 'Romar', 'Caba', 'Gallardo', 'Rio Chico', 12313121, 'gallardoromar@gmail.com', '7f62657f6265', '2023-11-13 12:49:39', NULL, '2023-11-17 15:44:44', 13),
(4, 'Oscar', 'P', 'Ramos', 'Palale', 232, 'rams@gmail.com', '', '2023-11-13 13:07:27', NULL, '2023-11-13 13:07:27', 11),
(5, 'Mark Vincent', 'Princepe', 'Delos Santos', 'PMB', 1232, 'mark@gmail.com', '', '2023-11-13 13:08:26', NULL, '2023-11-13 13:08:26', 14),
(6, 'Mark', 'Ay', 'Tahmik', 'SAUDI', 12322, 'wana@gmail.com', '', '2023-11-13 13:09:36', NULL, '2023-11-13 13:09:36', 16),
(7, 'Joji', 'f', 'Bracelet', 'asasa', 23333, 'joji@gmail.com', '', '2023-11-13 13:10:20', NULL, '2023-11-13 13:10:20', 15),
(8, 'tin', 'm', 'botr', 'saudi', 2343, 'tin@gmail.com', '', '2023-11-15 11:01:30', NULL, '2023-11-15 11:01:30', 11),
(9, 'sass', 'ds', 'ss', '23asa', 2323222, 'ahha@bansasa.com', '', '2023-11-15 11:01:59', NULL, '2023-11-15 11:01:59', 13),
(10, 'Mabel', 'C', 'Cabildo', 'Concepciom', 123, 'cabildo@gmail.com', '', '2023-11-15 13:52:02', NULL, '2023-11-15 13:52:02', 16),
(11, 'Ange', 'B', 'Pangilinan', 'PAlale', 2147483647, 'ange@hsa', '', '2023-11-15 13:52:42', NULL, '2023-11-15 13:52:42', 20),
(12, 'Francis', '', 'Caraang', 'cONCEP', 23232, 'FRAN@HSASA', '', '2023-11-15 13:53:41', NULL, '2023-11-15 13:53:41', 14),
(15, 'DanDan', 'Angelo', 'Apan', 'Basta', 2131231321, 'gallardoromar06@gmail.com', '4244643964614a66', '2023-11-24 14:19:10', NULL, '2023-11-24 16:49:47', 11);

-- --------------------------------------------------------

--
-- Table structure for table `student_grades`
--

CREATE TABLE `student_grades` (
  `students_grades_id` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `section` varchar(225) NOT NULL,
  `grading` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `grades` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_grades`
--

INSERT INTO `student_grades` (`students_grades_id`, `student`, `section`, `grading`, `year`, `grades`) VALUES
(24, 4, '11', '1st Grading', 2022, 'usecase.png'),
(25, 15, '11', '1st Grading', 2022, 'Blank board (1).png'),
(26, 15, '11', '2nd Grading', 2022, 'Blank board.png');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_pos_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_mname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_DOB` date DEFAULT NULL,
  `teacher_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `teacher_pos_id`, `teacher_profile`, `teacher_fname`, `teacher_mname`, `teacher_lname`, `teacher_DOB`, `teacher_address`, `teacher_contact`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, 19, 'rizaldyAglipay.png', 'Rizaldy', 'S', 'Aglipay', '0000-00-00', '', '', '2023-09-06 14:39:36', '2023-11-13 15:09:32', NULL),
(20, 14, 'AGLIPAY, WINNE P (1).JPG', 'Winnie', 'P', 'Aglipay', '0000-00-00', '', '', '2023-09-06 15:03:02', '2023-10-02 16:01:26', NULL),
(21, 14, 'BACAY, MAUREEN T (1).JPG', 'Maureen', 'T', 'Bacay', '0000-00-00', '', '', '2023-09-06 15:03:44', '2023-10-02 13:32:41', NULL),
(22, 14, 'BAUTISTA, EMMA ESTHER B (1).JPG', 'Emma Esther', 'B', 'Bautista', '0000-00-00', '', '', '2023-09-06 15:04:13', '2023-10-02 13:32:59', NULL),
(23, 17, 'BAUTISTA, POLYNEL P (1).JPG', 'Polynel', 'P', 'Bautista', '2023-09-01', 'Rio Chico', '121212', '2023-09-06 15:05:26', '2023-09-15 13:52:03', NULL),
(24, 14, 'BOTE, MARITES G (1).JPG', 'Marites', 'G', 'Bote', '0000-00-00', '', '', '2023-09-06 15:05:53', '2023-10-02 13:33:22', NULL),
(25, 14, 'BULAWIT, MINA S (1).JPG', 'Mina', 'S', 'Bulawit', '0000-00-00', '', '', '2023-09-06 15:06:21', '2023-10-02 13:33:44', NULL),
(26, 14, 'CABALLERO, MARICEL H (1).JPG', 'Maricel', 'H', 'Caballero', '0000-00-00', '', '', '2023-09-06 15:06:49', '2023-10-02 13:33:59', NULL),
(27, 15, 'CORPUZ, CARLOS G (2).JPG', 'Carlos', 'G', 'Corpuz', '2023-09-05', 'Rio Chico', '12121212', '2023-09-06 15:07:26', '2023-09-15 13:54:15', NULL),
(28, 5, 'FERRER, GLECIE A (1).JPG', 'Glecie', 'A', 'Ferrer', '2023-09-06', 'Rio Chico', '121212121', '2023-09-06 15:08:08', '2023-09-06 15:08:08', NULL),
(29, 5, 'GERMAN, MARILYN J (1).JPG', 'Marilyn', 'J', 'German', '2023-09-08', 'Rio Chico', '12121221', '2023-09-06 15:08:38', '2023-09-06 15:08:38', NULL),
(30, 5, 'GONZALES, GERLYN D (1).JPG', 'Gerlyn', 'D', 'Gonzales', '2023-09-07', 'Rio Chico', '12121212', '2023-09-06 15:09:02', '2023-09-06 15:09:02', NULL),
(31, 17, 'LIBUNAO, EFREN P (1).JPG', 'Efren', 'P', 'Libunao', '0000-00-00', '', '', '2023-09-06 15:09:34', '2023-10-02 13:34:46', NULL),
(32, 5, 'MASILANG, MARICRIS S (1).JPG', 'Maricris', 'S', 'Masilang', '2023-09-13', 'Rio Chico', '12121212', '2023-09-06 15:09:55', '2023-09-06 15:09:55', NULL),
(33, 14, 'MIRANDA SHAREE ROME A (1).JPG', 'Sharee Rome', 'A', 'Miranda', '0000-00-00', '', '', '2023-09-06 15:10:19', '2023-10-02 13:35:13', NULL),
(34, 19, 'OLTIVEROS, GIRLY M (1).JPG', 'Girly', 'M', 'Oltiveros', '0000-00-00', '', '', '2023-09-06 15:10:41', '2023-10-02 13:35:41', NULL),
(35, 5, 'PADOLINA, DONNA MAY Z (1).JPG', 'Donna May', 'Z', 'Padolina', '2023-09-01', 'Rio Chico', '1212212', '2023-09-06 15:11:12', '2023-09-06 15:11:12', NULL),
(36, 14, 'PAR ALMA G (1).JPG', 'Alma', 'G', 'Par', '0000-00-00', '', '', '2023-09-06 15:11:35', '2023-10-02 13:36:24', NULL),
(37, 14, 'PUNO, ABEGAIL B (1).JPG', 'Abegail', 'B', 'Puno', '0000-00-00', '', '', '2023-09-06 15:11:55', '2023-10-02 13:36:43', NULL),
(38, 14, 'SORIANO, REVELYN B (1).JPG', 'Revelyn', 'B', 'Soriano', '0000-00-00', '', '', '2023-09-06 15:12:27', '2023-10-02 13:37:02', NULL),
(39, 17, 'TERMULO, MA. TERESA M (1).JPG', 'Ma. Teresa', 'M', 'Termulo', '0000-00-00', '', '', '2023-09-06 15:12:55', '2023-10-02 13:37:14', NULL),
(40, 17, 'TIONGSON, SHIERYL B (1).JPG', 'Shieryl', 'B', 'Tiongson', '0000-00-00', '', '', '2023-09-06 15:13:21', '2023-10-02 13:37:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_positions`
--

CREATE TABLE `teacher_positions` (
  `teacher_position_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_position_name` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_positions`
--

INSERT INTO `teacher_positions` (`teacher_position_id`, `teacher_position_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Teacher I', '2023-04-21 06:48:37', '2023-09-11 15:35:53', NULL),
(11, 'Staff', '2023-09-06 16:00:51', '2023-09-06 16:00:51', NULL),
(12, 'Head Teacher II', '2023-09-11 15:34:39', '2023-09-11 15:34:39', NULL),
(13, 'Teacher II', '2023-09-11 15:34:58', '2023-09-11 15:34:58', NULL),
(14, 'Teacher III', '2023-09-11 15:36:08', '2023-09-11 15:36:08', NULL),
(15, 'School Principal III', '2023-09-11 15:36:50', '2023-09-11 15:36:50', NULL),
(16, 'Master Teacher III', '2023-09-11 15:37:54', '2023-09-11 15:37:54', NULL),
(17, 'Master Teacher I', '2023-09-15 13:42:56', '2023-09-15 13:42:56', NULL),
(18, 'Master Teacher II', '2023-09-15 13:43:07', '2023-09-15 13:43:07', NULL),
(19, 'Head Teacher III', '2023-09-15 13:43:39', '2023-09-15 13:43:39', NULL),
(20, 'Head Teacher I', '2023-09-15 13:43:49', '2023-09-15 13:43:49', NULL),
(21, 'School Principal II', '2023-09-15 13:54:50', '2023-09-15 13:54:50', NULL),
(22, 'School Principal I', '2023-09-15 13:55:04', '2023-09-15 13:55:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_mname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_DOB` date DEFAULT NULL,
  `user_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_isVerified` tinyint(1) NOT NULL DEFAULT 0,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_permission_id`, `user_profile`, `user_fname`, `user_mname`, `user_lname`, `user_DOB`, `user_address`, `user_contact`, `user_username`, `user_email`, `user_isVerified`, `user_password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(41, 1, 'teachers.jpg', 'Mark Vincent', 'Principe', 'Delos Santos', '0000-00-00', 'Pulong Matong', '09129306276', 'mvincent', 'delossantosmarkvincent1@gmail.com', 0, '7d6265686e657f', '2023-09-22 16:15:09', '2023-09-22 16:15:09', NULL),
(46, 1, '04.jpg', 'roms', 'c', 'gallardo', '2002-01-06', 'rio', '093232', 'roms', 'gallardoromar06@gmail.com', 0, '7f62657f6265', '2023-10-14 08:09:45', '2023-10-14 08:09:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `advisory`
--
ALTER TABLE `advisory`
  ADD PRIMARY KEY (`advisory_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`),
  ADD UNIQUE KEY `announcements_announcement_title_unique` (`announcement_title`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`),
  ADD UNIQUE KEY `departments_department_acronym_unique` (`department_acronym`),
  ADD UNIQUE KEY `departments_department_name_unique` (`department_name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`office_id`),
  ADD UNIQUE KEY `offices_office_name_unique` (`office_name`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD UNIQUE KEY `permissions_permission_name_unique` (`permission_name`);

--
-- Indexes for table `sample`
--
ALTER TABLE `sample`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolyears`
--
ALTER TABLE `schoolyears`
  ADD PRIMARY KEY (`schoolyear_id`),
  ADD UNIQUE KEY `schoolyears_schoolyear_from_unique` (`schoolyear_from`),
  ADD UNIQUE KEY `schoolyears_schoolyear_to_unique` (`schoolyear_to`);

--
-- Indexes for table `strands`
--
ALTER TABLE `strands`
  ADD PRIMARY KEY (`strand_id`),
  ADD UNIQUE KEY `strands_strand_acronym_unique` (`strand_acronym`),
  ADD UNIQUE KEY `strands_strand_name_unique` (`strand_name`),
  ADD KEY `strands_strand_department_id_foreign` (`strand_department_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_grades`
--
ALTER TABLE `student_grades`
  ADD PRIMARY KEY (`students_grades_id`),
  ADD KEY `student` (`student`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `teachers_teacher_position_id_foreign` (`teacher_pos_id`);

--
-- Indexes for table `teacher_positions`
--
ALTER TABLE `teacher_positions`
  ADD PRIMARY KEY (`teacher_position_id`),
  ADD UNIQUE KEY `teacher_position_name` (`teacher_position_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_user_username_unique` (`user_username`),
  ADD UNIQUE KEY `users_user_email_unique` (`user_email`),
  ADD KEY `users_user_permission_id_foreign` (`user_permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `about_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `advisory`
--
ALTER TABLE `advisory`
  MODIFY `advisory_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `gallery_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `office_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sample`
--
ALTER TABLE `sample`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schoolyears`
--
ALTER TABLE `schoolyears`
  MODIFY `schoolyear_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `strands`
--
ALTER TABLE `strands`
  MODIFY `strand_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `student_grades`
--
ALTER TABLE `student_grades`
  MODIFY `students_grades_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `teacher_positions`
--
ALTER TABLE `teacher_positions`
  MODIFY `teacher_position_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `strands`
--
ALTER TABLE `strands`
  ADD CONSTRAINT `strands_strand_department_id_foreign` FOREIGN KEY (`strand_department_id`) REFERENCES `departments` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_grades`
--
ALTER TABLE `student_grades`
  ADD CONSTRAINT `student_grades_ibfk_1` FOREIGN KEY (`student`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_teacher_position_id_foreign` FOREIGN KEY (`teacher_pos_id`) REFERENCES `teacher_positions` (`teacher_position_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_user_permission_id_foreign` FOREIGN KEY (`user_permission_id`) REFERENCES `permissions` (`permission_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
