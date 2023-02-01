-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20230131.8d968c66c7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 09:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4login`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'user', 'User Site Administrator'),
(2, 'pegawai', 'Regular User Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-01-30 03:48:05', 1),
(2, '::1', 'copcop22', NULL, '2023-01-30 04:01:56', 0),
(3, '::1', 'copcop22', NULL, '2023-01-30 04:02:06', 0),
(4, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-01-30 04:02:18', 1),
(5, '::1', 'copcop22', NULL, '2023-01-30 04:19:40', 0),
(6, '::1', 'copcop22', NULL, '2023-01-30 04:27:31', 0),
(7, '::1', 'copcop22', NULL, '2023-02-01 10:12:32', 0),
(8, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 10:12:46', 1),
(9, '::1', 'fauri123@gmail.com', 4, '2023-02-01 10:37:11', 1),
(10, '::1', 'fauri123@gmail.com', 4, '2023-02-01 10:37:42', 1),
(11, '::1', 'fauri123@gmail.com', 4, '2023-02-01 10:39:48', 1),
(12, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 10:51:28', 1),
(13, '::1', 'fauri123@gmail.com', 4, '2023-02-01 10:51:56', 1),
(14, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 10:54:19', 1),
(15, '::1', 'fauri123@gmail.com', 4, '2023-02-01 10:55:08', 1),
(16, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:01:31', 1),
(17, '::1', 'fauri123@gmail.com', 4, '2023-02-01 11:03:10', 1),
(18, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:05:11', 1),
(19, '::1', 'fauri123@gmail.com', 4, '2023-02-01 11:09:11', 1),
(20, '::1', 'fauri123@gmail.com', 4, '2023-02-01 11:10:56', 1),
(21, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:24:44', 1),
(22, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:26:28', 1),
(23, '::1', 'fauri123@gmail.com', 4, '2023-02-01 11:26:38', 1),
(24, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:33:37', 1),
(25, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:37:57', 1),
(26, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:38:47', 1),
(27, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:40:15', 1),
(28, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:44:33', 1),
(29, '::1', 'fauri123@gmail.com', 4, '2023-02-01 11:45:09', 1),
(30, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:45:20', 1),
(31, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:48:02', 1),
(32, '::1', 'fauri123@gmail.com', 4, '2023-02-01 11:49:00', 1),
(33, '::1', 'fauri123@gmail.com', 4, '2023-02-01 11:49:16', 1),
(34, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:49:34', 1),
(35, '::1', 'fauri123@gmail.com', 4, '2023-02-01 11:51:51', 1),
(36, '::1', 'fauri123@gmail.com', 4, '2023-02-01 11:52:53', 1),
(37, '::1', 'fauri123@gmail.com', 4, '2023-02-01 11:55:14', 1),
(38, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:55:24', 1),
(39, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 11:55:55', 1),
(40, '::1', 'fauri123@gmail.com', 4, '2023-02-01 12:04:04', 1),
(41, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 12:06:59', 1),
(42, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 12:24:30', 1),
(43, '::1', 'fauri123@gmail.com', 4, '2023-02-01 14:28:55', 1),
(44, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 14:29:59', 1),
(45, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 15:57:03', 1),
(46, '::1', 'fauri123@gmail.com', 4, '2023-02-01 17:04:45', 1),
(47, '::1', 'chevy.warriorsmesmew@gmail.com', 3, '2023-02-01 18:05:06', 1),
(48, '::1', 'fauri123@gmail.com', 4, '2023-02-01 19:52:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-user', 'Manage All User'),
(2, 'manage-profile', 'Manage User\'s Profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1675043045, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'chevy.warriorsmesmew@gmail.com', 'copocop22', '', 'default.svg', '$2y$10$8V5oyfrtPXYzfFH/Inm47uNW08jRvWtSrwXhG0HRSF4S8WZXGCabW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-30 03:47:38', '2023-01-30 03:47:38', NULL),
(4, 'fauri123@gmail.com', 'fauri123', '', 'default.svg', '$2y$10$M5.xomxq0M10P0VEAFJT5.cEKkA/uSqz3zqtXlv4NhVEaMoqcLiNS', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-02-01 10:30:52', '2023-02-01 10:30:52', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
