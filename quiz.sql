-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2023 at 11:11 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `ask`
--

CREATE TABLE `ask` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asks`
--

CREATE TABLE `asks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asks`
--

INSERT INTO `asks` (`id`, `question`, `answer`, `comment`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'hello evwry on my self vinay kalsariyahello evwry on my self vinay kalsariya', 'hello evwry on my self vinay kalsariyahello evwry on my self vinay kalsariya', 'hello evwry on my self vinay kalsariyahello evwry on my self vinay kalsariya', 'hello evwry on my self vinay kalsariya', '2023-01-23 05:27:18', '2023-01-23 05:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Answer the Question and get 10 points on 1 Question.', '2023-01-20 01:38:14', '2023-01-20 03:25:48');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_18_095427_create_admins_table', 1),
(6, '2023_01_20_052255_create_permissions_table', 2),
(7, '2023_01_20_052315_create_roles_table', 2),
(8, '2023_01_20_052329_create_role_user_table', 2),
(9, '2023_01_20_052351_create_permission_role_table', 2),
(10, '2023_01_20_052401_create_categories_table', 2),
(11, '2023_01_20_052412_create_questions_table', 2),
(12, '2023_01_20_052424_create_options_table', 2),
(13, '2023_01_20_052435_create_results_table', 2),
(14, '2023_01_20_052444_create_question_result_table', 2),
(15, '2023_01_23_070425_create_question_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_text` longtext NOT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`, `points`, `created_at`, `updated_at`) VALUES
(1, 1, '2 October 1869,', 10, '2023-01-20 01:40:58', '2023-01-20 01:40:58'),
(3, 1, '2 October 1870,', 0, '2023-01-20 01:41:47', '2023-01-20 01:41:47'),
(4, 1, '2 October 1859,', 0, '2023-01-20 01:42:04', '2023-01-20 01:42:04'),
(5, 1, '2 October 1859,', 0, '2023-01-20 01:42:16', '2023-01-20 01:42:16'),
(6, 2, 'Mi', 0, '2023-01-20 03:43:01', '2023-01-20 03:43:01'),
(7, 2, 'Oppo', 0, '2023-01-20 03:43:11', '2023-01-20 03:44:36'),
(8, 2, 'Apple', 10, '2023-01-20 03:43:30', '2023-01-20 03:44:43'),
(9, 2, 'Vivo', 0, '2023-01-20 03:43:39', '2023-01-20 03:44:48'),
(10, 3, 'Cristiano Ronaldo', 0, '2023-01-20 03:47:51', '2023-01-20 03:47:51'),
(11, 3, 'Akshay Kumar', 0, '2023-01-20 03:48:34', '2023-01-20 03:48:34'),
(12, 3, 'Elon Musk', 0, '2023-01-20 03:49:17', '2023-01-20 03:49:36'),
(13, 3, 'Virat Kohli', 10, '2023-01-20 03:49:43', '2023-01-20 03:49:43'),
(14, 4, 'Mukesh Ambani', 10, '2023-01-20 05:11:05', '2023-01-20 05:11:05'),
(15, 4, 'Anil Ambani', 0, '2023-01-20 05:11:50', '2023-01-20 05:11:50'),
(16, 4, 'Sundar Pichai', 0, '2023-01-20 05:12:15', '2023-01-20 05:12:15'),
(17, 4, 'Mark Zuckerberg', 0, '2023-01-20 05:12:50', '2023-01-20 05:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('Vinayvlk1234@gmail.com', '$2y$10$E3BK/402txeZVx2l5j.MiuFeWWsVs.sBczchWN1HegHrdZTqreBru', '2023-01-20 04:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `question_text` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `category_id`, `question_text`, `created_at`, `updated_at`) VALUES
(1, 1, 'mahatma gandhi born ??', '2023-01-20 01:38:41', '2023-01-20 01:39:59'),
(2, 1, 'iOS which company ?', '2023-01-20 03:42:34', '2023-01-20 03:42:34'),
(3, 1, 'Who is cricketer ?', '2023-01-20 03:47:17', '2023-01-20 03:47:17'),
(4, 1, 'Reliance company owner name ?', '2023-01-20 05:09:47', '2023-01-20 05:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `question_result`
--

CREATE TABLE `question_result` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `result_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_result`
--

INSERT INTO `question_result` (`id`, `result_id`, `question_id`, `option_id`, `points`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 10, NULL, NULL),
(2, 2, 1, 1, 10, NULL, NULL),
(3, 3, 1, 4, 0, NULL, NULL),
(4, 4, 1, 3, 0, NULL, NULL),
(5, 5, 1, 4, 0, NULL, NULL),
(6, 6, 1, 1, 10, NULL, NULL),
(7, 6, 2, 8, 10, NULL, NULL),
(8, 6, 3, 13, 10, NULL, NULL),
(9, 7, 1, 3, 0, NULL, NULL),
(10, 7, 2, 6, 0, NULL, NULL),
(11, 7, 3, 11, 0, NULL, NULL),
(12, 8, 1, 1, 10, NULL, NULL),
(13, 8, 2, 8, 10, NULL, NULL),
(14, 8, 3, 13, 10, NULL, NULL),
(15, 9, 1, 1, 10, NULL, NULL),
(16, 9, 2, 8, 10, NULL, NULL),
(17, 9, 3, 13, 10, NULL, NULL),
(18, 9, 4, 14, 10, NULL, NULL),
(19, 10, 1, 1, 10, NULL, NULL),
(20, 10, 2, 8, 10, NULL, NULL),
(21, 10, 3, 13, 10, NULL, NULL),
(22, 10, 4, 14, 10, NULL, NULL),
(23, 11, 1, 3, 0, NULL, NULL),
(24, 11, 2, 8, 10, NULL, NULL),
(25, 11, 3, 12, 0, NULL, NULL),
(26, 11, 4, 14, 10, NULL, NULL),
(27, 12, 1, 1, 10, NULL, NULL),
(28, 12, 2, 7, 0, NULL, NULL),
(29, 12, 3, 13, 10, NULL, NULL),
(30, 12, 4, 15, 0, NULL, NULL),
(31, 13, 1, 1, 10, NULL, NULL),
(32, 13, 2, 8, 10, NULL, NULL),
(33, 13, 3, 13, 10, NULL, NULL),
(34, 13, 4, 14, 10, NULL, NULL),
(35, 14, 1, 1, 10, NULL, NULL),
(36, 14, 2, 8, 10, NULL, NULL),
(37, 14, 3, 13, 10, NULL, NULL),
(38, 14, 4, 14, 10, NULL, NULL),
(39, 15, 1, 1, 10, NULL, NULL),
(40, 15, 2, 8, 10, NULL, NULL),
(41, 15, 3, 13, 10, NULL, NULL),
(42, 15, 4, 14, 10, NULL, NULL),
(43, 16, 1, 1, 10, NULL, NULL),
(44, 16, 2, 8, 10, NULL, NULL),
(45, 16, 3, 13, 10, NULL, NULL),
(46, 16, 4, 14, 10, NULL, NULL),
(47, 17, 1, 3, 0, NULL, NULL),
(48, 17, 2, 8, 10, NULL, NULL),
(49, 17, 3, 12, 0, NULL, NULL),
(50, 17, 4, 15, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `total_points`, `created_at`, `updated_at`) VALUES
(1, 4, 10, '2023-01-20 01:49:55', '2023-01-20 01:49:55'),
(2, 1, 10, '2023-01-20 01:51:04', '2023-01-20 01:51:04'),
(3, 1, 0, '2023-01-20 01:51:10', '2023-01-20 01:51:10'),
(4, 1, 0, '2023-01-20 03:26:30', '2023-01-20 03:26:30'),
(5, 5, 0, '2023-01-20 03:28:34', '2023-01-20 03:28:34'),
(6, 1, 30, '2023-01-20 03:50:15', '2023-01-20 03:50:15'),
(7, 1, 0, '2023-01-20 04:06:26', '2023-01-20 04:06:26'),
(8, 4, 30, '2023-01-20 05:04:53', '2023-01-20 05:04:53'),
(9, 1, 40, '2023-01-20 05:15:15', '2023-01-20 05:15:15'),
(10, 1, 40, '2023-01-20 05:20:08', '2023-01-20 05:20:08'),
(11, 1, 20, '2023-01-20 06:56:59', '2023-01-20 06:56:59'),
(12, 4, 20, '2023-01-22 23:58:45', '2023-01-22 23:58:45'),
(13, 4, 40, '2023-01-23 05:58:22', '2023-01-23 05:58:22'),
(14, 4, 40, '2023-01-23 06:02:55', '2023-01-23 06:02:55'),
(15, 4, 40, '2023-01-30 05:49:47', '2023-01-30 05:49:47'),
(16, 4, 40, '2023-01-30 07:58:47', '2023-01-30 07:58:47'),
(17, 4, 10, '2023-01-30 08:08:05', '2023-01-30 08:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(20) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$Gu/RTn3iFe0t2a1z3fEHw.XmD9DAsNQ/Q4RS6NtzjQR/5DnHiOVje', 'NhCMR4IDiA3JDtd9VKYFgzKLMGgkOxKKDIF3WloLr8kmvgedDhmNwINu1DZ5', '2023-01-18 04:57:39', '2023-01-18 04:57:39', 'admin'),
(4, 'Vinay Kalsariya', 'Vinayvlk1234@gmail.com', NULL, '$2y$10$j2gFPQRkIbRwnjH1r6Xne.lHMAa9fZ/VS0eXzXGCnRzo/SvpFNMTa', '2WhZdKjQvp58PnTsap9sGU02AOxIflYQmdl6xWKN8TcX5vC1FnfHx8dxF0S6', '2023-01-19 00:38:53', '2023-01-19 00:38:53', 'user'),
(5, 'hiren', 'hiren@gmail.com', NULL, '$2y$10$QYUn/9dQYxuT2EMROHvZmueeO5SMXMKuwxUTVZRwGGgO.Pt.NInby', 'UVZk6XaKRrsaxTl4ItOsP5RKnvNdQEb6z3vnulWJ6FgNOIvgj5aGPtrFkYG4', '2023-01-19 05:14:09', '2023-01-19 05:14:09', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ask`
--
ALTER TABLE `ask`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asks`
--
ALTER TABLE `asks`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_question_id_foreign` (`question_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_category_id_foreign` (`category_id`);

--
-- Indexes for table `question_result`
--
ALTER TABLE `question_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_result_result_id_foreign` (`result_id`),
  ADD KEY `question_result_question_id_foreign` (`question_id`),
  ADD KEY `question_result_option_id_foreign` (`option_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ask`
--
ALTER TABLE `ask`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asks`
--
ALTER TABLE `asks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `question_result`
--
ALTER TABLE `question_result`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `question_result`
--
ALTER TABLE `question_result`
  ADD CONSTRAINT `question_result_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_result_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_result_result_id_foreign` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
