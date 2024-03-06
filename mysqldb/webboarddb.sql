-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 06:18 AM
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
-- Database: `webboarddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `name`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Dagmar Stroman', 'Prof. Benny Reinger II', 'Deserunt eos dolor quia incidunt. Eum expedita ex vitae optio id quod eaque. Voluptatem placeat quis consequatur hic eos. Maxime dolorem incidunt et ab repudiandae voluptatem.', '2024-03-04 09:16:15', '2024-03-04 09:16:15'),
(2, 'Bettie Howe', 'Prof. Ali Bernhard IV', 'Sit qui deleniti dolores qui quia laudantium quod. Laudantium rerum aut enim in. Voluptas porro rem aut. Et minima nulla dolorem odio velit cupiditate earum placeat.', '2024-03-04 09:16:15', '2024-03-04 09:16:15'),
(3, 'Lisandro Prohaska II', 'Gavin Ledner', 'Quod pariatur perferendis ut tenetur voluptates natus aut aut. Quia ipsam magnam nihil dolor iste facilis deleniti. Quis delectus totam aut harum voluptatum nemo.', '2024-03-04 09:16:15', '2024-03-04 09:16:15'),
(4, 'Zelma Hermiston', 'Graham Corkery', 'Deserunt sequi exercitationem ad in dolor culpa porro reprehenderit. Et non odit quo provident quo. Provident reiciendis accusantium vel qui perspiciatis.', '2024-03-04 09:16:15', '2024-03-04 09:16:15'),
(5, 'Prof. Rosemarie Reilly MD', 'Clifton Ankunding', 'Dolorum qui veritatis occaecati reiciendis odio incidunt ut. Enim repudiandae aperiam excepturi ad.', '2024-03-04 09:16:15', '2024-03-04 09:16:15'),
(6, 'Vesta Purdy', 'Dr. Lacy Torphy', 'A voluptatum ut enim eligendi pariatur animi ab. Eum dolorum repellendus dicta esse ipsa officiis. Incidunt occaecati et aliquam sint porro consequuntur quia.', '2024-03-04 09:16:15', '2024-03-04 09:16:15'),
(7, 'Ramiro Pfeffer', 'Karen Champlin', 'Magnam aut id culpa dicta rerum asperiores mollitia qui. Nam id dignissimos animi autem ipsam. Totam rerum et voluptatum minima.', '2024-03-04 09:16:15', '2024-03-04 09:16:15'),
(8, 'Isom Miller', 'Mr. Nicholas Luettgen', 'Harum expedita ut et qui architecto. Beatae quod et error expedita voluptatem. Ea molestiae similique saepe. Alias vitae ut aut et cumque enim.', '2024-03-04 09:16:15', '2024-03-04 09:16:15'),
(9, 'Mrs. Marjolaine Kihn IV', 'Bart Herman', 'Tenetur possimus nihil voluptas. Possimus ducimus deserunt iure aliquam assumenda est ducimus. Vel qui sunt consequuntur quia commodi velit. Ut corrupti ut non vel exercitationem.', '2024-03-04 09:16:15', '2024-03-04 09:16:15'),
(10, 'Mrs. Lavonne Huel', 'Eddie Marvin', 'Et sed asperiores modi et ea. Dignissimos in ut nihil exercitationem iusto esse quidem. Et qui suscipit quod fugiat exercitationem quis rerum. Ratione dolorem unde beatae dolores et quidem harum in.', '2024-03-04 09:16:15', '2024-03-04 09:16:15'),
(21, 'lewis', 'สวัสดีชาวโลก', 'teses', NULL, NULL),
(26, 'น้องน้ำ', 'มีเรื่องจะบอกพี่โชน', 'น้ำชอบพี่โชน', NULL, NULL);

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_04_123218_create_boards_table', 2),
(6, '2024_03_04_150407_create_boards_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
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
  `expires_at` timestamp NULL DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$2DqGptzj2.0qJZwi5LkdGu9kKs7ED9z.jDEwm3lSGE49qJBEq6ysG', NULL, '2024-03-04 08:18:23', '2024-03-04 08:18:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
