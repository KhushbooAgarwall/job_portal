-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 11:03 AM
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
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Telecom', 1, '2024-06-21 02:34:25', '2024-06-21 02:34:25'),
(2, 'Engineering', 1, '2024-06-21 02:34:25', '2024-06-21 02:34:25'),
(3, 'Accountant', 1, '2024-06-21 02:34:25', '2024-06-21 02:34:25'),
(4, 'Information Technology', 1, '2024-06-21 02:34:25', '2024-06-21 02:34:25'),
(5, 'Fashion designing', 1, '2024-06-21 02:34:25', '2024-06-21 02:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `job_type_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vacancy` int(11) NOT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `responsibility` text DEFAULT NULL,
  `qualifications` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `experience` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_location` varchar(255) DEFAULT NULL,
  `company_website` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `isFeatured` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `category_id`, `job_type_id`, `user_id`, `vacancy`, `salary`, `location`, `description`, `benefits`, `responsibility`, `qualifications`, `keywords`, `experience`, `company_name`, `company_location`, `company_website`, `status`, `isFeatured`, `created_at`, `updated_at`) VALUES
(1, 'App Devloper', 4, 1, 1, 1, '10K', 'Jaipur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', 'The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.', 'The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.', 'php,mysql,laravel', '3', 'Quirinus Soft', 'Jaipur', NULL, 1, 1, '2024-06-21 05:30:37', '2024-06-26 03:19:38'),
(2, 'Web Devloper', 4, 2, 2, 2, '4.5K', 'Bengaluru', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, NULL, '5', 'Mrs. Camylle Huel II', 'Bengaluru', 'https://www.google.com/', 1, 1, '2024-06-21 06:02:29', '2024-06-21 06:02:29'),
(3, 'Fashion Designer', 4, 3, 1, 3, '5K', 'Jaipur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', '\r\n    There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '6', 'Mr. Eleazar Herman', 'Jaipur', 'https://www.quirinussoft.com/', 1, 0, '2024-06-21 06:02:29', '2024-06-21 06:02:29'),
(4, 'Content Writer', 1, 3, 1, 2, '3K', 'Jaipur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', '\r\n    There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '2', 'Dr. Dylan Kozey I', 'Jaipur', 'https://www.quirinussoft.com/', 1, 1, '2024-06-21 06:02:29', '2024-06-21 06:02:29'),
(5, 'Web Devloper', 3, 5, 2, 1, '4.5K', 'Bengaluru', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, NULL, '7', 'Claudie Heathcote', 'Bengaluru', 'https://www.google.com/', 1, 0, '2024-06-21 23:23:22', '2024-06-21 23:23:22'),
(6, 'App Devloper', 4, 2, 2, 1, '10K', 'Bengaluru', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, NULL, '6', 'Pauline Weissnat DVM', 'Bengaluru', 'https://www.google.com/', 1, 1, '2024-06-21 23:41:37', '2024-06-21 23:41:37'),
(7, 'Fashion Designer', 4, 1, 1, 5, '5K', 'Jaipur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', 'The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.', 'The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.', NULL, '7', 'Mrs. Lelia Hills III', 'Jaipur', NULL, 0, 0, '2024-06-21 23:41:37', '2024-06-26 03:54:52'),
(8, 'Content Writer', 3, 3, 1, 5, '3K', 'Jaipur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', '\r\n    There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '5', 'Prof. Karley Nicolas Jr.', 'Jaipur', 'https://www.quirinussoft.com/', 1, 1, '2024-06-21 23:41:37', '2024-06-21 23:41:37'),
(9, 'Fashion Designer', 4, 5, 2, 2, '5K', 'Bengaluru', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, NULL, '6', 'Prof. Ashley Schowalter Sr.', 'Bengaluru', 'https://www.google.com/', 1, 0, '2024-06-21 23:41:37', '2024-06-21 23:41:37'),
(10, 'Web Devloper', 3, 5, 2, 5, '4.5K', 'Bengaluru', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, NULL, '2', 'Mr. Tristian Schneider IV', 'Bengaluru', 'https://www.google.com/', 1, 1, '0000-00-00 00:00:00', '2024-06-21 23:41:37'),
(11, 'Content Writer', 3, 1, 1, 2, '3K', 'Jaipur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', '\r\n    There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '6', 'Prof. Aiyana Mertz II', 'Jaipur', 'https://www.quirinussoft.com/', 1, 0, '2024-06-21 23:41:37', '2024-06-21 23:41:37'),
(12, 'App Devloper', 2, 3, 1, 3, '10K', 'Jaipur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', '\r\n    There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '9', 'Prof. Tyrell Ward I', 'Jaipur', 'https://www.quirinussoft.com/', 1, 1, '2024-06-21 23:41:37', '2024-06-21 23:41:37'),
(13, 'Content Writer', 2, 2, 2, 5, '3K', 'Bengaluru', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, NULL, '8', 'Dayna Mitchell Jr.', 'Bengaluru', 'https://www.google.com/', 1, 0, '2024-06-21 23:41:37', '2024-06-21 23:41:37'),
(14, 'Web Devloper', 5, 5, 2, 2, '4.5K', 'Bengaluru', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, NULL, '8', 'Gideon Denesik III', 'Bengaluru', 'https://www.google.com/', 1, 0, '2024-06-21 23:41:37', '2024-06-21 23:41:37'),
(15, 'Fashion Designer', 2, 5, 1, 5, '5K', 'Jaipur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', '\r\n    There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '3', 'Jules Mante', 'Jaipur', 'https://www.quirinussoft.com/', 1, 0, '2024-06-21 23:41:37', '2024-06-21 23:41:37'),
(16, 'Web Devloper', 1, 3, 2, 2, '4.5K', 'Bengaluru', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, NULL, '5', 'Dolly Ferry', 'Bengaluru', 'https://www.google.com/', 1, 0, '2024-06-21 23:41:37', '2024-06-21 23:41:37'),
(18, 'Fashion Designer', 2, 3, 3, 4, '5K', 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '5', 'Dominic Rau', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(19, 'Content Writer', 2, 3, 3, 1, '3K', 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '9', 'Linda Auer', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(20, 'Web Devloper', 2, 2, 3, 2, '4.5K', 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '7', 'Mr. Garnett Schulist MD', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(21, 'App Devloper', 5, 1, 3, 4, '10K', 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '9', 'Nikita Borer', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(22, 'Fashion Designer', 3, 4, 3, 4, '5K', 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '8', 'Margarita Anderson', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(23, 'Web Devloper', 3, 1, 3, 5, '4.5K', 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '2', 'Dr. Brenden Predovic Jr.', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(24, 'App Devloper', 4, 2, 3, 1, '10K', 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '9', 'Rocio Beahan', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(25, 'Web Devloper', 1, 5, 3, 3, '4.5K', 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '3', 'Tressie Cronin', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(45, 'Ms. Casandra Bogisich Jr.', 5, 5, 3, 1, NULL, 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '10', 'Zachery Heller III', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(46, 'Cassandre Herman', 1, 5, 3, 2, NULL, 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '1', 'Mr. Joshuah Muller I', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(47, 'Prof. Cordelia Hettinger DVM', 5, 2, 3, 3, NULL, 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '1', 'Mrs. Kelsi Reichel', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(48, 'Rocio Quitzon', 3, 1, 3, 4, NULL, 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '5', 'Heaven Anderson', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(49, 'Ludwig White', 2, 3, 3, 5, NULL, 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '8', 'Jayden Osinski', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(50, 'Dr. Edythe Collins', 3, 1, 3, 4, NULL, 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '9', 'Jadyn Howell', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(51, 'Beatrice Greenholt', 5, 2, 3, 1, NULL, 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, 'The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.', 'The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.', NULL, '8', 'Madisen Deckow', 'Delhi', NULL, 1, 1, '2024-06-22 00:13:33', '2024-06-26 03:50:01'),
(52, 'Ms. Delia Ondricka', 5, 3, 3, 3, NULL, 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '5', 'Howard Ondricka', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(53, 'Mr. Rickie Bauch', 4, 5, 3, 5, NULL, 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '6', 'Astrid Christiansen', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(54, 'Ally Feil', 4, 1, 3, 4, NULL, 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '7', 'Kip Torp', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33'),
(55, 'Dr. Kadin Weimann I', 1, 5, 3, 5, NULL, 'Delhi', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\r\n\r\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.', NULL, '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', '\r\n    The applicants should have experience in the following areas.\r\n    Have sound knowledge of commercial activities.\r\n    Leadership, analytical, and problem-solving abilities.\r\n    Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.\r\n', NULL, '8', 'Christ Kutch', 'Delhi', 'https://www.amazon.in/', 1, 0, '2024-06-22 00:13:33', '2024-06-22 00:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `employer_id` bigint(20) UNSIGNED NOT NULL,
  `applied_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `job_id`, `user_id`, `employer_id`, `applied_date`, `created_at`, `updated_at`) VALUES
