-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 07:25 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sokhpuron`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'http://127.0.0.1:8000/storage/caticon.png', '2023-04-02 16:37:28', '2023-04-02 16:37:28'),
(2, 'Electronics', 'http://127.0.0.1:8000/storage/caticon.png', '2023-04-02 16:37:28', '2023-04-02 16:37:28'),
(3, 'Computer', 'http://127.0.0.1:8000/storage/caticon.png', '2023-04-02 16:37:28', '2023-04-02 16:37:28'),
(4, 'Home Appliance', 'http://127.0.0.1:8000/storage/caticon.png', '2023-04-02 16:37:28', '2023-04-02 16:37:28'),
(5, 'Fashion', 'http://127.0.0.1:8000/storage/caticon.png', '2023-04-02 16:37:28', '2023-04-02 16:37:28'),
(6, 'Baby', 'http://127.0.0.1:8000/storage/caticon.png', '2023-04-02 16:37:28', '2023-04-02 16:37:28'),
(7, 'Furniture', 'http://127.0.0.1:8000/storage/caticon.png', '2023-04-02 16:37:28', '2023-04-02 16:37:28'),
(8, 'Books', 'http://127.0.0.1:8000/storage/caticon.png', '2023-04-02 16:37:28', '2023-04-02 16:37:28'),
(9, 'Sports', 'http://127.0.0.1:8000/storage/caticon.png', '2023-04-02 16:37:28', '2023-04-02 16:37:28'),
(10, 'Others', 'http://127.0.0.1:8000/storage/caticon.png', '2023-04-02 16:37:28', '2023-04-02 16:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contact_date`, `contact_time`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad Ali Khan', 'xvirus.bd@gmail.com', 'This is test message form contact page.', '01-04-2023', '11:31:25pm', '2023-04-01 17:31:25', '2023-04-01 17:31:25'),
(2, 'test name', 'test@mail.com', 'test message.', '01-04-2023', '11:36:48pm', '2023-04-01 17:36:49', '2023-04-01 17:36:49'),
(3, 'new user', 'newu@mail.com', 'testing message from contact page.', '01-04-2023', '11:43:15pm', '2023-04-01 17:43:15', '2023-04-01 17:43:15'),
(4, 'aaa', 'a@mail.com', 'aaa', '01-04-2023', '11:57:10pm', '2023-04-01 17:57:10', '2023-04-01 17:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2023_03_26_093358_create_sessions_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(7, '2023_03_26_165312_create_visitors_table', 2),
(8, '2023_04_01_161117_create_contacts_table', 3),
(9, '2023_04_01_184609_create_site_infos_table', 4),
(10, '2023_04_02_160021_create_categories_table', 5),
(11, '2023_04_02_161612_create_subcategories_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6Uw6FsxEAV9lakDRitdvrPq1tBPTT4JGJZgaOlRV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSW9lYko4OWFCS2JQVWxyMUFpaDZDaFJla1lRWkdYQ09Qc0NqcWRHUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1679851379),
('G5kRhirzoEptu8LZkAn5Nm9amUETt0Pw6O0cd1im', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGdLMThKZTlLTU5jSDRMSG5JaUp3bVIxSWdnR2NORjNkRkM4U2RETSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1679827354),
('jBddhvKlimvFgp9kTuHciZsYcRajcMGQfBtzzx1A', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVW1wNjJ6RkN5c0RlcVhyYmg5STVnYVNXVjRRSGh2czZpbGlTVnlsYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1680115089),
('LY5ZAdqzUKpfTHxpPCp6BZaCmxy3ZjMlmjoZYQPK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieVNZMUJYN0VJbnJxcGlhaXZPOURRMUhMakFKQWgxcDVUNDdPVHFHZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1680453138);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parchase_guide` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `android_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ios_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facbook_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `about`, `refund`, `parchase_guide`, `privacy`, `address`, `android_app_link`, `ios_app_link`, `facbook_link`, `twitter_link`, `instagram_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, '<p>About Us</p>\r\n\r\n<p>Sokh Puron is a leading online retailer that offers a wide range of high-quality products at competitive prices. Our mission is to provide our customers with the best possible shopping experience by offering top-quality products, excellent customer service, and fast, reliable shipping. Our company was founded in 2021 by Mohammad Ali Khan, Md. Mehedi Hasan Khan and Jannatul Mahia had a vision of creating an online shopping destination that offered a wide selection of products at affordable prices. Since then, we have grown into one of the largest online retailers in the industry, with a team of experienced professionals who are dedicated to providing our customers with the best possible service. At Sokh Puron, we believe in putting our customers first. That&#39;s why we offer a 100% satisfaction guarantee on all of our products, and why we are always looking for ways to improve our service and make our customers&#39; lives easier. Whether you&#39;re shopping for electronics, clothing, home goods, or anything in between, you can trust us to provide you with the best possible products and services. Our team is made up of passionate professionals who are committed to making your shopping experience as easy and enjoyable as possible. From our customer service representatives to our warehouse staff, everyone at Sokh Puron is dedicated to providing you with the best possible service and ensuring that you are completely satisfied with your purchase. Thank you for choosing Sokh Puron. We look forward to serving you and making your online shopping experience a great one.</p>', '<p>Refund Policy</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>Purchase</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>Privacy Policy</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Jamalpur, Bangladesh 2000</strong></p>', '', '', 'https://www.facebook.com/sokhpuronbd', 'https://twitter.com/xvirusbd', 'https://www.instagram.com/xvirus.bd', '© Copyright 2023 by Sokh Puron. All Rights Reserved. Developed by Mohammad Ali Khan', '2023-04-01 19:02:30', '2023-04-01 19:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_name`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'Apple', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(2, 'Mobile', 'Samsung', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(3, 'Mobile', 'OPPO', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(4, 'Electronics', 'Smart TV', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(5, 'Electronics', 'Camera', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(6, 'Computer', 'Laptops', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(7, 'Computer', 'Desktop', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(8, 'Home Appliance', 'Washing Machine', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(9, 'Home Appliance', 'Air Conditioners', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(10, 'Fashion', 'Mens', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(11, 'Fashion', 'Womens', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(12, 'Baby', 'Clothing', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(13, 'Baby', 'Footwear', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(14, 'Baby', 'Toys', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(15, 'Furniture', 'Home Decor', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(16, 'Furniture', 'Living Room Furniture', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(17, 'Books', 'Academic', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(18, 'Books', 'Others', '2023-04-02 17:20:12', '2023-04-02 17:20:12'),
(19, 'Sports', 'Jersey', '2023-04-02 17:20:12', '2023-04-02 17:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad Ali Khan', 'xvirus.bd@gmail.com', NULL, '$2y$10$tMWdPKANpUf5Ozn.j2r2G.g0LaceP19Q687Pgbc1Lqtirw9c9BEHW', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 04:05:39', '2023-03-26 04:05:39');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '11:24:00pm', '26-03-2023', NULL, NULL),
(2, '127.0.0.1', '12:36:47am', '30-03-2023', '2023-03-29 18:36:48', '2023-03-29 18:36:48'),
(3, '127.0.0.1', '12:36:56am', '30-03-2023', '2023-03-29 18:36:56', '2023-03-29 18:36:56'),
(4, '127.0.0.1', '12:37:52am', '30-03-2023', '2023-03-29 18:37:52', '2023-03-29 18:37:52'),
(5, '127.0.0.1', '12:40:19am', '30-03-2023', '2023-03-29 18:40:19', '2023-03-29 18:40:19'),
(6, '127.0.0.1', '12:40:45am', '30-03-2023', '2023-03-29 18:40:45', '2023-03-29 18:40:45'),
(7, '127.0.0.1', '12:41:55am', '30-03-2023', '2023-03-29 18:41:55', '2023-03-29 18:41:55'),
(8, '127.0.0.1', '10:28:47pm', '01-04-2023', '2023-04-01 16:28:47', '2023-04-01 16:28:47'),
(9, '127.0.0.1', '11:18:02pm', '01-04-2023', '2023-04-01 17:18:04', '2023-04-01 17:18:04'),
(10, '127.0.0.1', '11:29:17pm', '01-04-2023', '2023-04-01 17:29:18', '2023-04-01 17:29:18'),
(11, '127.0.0.1', '11:29:21pm', '01-04-2023', '2023-04-01 17:29:21', '2023-04-01 17:29:21'),
(12, '127.0.0.1', '11:59:10pm', '01-04-2023', '2023-04-01 17:59:10', '2023-04-01 17:59:10'),
(13, '127.0.0.1', '11:59:13pm', '01-04-2023', '2023-04-01 17:59:13', '2023-04-01 17:59:13'),
(14, '127.0.0.1', '06:11:03pm', '02-04-2023', '2023-04-02 12:11:05', '2023-04-02 12:11:05'),
(15, '127.0.0.1', '06:11:09pm', '02-04-2023', '2023-04-02 12:11:09', '2023-04-02 12:11:09'),
(16, '127.0.0.1', '06:11:15pm', '02-04-2023', '2023-04-02 12:11:15', '2023-04-02 12:11:15'),
(17, '127.0.0.1', '08:00:25pm', '02-04-2023', '2023-04-02 14:00:29', '2023-04-02 14:00:29'),
(18, '127.0.0.1', '08:08:48pm', '02-04-2023', '2023-04-02 14:08:48', '2023-04-02 14:08:48'),
(19, '127.0.0.1', '08:09:49pm', '02-04-2023', '2023-04-02 14:09:49', '2023-04-02 14:09:49'),
(20, '127.0.0.1', '09:53:01pm', '02-04-2023', '2023-04-02 15:53:01', '2023-04-02 15:53:01'),
(21, '127.0.0.1', '10:07:47pm', '02-04-2023', '2023-04-02 16:07:47', '2023-04-02 16:07:47'),
(22, '127.0.0.1', '10:26:24pm', '02-04-2023', '2023-04-02 16:26:24', '2023-04-02 16:26:24'),
(23, '127.0.0.1', '10:26:47pm', '02-04-2023', '2023-04-02 16:26:47', '2023-04-02 16:26:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
