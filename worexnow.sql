-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Eki 2024, 09:43:41
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `worexnow`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `010001_accounts`
--

CREATE TABLE `010001_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `cookie` varchar(255) DEFAULT NULL,
  `secret_question` varchar(255) DEFAULT NULL,
  `secret_answer` varchar(255) DEFAULT NULL,
  `confirmed` varchar(255) DEFAULT NULL,
  `access_level` varchar(255) DEFAULT NULL,
  `hide_username` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `last_login_time` varchar(255) DEFAULT '0',
  `exp` bigint(20) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT '0',
  `success_login_count` varchar(255) DEFAULT '0',
  `failed_login_count` varchar(255) DEFAULT '0',
  `suspect_login_count` varchar(255) DEFAULT '0',
  `premium` varchar(255) DEFAULT '0',
  `first_login` varchar(255) DEFAULT '0',
  `register_date` varchar(255) DEFAULT NULL,
  `tcvip` varchar(255) DEFAULT '0',
  `expiration_date` varchar(255) DEFAULT '0',
  `ownerlevel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `010001_accounts`
--

INSERT INTO `010001_accounts` (`id`, `username`, `email`, `password`, `hash`, `ip`, `cookie`, `secret_question`, `secret_answer`, `confirmed`, `access_level`, `hide_username`, `profile_image`, `last_login_time`, `exp`, `ref`, `balance`, `success_login_count`, `failed_login_count`, `suspect_login_count`, `premium`, `first_login`, `register_date`, `tcvip`, `expiration_date`, `ownerlevel`) VALUES
(1, 'a2VyaW1iZXl2aXA=', 'a2VyaW1ha2NhbjQxQGdtYWlsLmNvbQ==', 'ca4a8663405a62e859eadce758c43be3', '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '88.236.183.95', '', 'En Sevdiğin Dizi/Film.', 'LCDP', 'true', '6', 'false', 'https://188.132.198.216/assets/img/account/38631d560d8ae0f347e3e748d57e7bb4_1728837423', '2024-10-17 10:42:59', 16591, NULL, '15000', '22', '0', '0', '1', '1', '05.08.24 17:46', '14996', '0', '1'),
(62, 'QmFybGFzNTg=', 'ZmF0aWh1bGtlcnNpdmFzNThAZ21haWwuY29t', '651cf39e1f321021b418a4eb0cb0202f', 'A60DF2B540D1228178CBED7072823B42FFDEF4F1B59A3C096B67927F96CB0461A466D117', '176.238.139.163', '', 'En Sevdiğin Dizi/Film.', 'Witcher', 'true', '6', 'false', 'https://188.132.198.216/assets/img/account/4d1e336d15eda817a2465a2ad3a2ffdf_1728835577', '2024-10-13 20:16:08', 2407, NULL, '1000', '8', '0', '1', '1', '1', '13.10.24 15:31', '998', '0', '1'),
(63, 'WWt6Z24=', 'eWt6Z241ODg1MUBnbWFpbC5jb20=', 'dc065390ae1b336e762de8bfa7d2e4c8', 'C1B8723DE7673EA724BC49C67FA731A1E078B5FFE2C9342D0E670EC1CB3997D3C4427D83', '5.176.128.122', '', 'Gittiğiniz İlk Okulun İsmi.', 'Deliilyas ortaokulu', 'true', '6', 'false', NULL, '2024-10-16 09:11:10', 149, NULL, '1000', '5', '0', '0', '1', '1', '13.10.24 15:49', '1000', '0', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `010001_balance_transfers`
--

CREATE TABLE `010001_balance_transfers` (
  `id` int(11) NOT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `history` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `010001_chat`
--

CREATE TABLE `010001_chat` (
  `id` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `history` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `010001_login_sessions`
--

CREATE TABLE `010001_login_sessions` (
  `id` int(11) NOT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `login_time` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `ip_class` varchar(255) DEFAULT NULL,
  `operating_system` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `010001_login_sessions`
--

INSERT INTO `010001_login_sessions` (`id`, `hash`, `login_time`, `device`, `ip_class`, `operating_system`) VALUES
(228, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '12.10.2024 21:25', 'Google Chrome', '77.67.248.99', 'Android Device'),
(229, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '12.10.2024 21:26', 'Google Chrome', '77.67.248.99', 'Linux'),
(230, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '12.10.2024 22:57', 'Google Chrome', '88.236.183.95', 'Windows 10'),
(231, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '13.10.2024 12:59', 'Google Chrome', '88.236.183.95', 'Windows 10'),
(232, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '13.10.2024 13:25', 'Google Chrome', '135.125.204.170', 'Android Device'),
(233, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '13.10.2024 13:31', 'Google Chrome', '88.236.183.95', 'Windows 10'),
(234, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '13.10.2024 15:31', 'Google Chrome', '141.196.23.70', 'Linux'),
(235, 'A60DF2B540D1228178CBED7072823B42FFDEF4F1B59A3C096B67927F96CB0461A466D117', '13.10.2024 15:31', 'Google Chrome', '176.238.139.163', 'Android Device'),
(236, 'A60DF2B540D1228178CBED7072823B42FFDEF4F1B59A3C096B67927F96CB0461A466D117', '13.10.2024 15:50', 'Google Chrome', '176.238.139.163', 'Android Device'),
(237, 'C1B8723DE7673EA724BC49C67FA731A1E078B5FFE2C9342D0E670EC1CB3997D3C4427D83', '13.10.2024 15:50', 'Bilinmeyen Tarayıcı', '5.176.128.122', 'iPhone'),
(238, 'C1B8723DE7673EA724BC49C67FA731A1E078B5FFE2C9342D0E670EC1CB3997D3C4427D83', '13.10.2024 15:52', 'Safari', '5.176.128.122', 'iPhone'),
(239, 'C1B8723DE7673EA724BC49C67FA731A1E078B5FFE2C9342D0E670EC1CB3997D3C4427D83', '13.10.2024 15:54', 'Safari', '5.176.128.122', 'iPhone'),
(240, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '13.10.2024 16:15', 'Google Chrome', '141.196.23.70', 'Linux'),
(241, 'C1B8723DE7673EA724BC49C67FA731A1E078B5FFE2C9342D0E670EC1CB3997D3C4427D83', '13.10.2024 17:07', 'Safari', '5.176.128.122', 'iPhone'),
(242, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '13.10.2024 17:31', 'Google Chrome', '176.238.212.44', 'Linux'),
(243, 'A60DF2B540D1228178CBED7072823B42FFDEF4F1B59A3C096B67927F96CB0461A466D117', '13.10.2024 19:05', 'Google Chrome', '77.67.208.227', 'Android Device'),
(244, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '13.10.2024 19:05', 'Google Chrome', '77.67.195.188', 'Linux'),
(245, 'A60DF2B540D1228178CBED7072823B42FFDEF4F1B59A3C096B67927F96CB0461A466D117', '13.10.2024 19:09', 'Google Chrome', '77.67.208.227', 'Android Device'),
(246, 'A60DF2B540D1228178CBED7072823B42FFDEF4F1B59A3C096B67927F96CB0461A466D117', '13.10.2024 19:22', 'Google Chrome', '77.67.208.227', 'Android Device'),
(247, 'A60DF2B540D1228178CBED7072823B42FFDEF4F1B59A3C096B67927F96CB0461A466D117', '13.10.2024 19:23', 'Google Chrome', '77.67.208.227', 'Android Device'),
(248, 'A60DF2B540D1228178CBED7072823B42FFDEF4F1B59A3C096B67927F96CB0461A466D117', '13.10.2024 19:29', 'Google Chrome', '77.67.208.227', 'Android Device'),
(249, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '13.10.2024 19:30', 'Google Chrome', '77.67.195.188', 'Linux'),
(250, 'A60DF2B540D1228178CBED7072823B42FFDEF4F1B59A3C096B67927F96CB0461A466D117', '13.10.2024 20:15', 'Google Chrome', '176.88.130.112', 'Android Device'),
(251, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '13.10.2024 21:05', 'Google Chrome', '77.67.222.206', 'Windows 10'),
(252, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '13.10.2024 22:31', 'Google Chrome', '88.236.183.95', 'Windows 10'),
(253, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '14.10.2024 12:35', 'Google Chrome', '81.215.210.231', 'Linux'),
(254, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '14.10.2024 18:26', 'Google Chrome', '178.244.85.0', 'Windows 10'),
(255, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '14.10.2024 21:31', 'Google Chrome', '88.236.183.95', 'Windows 10'),
(256, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '15.10.2024 10:33', 'Google Chrome', '81.215.210.231', 'Linux'),
(257, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '15.10.2024 15:23', 'Google Chrome', '81.215.210.231', 'Linux'),
(258, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '15.10.2024 17:50', 'Google Chrome', '88.236.183.95', 'Linux'),
(259, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '15.10.2024 18:40', 'Google Chrome', '88.236.183.95', 'Windows 10'),
(260, 'C1B8723DE7673EA724BC49C67FA731A1E078B5FFE2C9342D0E670EC1CB3997D3C4427D83', '16.10.2024 09:06', 'Safari', '37.155.226.143', 'iPhone'),
(261, '5BBD0E9FDBDEFE55E2F31B32B87F6CE01C97DF44860B989A383593396648518C761C64A5', '17.10.2024 10:20', 'Google Chrome', '81.215.210.231', 'Windows 10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `010001_news`
--

CREATE TABLE `010001_news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(2500) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `history` varchar(255) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `010001_news_comments`
--

CREATE TABLE `010001_news_comments` (
  `id` int(11) NOT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `date_text` varchar(255) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `010001_rate_limit_exceptions`
--

CREATE TABLE `010001_rate_limit_exceptions` (
  `id` int(11) NOT NULL,
  `max_request` varchar(255) DEFAULT NULL,
  `second` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `010001_rate_limit_exceptions`
--

INSERT INTO `010001_rate_limit_exceptions` (`id`, `max_request`, `second`, `status`) VALUES
(1, '100', '120', 'no');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `010001_records`
--

CREATE TABLE `010001_records` (
  `id` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `hour` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `010001_settings`
--

CREATE TABLE `010001_settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_domain` varchar(255) DEFAULT NULL,
  `databasedomain` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `discord` varchar(255) DEFAULT NULL,
  `webhook` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `010001_settings`
--

INSERT INTO `010001_settings` (`id`, `site_name`, `site_domain`, `databasedomain`, `telegram`, `discord`, `webhook`, `logo`) VALUES
(1, 'OceansQuery | BETA', 'https://188.132.198.216/', 'https://6945-188-132-198-216.ngrok-free.app/phpmyadmin/', 'https://t.me', 'https://instagram.com/kerimwonzy', '', 'assets/img/favicon.ico');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `010001_accounts`
--
ALTER TABLE `010001_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `010001_balance_transfers`
--
ALTER TABLE `010001_balance_transfers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `010001_chat`
--
ALTER TABLE `010001_chat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `010001_login_sessions`
--
ALTER TABLE `010001_login_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `010001_news`
--
ALTER TABLE `010001_news`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `010001_news_comments`
--
ALTER TABLE `010001_news_comments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `010001_rate_limit_exceptions`
--
ALTER TABLE `010001_rate_limit_exceptions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `010001_records`
--
ALTER TABLE `010001_records`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `010001_settings`
--
ALTER TABLE `010001_settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `010001_accounts`
--
ALTER TABLE `010001_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Tablo için AUTO_INCREMENT değeri `010001_balance_transfers`
--
ALTER TABLE `010001_balance_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `010001_chat`
--
ALTER TABLE `010001_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Tablo için AUTO_INCREMENT değeri `010001_login_sessions`
--
ALTER TABLE `010001_login_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- Tablo için AUTO_INCREMENT değeri `010001_news`
--
ALTER TABLE `010001_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `010001_news_comments`
--
ALTER TABLE `010001_news_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `010001_records`
--
ALTER TABLE `010001_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