(12, 25, 1, 3, '2024-06-24 05:26:43', '2024-06-24 05:26:43', '2024-06-24 05:26:43'),
(13, 24, 1, 3, '2024-06-24 23:41:43', '2024-06-24 23:41:43', '2024-06-24 23:41:43'),
(14, 45, 1, 3, '2024-06-28 01:24:26', '2024-06-28 01:24:26', '2024-06-28 01:24:26'),
(15, 19, 1, 3, '2024-06-28 03:14:49', '2024-06-28 03:14:49', '2024-06-28 03:14:49'),
(16, 47, 1, 3, '2024-06-28 03:18:37', '2024-06-28 03:18:37', '2024-06-28 03:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Full Time', 1, '2024-06-21 02:42:48', '2024-06-21 02:42:48'),
(2, 'Part Time ', 1, '2024-06-21 02:42:48', '2024-06-21 02:42:48'),
(3, 'Freelance', 1, '2024-06-21 02:42:48', '2024-06-21 02:42:48'),
(4, 'Remote', 1, '2024-06-21 02:42:48', '2024-06-21 02:42:48'),
(5, 'Contact', 1, '2024-06-21 02:42:48', '2024-06-21 02:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_21_071640_create_categories_table', 2),
(6, '2024_06_21_071737_create_job_types_table', 2),
(7, '2024_06_21_071800_create_jobs_table', 2),
(8, '2024_06_21_101237_alter_jobs_table', 3),
(9, '2024_06_21_104656_alter_jobs_table', 4),
(10, '2024_06_24_063948_create_job_applications_table', 5),
(11, '2024_06_25_045912_create_saved_jobs_table', 6),
(12, '2024_06_26_044416_alter_users_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('khushboo123@gmail.com', 'H5WzXQ57DIEybkgQaNqQAudd2iyzVMun6jT2LVVqsfL0QuDsKty9MqxKIVHp', '2024-06-28 03:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saved_jobs`
--

CREATE TABLE `saved_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saved_jobs`
--

INSERT INTO `saved_jobs` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 24, 1, '2024-06-25 01:34:28', '2024-06-25 01:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `designation`, `mobile`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'khushboo agarwal', 'khushboo123@gmail.com', NULL, '$2y$10$XkpiWmmE5PkTthD5d1DGs.hySZxAAcqPXDGKgTrKeZ6RP1HcxQ.Nm', '1-1719386155.jpeg', 'Web Developer', '1234567890', 'admin', NULL, '2024-06-19 05:33:46', '2024-06-28 03:25:14'),
(2, 'khushi', 'khushi456@gmail.com', NULL, '$2y$10$ATZiCdx7ayxUuxLvUX1oKud.CosiYVNMvM7.yy3km50gTwkJptDVq', NULL, 'Fashion Desigen', '9123456780', 'user', NULL, '2024-06-20 05:22:51', '2024-06-20 05:40:24'),
(3, 'Archika', 'archika098@gmail.com', NULL, '$2y$10$gW5UxiJ4ToAHzZ29jQp.ye.riw5BaRweHKqP6FlGMTfSe6OyEFYim', '', 'HR', '6789012345', 'user', NULL, NULL, '2024-06-26 00:59:10'),
(4, 'Nakia Kreiger', 'sherman.ullrich@example.com', '2024-06-26 01:16:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'AidFGyUUFp', '2024-06-26 01:16:57', '2024-06-26 01:16:57'),
(5, 'Derek Murray', 'cconn@example.org', '2024-06-26 01:16:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'mJSoEcoxDT', '2024-06-26 01:16:57', '2024-06-26 01:16:57'),
(6, 'Kaley Bogan', 'lydia80@example.org', '2024-06-26 01:16:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'rdWekc2DMn', '2024-06-26 01:16:57', '2024-06-26 01:16:57'),
(7, 'Dr. Max Littel MD', 'moses66@example.net', '2024-06-26 01:16:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'jR7q0cWN9E', '2024-06-26 01:16:57', '2024-06-26 01:16:57'),
(8, 'Mr. Javonte Hayes III', 'alexzander75@example.com', '2024-06-26 01:16:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', '1IGkQMPtr5', '2024-06-26 01:16:57', '2024-06-26 01:16:57'),
(9, 'Lance Wolf Sr.', 'kiehn.vladimir@example.com', '2024-06-26 01:16:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'zYHLvAIQVT', '2024-06-26 01:16:57', '2024-06-26 01:16:57'),
(10, 'Stephon Hahn', 'giovanni.balistreri@example.org', '2024-06-26 01:16:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'HBctqigqYx', '2024-06-26 01:16:57', '2024-06-26 01:16:57'),
(11, 'Mr. Jack Renner', 'abshire.rahul@example.com', '2024-06-26 01:16:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', '17U6uYIT6N', '2024-06-26 01:16:57', '2024-06-26 01:16:57'),
(12, 'Dr. Cheyanne Nienow', 'mertz.rachael@example.net', '2024-06-26 01:16:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', '5P08R3UFmC', '2024-06-26 01:16:57', '2024-06-26 01:16:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_category_id_foreign` (`category_id`),
  ADD KEY `jobs_job_type_id_foreign` (`job_type_id`),
  ADD KEY `jobs_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applications_job_id_foreign` (`job_id`),
  ADD KEY `job_applications_user_id_foreign` (`user_id`),
  ADD KEY `job_applications_employer_id_foreign` (`employer_id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saved_jobs_job_id_foreign` (`job_id`),
  ADD KEY `saved_jobs_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `id_3` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_job_type_id_foreign` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_employer_id_foreign` FOREIGN KEY (`employer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD CONSTRAINT `saved_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
