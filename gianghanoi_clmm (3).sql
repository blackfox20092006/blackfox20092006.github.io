-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2023 at 05:26 PM
-- Server version: 5.7.40-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gianghanoi_clmm`
--

-- --------------------------------------------------------

--
-- Table structure for table `black_lists`
--

CREATE TABLE `black_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hardware` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MODELID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device`, `hardware`, `facture`, `MODELID`, `created_at`, `updated_at`) VALUES
(1, 'SM-G532F', 'mt6735', 'samsung', 'samsung sm-g532gmt6735r58j8671gsw', '2022-06-23 18:07:55', '2022-06-23 18:07:56'),
(3, 'SM-A102U', 'a10e', 'Samsung', 'Samsung SM-A102U', '2022-06-23 18:07:57', '2022-06-23 18:07:57'),
(4, 'SM-A305FN', 'a30', 'Samsung', 'Samsung SM-A305FN', '2022-06-23 18:07:58', '2022-06-23 18:07:59'),
(5, 'HTC One X9 dual sim', 'htc_e56ml_dtul', 'HTC', 'HTC One X9 dual sim', '2022-06-23 18:08:00', '2022-06-23 18:08:01'),
(6, 'HTC 7060', 'cp5dug', 'HTC', 'HTC HTC_7060', '2022-06-23 18:08:02', '2022-06-23 18:08:00'),
(7, 'HTC D10w', 'htc_a56dj_pro_dtwl', 'HTC', 'HTC htc_a56dj_pro_dtwl', '2022-06-23 18:08:04', '2022-06-23 18:08:03'),
(8, 'Oppo realme X Lite', 'RMX1851CN', 'Oppo', 'Oppo RMX1851', '2022-06-23 18:08:04', '2022-06-23 18:08:05'),
(9, 'MI 9', 'equuleus', 'Xiaomi', 'Xiaomi equuleus', '2022-06-23 18:08:06', '2022-06-23 18:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `gift_codes`
--

CREATE TABLE `gift_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_banks`
--

CREATE TABLE `history_banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_banks`
--

INSERT INTO `history_banks` (`id`, `status`, `phone`, `details`, `created_at`, `updated_at`) VALUES
(1, 0, '0356188702', '{\"status\":\"error\",\"author\":\"DUNGA\",\"code\":22,\"message\":\"T\\u00e0i kho\\u1ea3n nh\\u1eadn ph\\u1ea3i kh\\u00e1c t\\u00e0i kho\\u1ea3n g\\u1eedi\"}', '2022-12-15 13:11:39', '2022-12-15 13:11:39'),
(2, 1, '0356188702', '{\"status\":\"success\",\"message\":\"Th\\u00e0nh c\\u00f4ng\",\"author\":\"DUNGA\",\"code\":0,\"data\":{\"balance\":\"17902\",\"ID\":\"6ededdb9-a042-4b04-8edb-a94481ff6951\",\"tranId\":33348569502,\"partnerId\":\"01689714909\",\"partnerName\":\"TR\\u1ea6N VI\\u1ebeT HO\\u00c0NG DUY\",\"amount\":100,\"comment\":\"\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01656188702\",\"ownerName\":\"PHAN TH\\u1eca NH\\u01af QU\\u1ef2NH\",\"millisecond\":1671109929303}}', '2022-12-15 13:12:09', '2022-12-15 13:12:09'),
(3, 1, '0356188702', '{\"status\":\"success\",\"message\":\"Th\\u00e0nh c\\u00f4ng\",\"author\":\"DUNGA\",\"code\":0,\"data\":{\"balance\":\"5902\",\"ID\":\"872a5d09-2879-4cbd-8ee4-d2a21e185e28\",\"tranId\":33348570818,\"partnerId\":\"01689714909\",\"partnerName\":\"TR\\u1ea6N VI\\u1ebeT HO\\u00c0NG DUY\",\"amount\":12000,\"comment\":\"\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01656188702\",\"ownerName\":\"PHAN TH\\u1eca NH\\u01af QU\\u1ef2NH\",\"millisecond\":1671110126932}}', '2022-12-15 13:15:27', '2022-12-15 13:15:27'),
(4, 0, '0356188702', '{\"status\":\"error\",\"author\":\"DUNGA\",\"code\":1001,\"message\":\"T\\u00e0i kho\\u1ea3n kh\\u00f4ng \\u0111\\u1ee7 ti\\u1ec1n\"}', '2022-12-15 13:16:49', '2022-12-15 13:16:49'),
(5, 0, '0356188702', '{\"status\":\"error\",\"author\":\"DUNGA\",\"code\":1001,\"message\":\"T\\u00e0i kho\\u1ea3n kh\\u00f4ng \\u0111\\u1ee7 ti\\u1ec1n\"}', '2022-12-15 13:17:16', '2022-12-15 13:17:16'),
(6, 1, '0356188702', '{\"status\":\"success\",\"message\":\"Th\\u00e0nh c\\u00f4ng\",\"author\":\"DUNGA\",\"code\":0,\"data\":{\"balance\":\"14400\",\"ID\":\"b790afd0-828e-40a3-b9a0-3d72e0c051f9\",\"tranId\":33348641682,\"partnerId\":\"01689714909\",\"partnerName\":\"TR\\u1ea6N VI\\u1ebeT HO\\u00c0NG DUY\",\"amount\":11502,\"comment\":\"MSV - VSVN 33347696156\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01656188702\",\"ownerName\":\"PHAN TH\\u1eca NH\\u01af QU\\u1ef2NH\",\"millisecond\":1671110314006}}', '2022-12-15 13:18:34', '2022-12-15 13:18:34'),
(7, 1, '0356188702', '{\"status\":\"success\",\"message\":\"Th\\u00e0nh c\\u00f4ng\",\"author\":\"DUNGA\",\"code\":0,\"data\":{\"balance\":\"14900\",\"ID\":\"f15a8dc1-36c4-4baf-85e9-c027664efd1d\",\"tranId\":33348901657,\"partnerId\":\"01689714909\",\"partnerName\":\"TR\\u1ea6N VI\\u1ebeT HO\\u00c0NG DUY\",\"amount\":9502,\"comment\":\"MSV - VSVN 33348622626\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01656188702\",\"ownerName\":\"PHAN TH\\u1eca NH\\u01af QU\\u1ef2NH\",\"millisecond\":1671110567519}}', '2022-12-15 13:22:47', '2022-12-15 13:22:47'),
(8, 1, '0356188702', '{\"status\":\"success\",\"message\":\"Th\\u00e0nh c\\u00f4ng\",\"author\":\"DUNGA\",\"code\":0,\"data\":{\"balance\":\"10399\",\"ID\":\"6fe9c87a-df06-4dc8-a19c-a4b91e89f911\",\"tranId\":33348644266,\"partnerId\":\"01689714909\",\"partnerName\":\"TR\\u1ea6N VI\\u1ebeT HO\\u00c0NG DUY\",\"amount\":9502,\"comment\":\"MSV - VSVN 33348952103\",\"status\":999,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"ownerNumber\":\"01656188702\",\"ownerName\":\"PHAN TH\\u1eca NH\\u01af QU\\u1ef2NH\",\"millisecond\":1671110719074}}', '2022-12-15 13:25:19', '2022-12-15 13:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `history_day_missions`
--

CREATE TABLE `history_day_missions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `receive` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_gifts`
--

CREATE TABLE `history_gifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_hus`
--

CREATE TABLE `history_hus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tranId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_moneys`
--

CREATE TABLE `history_moneys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_plays`
--

CREATE TABLE `history_plays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tranId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partnerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partnerId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `receive` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `game` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneSend` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_plays`
--

INSERT INTO `history_plays` (`id`, `tranId`, `partnerName`, `partnerId`, `comment`, `amount`, `receive`, `status`, `pay`, `game`, `phoneSend`, `created_at`, `updated_at`) VALUES
(1, '33347487110', 'TRẦN VIẾT HOÀNG DUY', '01689714909', '', 8000, 0, 2, 1, 'DUNGA', '0356188702', '2022-12-15 13:07:29', '2022-12-15 13:07:29'),
(2, '33347696156', 'TRẦN VIẾT HOÀNG DUY', '01689714909', 'C', 5001, 11502, 1, 1, 'CL', '0356188702', '2022-12-15 13:09:25', '2022-12-15 13:18:30'),
(3, '33348940017', 'TRẦN VIẾT HOÀNG DUY', '01689714909', '', 20000, 0, 2, 1, 'DUNGA', '0356188702', '2022-12-15 13:19:48', '2022-12-15 13:19:48'),
(4, '33348910895', 'TRẦN VIẾT HOÀNG DUY', '01689714909', 'C2', 5001, 0, 0, 1, 'CL2', '0356188702', '2022-12-15 13:20:22', '2022-12-15 13:20:22'),
(5, '33348622626', 'TRẦN VIẾT HOÀNG DUY', '01689714909', 'C2', 5001, 9502, 1, 1, 'CL2', '0356188702', '2022-12-15 13:20:45', '2022-12-15 13:22:44'),
(6, '33348952103', 'TRẦN VIẾT HOÀNG DUY', '01689714909', 'L2', 5001, 9502, 1, 1, 'CL2', '0356188702', '2022-12-15 13:24:00', '2022-12-15 13:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `history_week_tops`
--

CREATE TABLE `history_week_tops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `phoneSend` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `gift` int(11) NOT NULL,
  `top` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_05_01_114309_create_contacts_table', 1),
(4, '2022_05_01_134738_create_momos_table', 1),
(5, '2022_05_02_012840_create_settings_table', 1),
(6, '2022_05_02_031023_create_history_plays_table', 1),
(8, '2022_05_09_134102_create_history_day_mission_table', 2),
(9, '2022_05_10_061858_create_history_day_missions_table', 3),
(11, '2022_05_15_101543_create_history_moneys_table', 5),
(12, '2022_05_21_183344_create_history_banks_table', 5),
(14, '2022_05_14_214634_create_history_week_tops_table', 6),
(15, '2022_06_06_114937_create_musters_table', 7),
(16, '2022_06_09_153537_create_history_hus_table', 8),
(18, '2022_06_11_105244_create_history_gifts_table', 8),
(19, '2022_06_11_120408_create_gift_codes_table', 9),
(20, '2022_06_23_130541_create_devices_table', 10),
(21, '2022_06_24_134417_create_black_lists_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `momos`
--

CREATE TABLE `momos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `min` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `time_login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `try` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `musters`
--

CREATE TABLE `musters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `turn` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `musters`
--

INSERT INTO `musters` (`id`, `phone`, `amount`, `status`, `pay`, `turn`, `created_at`, `updated_at`) VALUES
(1, '0566012337', '1234567', 1, 1, 1, '2022-12-08 03:03:03', '2022-12-22 03:03:03');

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `history` int(11) NOT NULL,
  `only_win` int(11) NOT NULL,
  `limit` int(11) NOT NULL,
  `day_mission` int(11) NOT NULL,
  `week_top` int(11) NOT NULL,
  `day_top` int(11) NOT NULL,
  `hu` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `refund` int(11) NOT NULL,
  `muster` int(11) NOT NULL,
  `giftcode` int(11) NOT NULL,
  `gift_week` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gift_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_week` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_muster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_refund` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_giftcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_hu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads` longtext COLLATE utf8mb4_unicode_ci,
  `ratioCL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioCL2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioTX` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioTX2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratio1P3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioG3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioH3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioXSMB` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioXien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioLO` int(11) DEFAULT NULL,
  `ratioHu` int(11) DEFAULT NULL,
  `amount_hu` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_muster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_muter` int(11) DEFAULT NULL,
  `muster_turn` int(11) DEFAULT NULL,
  `pay_muster` int(11) DEFAULT NULL,
  `limit_refund` int(11) DEFAULT NULL,
  `type_check` int(11) DEFAULT NULL,
  `total_muster` int(11) DEFAULT NULL,
  `contentCL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentCL2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentTX` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentTX2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content1P3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentG3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentH3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentLO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentXien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentXSMB` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `title`, `keywords`, `logo`, `description`, `favicon`, `background`, `active`, `history`, `only_win`, `limit`, `day_mission`, `week_top`, `day_top`, `hu`, `status`, `refund`, `muster`, `giftcode`, `gift_week`, `gift_day`, `level_day`, `note`, `content`, `content_day`, `content_week`, `content_muster`, `content_refund`, `content_giftcode`, `content_hu`, `ads`, `ratioCL`, `ratioCL2`, `ratioTX`, `ratioTX2`, `ratio1P3`, `ratioG3`, `ratioH3`, `ratioXSMB`, `ratioXien`, `ratioLO`, `ratioHu`, `amount_hu`, `color`, `top_phone`, `top_amount`, `amount_muster`, `theme`, `time_muter`, `muster_turn`, `pay_muster`, `limit_refund`, `type_check`, `total_muster`, `contentCL`, `contentCL2`, `contentTX`, `contentTX2`, `content1P3`, `contentG3`, `contentH3`, `contentLO`, `contentXien`, `contentXSMB`, `created_at`, `updated_at`) VALUES
(1, 'CVSERVER', 'Hệ Thống CLMM Minh Bạch - Xanh Chín Trả Thưởng 24/7', 'chẵn lẻ momo, clmm, clmm 1k, chanlemomo, clmm 5k, mẹo chơi clmm, clmm 24/7, sever clmm, web clmm 1k', 'https://i.imgur.com/elAR7K2.png', 'Hệ thống chơi chẵn lẻ momo an toàn, uy tín, nhanh gọn. Chơi chẵn lẻ trên app momo trả thưởng nhanh chóng chỉ trong 3s. Với nhiều phần thưởng top tuần, may mắn', 'https://upload.wikimedia.org/wikipedia/vi/f/fe/MoMo_Logo.png', 'https://yeucongngheso.vn/wp-content/uploads/2021/09/cach-tao-tai-khoan-momo.jpg', 1, 1, 1, 1000, 1, 1, 0, 1, 0, 1, 1, 1, '500000|400000|300000|150000|100000|50000', '20000|40000|60000|80000|100000', '1000000|5000000|12000000|29000000|45000000', '<h3 style=\"text-align: center;\"><span style=\"color: #ff0000;\"><strong>HẠN MỨC CHƠI CLMM (CHẴN LẺ MOMO) TỐI THIỂU L&Agrave; 6k TỐI ĐA L&Agrave; 3 TRIỆU&nbsp;</strong></span></h3>\r\n<p style=\"text-align: center;\">&nbsp; 1. Chẵn lẻ T&agrave;i xỉu số cuối m&atilde; giao dịch ra 0, 9 sẽ t&iacute;nh Thua, Nếu muốn c&oacute; 0 v&agrave; 9 vui l&ograve;ng chơi Chẵn lẻ 2.</p>\r\n<p style=\"text-align: center;\">&nbsp; &nbsp; 2. Mỗi số tr&ecirc;n web chỉ c&oacute; thể giao dịch tối đa <strong>40 triệu</strong> hoặc <strong>120 lần</strong> một ng&agrave;y. V&igrave; vậy số tr&ecirc;n hệ thống&nbsp;sẽ thay đổi li&ecirc;n tục n&ecirc;n&nbsp;trước khi chơi chẵn lẻ momo (CLMM) h&atilde;y l&ecirc;n web lấy số trước, Tr&aacute;nh trường hợp bị ho&agrave;n tiền.</p>\r\n<p style=\"text-align: center;\">&nbsp; &nbsp; 3.&nbsp;Nếu chuyển sai hạn mức,&nbsp;số ngừng hoạt động, h&atilde;y sử dụng chức năng&nbsp;<strong>KIỂM TRA M&Atilde; GIAO DỊCH</strong> để được&nbsp;nhận lại tiền chơi .</p>\r\n<p style=\"text-align: center;\">&nbsp; &nbsp; 4.&nbsp;Nếu bạn <span style=\"color: #ff0000;\"><strong>CẦN HỖ TRỢ, B&Aacute;O LỖI</strong></span>&nbsp;h&atilde;y chat với Nh&acirc;n vi&ecirc;n của Web tại <strong>G&oacute;c phải m&agrave;n h&igrave;nh</strong> (Trực 24/7, Chỉ hỗ trợ c&aacute;c giao dịch trong ng&agrave;y)</p>\r\n<p style=\"text-align: center;\">5. Tham gia&nbsp;<strong>Box chat Telegram&nbsp;</strong>&nbsp;để nhận <strong>M&Atilde; QU&Agrave; TẶNG</strong> từ Web.</p>\r\n<p style=\"text-align: center;\"><strong>Chẵn lẻ Momo . Clmm . Cltx . Chẵn lẻ Momo 5k</strong></p>', 'MSV - VSVN', 'MSV - VSVN', 'MSV - VSVN', 'MSV - VSVN', 'MSV - VSVN', 'MSV - VSVN', 'MSV - VSVN', 'Lưu ý : chú ý chuyển đúng nội dung và min max , nếu chuyển sai sẽ không hoàn tiền', '2.3', '1.9', '2.51', '1.97', '3|5', '3|4|5', '3|5|7|9', '1|4|7', '3', 3, 20, 225000, '#008bad', NULL, NULL, '100|100', 'v1', 600, 49, 1, 0, 1, 10, 'C|L', 'C2|L2', 'T|X', 'T2|X2', 'N0|N1|N2|N3', 'G3', 'H3', 'LO', 'CX|LT|CT|LX', 'XSMB', '2022-05-03 23:38:03', '2023-01-30 00:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `2fa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `2fa_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `2fa`, `2fa_secret`, `created_at`, `updated_at`) VALUES
(1, 'admin', '7yT8ZZPHVth4o', 'admin', '1', 'V66ESDH3U233SYRS', '2022-05-14 00:11:53', '2022-12-15 13:02:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `black_lists`
--
ALTER TABLE `black_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_codes`
--
ALTER TABLE `gift_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_banks`
--
ALTER TABLE `history_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_day_missions`
--
ALTER TABLE `history_day_missions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_gifts`
--
ALTER TABLE `history_gifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_hus`
--
ALTER TABLE `history_hus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_moneys`
--
ALTER TABLE `history_moneys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_plays`
--
ALTER TABLE `history_plays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `history_plays_tranid_unique` (`tranId`);

--
-- Indexes for table `history_week_tops`
--
ALTER TABLE `history_week_tops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `momos`
--
ALTER TABLE `momos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musters`
--
ALTER TABLE `musters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `black_lists`
--
ALTER TABLE `black_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gift_codes`
--
ALTER TABLE `gift_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_banks`
--
ALTER TABLE `history_banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `history_day_missions`
--
ALTER TABLE `history_day_missions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_gifts`
--
ALTER TABLE `history_gifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_hus`
--
ALTER TABLE `history_hus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_moneys`
--
ALTER TABLE `history_moneys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_plays`
--
ALTER TABLE `history_plays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `history_week_tops`
--
ALTER TABLE `history_week_tops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `momos`
--
ALTER TABLE `momos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `musters`
--
ALTER TABLE `musters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
