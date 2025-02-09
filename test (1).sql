-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 08 Eki 2024, 03:45:30
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `test`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_authkey` varchar(255) NOT NULL,
  `admin_last_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bakiye_oda_log`
--

CREATE TABLE `bakiye_oda_log` (
  `id` int(11) NOT NULL,
  `giris_yaptigi_bakiye` int(11) DEFAULT '0',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `son_bakiye` int(11) NOT NULL DEFAULT '0',
  `ffa` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bakiye_talep`
--

CREATE TABLE `bakiye_talep` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tutar` varchar(255) NOT NULL DEFAULT '0',
  `onay` int(11) NOT NULL DEFAULT '0',
  `papara` varchar(50) NOT NULL DEFAULT '0',
  `tutar_yuzdeli` decimal(9,1) NOT NULL DEFAULT '0.0',
  `create_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `odenen_tarih` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bonus_gold_transfers`
--

CREATE TABLE `bonus_gold_transfers` (
  `id` int(11) NOT NULL,
  `sender_user_id` int(11) NOT NULL,
  `recipient_user_id` int(11) NOT NULL,
  `before_gold` int(11) NOT NULL,
  `after_gold` int(11) NOT NULL,
  `bonus_gold_amount` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` enum('pending','accepted','declined') NOT NULL DEFAULT 'pending',
  `date_sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `bonus_gold_transfers`
--

INSERT INTO `bonus_gold_transfers` (`id`, `sender_user_id`, `recipient_user_id`, `before_gold`, `after_gold`, `bonus_gold_amount`, `description`, `status`, `date_sent`) VALUES
(1, 104411233, 1012, 50000, 30000, 20000, 'bedava :d', 'accepted', '2024-10-06 17:41:20'),
(2, 104411233, 1012, 30000, 10000, 20000, 'bedava :d', 'declined', '2024-10-06 17:41:23'),
(3, 104411233, 104411235, 26000, 6000, 20000, '', 'accepted', '2024-10-06 17:44:49'),
(4, 104411242, 1007, 50000, 0, 50000, '', 'accepted', '2024-10-06 18:29:09'),
(5, 1013, 104411259, 95150500, 92150500, 3000000, 'sprict', 'accepted', '2024-10-06 18:43:39'),
(6, 1004, 1007, 95050000, 94050000, 1000000, 'FFA-1 TURNUVA WİN', 'accepted', '2024-10-06 18:53:46'),
(7, 1004, 1007, 94050000, 93050000, 1000000, 'FFA-1 TURNUVA WİN', 'declined', '2024-10-06 18:53:51'),
(8, 104411244, 1012, 145690, 45690, 100000, 'gold', 'accepted', '2024-10-06 18:56:49'),
(9, 104411244, 1004, 45690, 5690, 40000, 'aaaa', 'declined', '2024-10-06 19:11:40'),
(10, 104411242, 1007, 1050000, 50000, 1000000, '', 'accepted', '2024-10-06 19:13:50'),
(11, 1004, 1012, 94100000, 93100000, 1000000, 'TURNUVA WİN', 'accepted', '2024-10-06 19:16:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `clans`
--

CREATE TABLE `clans` (
  `id` int(11) NOT NULL,
  `clan_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clan_skin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clan_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `clan_admin1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clan_admin2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clan_admin3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `clans`
--

INSERT INTO `clans` (`id`, `clan_name`, `clan_skin`, `clan_description`, `clan_admin1`, `clan_admin2`, `clan_admin3`) VALUES
(100, 'tuna', NULL, NULL, NULL, NULL, NULL),
(101, '64', NULL, NULL, '1007', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `clan_requests`
--

CREATE TABLE `clan_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `clan_id` int(11) NOT NULL,
  `status` enum('pending','accepted','declined') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fa_time`
--

CREATE TABLE `fa_time` (
  `id` int(11) NOT NULL,
  `user_nick` varchar(255) NOT NULL,
  `server_name` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `fa_time`
--

INSERT INTO `fa_time` (`id`, `user_nick`, `server_name`) VALUES
(1, '4727', 'FFA-1'),
(2, '9281', 'FFA-2'),
(3, '1206', 'FFA-3'),
(4, '9619', 'FFA-4'),
(5, '6820', 'FFA-5'),
(6, '506', 'FFA-6'),
(7, '8444', 'FFA-7'),
(8, '5814', 'FFA-8'),
(9, '4618', 'FFA-9'),
(10, '571', 'FFA-10'),
(11, '1802', 'FFA-11'),
(12, '2712', 'FFA-12'),
(13, '4161', 'FFA-13'),
(14, '1297', 'FFA-14'),
(15, '136', 'FFA-15'),
(16, '499', 'FFA-16'),
(17, '1383', 'FFA-17'),
(18, '7005', 'FFA-18'),
(19, '418', 'FFA-19'),
(20, '8081', 'FFA-20'),
(21, '795', 'FFA-21'),
(22, '9670', 'FFA-22'),
(23, '350', 'FFA-23'),
(24, '1312', 'FFA-24'),
(25, '2931', 'FFA-25'),
(26, '5883', 'FFA-26'),
(27, '2584', 'FFA-27'),
(28, '2605', 'FFA-28'),
(29, '1696', 'FFA-29'),
(30, '1993', 'FFA-30'),
(31, '910', 'FFA-31'),
(32, '7833', 'FFA-32'),
(33, '', 'FFA-33'),
(34, '', 'FFA-34'),
(35, '', 'FFA-35');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ffa_time`
--

