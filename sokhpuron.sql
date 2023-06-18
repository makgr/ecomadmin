-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2023 at 07:46 PM
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
(4, 'aaa', 'a@mail.com', 'aaa', '01-04-2023', '11:57:10pm', '2023-04-01 17:57:10', '2023-04-01 17:57:10'),
(6, 'ddd', 's@mail.com', 'aaa', '12-04-2023', '11:50:38pm', '2023-04-12 17:50:38', '2023-04-12 17:50:38');

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
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'http://127.0.0.1:8000/storage/slider1.jpg', '2023-04-15 18:54:54', '2023-04-15 18:54:54'),
(2, 'http://127.0.0.1:8000/storage/slider2.jpg', '2023-04-15 18:54:54', '2023-04-15 18:54:54'),
(3, 'http://127.0.0.1:8000/storage/slider3.jpg', '2023-04-15 18:55:04', '2023-04-15 18:55:04');

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
(11, '2023_04_02_161612_create_subcategories_table', 6),
(12, '2023_04_13_195153_create_product_lists_table', 7),
(13, '2023_04_15_184252_create_home_sliders_table', 8),
(14, '2023_04_15_191952_create_product_details_table', 9),
(15, '2023_04_16_062923_create_notifications_table', 10),
(16, '2016_06_01_000001_create_oauth_auth_codes_table', 11),
(17, '2016_06_01_000002_create_oauth_access_tokens_table', 11),
(18, '2016_06_01_000003_create_oauth_refresh_tokens_table', 11),
(19, '2016_06_01_000004_create_oauth_clients_table', 11),
(20, '2016_06_01_000005_create_oauth_personal_access_clients_table', 11),
(21, '2023_05_27_183604_create_product_reviews_table', 12),
(22, '2023_05_28_174313_create_product_carts_table', 13),
(23, '2023_06_18_174122_create_favourites_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Test title', 'test message', '16/04/2023', '2023-04-16 06:39:26', '2023-04-16 06:39:26'),
(2, 'Test title 2', 'test message 2', '15/04/2023', '2023-04-16 06:39:26', '2023-04-16 06:39:26'),
(3, 'Test title 3', 'test message 3', '14/04/2023', '2023-04-16 06:39:26', '2023-04-16 06:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('3bfa87760acebbbbee92d641f2d45438ee66b201fd4a8fc3979d6f2ff66433d57ef3066de96d36c0', 1, 1, 'app', '[]', 0, '2023-04-30 12:14:56', '2023-04-30 12:14:56', '2024-04-30 18:14:56'),
('3e52d70ee7706c6f3fa9ef9cee973185b28f70ce58e8019f4b093609892b364b730125d50f5010c6', 1, 1, 'app', '[]', 0, '2023-04-30 11:46:50', '2023-04-30 11:46:50', '2024-04-30 17:46:50'),
('3f88dd94437e125f7ce3174307b10c00adfcc7e7baec6a68ae44a00bd25555adfb7e51d8c1495a0c', 1, 1, 'app', '[]', 0, '2023-04-30 11:22:55', '2023-04-30 11:22:55', '2024-04-30 17:22:55'),
('5180eb74238a42fbe86f80b3d090b803d36ac2db1737f5d9d4815053b94c9e02c6b1cea9de1f8912', 2, 1, 'app', '[]', 0, '2023-06-18 11:09:26', '2023-06-18 11:09:26', '2024-06-18 17:09:26'),
('5f9f1c6adf8efdfc0b90d7beab8a3e7eb83303c063b2984685b32a4097021802e8ef9ba219ed6686', 1, 1, 'app', '[]', 0, '2023-04-30 12:20:47', '2023-04-30 12:20:47', '2024-04-30 18:20:47'),
('69ae7b835cf5594c89700f6b4d8f0c7981d750586b31473def49a77c9d1368a4133837488e7e4121', 2, 1, 'app', '[]', 0, '2023-04-30 11:53:23', '2023-04-30 11:53:23', '2024-04-30 17:53:23'),
('7546579ab36c46f61fc7a556fc486a7ebd2145ead2a31a017b884f39281c1388c8fdbe3a15783ce9', 3, 1, 'app', '[]', 0, '2023-04-30 11:58:48', '2023-04-30 11:58:48', '2024-04-30 17:58:48'),
('e16cf31b1c40f2e1d323cc57a411870e2ae71c83490dd3397ed0a8c432fc83cf2d3cbfaa4002215a', 1, 1, 'app', '[]', 0, '2023-04-30 11:42:01', '2023-04-30 11:42:01', '2024-04-30 17:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'BjNjhWdFaxNv9tQzQB0kOZ3EYldq4OiYRW2NMCik', NULL, 'http://localhost', 1, 0, 0, '2023-04-22 12:57:51', '2023-04-22 12:57:51'),
(2, NULL, 'Laravel Password Grant Client', 'dELRU3JvUnJ14FcFJgAgn25fOEoLCXj8VKch42dg', 'users', 'http://localhost', 0, 1, 0, '2023-04-22 12:57:51', '2023-04-22 12:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-04-22 12:57:51', '2023-04-22 12:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `image`, `email`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'test@mail.com', 'Test item 2', '3366', 'Size: S', 'Color: Red', '01', '2200', '2200', NULL, NULL),
(2, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'test@mail.com', 'Test item 2', '3366', 'Size: S', 'Color: Red', '02', '2200', '4400', '2023-06-18 17:11:01', '2023-06-18 17:11:01'),
(3, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'test@mail.com', 'Mens Item', '103', 'Size: M', 'Color: Red', '03', '1500', '4500', '2023-06-18 17:16:40', '2023-06-18 17:16:40'),
(4, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'test@mail.com', 'ASUS TUF A15 FA506IU Ryzen 7', '101', 'Size: L', 'Color: Black', '05', '48000', '240000', '2023-06-18 17:29:17', '2023-06-18 17:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `image_one`, `image_two`, `image_three`, `image_four`, `short_description`, `color`, `size`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Red, Black, Green', 'S,L,M,XL', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-04-15 19:46:22', '2023-04-15 19:46:22'),
(2, 2, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Red, Black, Green', 'S,L,M,XL', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-04-15 19:46:22', '2023-04-15 19:46:22'),
(3, 3, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Red, Black, Green', 'S,L,M,XL', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-04-15 19:46:22', '2023-04-15 19:46:22'),
(4, 4, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Red, Black, Green', 'S,L,M,XL', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-04-15 19:46:22', '2023-04-15 19:46:22'),
(5, 5, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Red, Black, Green', 'S,L,M,XL', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-04-15 19:46:22', '2023-04-15 19:46:22'),
(6, 6, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Red, Black, Green', 'S,L,M,XL', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-04-15 19:46:22', '2023-04-15 19:46:22'),
(7, 7, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Red, Black, Green', 'S,L,M,XL', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-04-15 19:46:22', '2023-04-15 19:46:22'),
(8, 8, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Red, Black, Green', 'S,L,M,XL', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-04-15 19:46:22', '2023-04-15 19:46:22'),
(9, 9, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Red, Black, Green', 'S,L,M,XL', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-04-15 19:46:22', '2023-04-15 19:46:22'),
(10, 10, 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Red, Black, Green', 'S,L,M,XL', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-04-15 19:46:22', '2023-04-15 19:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_lists`
--

CREATE TABLE `product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `title`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `star`, `product_code`, `created_at`, `updated_at`) VALUES
(1, 'ASUS TUF A15 FA506IU Ryzen 7', '50000', '48000', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Mobile', 'Apple', 'Featured', 'Test', '5', '101', '2023-04-13 20:10:29', '2023-04-13 20:10:29'),
(2, 'ASUS TUF A15 FA506IU Ryzen 5', '53000', '52000', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Mobile', 'Apple', 'COLLECTION', 'Test', '4', '102', '2023-04-13 20:10:29', '2023-04-13 20:10:29'),
(3, 'Mens Item', '2000', '1500', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Fashion', 'Mens', 'COLLECTION', 'Test', '4', '103', '2023-04-13 20:10:29', '2023-04-13 20:10:29'),
(4, 'Womens Item', '3000', '2800', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Fashion', 'Womens', 'Featured', 'Test', '3', '104', '2023-04-13 20:10:29', '2023-04-13 20:10:29'),
(5, 'Womens Item 33', '3499', '2800', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Fashion', 'Womens', 'COLLECTION', 'Test', '3', '104', '2023-04-13 20:10:29', '2023-04-13 20:10:29'),
(6, 'Test item', '3600', 'na', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Fashion', 'Mens', 'NEW', 'Test', '5', '3365', '2023-04-14 20:07:06', '2023-04-14 20:07:06'),
(7, 'Test item 2', '3600', '2200', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Fashion', 'Mens', 'NEW', 'Test', '4', '3366', '2023-04-14 20:07:06', '2023-04-14 20:07:06'),
(8, 'Test item 3', '3455', '2200', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Fashion', 'Mens', 'NEW', 'Test', '5', '3366', '2023-04-14 20:07:06', '2023-04-14 20:07:06'),
(9, 'Test item 4', '5500', '4455', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Fashion', 'Mens', 'NEW', 'Test', '5', '3366', '2023-04-14 20:07:06', '2023-04-14 20:07:06'),
(10, 'Test item 5', '5507', '4455', 'https://burst.shopifycdn.com/photos/grooms-prep-kit-for-wedding.jpg?width=925&format=pjpg&exif=1&iptc=1', 'Fashion', 'Mens', 'NEW', 'Test', '3', '3377', '2023-04-14 20:07:06', '2023-04-14 20:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Mohammad Ali Khan', 'xvirus.bd@gmail.com', NULL, '$2y$10$tMWdPKANpUf5Ozn.j2r2G.g0LaceP19Q687Pgbc1Lqtirw9c9BEHW', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 04:05:39', '2023-03-26 04:05:39'),
(2, 'test', 'test@mail.com', NULL, '$2y$10$nD1YF3iA7DdGf1ttxe3Ci.E0vc.mv6t1xV4b09oL7ly3fL3Jezr06', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30 11:53:22', '2023-04-30 11:53:22'),
(3, 'new test', 'newtest@mail.com', NULL, '$2y$10$e/F5yhjNcoh7GO5KBUGLX.FTdEsjnHp8KcCkhWGkUs2jELBpE0oUi', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30 11:58:47', '2023-04-30 11:58:47');

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
(23, '127.0.0.1', '10:26:47pm', '02-04-2023', '2023-04-02 16:26:47', '2023-04-02 16:26:47'),
(24, '127.0.0.1', '03:59:11am', '09-04-2023', '2023-04-08 21:59:11', '2023-04-08 21:59:11'),
(25, '127.0.0.1', '03:59:51am', '09-04-2023', '2023-04-08 21:59:51', '2023-04-08 21:59:51'),
(26, '127.0.0.1', '03:59:58am', '09-04-2023', '2023-04-08 21:59:58', '2023-04-08 21:59:58'),
(27, '127.0.0.1', '11:39:20pm', '12-04-2023', '2023-04-12 17:39:20', '2023-04-12 17:39:20'),
(28, '127.0.0.1', '11:50:20pm', '12-04-2023', '2023-04-12 17:50:20', '2023-04-12 17:50:20'),
(29, '127.0.0.1', '11:50:51pm', '12-04-2023', '2023-04-12 17:50:51', '2023-04-12 17:50:51'),
(30, '127.0.0.1', '12:21:13am', '14-04-2023', '2023-04-13 18:21:14', '2023-04-13 18:21:14'),
(31, '127.0.0.1', '12:21:53am', '14-04-2023', '2023-04-13 18:21:53', '2023-04-13 18:21:53'),
(32, '127.0.0.1', '12:22:39am', '14-04-2023', '2023-04-13 18:22:39', '2023-04-13 18:22:39'),
(33, '127.0.0.1', '02:07:54am', '14-04-2023', '2023-04-13 20:07:54', '2023-04-13 20:07:54'),
(34, '127.0.0.1', '02:33:46am', '14-04-2023', '2023-04-13 20:33:46', '2023-04-13 20:33:46'),
(35, '127.0.0.1', '01:12:46am', '15-04-2023', '2023-04-14 19:12:46', '2023-04-14 19:12:46'),
(36, '127.0.0.1', '01:55:25am', '15-04-2023', '2023-04-14 19:55:25', '2023-04-14 19:55:25'),
(37, '127.0.0.1', '01:56:21am', '15-04-2023', '2023-04-14 19:56:21', '2023-04-14 19:56:21'),
(38, '127.0.0.1', '01:56:57am', '15-04-2023', '2023-04-14 19:56:57', '2023-04-14 19:56:57'),
(39, '127.0.0.1', '01:57:03am', '15-04-2023', '2023-04-14 19:57:03', '2023-04-14 19:57:03'),
(40, '127.0.0.1', '02:03:05am', '15-04-2023', '2023-04-14 20:03:05', '2023-04-14 20:03:05'),
(41, '127.0.0.1', '02:06:01am', '15-04-2023', '2023-04-14 20:06:01', '2023-04-14 20:06:01'),
(42, '127.0.0.1', '02:07:16am', '15-04-2023', '2023-04-14 20:07:16', '2023-04-14 20:07:16'),
(43, '127.0.0.1', '02:08:22am', '15-04-2023', '2023-04-14 20:08:22', '2023-04-14 20:08:22'),
(44, '127.0.0.1', '02:09:08am', '15-04-2023', '2023-04-14 20:09:08', '2023-04-14 20:09:08'),
(45, '127.0.0.1', '02:09:57am', '15-04-2023', '2023-04-14 20:09:57', '2023-04-14 20:09:57'),
(46, '127.0.0.1', '02:13:13am', '15-04-2023', '2023-04-14 20:13:13', '2023-04-14 20:13:13'),
(47, '127.0.0.1', '02:13:22am', '15-04-2023', '2023-04-14 20:13:22', '2023-04-14 20:13:22'),
(48, '127.0.0.1', '02:14:48am', '15-04-2023', '2023-04-14 20:14:48', '2023-04-14 20:14:48'),
(49, '127.0.0.1', '02:15:27am', '15-04-2023', '2023-04-14 20:15:27', '2023-04-14 20:15:27'),
(50, '127.0.0.1', '02:15:32am', '15-04-2023', '2023-04-14 20:15:32', '2023-04-14 20:15:32'),
(51, '127.0.0.1', '02:15:36am', '15-04-2023', '2023-04-14 20:15:36', '2023-04-14 20:15:36'),
(52, '127.0.0.1', '02:18:41am', '15-04-2023', '2023-04-14 20:18:41', '2023-04-14 20:18:41'),
(53, '127.0.0.1', '02:21:21am', '15-04-2023', '2023-04-14 20:21:21', '2023-04-14 20:21:21'),
(54, '127.0.0.1', '02:21:32am', '15-04-2023', '2023-04-14 20:21:32', '2023-04-14 20:21:32'),
(55, '127.0.0.1', '02:21:39am', '15-04-2023', '2023-04-14 20:21:39', '2023-04-14 20:21:39'),
(56, '127.0.0.1', '02:21:45am', '15-04-2023', '2023-04-14 20:21:45', '2023-04-14 20:21:45'),
(57, '127.0.0.1', '02:23:58am', '15-04-2023', '2023-04-14 20:23:58', '2023-04-14 20:23:58'),
(58, '127.0.0.1', '02:28:50am', '15-04-2023', '2023-04-14 20:28:50', '2023-04-14 20:28:50'),
(59, '127.0.0.1', '02:28:57am', '15-04-2023', '2023-04-14 20:28:57', '2023-04-14 20:28:57'),
(60, '127.0.0.1', '02:30:04am', '15-04-2023', '2023-04-14 20:30:04', '2023-04-14 20:30:04'),
(61, '127.0.0.1', '02:30:21am', '15-04-2023', '2023-04-14 20:30:21', '2023-04-14 20:30:21'),
(62, '127.0.0.1', '02:30:30am', '15-04-2023', '2023-04-14 20:30:30', '2023-04-14 20:30:30'),
(63, '127.0.0.1', '12:43:14am', '16-04-2023', '2023-04-15 18:43:14', '2023-04-15 18:43:14'),
(64, '127.0.0.1', '01:06:33am', '16-04-2023', '2023-04-15 19:06:33', '2023-04-15 19:06:33'),
(65, '127.0.0.1', '01:07:02am', '16-04-2023', '2023-04-15 19:07:02', '2023-04-15 19:07:02'),
(66, '127.0.0.1', '02:03:24am', '16-04-2023', '2023-04-15 20:03:24', '2023-04-15 20:03:24'),
(67, '127.0.0.1', '02:13:58am', '16-04-2023', '2023-04-15 20:13:58', '2023-04-15 20:13:58'),
(68, '127.0.0.1', '02:15:47am', '16-04-2023', '2023-04-15 20:15:47', '2023-04-15 20:15:47'),
(69, '127.0.0.1', '02:15:54am', '16-04-2023', '2023-04-15 20:15:54', '2023-04-15 20:15:54'),
(70, '127.0.0.1', '02:17:06am', '16-04-2023', '2023-04-15 20:17:06', '2023-04-15 20:17:06'),
(71, '127.0.0.1', '02:22:13am', '16-04-2023', '2023-04-15 20:22:13', '2023-04-15 20:22:13'),
(72, '127.0.0.1', '07:50:05pm', '16-04-2023', '2023-04-16 13:50:05', '2023-04-16 13:50:05'),
(73, '127.0.0.1', '07:50:18pm', '16-04-2023', '2023-04-16 13:50:18', '2023-04-16 13:50:18'),
(74, '127.0.0.1', '07:50:49pm', '16-04-2023', '2023-04-16 13:50:49', '2023-04-16 13:50:49'),
(75, '127.0.0.1', '07:53:23pm', '16-04-2023', '2023-04-16 13:53:23', '2023-04-16 13:53:23'),
(76, '127.0.0.1', '07:54:07pm', '16-04-2023', '2023-04-16 13:54:07', '2023-04-16 13:54:07'),
(77, '127.0.0.1', '09:29:31pm', '16-04-2023', '2023-04-16 15:29:32', '2023-04-16 15:29:32'),
(78, '127.0.0.1', '09:29:47pm', '16-04-2023', '2023-04-16 15:29:47', '2023-04-16 15:29:47'),
(79, '127.0.0.1', '09:33:09pm', '16-04-2023', '2023-04-16 15:33:09', '2023-04-16 15:33:09'),
(80, '127.0.0.1', '09:49:16pm', '16-04-2023', '2023-04-16 15:49:16', '2023-04-16 15:49:16'),
(81, '127.0.0.1', '09:53:57pm', '16-04-2023', '2023-04-16 15:53:57', '2023-04-16 15:53:57'),
(82, '127.0.0.1', '09:53:59pm', '16-04-2023', '2023-04-16 15:53:59', '2023-04-16 15:53:59'),
(83, '127.0.0.1', '09:54:11pm', '16-04-2023', '2023-04-16 15:54:11', '2023-04-16 15:54:11'),
(84, '127.0.0.1', '09:54:20pm', '16-04-2023', '2023-04-16 15:54:20', '2023-04-16 15:54:20'),
(85, '127.0.0.1', '09:54:27pm', '16-04-2023', '2023-04-16 15:54:27', '2023-04-16 15:54:27'),
(86, '127.0.0.1', '09:54:44pm', '16-04-2023', '2023-04-16 15:54:44', '2023-04-16 15:54:44'),
(87, '127.0.0.1', '09:54:55pm', '16-04-2023', '2023-04-16 15:54:55', '2023-04-16 15:54:55'),
(88, '127.0.0.1', '09:55:01pm', '16-04-2023', '2023-04-16 15:55:01', '2023-04-16 15:55:01'),
(89, '127.0.0.1', '09:55:23pm', '16-04-2023', '2023-04-16 15:55:23', '2023-04-16 15:55:23'),
(90, '127.0.0.1', '09:57:06pm', '16-04-2023', '2023-04-16 15:57:06', '2023-04-16 15:57:06'),
(91, '127.0.0.1', '09:57:36pm', '16-04-2023', '2023-04-16 15:57:36', '2023-04-16 15:57:36'),
(92, '127.0.0.1', '11:42:26pm', '18-04-2023', '2023-04-18 17:42:26', '2023-04-18 17:42:26'),
(93, '127.0.0.1', '11:46:35pm', '18-04-2023', '2023-04-18 17:46:35', '2023-04-18 17:46:35'),
(94, '127.0.0.1', '11:48:15pm', '18-04-2023', '2023-04-18 17:48:15', '2023-04-18 17:48:15'),
(95, '127.0.0.1', '11:50:06pm', '18-04-2023', '2023-04-18 17:50:06', '2023-04-18 17:50:06'),
(96, '127.0.0.1', '11:50:18pm', '18-04-2023', '2023-04-18 17:50:18', '2023-04-18 17:50:18'),
(97, '127.0.0.1', '11:50:40pm', '18-04-2023', '2023-04-18 17:50:40', '2023-04-18 17:50:40'),
(98, '127.0.0.1', '11:53:52pm', '18-04-2023', '2023-04-18 17:53:52', '2023-04-18 17:53:52'),
(99, '127.0.0.1', '11:54:05pm', '18-04-2023', '2023-04-18 17:54:05', '2023-04-18 17:54:05'),
(100, '127.0.0.1', '12:11:08am', '22-04-2023', '2023-04-21 18:11:08', '2023-04-21 18:11:08'),
(101, '127.0.0.1', '12:24:17am', '22-04-2023', '2023-04-21 18:24:17', '2023-04-21 18:24:17'),
(102, '127.0.0.1', '12:24:22am', '22-04-2023', '2023-04-21 18:24:22', '2023-04-21 18:24:22'),
(103, '127.0.0.1', '12:26:10am', '22-04-2023', '2023-04-21 18:26:10', '2023-04-21 18:26:10'),
(104, '127.0.0.1', '12:29:53am', '22-04-2023', '2023-04-21 18:29:53', '2023-04-21 18:29:53'),
(105, '127.0.0.1', '12:29:56am', '22-04-2023', '2023-04-21 18:29:56', '2023-04-21 18:29:56'),
(106, '127.0.0.1', '12:30:13am', '22-04-2023', '2023-04-21 18:30:13', '2023-04-21 18:30:13'),
(107, '127.0.0.1', '12:30:27am', '22-04-2023', '2023-04-21 18:30:27', '2023-04-21 18:30:27'),
(108, '127.0.0.1', '12:44:43am', '22-04-2023', '2023-04-21 18:44:43', '2023-04-21 18:44:43'),
(109, '127.0.0.1', '12:47:16am', '22-04-2023', '2023-04-21 18:47:16', '2023-04-21 18:47:16'),
(110, '127.0.0.1', '11:19:03pm', '30-04-2023', '2023-04-30 17:19:03', '2023-04-30 17:19:03'),
(111, '127.0.0.1', '11:22:38pm', '30-04-2023', '2023-04-30 17:22:38', '2023-04-30 17:22:38'),
(112, '127.0.0.1', '11:38:05pm', '30-04-2023', '2023-04-30 17:38:05', '2023-04-30 17:38:05'),
(113, '127.0.0.1', '11:41:20pm', '30-04-2023', '2023-04-30 17:41:20', '2023-04-30 17:41:20'),
(114, '127.0.0.1', '11:46:28pm', '30-04-2023', '2023-04-30 17:46:28', '2023-04-30 17:46:28'),
(115, '127.0.0.1', '11:46:33pm', '30-04-2023', '2023-04-30 17:46:33', '2023-04-30 17:46:33'),
(116, '127.0.0.1', '11:57:41pm', '30-04-2023', '2023-04-30 17:57:41', '2023-04-30 17:57:41'),
(117, '127.0.0.1', '12:13:53am', '01-05-2023', '2023-04-30 18:13:53', '2023-04-30 18:13:53'),
(118, '127.0.0.1', '12:14:39am', '01-05-2023', '2023-04-30 18:14:39', '2023-04-30 18:14:39'),
(119, '127.0.0.1', '12:20:40am', '01-05-2023', '2023-04-30 18:20:40', '2023-04-30 18:20:40'),
(120, '127.0.0.1', '12:20:58am', '01-05-2023', '2023-04-30 18:20:58', '2023-04-30 18:20:58'),
(121, '127.0.0.1', '12:12:53am', '05-05-2023', '2023-05-04 18:12:53', '2023-05-04 18:12:53'),
(122, '127.0.0.1', '12:14:21am', '05-05-2023', '2023-05-04 18:14:21', '2023-05-04 18:14:21'),
(123, '127.0.0.1', '12:18:27am', '05-05-2023', '2023-05-04 18:18:27', '2023-05-04 18:18:27'),
(124, '127.0.0.1', '12:36:12am', '05-05-2023', '2023-05-04 18:36:12', '2023-05-04 18:36:12'),
(125, '127.0.0.1', '12:36:32am', '05-05-2023', '2023-05-04 18:36:32', '2023-05-04 18:36:32'),
(126, '127.0.0.1', '11:26:38pm', '06-05-2023', '2023-05-06 17:26:38', '2023-05-06 17:26:38'),
(127, '127.0.0.1', '11:26:49pm', '06-05-2023', '2023-05-06 17:26:49', '2023-05-06 17:26:49'),
(128, '127.0.0.1', '12:15:44am', '28-05-2023', '2023-05-27 18:15:44', '2023-05-27 18:15:44'),
(129, '127.0.0.1', '12:25:23am', '28-05-2023', '2023-05-27 18:25:23', '2023-05-27 18:25:23'),
(130, '127.0.0.1', '12:25:44am', '28-05-2023', '2023-05-27 18:25:44', '2023-05-27 18:25:44'),
(131, '127.0.0.1', '12:53:55am', '28-05-2023', '2023-05-27 18:53:55', '2023-05-27 18:53:55'),
(132, '127.0.0.1', '12:58:23am', '28-05-2023', '2023-05-27 18:58:23', '2023-05-27 18:58:23'),
(133, '127.0.0.1', '12:02:50am', '29-05-2023', '2023-05-28 18:02:50', '2023-05-28 18:02:50'),
(134, '127.0.0.1', '12:03:04am', '29-05-2023', '2023-05-28 18:03:04', '2023-05-28 18:03:04'),
(135, '127.0.0.1', '12:03:49am', '29-05-2023', '2023-05-28 18:03:49', '2023-05-28 18:03:49'),
(136, '127.0.0.1', '12:42:26am', '11-06-2023', '2023-06-10 18:42:27', '2023-06-10 18:42:27'),
(137, '127.0.0.1', '12:47:17am', '11-06-2023', '2023-06-10 18:47:17', '2023-06-10 18:47:17'),
(138, '127.0.0.1', '12:47:44am', '11-06-2023', '2023-06-10 18:47:44', '2023-06-10 18:47:44'),
(139, '127.0.0.1', '12:48:03am', '11-06-2023', '2023-06-10 18:48:03', '2023-06-10 18:48:03'),
(140, '127.0.0.1', '12:49:27am', '11-06-2023', '2023-06-10 18:49:27', '2023-06-10 18:49:27'),
(141, '127.0.0.1', '01:06:08am', '11-06-2023', '2023-06-10 19:06:08', '2023-06-10 19:06:08'),
(142, '127.0.0.1', '01:08:33am', '11-06-2023', '2023-06-10 19:08:33', '2023-06-10 19:08:33'),
(143, '127.0.0.1', '01:11:08am', '11-06-2023', '2023-06-10 19:11:08', '2023-06-10 19:11:08'),
(144, '127.0.0.1', '01:11:10am', '11-06-2023', '2023-06-10 19:11:10', '2023-06-10 19:11:10'),
(145, '127.0.0.1', '01:11:31am', '11-06-2023', '2023-06-10 19:11:31', '2023-06-10 19:11:31'),
(146, '127.0.0.1', '01:13:02am', '11-06-2023', '2023-06-10 19:13:02', '2023-06-10 19:13:02'),
(147, '127.0.0.1', '01:19:35am', '11-06-2023', '2023-06-10 19:19:35', '2023-06-10 19:19:35'),
(148, '127.0.0.1', '10:57:23pm', '18-06-2023', '2023-06-18 16:57:24', '2023-06-18 16:57:24'),
(149, '127.0.0.1', '11:02:49pm', '18-06-2023', '2023-06-18 17:02:49', '2023-06-18 17:02:49'),
(150, '127.0.0.1', '11:02:55pm', '18-06-2023', '2023-06-18 17:02:55', '2023-06-18 17:02:55'),
(151, '127.0.0.1', '11:04:13pm', '18-06-2023', '2023-06-18 17:04:13', '2023-06-18 17:04:13'),
(152, '127.0.0.1', '11:05:11pm', '18-06-2023', '2023-06-18 17:05:11', '2023-06-18 17:05:11'),
(153, '127.0.0.1', '11:09:39pm', '18-06-2023', '2023-06-18 17:09:39', '2023-06-18 17:09:39'),
(154, '127.0.0.1', '11:25:52pm', '18-06-2023', '2023-06-18 17:25:52', '2023-06-18 17:25:52'),
(155, '127.0.0.1', '11:26:02pm', '18-06-2023', '2023-06-18 17:26:02', '2023-06-18 17:26:02'),
(156, '127.0.0.1', '11:26:08pm', '18-06-2023', '2023-06-18 17:26:08', '2023-06-18 17:26:08'),
(157, '127.0.0.1', '11:29:04pm', '18-06-2023', '2023-06-18 17:29:04', '2023-06-18 17:29:04'),
(158, '127.0.0.1', '11:31:14pm', '18-06-2023', '2023-06-18 17:31:14', '2023-06-18 17:31:14'),
(159, '127.0.0.1', '11:31:21pm', '18-06-2023', '2023-06-18 17:31:22', '2023-06-18 17:31:22');

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
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