CREATE TABLE `ffa_time` (
  `id` int(11) NOT NULL,
  `ffa_timee` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `follow`
--

CREATE TABLE `follow` (
  `follow_id` int(11) NOT NULL,
  `follow_follower_id` varchar(255) NOT NULL,
  `follow_followed_id` varchar(255) NOT NULL,
  `follow_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gold_log`
--

CREATE TABLE `gold_log` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `before_gold` int(11) NOT NULL,
  `after_gold` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `inject`
--

CREATE TABLE `inject` (
  `inject_id` int(11) NOT NULL,
  `inject_ip` varchar(15) NOT NULL,
  `inject_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `keysx`
--

CREATE TABLE `keysx` (
  `id` int(11) NOT NULL,
  `keyy` varchar(15) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `create_date_key` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `key_active` int(11) NOT NULL DEFAULT '0',
  `key_user_id` int(11) NOT NULL,
  `usage_date` timestamp NULL DEFAULT NULL,
  `key_day` int(11) NOT NULL DEFAULT '7'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `klanlar`
--

CREATE TABLE `klanlar` (
  `ad` text NOT NULL,
  `skor` int(11) NOT NULL,
  `kullanicilar` text NOT NULL,
  `id` int(11) NOT NULL,
  `sahip` text NOT NULL,
  `clan_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `login_ip` varchar(15) NOT NULL,
  `login_user_email` varchar(255) NOT NULL,
  `login_result` int(11) NOT NULL,
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_sender_id` varchar(255) NOT NULL,
  `message_to_id` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `message_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message_status` int(11) NOT NULL DEFAULT '0',
  `message_delete_status` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `name`
--

CREATE TABLE `name` (
  `name_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `name`
--

INSERT INTO `name` (`name_id`, `user_id`, `name`, `order_id`) VALUES
(1, '1016', '10', 0),
(2, '1005', '-41', 1),
(3, '1013', 'wqe', 0),
(4, '1005', 'yusuf', 0),
(5, '1016', '47', 1),
(6, '1030', '-27', 0),
(7, '104411230', '66', 0),
(8, '104411230', '21', 1),
(10, '1030', '-34', 1),
(11, '1011', 'Yusuf', 0),
(13, '1002', '-16', 0),
(14, '1002', '-7', 1),
(15, '1042', '-35', 0),
(16, '1011', '+34', 1),
(17, '104411226', '63', 1),
(20, '1042', '+72', 1),
(21, '1036', '+27', 0),
(22, '1036', '27', 1),
(23, '1021', '-31', 0),
(24, '1034', '-1', 0),
(25, '1026', '06', 0),
(26, '1026', '6', 1),
(27, '1034', '-47', 1),
(28, '1041', '046', 0),
(29, '104411232', '-18', 0),
(30, '104411227', '7', 0),
(31, '104411232', '+47', 1),
(32, '1041', 'MARAŞLI', 1),
(34, '1048', '-17', 0),
(35, '1048', '-21', 1),
(36, '1022', '+36', 0),
(37, '1046', '-55', 0),
(38, '1046', '+55', 1),
(39, '1037', 'maraşlı', 0),
(40, '1037', '001', 1),
(41, '1009', '-29', 0),
(42, '1009', '+29', 1),
(43, '104411224', '-15', 0),
(44, '104411224', '-57', 1),
(45, '104411228', '-38', 0),
(46, '104411228', '+38', 1),
(47, '1033', '-59', 1),
(48, '1007', '-14', 0),
(49, '1045', '+35', 0),
(51, '1007', '-77', 1),
(52, '1033', 'Berk01', 0),
(53, '1045', '-8', 1),
(54, '104411233', '11', 1),
(55, '104411231', '-4', 0),
(56, '104411231', '-3', 1),
(57, '1012', 'Ege35', 0),
(58, '1012', 'erto38', 1),
(59, '1028', 'Walter White ', 0),
(60, '1028', 'Pablo escobar', 1),
(61, '104411234', '-2', 0),
(62, '104411234', '-5', 1),
(63, '104411235', '35', 1),
(64, '104411235', '9', 0),
(65, '104411236', '34', 0),
(66, '104411236', '72', 1),
(67, '1039', 'R', 0),
(68, '1039', 'E', 1),
(69, '1020', '-9', 0),
(71, '104411239', 'NP EMRAHBATMAN', 0),
(72, '104411238', '-73', 0),
(73, '104411239', '-6', 1),
(74, '104411238', '+73', 1),
(75, '104411240', '-44', 0),
(76, '104411240', '-66', 1),
(77, '104411241', '+7', 0),
(78, '104411241', '+66', 1),
(79, '1044', 'emre', 0),
(80, '1044', 'cherry', 1),
(81, '1044', '-0', 2),
(82, '1044', '0', 3),
(84, '104411243', '-11', 0),
(85, '104411242', '+14', 0),
(86, '104411243', '-13', 1),
(87, '104411236', '-10', 2),
(88, '104411236', '-12', 3),
(89, '1044', '99', 4),
(90, '104411236', '-22', 4),
(91, '1044', '88', 5),
(92, '104411233', '45', 2),
(93, '104411236', '-23', 5),
(94, '1044', '77', 6),
(95, '104411236', '-24', 6),
(96, '104411236', '-25', 7),
(97, '1044', '123', 7),
(98, '104411236', '-26', 8),
(99, '104411236', '-28', 9),
(100, '104411236', '-30', 10),
(102, '104411233', '034', 3),
(103, '104411236', '-32', 11),
(104, '1044', '-67', 8),
(105, '104411236', '-33', 12),
(106, '1044', '-68', 9),
(107, '1044', '-69', 10),
(108, '104411236', '-36', 13),
(109, '104411233', '34-', 4),
(110, '104411236', '-37', 14),
(111, '1044', '-111', 11),
(112, '104411233', '34+', 5),
(113, '104411236', '-39', 15),
(114, '104411236', '-40', 16),
(115, '1044', 'Emre', 12),
(116, '104411242', '-19', 1),
(117, '104411236', '-42', 17),
(118, '104411236', '-43', 18),
(119, '104411236', '-45', 19),
(120, '104411233', '18', 6),
(121, '104411236', '-46', 20),
(122, '104411233', '8', 7),
(123, '104411236', '-48', 21),
(124, '104411236', '-49', 22),
(125, '104411236', '-50', 23),
(126, '104411236', '-51', 24),
(127, '104411233', '+18', 8),
(128, '104411236', '-52', 25),
(129, '104411236', '-53', 26),
(130, '104411236', '-54', 27),
(131, '1012', '-56', 2),
(132, '1012', '56', 3),
(133, '104411236', '-58', 28),
(134, '1012', '+56', 4),
(135, '1036', '-20', 2),
(136, '104411236', '-60', 29),
(137, '104411236', '-61', 30),
(138, '104411236', '-62', 31),
(139, '104411236', '-63', 32),
(140, '104411236', '-64', 33),
(141, '104411236', '-65', 34),
(142, '1012', '65', 5),
(143, '1012', '+65', 6),
(144, '104411233', '17', 9),
(145, '1027', '+46', 0),
(146, '1033', '-78', 3),
(147, '104411236', '-70', 35),
(148, '104411236', '-71', 36),
(149, '1033', '-76', 5),
(150, '104411236', '-72', 37),
(151, '1033', '-75', 7),
(152, '104411236', '-74', 38),
(153, '104411236', '-80', 39),
(154, '104411236', '-81', 40),
(155, '104411236', '+10', 41),
(156, '104411236', '+11', 42),
(157, '104411236', '+12', 43),
(158, '104411236', '+13', 44),
(159, '1012', '44', 7),
(160, '104411236', '+15', 45),
(161, '1036', '-99', 3),
(162, '104411236', '+16', 46),
(163, '1036', '-98', 4),
(164, '1027', '+37', 1),
(165, '1036', '-97', 5),
(166, '104411236', '+17', 47),
(167, '1036', '-96', 6),
(168, '1026', 'Mèmur72', 2),
(169, '1036', '-95', 7),
(170, '1036', '-94', 8),
(171, '1036', '-93', 9),
(172, '104411236', '+19', 48),
(173, '1036', '-92', 10),
(174, '1036', '-91', 11),
(175, '104411236', '+20', 49),
(176, '1036', '-90', 12),
(177, '104411236', '+21', 50),
(178, '104411236', '+22', 51),
(179, '1036', '-89', 13),
(180, '104411236', '+23', 52),
(181, '104411236', '+24', 53),
(182, '1036', '-88', 14),
(183, '1033', '-79', 9),
(184, '104411236', '+25', 54),
(185, '1036', '-87', 15),
(186, '104411236', '+26', 55),
(187, '1036', '-86', 16),
(188, '1036', '-85', 17),
(189, '1036', '-84', 18),
(190, '1036', '-83', 19),
(191, '104411236', '+28', 56),
(192, '1036', '-82', 20),
(193, '1012', '38', 8),
(194, '104411236', '+30', 57),
(195, '104411236', '+31', 58),
(196, '104411236', '+32', 59),
(197, '104411236', '+33', 60),
(198, '1033', 'Bérk01', 11),
(199, '1026', '7272', 3),
(200, '104411236', '+39', 61),
(201, '104411236', '+40', 62),
(202, '1033', '+59', 2),
(203, '104411236', '+41', 63),
(204, '104411236', '+42', 64),
(205, '104411236', '+43', 65),
(206, '1033', '+78', 4),
(207, '104411236', '+44', 66),
(208, '1036', '+1', 21),
(209, '104411236', '+45', 67),
(210, '1033', '+77', 21),
(211, '1036', '+2', 22),
(212, '1033', '+76', 6),
(213, '1033', '+75', 8),
(214, '1036', '+3', 23),
(215, '1033', '+74', 20),
(216, '1036', '+4', 24),
(217, '1036', '+5', 25),
(218, '104411236', '+49', 68),
(219, '1036', '+6', 26),
(220, '1033', '+71', 19),
(221, '1036', '+8', 27),
(222, '104411236', '+50', 69),
(223, '1036', '+9', 28),
(224, '1033', '+79', 10),
(226, '104411236', '+51', 70),
(227, '104411236', '+52', 71),
(228, '104411236', '+53', 72),
(229, '104411236', '+54', 73),
(230, '1026', '72MEMUR72', 4),
(231, '104411236', '+57', 74),
(232, '1033', '+70', 18),
(233, '104411236', '+58', 75),
(234, '1033', '+69', 17),
(235, '1033', '+68', 16),
(236, '1033', '+67', 15),
(237, '104411236', '+60', 76),
(238, '1026', 'MEMUR', 5),
(239, '104411236', '+61', 77),
(240, '1033', '+64', 14),
(241, '1036', '+99', 30),
(242, '1033', '+63', 13),
(243, '104411236', '+62', 78),
(244, '1036', '+98', 31),
(245, '1036', '+97', 32),
(246, '1036', '+96', 33),
(247, '1036', '+95', 34),
(248, '1036', '+94', 35),
(249, '1036', '+93', 36),
(250, '1036', '+92', 37),
(251, '1036', '+91', 38),
(252, '1033', '+48', 12),
(253, '104411230', 'a', 2),
(254, '1036', '+90', 39),
(255, '1026', 'memur', 6),
(256, '1036', '+89', 40),
(258, '1036', '+88', 41),
(259, '104411230', 'b', 3),
(260, '1036', '+87', 42),
(261, '1036', '+86', 43),
(262, '1036', '+85', 44),
(263, '104411230', 'c', 4),
(264, '1036', '+84', 45),
(265, '104411230', 'd', 5),
(266, '1036', '+83', 46),
(267, '1036', '+82', 47),
(268, '1036', '+81', 48),
(269, '1012', 'Bilal56', 9),
(270, '104411230', 'f', 6),
(271, '1036', '+80', 49),
(272, '104411236', 'Waless', 79),
(273, '104411230', 'g', 7),
(274, '104411230', 'h', 8),
(276, '104411230', 'ğ', 9),
(277, '104411230', 'ş', 10),
(278, '104411230', 'm', 11),
(279, '104411230', 'ç', 12),
(280, '104411230', 'z', 13),
(281, '104411230', 'x', 14),
(282, '104411230', 'v', 15),
(283, '104411230', 'i', 16),
(284, '1036', '227', 50),
(285, '104411230', 'y', 17),
(286, '1036', '277', 51),
(287, '104411230', 'u', 18),
(288, '1036', '344', 52),
(289, '104411230', 'ı', 19),
(290, '1036', '335', 53),
(291, '104411230', 'o', 20),
(292, '1036', '334', 54),
(293, '104411230', '54', 21),
(294, '104411230', '12', 22),
(295, '104411230', '13', 23),
(296, '1036', '27$', 55),
(297, '104411230', '14', 24),
(298, '1036', '35$', 56),
(299, '104411230', '15', 25),
(300, '1036', '34$', 57),
(301, '1036', '21$', 58),
(302, '1036', '47$', 59),
(303, '1036', '27*', 60),
(305, '1036', '!', 61),
(306, '1033', '888', 22),
(307, '1036', '+', 62),
(308, '1036', '-', 63),
(309, '1036', '*', 64),
(310, '1036', '.', 65),
(311, '1036', '?', 66),
(312, '104411230', '89', 26),
(313, '1036', '^', 67),
(315, '1036', '&', 68),
(316, '1010', '23', 2),
(317, '1010', '24', 3),
(318, '1010', '5', 4),
(319, '1010', '25', 5),
(320, '1010', '26', 6),
(322, '1036', '722', 69),
(323, '1036', '772', 70),
(324, '1036', '221', 71),
(325, '1036', '345', 72),
(326, '1036', '777', 73),
(327, '1036', '666', 74),
(328, '1036', '333', 75),
(329, '1036', 'kerem7capone', 76),
(330, '1033', 'iş güç laf', 23),
(331, '1033', 'just watch me', 24),
(332, '104411250', '1', 0),
(333, '104411250', '2', 1),
(334, '1036', 'Furkan27', 77),
(335, '1036', 'Yenilmez', 78),
(336, '1036', 'Allah', 79),
(337, '104411247', '-01', 0),
(338, '1036', '-100', 80),
(339, '104411230', '++', 27),
(340, '1036', '+100', 81),
(341, '104411230', '--', 28),
(342, '1010', '52', 7),
(343, '1033', 'Berk', 25),
(344, '1036', '✩‏‏‏‏', 82),
(345, '1033', 'Bérk', 26),
(346, '1033', 'BERK', 27),
(347, '1033', '<3', 28),
(348, '104411230', '58', 29),
(350, '1010', '28', 8),
(351, '1036', 'fenerbahçe', 84),
(352, '1010', '29', 9),
(353, '1010', '30', 10),
(354, '1010', '31', 11),
(355, '1010', '32', 12),
(356, '1010', '42', 13),
(357, '1010', 'EPOLİS', 14),
(358, '1036', 'galatasaray', 85),
(359, '1036', 'POLAT ALEMDAR', 86),
(360, '1036', 'SÜLEYMANÇAKIR', 87),
(361, '1036', 'MEMATİ BAŞ', 88),
(362, '104411230', '57', 30),
(363, '104411230', '96', 31),
(364, '1036', 'KARAHANLI', 89),
(365, '104411230', '36', 32),
(366, '1036', 'PALA', 90),
(367, '104411230', '64', 33),
(368, '1036', 'ASLAN BEY', 91),
(369, '104411230', '67', 34),
(370, '104411230', '68', 35),
(372, '104411230', '69', 37),
(375, '1036', 'FATİH TERİM', 92),
(377, '104411230', '98', 38),
(378, '1036', 'Jax Teller', 94),
(379, '104411230', '16', 39),
(380, '104411230', '19', 40),
(381, '104411230', '20', 41),
(382, '104411230', '22', 42),
(383, '104411230', '85', 43),
(384, '104411230', '73', 44),
(385, '104411230', '74', 45),
(386, '104411230', '75', 46),
(387, '104411230', '76', 47),
(388, '104411230', '33', 48),
(389, '1045', 'TONY MONTANA', 2),
(390, '1045', '111', 3),
(391, '1045', '222', 4),
(392, '1045', '444', 5),
(393, '1045', '555', 6),
(394, '1045', '999', 7),
(395, '1010', 'M', 15),
(396, '1010', 'A', 16),
(397, '1045', '*27', 8),
(398, '1010', 'B', 17),
(399, '1010', 'C', 18),
(400, '1010', 'F', 19),
(401, '104411230', '37', 49),
(402, '1010', 'D', 20),
(403, '104411230', '39', 50),
(404, '104411230', '40', 51),
(405, '1010', 'G', 21),
(406, '104411230', '41', 52),
(407, '1010', 'GALATASARAY', 22),
(408, '104411230', '43', 53),
(409, '104411230', '46', 54),
(410, '1010', 'Galatasaray', 23),
(411, '104411230', '48', 55),
(412, '1010', 'GS', 24),
(413, '1010', 'gs', 25),
(414, '104411230', '49', 56),
(415, '104411230', '50', 57),
(416, '1010', 'Çanakkale', 26),
(417, '104411230', '51', 58),
(418, '104411230', '53', 59),
(419, '104411230', '55', 60),
(420, '1010', '78', 27),
(421, '1010', '7555', 28),
(422, '1010', '71', 29),
(423, '1010', '70', 30),
(424, '1010', '61', 31),
(425, '1010', '62', 32),
(426, '1010', 'as', 33),
(427, '1001', 'X', 0),
(428, '1014', '- MSX', 0),
(429, '1019', 'Admin1', 1),
(430, '1019', 'ADMİN1', 0),
(431, '1019', 'admin1', 2),
(432, '104411249', 'DESTAN', 0),
(433, '1012', '81', 10),
(436, '104411265', '‎56', 0),
(437, '104411265', '02', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `punish`
--

CREATE TABLE `punish` (
  `punish_id` int(11) NOT NULL,
  `punish_ip` varchar(15) NOT NULL,
  `punish_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `punish_finish_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `send_gold`
--

CREATE TABLE `send_gold` (
  `send_gold_id` int(11) NOT NULL,
  `send_gold_sender_id` varchar(255) NOT NULL,
  `send_gold_to_id` varchar(255) NOT NULL,
  `send_gold_amount` int(11) NOT NULL,
  `send_gold_description` varchar(255) NOT NULL,
  `send_gold_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `send_gold_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `site_setting`
--

CREATE TABLE `site_setting` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_title` varchar(255) NOT NULL,
  `site_description` text NOT NULL,
  `site_keywords` text NOT NULL,
  `site_url` varchar(255) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `site_online_bug` int(11) NOT NULL,
  `site_warning` text NOT NULL,
  `site_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `skin`
--

CREATE TABLE `skin` (
  `skin_id` int(1) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `skin_status` int(11) NOT NULL DEFAULT '0',
  `skin_name` varchar(255) NOT NULL DEFAULT 'Agarzw',
  `favorite` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `skin`
--

INSERT INTO `skin` (`skin_id`, `user_id`, `skin_status`, `skin_name`, `favorite`) VALUES
(1, '1044', 0, 'sprictxxx1', 0),
(2, '1033', 0, 'aberk01', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_authkey` varchar(255) NOT NULL,
  `user_gold` int(11) NOT NULL DEFAULT '1000',
  `user_last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_server` varchar(50) NOT NULL DEFAULT 'FFA-1',
  `user_last_play` timestamp NULL DEFAULT NULL,
  `user_profile_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_status` tinyint(1) NOT NULL DEFAULT '0',
  `user_win_count` int(11) NOT NULL DEFAULT '0',
  `user_ban_date` timestamp NULL DEFAULT NULL,
  `user_ban_finish_date` timestamp NULL DEFAULT NULL,
  `premium` timestamp NULL DEFAULT NULL,
  `yetki` text NOT NULL,
  `user_clan` int(11) NOT NULL,
  `bonus_gold` int(11) NOT NULL DEFAULT '1000',
  `user_ban` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(25) NOT NULL,
  `user_create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `oyundami` tinyint(1) NOT NULL DEFAULT '0',
  `odul_durum` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_password`, `user_authkey`, `user_gold`, `user_last_login`, `user_server`, `user_last_play`, `user_profile_status`, `user_status`, `user_win_count`, `user_ban_date`, `user_ban_finish_date`, `premium`, `yetki`, `user_clan`, `bonus_gold`, `user_ban`, `ip`, `user_create_date`, `oyundami`, `odul_durum`) VALUES
(1000, 'destan@tuna.com', 'd41d8cd98f00b204e9800998ecf8427e', '0', 27, '2024-10-06 16:46:18', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, 'Admin', 0, 1050000, 0, '0', '2024-10-06 16:46:18', 0, 0),
(1001, 'info@serefsiz.com', '202cb962ac59075b964b07152d234b70', 'ea80ab111861bc19fd71360927f68ad4fdd0906b3ccd', 999423123, '2024-10-06 17:13:08', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '194.5.236.151', '2024-10-06 17:13:07', 0, 0),
(1002, 'emrahturan041@gmail.com', 'c7333b4eb18f68295264cbb9475c0e5e', 'd1b49b0da399e23287d333e2c55b2eb727f8135b1645', 773, '2024-10-06 17:10:14', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '78.170.164.156', '2024-10-06 17:10:14', 0, 0),
(1003, 'kocaersami566@gmail.com', '547c5fc4bec9b06626efaeae878d7b67', '9c84bd5b0125fceeaaa81656e3301596649948d4e256', 1000, '2024-10-06 17:10:15', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '176.42.27.160', '2024-10-06 17:10:15', 0, 0),
(1004, 'ahmetozturk076@icloud.com', '3d5372304707552289f24c89f3256458', '46b2651f385c4f851da3649f97964248177618d2938c', 238539250, '2024-10-06 17:10:16', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, 'Admin', 0, 0, 0, '78.171.219.2', '2024-10-06 17:10:16', 0, 0),
(1005, 'ypatronxd@gmail.com', '7600f5fe2dfa4fb15230d15a41c1b80c', 'c6cb7127824fa4bf0bf6ce1f8819f3480e54c16b385b', 369, '2024-10-06 17:10:18', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '176.219.90.87', '2024-10-06 17:10:18', 0, 0),
(1006, 'pubghaci46@gmail.com', 'c75a362ae396961aac0404cf8ad98765', '0', 5, '2024-10-06 17:10:19', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '78.173.60.95', '2024-10-06 17:10:19', 0, 0),
(1007, 'omeralanya7127@gmail.com', 'd594c34d259c2041a9ffbeeed6155072', '9484050c390a99cbce8a5b428048022fa64057ef0011', 567, '2024-10-06 17:10:22', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 101, 3145570, 0, '188.3.192.22', '2024-10-06 17:10:22', 0, 0),
(1008, 'alpkod128@gmail.com', 'c170b38f663bb69d68490b6eb8ae4c8d', 'd2906924dd9ecaa4b947b323b2d8ba13d01b3b525e18', 8, '2024-10-06 17:10:25', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '88.237.124.153', '2024-10-06 17:10:25', 0, 0),
(1009, 'egeagarv@gmail.com', 'a4c84a6f83b8b7825c71e4fa1bc49542', '9c8db0af55784c9db1241f5717b5d59e2435276e5c82', 6, '2024-10-06 17:10:29', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '78.180.26.94', '2024-10-06 17:10:29', 0, 0),
(1010, 'empati17x@gmail.com', '3eeca168fce9d95d6a65a6daf4bae03a', '241b513e4ca31615cda215f1b8f95565f648ee94092d', 103, '2024-10-06 17:10:29', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 33000, 0, '31.155.23.33', '2024-10-06 17:10:29', 0, 0),
(1011, 'y34agarz@gmail.com', '5d8ec88dffd96fea5c8af7c3a6238cda', 'ff9de9afa0c13512a953561a029568012801d338be0d', 219, '2024-10-06 17:10:30', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '188.132.133.198', '2024-10-06 17:10:30', 0, 0),
(1012, 'bahrigoregen93@gmail.com', 'b9b1bf5e813e2e2be9ea84cd8a7b0af5', '0', 372851, '2024-10-06 17:10:31', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000000, 0, '78.180.49.209', '2024-10-06 17:10:31', 0, 0),
(1013, 'adminqwe@gmail.com', '97cec346b6e141b23c8d0d0e4bfc42f7', '59406b6ee81336203c1f9f9c11c712fe8f9a37c5f3b0', 6, '2024-10-06 17:10:32', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, 'Admin', 0, 92150500, 0, '149.86.143.18', '2024-10-06 17:10:32', 0, 0),
(1014, 'msx7333@gmail.com', '97e2ff01ab3ca48ad2f74d35bc88f262', 'd9a17038658d7587d19c7bf004ed5f07c51701fe7ecd', 48786, '2024-10-06 17:10:33', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '78.163.86.3', '2024-10-06 17:10:33', 0, 0),
(1015, '', 'd41d8cd98f00b204e9800998ecf8427e', '021fdc0a3c83d9f7cbb53bd6715c93be4eac42d42bef', 1320, '2024-10-06 17:10:34', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '176.235.75.196', '2024-10-06 17:10:34', 0, 0),
(1016, 'Rojhat472155@gmail.com', '3789d5c1f8bc687b96057e1a60991b3c', '519c0f5d991323551b7bb17c97ee4528bc9548fd95a8', 1046, '2024-10-06 17:10:35', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '176.219.99.27', '2024-10-06 17:10:35', 0, 0),
(1017, 'isiltilihayat9@gmail.com', '9761ede5d3c1a0706c25ed7993942c1e', '7659f6637c17b19a6ebc9cd339ad09ffd6f91b7a500b', 6, '2024-10-06 17:10:36', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '188.3.200.229', '2024-10-06 17:10:36', 0, 0),
(1018, 'mehmetculha412@gmail.com', 'c2a84743bf62dd5a0d70e843fd6fff4a', '0', 20, '2024-10-06 17:10:39', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '77.111.244.48', '2024-10-06 17:10:39', 0, 0),
(1019, 'karakarakara1292@gmail.com', '5445da7457e802fae113211e9870ace5', 'a94bed2a5a81b05e363e061f73112bcb4b16c16beeba', 89433390, '2024-10-06 17:10:42', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, 'Admin', 0, 498500, 0, '95.70.175.79', '2024-10-06 17:10:42', 0, 0),
(1020, 'ardaaltuner81@gmail.com', '9e3ab866dfbc4bfa1eb2c42a06bd5f31', '0', 1000, '2024-10-06 17:10:44', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '78.174.156.118', '2024-10-06 17:10:43', 0, 0),
(1021, 'firathebundogu7@gmail.com', 'b0687e00534a24b28cecff1d56d8cc71', '7de7bd3d5d1faf04a6c443377462cd70b3167e24d05d', 1161, '2024-10-06 17:10:44', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '88.247.2.205', '2024-10-06 17:10:44', 0, 0),
(1022, 'mkayradurmus@gmail.com', '05b4a5560ce32cccc89b75aaebaf9467', '0', 22, '2024-10-06 17:10:45', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '89.200.216.104', '2024-10-06 17:10:45', 0, 0),
(1023, 'yusufcanagarzzz@gmail.com', '808d3954c5d03c2abe9ae8393fa305d7', '', 1000, '2024-10-06 17:10:47', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '81.106.236.203', '2024-10-06 17:10:47', 0, 0),
(1024, 'furcansaymazlar@gmail.com', '770301ed2b9f2e2ffd78ee631b15a6a5', 'a8a596348c4a15f8c746f81945589b334b43e384b384', 759, '2024-10-06 17:10:51', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '178.241.5.202', '2024-10-06 17:10:51', 0, 0),
(1025, 'e.geagarv@gmail.com', 'a4c84a6f83b8b7825c71e4fa1bc49542', 'a567f08dad76b912292090df2f23e8c1b448b9bb2bbe', 2000, '2024-10-06 17:10:56', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '213.202.254.242', '2024-10-06 17:10:56', 0, 0),
(1026, 'veysel7117beber72@gmail.com', '4fadc0699ae04f946cd32a188b6de094', 'e5bfb95e6a4fe341b687e56a58157bf873de367aad85', 6, '2024-10-06 17:10:57', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '88.240.12.24', '2024-10-06 17:10:57', 0, 0),
(1027, 'agarjhesap@gmail.com', 'c75a362ae396961aac0404cf8ad98765', '0', 1000, '2024-10-06 17:10:57', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '2.58.194.138', '2024-10-06 17:10:57', 0, 0),
(1028, '32genel32@gmail.com', 'a7d71e2e882b839706bcca84a039afd4', '04cb55b5f8a0bff260d1938b32a439f5a62ebd748b48', 1000, '2024-10-06 17:10:58', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '31.155.254.154', '2024-10-06 17:10:58', 0, 0),
(1029, 'send27217@gmail.com', '69b73403e4c36108a0c3c93101066196', '38091ec61a7028f135fed0314d06e5405d83bdb88226', 1000, '2024-10-06 17:11:11', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '5.229.174.234', '2024-10-06 17:11:10', 0, 0),
(1030, 'emrahturan447@gmail.com', 'c7333b4eb18f68295264cbb9475c0e5e', '7d0010e6592fe9350c7364af05e3935580e1bfdf86e2', 21, '2024-10-06 17:11:12', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '92.38.148.60', '2024-10-06 17:11:12', 0, 0),
(1031, 'unstablee29@gmail.com', '83c6a92575208b4410f9d22b3e8bb0df', '4b9ed8864d7ba7b76f0c77d1bd0936c76b35367f1525', 1000, '2024-10-06 17:11:22', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '118.235.12.17', '2024-10-06 17:11:22', 0, 0),
(1032, 'emrahturan133@gmail.com', 'c7333b4eb18f68295264cbb9475c0e5e', '', 1000, '2024-10-06 17:11:26', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '46.165.250.81', '2024-10-06 17:11:26', 0, 0),
(1033, 'berk.01@hotmail.com', '18a9954f11a26d8502c200d17dedd485', '47d17e9101e155b9aab8254244304c0681d9fc39fafd', 100, '2024-10-06 17:11:30', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 186000, 0, '176.219.92.1', '2024-10-06 17:11:30', 0, 0),
(1034, 'ardafatih278@gmail.com', 'a4c84a6f83b8b7825c71e4fa1bc49542', '0', 1000, '2024-10-06 17:11:36', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '45.128.133.202', '2024-10-06 17:11:36', 0, 0),
(1035, 'sadslassdsal@gmail.com', '5c15cf116d69fbdc4f80f0dbe21d1bf6', '', 1000, '2024-10-06 17:11:43', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '159.146.64.127', '2024-10-06 17:11:43', 0, 0),
(1036, 'furkandagustu3@gmail.com', '770301ed2b9f2e2ffd78ee631b15a6a5', '7ce6c222e7b4c8bf76d1fe48c83c77ddf61bb61dfcd4', 685, '2024-10-06 17:11:53', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 2000, 0, '77.111.244.50', '2024-10-06 17:11:53', 0, 0),
(1037, 'dumanhaci46@outlook.com', 'c75a362ae396961aac0404cf8ad98765', '6287175b2005d96abddc64c5a7d623e1afcbe44006c5', 1000, '2024-10-06 17:11:53', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '78.159.101.116', '2024-10-06 17:11:53', 0, 0),
(1038, 'kamilo@gmail.com', '946ffe7fb906f6604c6889785952809e', '0', 1000, '2024-10-06 17:11:58', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '85.108.100.201', '2024-10-06 17:11:58', 0, 0),
(1039, 'rojhataksyy@gmail.com', 'b93619d28f2673951c5f13d320d01542', 'f7523ac0401795aee1daf3c6fe0ba70943cc60fec0e1', 1000, '2024-10-06 17:12:06', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '217.138.194.6', '2024-10-06 17:12:06', 0, 0),
(1040, 'alpozdemsr@gmail.com', 'd65ba4ae6c4e52ba7ab577650a28ff4f', '2f577334ea51586149272ea5e0368288104ec3cf9182', 630, '2024-10-06 17:12:19', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '46.2.129.225', '2024-10-06 17:12:19', 0, 0),
(1041, 'dcicinede46@gmail.com', 'c75a362ae396961aac0404cf8ad98765', '0', 274, '2024-10-06 17:12:31', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '92.38.148.53', '2024-10-06 17:12:31', 0, 0),
(1042, 'egef52982@gmail.com', 'a4c84a6f83b8b7825c71e4fa1bc49542', 'b56f62e7d4883c398637a6e6f21e6435634d4863e936', 1000, '2024-10-06 17:12:33', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '77.111.244.7', '2024-10-06 17:12:33', 0, 0),
(1043, 'mertozygt.12@gmail.com', 'a7d42558de4fa25ec6106ec3dc19ffd7', '9b4209172cc02cfe15bfd3229c0d1c65cd41b68d15b2', 21, '2024-10-06 17:12:57', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '178.233.29.33', '2024-10-06 17:12:57', 0, 0),
(1044, 'xkatilxlol@gmail.com', '1ce6f3ea9128588f8948127f7d9368b8', '0', 376408, '2024-10-06 17:10:05', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 10050000, 0, '88.245.16.180', '2024-10-06 17:10:05', 0, 0),
(1045, 'furkandagustu5@gmail.com', '770301ed2b9f2e2ffd78ee631b15a6a5', 'c99f9a66228dc5e9d48a57fd89a3d5504d4f8dc0e5fa', 135, '2024-10-06 17:13:09', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 46500, 0, '77.111.245.14', '2024-10-06 17:13:09', 0, 0),
(1046, 'e.gef52982@gmail.com', 'a4c84a6f83b8b7825c71e4fa1bc49542', '4abbc9e0befa8d6b01fc3c1623b87dfdd9a6ee5a7d21', 1000, '2024-10-06 17:13:17', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '146.70.81.130', '2024-10-06 17:13:17', 0, 0),
(1047, 'berataskin14@gmail.com', '633929800db261f91e1a367d58b98886', 'dbd93297d407134fd9b3f3ccc9ac8acbd22865d1f8cc', 1004, '2024-10-06 17:13:21', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '88.230.90.105', '2024-10-06 17:13:21', 0, 0),
(1048, 'turhanmustafa2222@gmail.com', 'db70cfca2be7c7ece337d30b4e0cbbdb', '4c19d5f9ff224cf18243bcd61d3ec9a4a172655fa149', 33, '2024-10-06 17:13:24', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '176.89.80.9', '2024-10-06 17:13:24', 0, 0),
(104411224, 'e.g.eagarv@gmail.com', 'a4c84a6f83b8b7825c71e4fa1bc49542', '88c236040eb1aab546893e4a2106d286055c0366cfba', 1000, '2024-10-06 17:13:58', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '91.219.236.190', '2024-10-06 17:13:58', 0, 0),
(104411225, 'harundelicen@gmail.com', '768e37646a3955ea43f9385e9f7d608d', 'd115600d0d264de382a9dfbe033e24e85291b0b0ed4a', 920, '2024-10-06 17:14:03', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '78.162.148.206', '2024-10-06 17:14:03', 0, 0),
(104411226, 'serilihesabx044@gmail.com', '517fdc350289ee99156681f3ef6bd273', 'd45122c0c7dee23a3b3820a46eb574809fe59cabbe1e', 1000, '2024-10-06 17:14:04', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '81.214.104.152', '2024-10-06 17:14:04', 0, 0),
(104411227, 'durdenwaless@gmail.com', '318909aa9dfe9bb6b999dd23745b862e', '434b98b7cd7cd0a73fe5e7a0cbecb1b2137e8431a2e2', 39, '2024-10-06 17:14:45', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '176.88.74.165', '2024-10-06 17:14:45', 0, 0),
(104411228, 'e.g.e.agarv@gmail.com', 'a4c84a6f83b8b7825c71e4fa1bc49542', 'f6344be410d5963528393eab10c078531561dcf1fd0a', 1000, '2024-10-06 17:14:51', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '197.140.142.102', '2024-10-06 17:14:51', 0, 0),
(104411229, 'yarenyavuzel@gmail.com', '808d3954c5d03c2abe9ae8393fa305d7', 'bd31de936d3b086291de32d637eeb5718551b86854d2', 1000, '2024-10-06 17:15:00', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '146.75.174.12', '2024-10-06 17:15:00', 0, 0),
(104411230, 'mehmetculha456@gmail.com', 'c2a84743bf62dd5a0d70e843fd6fff4a', '2d136466c89f057746086c1a0afa64645027ef3239ac', 163, '2024-10-06 17:15:20', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 20500, 0, '78.180.37.146', '2024-10-06 17:15:20', 0, 0),
(104411231, 'frkndgst@hotmail.com', '770301ed2b9f2e2ffd78ee631b15a6a5', 'dea86fba55ed4dc75f9f51593a3cc04bd0f24e3c8919', 1000, '2024-10-06 17:16:10', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '77.111.246.16', '2024-10-06 17:16:10', 0, 0),
(104411232, 'a.rdafatih278@gmail.com', 'a4c84a6f83b8b7825c71e4fa1bc49542', '6fc3c6017139a0e675535419a233623748e26310ae4c', 1000, '2024-10-06 17:17:52', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '77.111.246.18', '2024-10-06 17:17:52', 0, 0),
(104411233, 'ocakliismet71@gmail.com', '39776180f78e6358b9fc5e80421fb870', 'f3af8a6fc38258886e6120c485f9b3d3c3ebf490d300', 2579, '2024-10-06 17:25:15', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 50000, 0, '88.242.136.194', '2024-10-06 17:25:15', 0, 0),
(104411234, 'frkn_dagustu@hotmail.com', '770301ed2b9f2e2ffd78ee631b15a6a5', '0c9e6cd07a717fd8797dc4e47ff3d1668aae91c09c95', 1000, '2024-10-06 17:31:19', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '77.111.247.51', '2024-10-06 17:31:19', 0, 0),
(104411235, 'mehmetnuriocakli@gmail.com', '3cc6d2eca5f3c44e2215662a4b98850d', '69c84d9e91a6347553161ca6ba0344779f2662cf76ad', 8118, '2024-10-06 17:31:37', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '50.3.76.22', '2024-10-06 17:31:36', 0, 0),
(104411236, 'napayim59@gmail.com', '318909aa9dfe9bb6b999dd23745b862e', '8f45da90316bea3b639c25779a893de7208d7500ce6f', 30, '2024-10-06 17:32:20', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '149.140.93.157', '2024-10-06 17:32:20', 0, 0),
(104411237, 'xxx1@hotmail.com', '16cd8bb1ad54ae97689139de0e8e30dc', '62b0c6ba42188aec8605f8e530cca00a68af4c07392b', 4, '2024-10-06 17:34:32', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '176.219.97.65', '2024-10-06 17:34:32', 0, 0),
(104411238, 'a.r.d.afatih278@gmail.com', 'a4c84a6f83b8b7825c71e4fa1bc49542', '7f7c78e86eba86915f5d825028605646298250a5f955', 1000, '2024-10-06 17:36:05', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '77.111.246.19', '2024-10-06 17:36:05', 0, 0),
(104411239, 'emrahturan079@gmail.com', 'c7333b4eb18f68295264cbb9475c0e5e', '8b055c83acf0f735f6c85a7346d60e1179cc4e7c00bc', 1000, '2024-10-06 17:36:08', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '139.28.219.138', '2024-10-06 17:36:08', 0, 0),
(104411240, 'a.r.d.a.fatih278@gmail.com', 'a4c84a6f83b8b7825c71e4fa1bc49542', '5014d56567d73c1d0e040f71e723143257bab02cf8b5', 1000, '2024-10-06 17:37:38', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '77.111.245.13', '2024-10-06 17:37:38', 0, 0),
(104411241, 'e.g.e.a.garv@gmail.com', 'a4c84a6f83b8b7825c71e4fa1bc49542', '4638ccb82fe53c981cb5e12dd13d7611ed1bdd121005', 1000, '2024-10-06 17:39:35', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '95.128.71.84', '2024-10-06 17:39:35', 0, 0),
(104411242, 'omeralanya92@gmail.com', 'd594c34d259c2041a9ffbeeed6155072', 'b8b6f066990bc7ae170469de346a2622b8f50cfff643', 4902, '2024-10-06 17:41:11', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 50000, 0, '176.89.12.121', '2024-10-06 17:41:11', 0, 0),
(104411243, 'e.g.e.a.g.arv@gmail.com', 'a4c84a6f83b8b7825c71e4fa1bc49542', '20cdff3f6cf6284b21fa23409cf56000006aa43d797c', 1000, '2024-10-06 17:41:16', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '200.58.82.48', '2024-10-06 17:41:16', 0, 0),
(104411244, 'eminsumer58@gmail.com', 'a7e1a0e8f3e2bad4aae3c3be68f4b510', '65316b9f6f1d29bb96dd794a5563c2f37e0b9bae2fcc', 2232, '2024-10-06 17:41:22', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 45690, 0, '176.237.210.202', '2024-10-06 17:41:22', 0, 0),
(104411245, 'e.g.e.a.g.a.r.v@gmail.com', '$2y$10$bxkg5jw0SObT6CwaUNOPNeidQKHE9takqzMRbmRq7aUY3D3n0vvTC', '', 1000, '2024-10-06 17:42:14', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '139.99.148.18', '2024-10-06 17:42:14', 0, 0),
(104411246, 'emrahturan031@gmail.com', '$2y$10$Ik80/6clGUzldGWMeAWKm.4kkEuHvj1Sy0rR0xIBC0mwzZE5jR1fm', '', 1000, '2024-10-06 17:42:18', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '87.249.132.145', '2024-10-06 17:42:18', 0, 0),
(104411247, 'e.g.e.f.5.2.9.82@gmail.com', '$2y$10$Cerlr3CTx/zF0cASqYsIP.zhN15HdjVEBdQ7xVPdSR6d46l/kU6ie', '1a37d27a32b499ea123c72eee80458a3b7f5292078cd', 1000, '2024-10-06 17:43:10', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '173.209.43.206', '2024-10-06 17:43:10', 0, 0),
(104411248, 'rxwzhate1@gmail.com', '$2y$10$jrmtxsmCGOi5K0bWRvZIPOiyeyIC0OdCLKECAiSYMj41txvhKjRSa', '', 1000, '2024-10-06 17:45:07', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '185.183.105.106', '2024-10-06 17:45:07', 0, 0),
(104411249, '1@gmail.com', '$2y$10$PGa6gHDHhrGO6dQriHse2eByglPhb91O13Zz6U2SkljXbXiWWhUna', '0', 65, '2024-10-06 17:48:45', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 500, 0, '78.173.87.196', '2024-10-06 17:48:45', 0, 0),
(104411250, 'ardaaltuner301@gmail.com', '$2y$10$zV9Qj.iAUseGd911s4S3BOG8Vc9fJjxr/hkWx2tR6upMyaQQJe6zm', '8ade2b8b5acaf01925e80a2821531622b9aa34480d6e', 1000, '2024-10-06 17:48:49', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '185.236.201.74', '2024-10-06 17:48:49', 0, 0),
(104411251, 'hakanaltun1991@gmail.com', '$2y$10$fcX374hmD3GY4rVAdEfFNeNVfvfe8zkLCT.eLrNxxfKg0rr03kIZa', '', 1000, '2024-10-06 17:49:49', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '193.108.118.21', '2024-10-06 17:49:49', 0, 0),
(104411252, 'dumancemil46@gmail.com', '$2y$10$YiQC2OE179VJ2bk.gVryVeZsHlmI/Cl9JMG0NRQa0xc1gSPajdAmW', '', 1000, '2024-10-06 17:53:46', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '2.58.194.136', '2024-10-06 17:53:46', 0, 0),
(104411253, 'sdfb4141hz@hotmail.com', '$2y$10$8FEIgPl7gNAXiCyf3xaCJu0fwDRI59ojcKz/woKlGNWJlKdVtsEpu', '', 1000, '2024-10-06 17:58:33', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '212.253.170.3', '2024-10-06 17:58:33', 0, 0),
(104411254, 'twitkanki46@gmail.com', '$2y$10$75IYFROsB16ext4NbSLW5e/86Y/Bc3kIc.bnyLXbvXaB0hd0OcbMa', '', 1000, '2024-10-06 17:59:01', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '185.239.173.234', '2024-10-06 17:59:01', 0, 0),
(104411255, 'siktirgityaram@gmail.com', '$2y$10$J0pAB6sAuxKjgQA.qWR.que6H0wnfn34cDdeqgWpYjkIXOlYqCGcy', '6446342aef725886476a2508601ae06c43253628e253', 3443, '2024-10-06 18:13:59', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '78.180.49.209', '2024-10-06 18:13:58', 0, 0),
(104411256, 'karakarakara1291@gmail.com', '$2y$10$is6/LlnvW7CmxzfY0kdXd.cRCGvK/HfO4vMi0ErvSz7fPqRXnfLV2', '0c2fa103a564bd2c8cee09181b07494aefdae892b81d', 1000, '2024-10-06 18:15:55', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '95.70.175.79', '2024-10-06 18:15:55', 0, 0),
(104411257, 'zxcdsf777@hotmail.com', '$2y$10$1RN965GS7Y7hkIDe06c/M.uZ.WgDkcYqIIyTvm0B/j7ca4RMixAbW', '', 1000, '2024-10-06 18:16:34', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '77.111.244.51', '2024-10-06 18:16:34', 0, 0),
(104411258, 'jjnb@sesion.com', '$2y$10$2j9MKOqtuocYikTmFarcPeTl.R1gyCKrdqUo/axEHF/xYfPg4h0l.', '', 1000, '2024-10-06 18:29:39', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '81.214.104.152', '2024-10-06 18:29:39', 0, 0),
(104411259, 'xkatilxlol1@gmail.com', '$2y$10$Bf6vu0LlS86PA/5bdAfh6Osisgl7u0F/ZBt8R69BGY.ELwbh6Yso6', 'adb657492b651aa73f57145ff3e0f4253b5c7091c200', 1903017, '2024-10-06 18:41:01', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '88.245.16.180', '2024-10-06 18:41:01', 0, 0),
(104411260, 'jugador085agarz21@gmail.com', '$2y$10$QftUQz0Z5yFTO1I4cxZUwuAtRqMTzYjqBlASP4LWGUNVlIuXHGNE.', '41ad17700473dc264dd8f6eb534021d88d82072db89d', 1556, '2024-10-06 19:03:19', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '181.163.201.51', '2024-10-06 19:03:19', 0, 0),
(104411261, 'kayradurmus884@gmail.com', '$2y$10$h2kBLX7Zct4gBfAhErd.COmxjgITueLI16Lf8TWw4mJm9w8icxOtu', '7ee34960444632ff6494d7dea71c315684b206b52028', 10, '2024-10-06 19:10:44', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '89.200.216.104', '2024-10-06 19:10:44', 0, 0),
(104411262, 'ker21mesut@gmail.com', '$2y$10$kNtzxW3JuMTsOmbk58LSMOMQomV3GmbNw26RoMu0NJNreUEE8S1ey', '8c8112aa97e0ae845897f61e6309c982f452f7222e84', 1000, '2024-10-06 19:12:11', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '176.90.166.20', '2024-10-06 19:12:11', 0, 0),
(104411263, 'yarakadmin2@gmail.com', '$2y$10$XMJopscYwVRTTYxYe.wkWuf7RKhFKgrHJXi3KTKSjRddzG.8IdpsW', '1c9587163b6eb1d67e09703a65dafb4e627d74b42904', 1829, '2024-10-06 19:21:55', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 51000, 0, '78.180.49.209', '2024-10-06 19:21:55', 0, 0),
(104411264, 'mustafatokac2861@gmail.com', '$2y$10$HRa7TYTLCW4kca6KjVg8nOOcD9nt65rDDBFSp7GofxNQymdOBajyi', '17ba5299b9666c5f4232212aeb552117bf0d136fd39c', 847, '2024-10-06 19:22:38', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '85.97.50.80', '2024-10-06 19:22:38', 0, 0),
(104411265, 'brs.toy0156@gmail.com', '$2y$10$Xapx7clFcK68W9P/wz30u.DuS8UvsGjFYwNakxiG7yvOovZxK4Q.i', 'd120f9d7b2d284ff9eee541fe3a83e8c1e0c69cba11b', 588, '2024-10-06 19:24:57', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 0, 0, '85.153.233.234', '2024-10-06 19:24:57', 0, 0),
(104411266, 'ozturk.7636@hotmail.com', '$2y$10$hAbPpC4GIZtIbmp/IwZTH.CQSsYZaoNe0aAxNE/XFQ2LFcJ4EbBK6', '0', 1241, '2024-10-06 19:32:54', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '78.171.219.2', '2024-10-06 19:32:54', 0, 0),
(104411267, 'qwdqwdqwd@gmail.com', '$2y$10$w2aF5xbe5AnXb1fsG9BTW.dp9ZWd100rs1NrbHb3VZ/aJstGC095W', '0', 1000, '2024-10-07 17:12:02', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 1000, 0, '149.86.143.18', '2024-10-07 17:12:02', 0, 0),
(104411268, 'test@gmail.com', '$2y$10$hnrvVEAS.ZAnlpGbLLayFeVDy3Pj3ZP7BNp/yoRhF4zHlEucF5/Cu', 'd017a3d415ef3f358702e38e687bae49e88b9c80e8f1', 646, '2024-10-08 00:37:53', 'FFA-1', NULL, 1, 0, 0, NULL, NULL, NULL, '', 0, 51000, 0, '::1', '2024-10-08 00:37:53', 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `device_info` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `user_sessions`
--

INSERT INTO `user_sessions` (`id`, `user_id`, `session_id`, `device_info`, `created_at`) VALUES
(2, 1003, 'n5iqrrvcbna9e4tjufgi00r10h', NULL, '2024-10-06 17:12:38'),
(4, 1031, 'nh24ossrdiovka78jgg9vd51v2', NULL, '2024-10-06 17:12:39'),
(10, 1040, 'k9dhhr47u62r278hg26o8h8e67', NULL, '2024-10-06 17:12:41'),
(26, 1031, 'nh24ossrdiovka78jgg9vd51v2', NULL, '2024-10-06 17:12:56'),
(32, 1031, 'nh24ossrdiovka78jgg9vd51v2', NULL, '2024-10-06 17:13:03'),
(33, 1043, '2q1cn1egosag5t0fasalpfm6t5', NULL, '2024-10-06 17:13:04'),
(35, 1040, 'k9dhhr47u62r278hg26o8h8e67', NULL, '2024-10-06 17:13:07'),
(42, 1017, 'msqhi9m00tgmvtj57gppe8ltq9', NULL, '2024-10-06 17:13:13'),
(43, 1017, 'msqhi9m00tgmvtj57gppe8ltq9', NULL, '2024-10-06 17:13:16'),
(47, 1031, 'nh24ossrdiovka78jgg9vd51v2', NULL, '2024-10-06 17:13:26'),
(55, 1043, '2q1cn1egosag5t0fasalpfm6t5', NULL, '2024-10-06 17:13:32'),
(61, 1043, '2q1cn1egosag5t0fasalpfm6t5', NULL, '2024-10-06 17:13:53'),
(71, 104411225, '52vga46lo4kcsfutubpg4tntug', NULL, '2024-10-06 17:14:16'),
(84, 1031, 'nh24ossrdiovka78jgg9vd51v2', NULL, '2024-10-06 17:14:34'),
(85, 1043, '2q1cn1egosag5t0fasalpfm6t5', NULL, '2024-10-06 17:14:35'),
(144, 1017, 'msqhi9m00tgmvtj57gppe8ltq9', NULL, '2024-10-06 17:17:42'),
(163, 1017, 'msqhi9m00tgmvtj57gppe8ltq9', NULL, '2024-10-06 17:18:31'),
(170, 1017, 'msqhi9m00tgmvtj57gppe8ltq9', NULL, '2024-10-06 17:19:31'),
(172, 1040, 'k9dhhr47u62r278hg26o8h8e67', NULL, '2024-10-06 17:19:35'),
(175, 1029, '7r57u2fpnott9gkfmg5gh62gva', NULL, '2024-10-06 17:20:49'),
(177, 1029, '7r57u2fpnott9gkfmg5gh62gva', NULL, '2024-10-06 17:21:02'),
(182, 1010, 'lhm9a4gq6mc9mbkrrk3sv285tf', NULL, '2024-10-06 17:22:23'),
(184, 1018, 'pr3hkg6pju1v5uskg3kmcsqag0', NULL, '2024-10-06 17:22:32'),
(189, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 17:22:50'),
(191, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 17:22:54'),
(192, 104411230, 'p0sv8kdq7rfutigclp18cgtuhm', NULL, '2024-10-06 17:23:00'),
(197, 1024, 'qfcve73s1m34en7d2jigdqukpi', NULL, '2024-10-06 17:23:08'),
(198, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 17:23:16'),
(200, 1025, '5ipl73o0c4ti3fgomgeao4equf', NULL, '2024-10-06 17:23:28'),
(201, 104411226, '0maoqaja77b42ti7e6a3p0vhv4', NULL, '2024-10-06 17:23:33'),
(203, 1030, '6sc23a2cod0oag2ui8q5e0p1c9', NULL, '2024-10-06 17:23:49'),
(204, 1006, 'r32quv5ndfnh4eal42n91l8mhp', NULL, '2024-10-06 17:23:49'),
(207, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 17:24:30'),
(208, 1011, '74kn5tug51cidjmd4riianttua', NULL, '2024-10-06 17:24:43'),
(212, 1028, '6lfmp0lt401ujlo7ep0m23p4dv', NULL, '2024-10-06 17:24:57'),
(213, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 17:25:01'),
(214, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 17:25:02'),
(215, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 17:25:02'),
(216, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 17:25:02'),
(217, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 17:25:15'),
(218, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 17:25:17'),
(219, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 17:25:19'),
(221, 1047, 'rgibrsbdncuss6711cpvtepanl', NULL, '2024-10-06 17:25:25'),
(222, 1021, 'ukhk4er0naia9gqvicvvrsc528', NULL, '2024-10-06 17:25:27'),
(224, 104411233, 'onprtpdjpvjjhdgqpuu1pnt5vm', NULL, '2024-10-06 17:25:35'),
(225, 1026, 'ilv0mjngmvak51f39n3232j20b', NULL, '2024-10-06 17:25:37'),
(227, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 17:25:38'),
(228, 1024, 'qfcve73s1m34en7d2jigdqukpi', NULL, '2024-10-06 17:25:47'),
(229, 1010, 'lhm9a4gq6mc9mbkrrk3sv285tf', NULL, '2024-10-06 17:26:00'),
(232, 1010, 'lhm9a4gq6mc9mbkrrk3sv285tf', NULL, '2024-10-06 17:26:12'),
(237, 1048, '3skqd0elcoklomuqifrem73j25', NULL, '2024-10-06 17:26:33'),
(240, 1006, 'r32quv5ndfnh4eal42n91l8mhp', NULL, '2024-10-06 17:26:44'),
(241, 1006, 'r32quv5ndfnh4eal42n91l8mhp', NULL, '2024-10-06 17:26:45'),
(248, 1024, 'qfcve73s1m34en7d2jigdqukpi', NULL, '2024-10-06 17:28:00'),
(249, 1024, 'qfcve73s1m34en7d2jigdqukpi', NULL, '2024-10-06 17:28:08'),
(250, 1024, 'qfcve73s1m34en7d2jigdqukpi', NULL, '2024-10-06 17:28:18'),
(251, 1024, 'qfcve73s1m34en7d2jigdqukpi', NULL, '2024-10-06 17:28:19'),
(252, 1024, 'qfcve73s1m34en7d2jigdqukpi', NULL, '2024-10-06 17:28:21'),
(253, 104411228, '8g6khrm0rvdactm9hibvfttlll', NULL, '2024-10-06 17:28:28'),
(255, 104411227, 's862em13c9hvkkl5opvtcjq9ms', NULL, '2024-10-06 17:28:38'),
(261, 1025, '5ipl73o0c4ti3fgomgeao4equf', NULL, '2024-10-06 17:29:02'),
(262, 1025, '5ipl73o0c4ti3fgomgeao4equf', NULL, '2024-10-06 17:29:03'),
(264, 104411228, '8g6khrm0rvdactm9hibvfttlll', NULL, '2024-10-06 17:29:28'),
(267, 1011, '74kn5tug51cidjmd4riianttua', NULL, '2024-10-06 17:29:51'),
(270, 104411231, 'df8j2623fi1l4bjssfi4258ve3', NULL, '2024-10-06 17:30:07'),
(271, 104411232, 'atmf48p8huja9h46qj63ucs19c', NULL, '2024-10-06 17:30:14'),
(272, 1012, '4mqphjqeoaati2u2aufvq4266g', NULL, '2024-10-06 17:30:20'),
(274, 1006, 'r32quv5ndfnh4eal42n91l8mhp', NULL, '2024-10-06 17:30:30'),
(278, 1042, 'f5eq0vsp6ikf13l1kpse78590o', NULL, '2024-10-06 17:30:43'),
(281, 1006, 'r32quv5ndfnh4eal42n91l8mhp', NULL, '2024-10-06 17:30:50'),
(282, 1006, 'r32quv5ndfnh4eal42n91l8mhp', NULL, '2024-10-06 17:30:51'),
(283, 1046, 'u4qofu7tf3vufvt6sc6r1t83gv', NULL, '2024-10-06 17:31:01'),
(286, 104411224, '10sdqfkk0tuo0vek82g3uahf8k', NULL, '2024-10-06 17:31:25'),
(288, 104411234, '3nffu7mscqhqq0pfe1m4ms5ctc', NULL, '2024-10-06 17:31:31'),
(291, 104411235, 'aah62u1rs0kk42llkg6mj8tj3m', NULL, '2024-10-06 17:32:03'),
(292, 104411236, 'bh08oqcs5sq456g355ig6rfo74', NULL, '2024-10-06 17:32:25'),
(293, 1039, 'l6fvkk7jm3fgf3l29rooiqcfbe', NULL, '2024-10-06 17:32:46'),
(296, 1011, '74kn5tug51cidjmd4riianttua', NULL, '2024-10-06 17:33:11'),
(298, 1024, 'qfcve73s1m34en7d2jigdqukpi', NULL, '2024-10-06 17:33:32'),
(300, 1011, '74kn5tug51cidjmd4riianttua', NULL, '2024-10-06 17:33:58'),
(302, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 17:34:30'),
(303, 104411237, '99aoiq66cb2o5mkjv1lo8oek2s', NULL, '2024-10-06 17:34:41'),
(306, 104411237, '99aoiq66cb2o5mkjv1lo8oek2s', NULL, '2024-10-06 17:35:00'),
(307, 104411237, '99aoiq66cb2o5mkjv1lo8oek2s', NULL, '2024-10-06 17:35:03'),
(308, 104411237, '99aoiq66cb2o5mkjv1lo8oek2s', NULL, '2024-10-06 17:35:03'),
(311, 104411237, '99aoiq66cb2o5mkjv1lo8oek2s', NULL, '2024-10-06 17:35:26'),
(313, 1036, 'mamibfar8bp4c8b8ta5h4kiqof', NULL, '2024-10-06 17:35:59'),
(315, 104411239, 'i8gg0gbs1p06j9h5on4g0ldl05', NULL, '2024-10-06 17:36:10'),
(316, 104411238, '9l9cmqf8l8g7glutn3s4cl3ml1', NULL, '2024-10-06 17:36:17'),
(318, 1033, '7blkfkc0crl2dvilc30kkfk414', NULL, '2024-10-06 17:36:56'),
(319, 104411239, 'i8gg0gbs1p06j9h5on4g0ldl05', NULL, '2024-10-06 17:37:00'),
(320, 1016, 'ina688sdgntql3sn8s2c76e6sn', NULL, '2024-10-06 17:37:02'),
(322, 104411239, 'i8gg0gbs1p06j9h5on4g0ldl05', NULL, '2024-10-06 17:37:10'),
(326, 1030, '6sc23a2cod0oag2ui8q5e0p1c9', NULL, '2024-10-06 17:37:33'),
(327, 104411240, 'psn1a52t52bpcddg70giopi5ag', NULL, '2024-10-06 17:37:47'),
(328, 1045, '5krlrcfcg8ko3am7jh5j0u12mf', NULL, '2024-10-06 17:37:58'),
(329, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 17:38:14'),
(331, 104411237, '99aoiq66cb2o5mkjv1lo8oek2s', NULL, '2024-10-06 17:38:28'),
(335, 1011, '74kn5tug51cidjmd4riianttua', NULL, '2024-10-06 17:39:19'),
(336, 1038, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 17:39:22'),
(340, 104411241, '8lmcofa88b1ur0bnloaq314qpd', NULL, '2024-10-06 17:39:48'),
(341, 1038, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 17:40:01'),
(346, 1026, 'ilv0mjngmvak51f39n3232j20b', NULL, '2024-10-06 17:40:20'),
(347, 1038, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 17:40:35'),
(352, 1006, 'r32quv5ndfnh4eal42n91l8mhp', NULL, '2024-10-06 17:41:07'),
(353, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 17:41:15'),
(355, 104411243, 'n8kmfl380dggk4muktpmejp87d', NULL, '2024-10-06 17:41:21'),
(356, 1038, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 17:41:21'),
(359, 104411244, 't43ikehffkr75re38qa0ajkq0q', NULL, '2024-10-06 17:41:30'),
(360, 1038, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 17:41:32'),
(361, 1038, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 17:41:49'),
(363, 1038, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 17:42:41'),
(367, 1022, 'rrvq05fd1an1il9en2l7iigfud', NULL, '2024-10-06 17:42:55'),
(369, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 17:43:09'),
(374, 1018, 'pr3hkg6pju1v5uskg3kmcsqag0', NULL, '2024-10-06 17:43:36'),
(375, 1018, 'pr3hkg6pju1v5uskg3kmcsqag0', NULL, '2024-10-06 17:43:40'),
(380, 104411237, '99aoiq66cb2o5mkjv1lo8oek2s', NULL, '2024-10-06 17:44:36'),
(381, 104411237, '99aoiq66cb2o5mkjv1lo8oek2s', NULL, '2024-10-06 17:44:50'),
(383, 104411244, 't43ikehffkr75re38qa0ajkq0q', NULL, '2024-10-06 17:45:34'),
(387, 1016, 'ina688sdgntql3sn8s2c76e6sn', NULL, '2024-10-06 17:46:00'),
(388, 104411247, '855gieaf000eaead90iticcj2b', NULL, '2024-10-06 17:46:07'),
(390, 104411233, 'onprtpdjpvjjhdgqpuu1pnt5vm', NULL, '2024-10-06 17:46:23'),
(392, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 17:46:44'),
(399, 104411250, 'dialfsr1480kv2esbplmm8hhts', NULL, '2024-10-06 17:49:13'),
(400, 1006, 'r32quv5ndfnh4eal42n91l8mhp', NULL, '2024-10-06 17:49:24'),
(402, 1000, 'j97l3nfqeecovoq7eskhm2gsq9', NULL, '2024-10-06 17:49:38'),
(404, 1000, 'j97l3nfqeecovoq7eskhm2gsq9', NULL, '2024-10-06 17:49:39'),
(408, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 17:49:57'),
(409, 1041, 'pc0o2tnl15ligobibfncnaojt5', NULL, '2024-10-06 17:50:47'),
(410, 1037, '1gdssrmpjec72br5uvejkf8mrk', NULL, '2024-10-06 17:51:13'),
(411, 1018, 'pr3hkg6pju1v5uskg3kmcsqag0', NULL, '2024-10-06 17:51:19'),
(414, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 17:51:28'),
(415, 1008, '7bdscbskbnfd8b377kh333opr8', NULL, '2024-10-06 17:51:31'),
(416, 104411230, 'p0sv8kdq7rfutigclp18cgtuhm', NULL, '2024-10-06 17:51:36'),
(418, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 17:52:12'),
(419, 1033, '7blkfkc0crl2dvilc30kkfk414', NULL, '2024-10-06 17:52:17'),
(421, 1009, 'b1m19ru5o8md2uf5v4n58qniai', NULL, '2024-10-06 17:53:40'),
(422, 1004, 'dp9kpctaim3nc1pprgs4sqeneh', NULL, '2024-10-06 17:53:49'),
(423, 1004, 'dp9kpctaim3nc1pprgs4sqeneh', NULL, '2024-10-06 17:54:08'),
(425, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 17:55:24'),
(426, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 17:55:33'),
(427, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 17:55:39'),
(428, 1004, 'dp9kpctaim3nc1pprgs4sqeneh', NULL, '2024-10-06 17:55:52'),
(429, 1027, 'r32quv5ndfnh4eal42n91l8mhp', NULL, '2024-10-06 17:56:15'),
(430, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 17:56:15'),
(431, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 17:56:21'),
(432, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 17:56:23'),
(433, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 17:56:42'),
(435, 1026, 'ilv0mjngmvak51f39n3232j20b', NULL, '2024-10-06 17:57:27'),
(436, 104411229, 'e29la4or5h20vagd2ctccpp5od', NULL, '2024-10-06 17:57:34'),
(437, 104411229, 'e29la4or5h20vagd2ctccpp5od', NULL, '2024-10-06 17:57:39'),
(439, 104411233, 'onprtpdjpvjjhdgqpuu1pnt5vm', NULL, '2024-10-06 17:59:02'),
(440, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 18:03:39'),
(441, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 18:03:46'),
(442, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:04:00'),
(443, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:04:14'),
(444, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:04:41'),
(445, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:05:37'),
(448, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:07:34'),
(449, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:07:34'),
(450, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:07:51'),
(451, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:08:30'),
(452, 1022, 'rrvq05fd1an1il9en2l7iigfud', NULL, '2024-10-06 18:08:47'),
(453, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:08:57'),
(454, 1004, 'dp9kpctaim3nc1pprgs4sqeneh', NULL, '2024-10-06 18:09:12'),
(455, 1004, 'dp9kpctaim3nc1pprgs4sqeneh', NULL, '2024-10-06 18:09:18'),
(458, 1007, '1qckhsph9dnp0ibmcuk99mdnf6', NULL, '2024-10-06 18:09:42'),
(459, 104411242, 'ho05ubhdnb19f3jm34jlj848bd', NULL, '2024-10-06 18:09:45'),
(460, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 18:10:47'),
(461, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 18:11:07'),
(462, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:11:22'),
(463, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 18:11:24'),
(464, 1004, 'dp9kpctaim3nc1pprgs4sqeneh', NULL, '2024-10-06 18:11:26'),
(465, 1001, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 18:11:55'),
(466, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:11:57'),
(467, 1010, 'lhm9a4gq6mc9mbkrrk3sv285tf', NULL, '2024-10-06 18:12:35'),
(468, 1000, 'j97l3nfqeecovoq7eskhm2gsq9', NULL, '2024-10-06 18:12:39'),
(469, 1001, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 18:13:15'),
(471, 1001, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 18:13:19'),
(472, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:14:39'),
(473, 1004, 'dp9kpctaim3nc1pprgs4sqeneh', NULL, '2024-10-06 18:14:48'),
(474, 1034, '47aa3c1s79emgjdq05e44gn5ol', NULL, '2024-10-06 18:17:04'),
(475, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 18:17:35'),
(476, 1001, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 18:17:43'),
(477, 104411233, 'onprtpdjpvjjhdgqpuu1pnt5vm', NULL, '2024-10-06 18:17:51'),
(478, 1001, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 18:18:43'),
(479, 1002, '85blg2m84e87he2qfpgisaaro8', NULL, '2024-10-06 18:19:18'),
(480, 1005, '1rpit3ga3oudes7ma2eg4nfesm', NULL, '2024-10-06 18:19:25'),
(481, 1001, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 18:20:10'),
(482, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:21:21'),
(483, 1001, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 18:21:29'),
(485, 1001, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 18:23:00'),
(487, 1012, '4mqphjqeoaati2u2aufvq4266g', NULL, '2024-10-06 18:23:15'),
(488, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 18:23:29'),
(489, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 18:23:39'),
(490, 1020, 'g2lc4l7f75r2oo95hqme60cuv8', NULL, '2024-10-06 18:23:52'),
(491, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 18:24:12'),
(492, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:25:37'),
(493, 1034, '47aa3c1s79emgjdq05e44gn5ol', NULL, '2024-10-06 18:25:37'),
(495, 1012, '4mqphjqeoaati2u2aufvq4266g', NULL, '2024-10-06 18:26:04'),
(496, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 18:26:05'),
(497, 1012, '4mqphjqeoaati2u2aufvq4266g', NULL, '2024-10-06 18:26:24'),
(498, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:26:34'),
(499, 1011, '74kn5tug51cidjmd4riianttua', NULL, '2024-10-06 18:26:43'),
(500, 1001, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 18:27:05'),
(501, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 18:27:33'),
(503, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:28:34'),
(504, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:28:42'),
(505, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:29:00'),
(506, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:29:27'),
(507, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:29:33'),
(511, 1015, '76flp0e5ftaraei2dm7ql3l4kb', NULL, '2024-10-06 18:30:07'),
(512, 1044, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:30:57'),
(513, 1001, 'a70pr566fql9ec3ohtrl0guca3', NULL, '2024-10-06 18:31:00'),
(514, 1022, 'rrvq05fd1an1il9en2l7iigfud', NULL, '2024-10-06 18:31:40'),
(515, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 18:32:01'),
(516, 1012, '4mqphjqeoaati2u2aufvq4266g', NULL, '2024-10-06 18:36:25'),
(517, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:36:28'),
(518, 1012, '4mqphjqeoaati2u2aufvq4266g', NULL, '2024-10-06 18:38:40'),
(519, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:38:41'),
(520, 1004, 'dp9kpctaim3nc1pprgs4sqeneh', NULL, '2024-10-06 18:40:28'),
(523, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 18:40:46'),
(528, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:43:36'),
(529, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:44:05'),
(530, 104411255, 'hej1ic0tocua5jo6sb9n78jvjq', NULL, '2024-10-06 18:44:16'),
(534, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:45:12'),
(535, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:45:15'),
(536, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:45:16'),
(537, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:45:16'),
(538, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 18:45:25'),
(539, 104411255, 'hej1ic0tocua5jo6sb9n78jvjq', NULL, '2024-10-06 18:45:26'),
(540, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 18:45:40'),
(542, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:45:45'),
(543, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:47:20'),
(544, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:47:24'),
(545, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 18:49:13'),
(546, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:49:21'),
(548, 1004, 'dp9kpctaim3nc1pprgs4sqeneh', NULL, '2024-10-06 18:49:41'),
(549, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:49:41'),
(550, 104411244, 't43ikehffkr75re38qa0ajkq0q', NULL, '2024-10-06 18:49:41'),
(551, 1007, '1qckhsph9dnp0ibmcuk99mdnf6', NULL, '2024-10-06 18:49:41'),
(552, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 18:49:42'),
(553, 104411255, 'hej1ic0tocua5jo6sb9n78jvjq', NULL, '2024-10-06 18:49:42'),
(554, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:49:43'),
(555, 1012, '4mqphjqeoaati2u2aufvq4266g', NULL, '2024-10-06 18:49:48'),
(556, 104411242, 'ho05ubhdnb19f3jm34jlj848bd', NULL, '2024-10-06 18:49:49'),
(557, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 18:49:51'),
(558, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:50:11'),
(559, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 18:50:11'),
(560, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:51:24'),
(562, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:56:51'),
(567, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:56:59'),
(568, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:56:59'),
(569, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 18:56:59'),
(570, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:58:17'),
(571, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:58:22'),
(572, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:58:22'),
(573, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:58:22'),
(574, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:58:41'),
(575, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:58:43'),
(576, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:58:43'),
(577, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:58:47'),
(578, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:58:49'),
(579, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:58:49'),
(580, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:58:50'),
(581, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 18:58:59'),
(582, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:59:09'),
(583, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:59:10'),
(584, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:59:10'),
(585, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:59:10'),
(586, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:59:34'),
(587, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:59:36'),
(588, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:59:36'),
(589, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 18:59:36'),
(590, 104411244, 't43ikehffkr75re38qa0ajkq0q', NULL, '2024-10-06 18:59:59'),
(591, 104411244, 't43ikehffkr75re38qa0ajkq0q', NULL, '2024-10-06 19:02:20'),
(592, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:02:30'),
(593, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:02:32'),
(594, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:02:38'),
(595, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:02:38'),
(596, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:02:39'),
(597, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 19:02:54'),
(598, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 19:03:17'),
(599, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 19:03:17'),
(600, 104411260, 'v3ane1pped47r28vlquj1ub4c7', NULL, '2024-10-06 19:03:57'),
(601, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 19:04:09'),
(602, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 19:04:10'),
(603, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 19:04:27'),
(604, 1022, 'rrvq05fd1an1il9en2l7iigfud', NULL, '2024-10-06 19:09:42'),
(605, 104411261, 'rrvq05fd1an1il9en2l7iigfud', NULL, '2024-10-06 19:10:47'),
(606, 104411262, 'mu38l2n51e9l4s3hmbt3n5kts0', NULL, '2024-10-06 19:12:25'),
(607, 104411261, 'rrvq05fd1an1il9en2l7iigfud', NULL, '2024-10-06 19:12:51'),
(608, 104411261, 'rrvq05fd1an1il9en2l7iigfud', NULL, '2024-10-06 19:12:51'),
(609, 104411261, 'rrvq05fd1an1il9en2l7iigfud', NULL, '2024-10-06 19:12:51'),
(610, 104411262, 'mu38l2n51e9l4s3hmbt3n5kts0', NULL, '2024-10-06 19:13:12'),
(611, 104411262, 'mu38l2n51e9l4s3hmbt3n5kts0', NULL, '2024-10-06 19:13:12'),
(612, 104411262, 'mu38l2n51e9l4s3hmbt3n5kts0', NULL, '2024-10-06 19:13:12'),
(613, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 19:14:35'),
(614, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 19:14:39'),
(615, 1014, 'ilir681b3to3kemi6ag0cc7voi', NULL, '2024-10-06 19:14:39'),
(616, 104411244, 't43ikehffkr75re38qa0ajkq0q', NULL, '2024-10-06 19:14:57'),
(617, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 19:16:07'),
(618, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 19:16:25'),
(619, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 19:16:30'),
(620, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 19:16:30'),
(621, 104411255, 'hej1ic0tocua5jo6sb9n78jvjq', NULL, '2024-10-06 19:20:50'),
(622, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 19:21:13'),
(623, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 19:21:17'),
(624, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 19:21:17'),
(625, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:21:32'),
(626, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:21:32'),
(627, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:21:46'),
(628, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:21:46'),
(629, 104411263, '4mqphjqeoaati2u2aufvq4266g', NULL, '2024-10-06 19:22:03'),
(630, 104411264, 'pn0g9htv4pp2qcbv5g1p5gmj10', NULL, '2024-10-06 19:22:45'),
(631, 104411264, 'pn0g9htv4pp2qcbv5g1p5gmj10', NULL, '2024-10-06 19:22:56'),
(632, 104411264, 'pn0g9htv4pp2qcbv5g1p5gmj10', NULL, '2024-10-06 19:22:56'),
(633, 104411264, 'pn0g9htv4pp2qcbv5g1p5gmj10', NULL, '2024-10-06 19:23:00'),
(634, 104411264, 'pn0g9htv4pp2qcbv5g1p5gmj10', NULL, '2024-10-06 19:23:01'),
(635, 1004, 'dp9kpctaim3nc1pprgs4sqeneh', NULL, '2024-10-06 19:24:50'),
(636, 104411265, 'jcm5ljj6rq392eq6n48qq8bd27', NULL, '2024-10-06 19:25:12'),
(637, 104411265, 'jcm5ljj6rq392eq6n48qq8bd27', NULL, '2024-10-06 19:25:16'),
(638, 104411265, 'jcm5ljj6rq392eq6n48qq8bd27', NULL, '2024-10-06 19:25:16'),
(639, 104411265, 'jcm5ljj6rq392eq6n48qq8bd27', NULL, '2024-10-06 19:25:42'),
(640, 104411265, 'jcm5ljj6rq392eq6n48qq8bd27', NULL, '2024-10-06 19:25:44'),
(641, 104411264, 'pn0g9htv4pp2qcbv5g1p5gmj10', NULL, '2024-10-06 19:26:15'),
(642, 104411264, 'pn0g9htv4pp2qcbv5g1p5gmj10', NULL, '2024-10-06 19:26:15'),
(643, 104411265, 'jcm5ljj6rq392eq6n48qq8bd27', NULL, '2024-10-06 19:26:17'),
(644, 104411265, 'jcm5ljj6rq392eq6n48qq8bd27', NULL, '2024-10-06 19:26:17'),
(645, 104411261, 'rrvq05fd1an1il9en2l7iigfud', NULL, '2024-10-06 19:26:38'),
(647, 1007, '1qckhsph9dnp0ibmcuk99mdnf6', NULL, '2024-10-06 19:28:18'),
(648, 1007, '1qckhsph9dnp0ibmcuk99mdnf6', NULL, '2024-10-06 19:28:33'),
(649, 1007, '1qckhsph9dnp0ibmcuk99mdnf6', NULL, '2024-10-06 19:28:33'),
(650, 104411265, 'jcm5ljj6rq392eq6n48qq8bd27', NULL, '2024-10-06 19:28:43'),
(651, 104411265, 'jcm5ljj6rq392eq6n48qq8bd27', NULL, '2024-10-06 19:28:43'),
(652, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:29:06'),
(653, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:29:06'),
(656, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:29:14'),
(657, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:29:15'),
(658, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:29:15'),
(659, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:29:16'),
(666, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 19:30:23'),
(667, 1007, '1qckhsph9dnp0ibmcuk99mdnf6', NULL, '2024-10-06 19:32:08'),
(668, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 19:32:25'),
(675, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 19:33:22'),
(676, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 19:33:27'),
(677, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 19:33:27'),
(678, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 19:35:36'),
(679, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 19:35:39'),
(680, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 19:35:39'),
(681, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 19:35:53'),
(682, 104411265, 'jcm5ljj6rq392eq6n48qq8bd27', NULL, '2024-10-06 19:36:25'),
(683, 104411265, 'jcm5ljj6rq392eq6n48qq8bd27', NULL, '2024-10-06 19:36:25'),
(684, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 19:37:05'),
(685, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 19:37:07'),
(686, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:37:14'),
(687, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:37:15'),
(688, 1019, '8ugcap5n7nhiqal5nji54vjrle', NULL, '2024-10-06 19:37:20'),
(689, 104411256, '0g75ap07hrlnri87qhecrel5u9', NULL, '2024-10-06 19:37:20'),
(690, 1013, '8q8gjvbh9oul97jg8peqdgdmgu', NULL, '2024-10-06 19:37:22'),
(691, 104411263, '4mqphjqeoaati2u2aufvq4266g', NULL, '2024-10-06 19:37:22'),
(692, 104411265, 'jcm5ljj6rq392eq6n48qq8bd27', NULL, '2024-10-06 19:37:22'),
(693, 104411255, 'hej1ic0tocua5jo6sb9n78jvjq', NULL, '2024-10-06 19:37:28'),
(694, 104411259, 'q0jsndh2mgcgareuek0brlgfv1', NULL, '2024-10-06 19:37:31'),
(695, 1004, 'dp9kpctaim3nc1pprgs4sqeneh', NULL, '2024-10-06 19:37:34'),
(697, 104411267, 'jiicmu694bnv564j6hsbf8panh', NULL, '2024-10-07 17:12:06'),
(698, 104411267, 'jiicmu694bnv564j6hsbf8panh', NULL, '2024-10-07 17:42:02'),
(699, 104411267, 'jiicmu694bnv564j6hsbf8panh', NULL, '2024-10-07 17:42:02'),
(700, 104411267, 'jiicmu694bnv564j6hsbf8panh', NULL, '2024-10-07 18:06:57'),
(701, 104411267, 'jiicmu694bnv564j6hsbf8panh', NULL, '2024-10-07 18:06:59'),
(702, 104411267, 'jiicmu694bnv564j6hsbf8panh', NULL, '2024-10-07 18:06:59'),
(703, 104411249, 'jiicmu694bnv564j6hsbf8panh', NULL, '2024-10-07 18:08:24'),
(704, 104411266, '4osfh0f77hd93tq6ctjhf977q4', NULL, '2024-10-07 20:09:32'),
(705, 104411268, '40lctdorrpo9o5fslq3sm8vpag', NULL, '2024-10-08 00:38:00'),
(706, 104411268, '40lctdorrpo9o5fslq3sm8vpag', NULL, '2024-10-08 00:38:02'),
(707, 104411268, '40lctdorrpo9o5fslq3sm8vpag', NULL, '2024-10-08 00:38:02'),
(708, 104411268, '40lctdorrpo9o5fslq3sm8vpag', NULL, '2024-10-08 00:55:15'),
(709, 104411268, '40lctdorrpo9o5fslq3sm8vpag', NULL, '2024-10-08 00:55:32');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `win`
--

CREATE TABLE `win` (
  `win_id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nick` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `win_score` int(11) NOT NULL,
  `user_skin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `win_server` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `win_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yetki` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `min` int(11) NOT NULL,
  `sec` int(11) NOT NULL,
  `gizle` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `win`
--

INSERT INTO `win` (`win_id`, `user_id`, `user_nick`, `win_score`, `user_skin`, `win_server`, `win_date`, `yetki`, `min`, `sec`, `gizle`) VALUES
(1, '1044', 'sprictkages', 5338000, '', 'FFA-4', '2024-10-06 18:30:28', '', 0, 0, 0),
(2, '1019', 'AgarV', 5472500, '', 'FFA-2', '2024-10-06 18:36:58', '', 0, 0, 0),
(3, '1019', 'AgarV', 5472470, '', 'FFA-2', '2024-10-06 18:37:22', '', 0, 0, 0),
(4, '1019', 'AgarV', 5500000, '', 'FFA-3', '2024-10-06 18:37:44', '', 0, 0, 0),
(5, '1019', 'AgarV', 5473365, '', 'FFA-5', '2024-10-06 18:38:04', '', 0, 0, 0),
(6, '1019', 'AgarV', 5472500, '', 'FFA-6', '2024-10-06 18:38:15', '', 0, 0, 0),
(7, '1019', 'AgarV', 5417844, '', 'FFA-7', '2024-10-06 18:38:50', '', 0, 0, 0),
(8, '1019', 'AgarV', 5444974, '', 'FFA-8', '2024-10-06 18:39:06', '', 0, 0, 0),
(9, '1019', 'AgarV', 5472231, '', 'FFA-19', '2024-10-06 18:39:23', '', 0, 0, 0),
(10, '1004', 'ADMİN', 5475136, '', 'FFA-16', '2024-10-06 18:39:24', '', 0, 0, 0),
(11, '1019', 'AgarV', 5445756, '', 'FFA-17', '2024-10-06 18:39:34', '', 0, 0, 0),
(12, '1019', 'AgarV', 5444899, '', 'FFA-11', '2024-10-06 18:39:47', '', 0, 0, 0),
(13, '1013', 'AgarV', 5477236, '', 'FFA-1', '2024-10-06 18:39:51', '', 0, 0, 0),
(14, '1013', 'AgarV', 5500000, '', 'FFA-1', '2024-10-06 18:40:08', '', 0, 0, 0),
(15, '1007', 'betmen ucuyo', 2744231, '', 'FFA-1', '2024-10-06 18:48:14', '', 0, 0, 0),
(16, '104411244', 'NP#EMRAH-BİLAL', 2287619, '', 'FFA-1', '2024-10-06 18:54:38', '', 0, 0, 0),
(17, '1007', '-14', 2174753, '', 'FFA-1', '2024-10-06 19:01:44', '', 0, 0, 0),
(18, '1012', 'NP#Bilal∞Emrah', 3193701, 'emo15', 'FFA-1', '2024-10-06 19:09:47', '', 0, 0, 0),
(19, '1004', 'Admin2', 5445800, '', 'FFA-1', '2024-10-06 19:10:54', '', 0, 0, 0),
(20, '104411242', '+14', 99, '', 'FFA-3', '2024-10-06 19:12:57', '', 0, 0, 0),
(21, '1012', 'NP#Bilal∞Emrah', 108, 'emo15', 'FFA-17', '2024-10-06 19:15:21', '', 0, 0, 0),
(22, '104411263', 'NP#Bilal∞Emrah', 2683330, 'emo15', 'FFA-3', '2024-10-06 19:25:56', '', 0, 0, 0),
(23, '1004', 'Admin2', 971139, '', 'FFA-3', '2024-10-06 19:27:08', '', 0, 0, 0),
(24, '1004', 'Admin2', 5472500, '', 'FFA-30', '2024-10-06 19:29:18', '', 0, 0, 0),
(25, '1007', '-14', 3673820, '', 'FFA-3', '2024-10-06 19:36:14', '', 0, 0, 0),
(26, '104411268', 'AgarV', 106183, '', 'FFA-1', '2024-10-08 00:45:31', '', 0, 0, 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Tablo için indeksler `bakiye_oda_log`
--
ALTER TABLE `bakiye_oda_log`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bakiye_talep`
--
ALTER TABLE `bakiye_talep`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bonus_gold_transfers`
--
ALTER TABLE `bonus_gold_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_user_id_idx` (`sender_user_id`),
  ADD KEY `recipient_user_id_idx` (`recipient_user_id`);

--
-- Tablo için indeksler `clans`
--
ALTER TABLE `clans`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `clan_requests`
--
ALTER TABLE `clan_requests`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `fa_time`
--
ALTER TABLE `fa_time`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ffa_time`
--
ALTER TABLE `ffa_time`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`follow_id`);

--
-- Tablo için indeksler `gold_log`
--
ALTER TABLE `gold_log`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `inject`
--
ALTER TABLE `inject`
  ADD PRIMARY KEY (`inject_id`);

--
-- Tablo için indeksler `keysx`
--
ALTER TABLE `keysx`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `klanlar`
--
ALTER TABLE `klanlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Tablo için indeksler `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Tablo için indeksler `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`name_id`);

--
-- Tablo için indeksler `punish`
--
ALTER TABLE `punish`
  ADD PRIMARY KEY (`punish_id`);

--
-- Tablo için indeksler `send_gold`
--
ALTER TABLE `send_gold`
  ADD PRIMARY KEY (`send_gold_id`);

--
-- Tablo için indeksler `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`site_id`);

--
-- Tablo için indeksler `skin`
--
ALTER TABLE `skin`
  ADD PRIMARY KEY (`skin_id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email_unique` (`user_email`);

--
-- Tablo için indeksler `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `win`
--
ALTER TABLE `win`
  ADD PRIMARY KEY (`win_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `bakiye_oda_log`
--
ALTER TABLE `bakiye_oda_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `bakiye_talep`
--
ALTER TABLE `bakiye_talep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `bonus_gold_transfers`
--
ALTER TABLE `bonus_gold_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `clans`
--
ALTER TABLE `clans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Tablo için AUTO_INCREMENT değeri `clan_requests`
--
ALTER TABLE `clan_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `fa_time`
--
ALTER TABLE `fa_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `ffa_time`
--
ALTER TABLE `ffa_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `follow`
--
ALTER TABLE `follow`
  MODIFY `follow_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `gold_log`
--
ALTER TABLE `gold_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `inject`
--
ALTER TABLE `inject`
  MODIFY `inject_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `keysx`
--
ALTER TABLE `keysx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `klanlar`
--
ALTER TABLE `klanlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `name`
--
ALTER TABLE `name`
  MODIFY `name_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- Tablo için AUTO_INCREMENT değeri `punish`
--
ALTER TABLE `punish`
  MODIFY `punish_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `send_gold`
--
ALTER TABLE `send_gold`
  MODIFY `send_gold_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `site_setting`
--
ALTER TABLE `site_setting`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `skin`
--
ALTER TABLE `skin`
  MODIFY `skin_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104411269;

--
-- Tablo için AUTO_INCREMENT değeri `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=710;

--
-- Tablo için AUTO_INCREMENT değeri `win`
--
ALTER TABLE `win`
  MODIFY `win_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
