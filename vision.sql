-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 Oca 2025, 12:17:04
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
-- Veritabanı: `vision`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `accounts`
--

CREATE TABLE `accounts` (
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
  `ekleyen_admin` varchar(255) DEFAULT NULL,
  `total_query` int(11) NOT NULL DEFAULT 3,
  `toplamreferans` varchar(255) DEFAULT NULL,
  `ts_last_spin` varchar(255) NOT NULL DEFAULT '1711741473',
  `pin_claim` int(11) NOT NULL DEFAULT 3,
  `asd` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `email`, `password`, `hash`, `ip`, `cookie`, `secret_question`, `secret_answer`, `confirmed`, `access_level`, `hide_username`, `profile_image`, `last_login_time`, `exp`, `ref`, `balance`, `success_login_count`, `failed_login_count`, `suspect_login_count`, `premium`, `first_login`, `register_date`, `tcvip`, `expiration_date`, `ekleyen_admin`, `total_query`, `toplamreferans`, `ts_last_spin`, `pin_claim`, `asd`, `code`) VALUES
(5, 'MQ==', 'MUBnbWFpbC5jb20=', '4458367e5c89d468cfb7f07c8de42f72', '356A192B7913B04C54574D18C28D46E6395428ABFC7E855B9E2947C9E32981E4AE4FC6AF', '::1', '356A192B7913B04C', NULL, 'deneme', 'true', '6', 'false', NULL, '2025-01-11 14:15:41', 0, NULL, '0', '1', '0', '0', '0', '0', '11.01.25 14:15', '0', '0', NULL, 3, NULL, '1711741473', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `balance_transfers`
--

CREATE TABLE `balance_transfers` (
  `id` int(11) NOT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `history` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dosyalar`
--

CREATE TABLE `dosyalar` (
  `id` int(11) NOT NULL,
  `ucret` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(2500) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `history` varchar(255) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `virus` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `miktar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dosya_comments`
--

CREATE TABLE `dosya_comments` (
  `id` int(11) NOT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `date_text` varchar(255) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `login_sessions`
--

CREATE TABLE `login_sessions` (
  `id` int(11) NOT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `login_time` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `ip_class` varchar(255) DEFAULT NULL,
  `operating_system` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `login_sessions`
--

INSERT INTO `login_sessions` (`id`, `hash`, `login_time`, `device`, `ip_class`, `operating_system`) VALUES
(1, '', '06.01.2025 19:32', 'Google Chrome', '::', 'Windows 10'),
(2, '', '06.01.2025 19:51', 'Google Chrome', '::', 'Windows 10'),
(3, '', '06.01.2025 19:53', 'Google Chrome', '::', 'Windows 10'),
(4, '', '06.01.2025 19:53', 'Google Chrome', '::', 'Windows 10'),
(5, '', '06.01.2025 19:55', 'Google Chrome', '::', 'Windows 10'),
(6, '', '06.01.2025 19:56', 'Google Chrome', '::', 'Windows 10'),
(7, '5569858D45A9A63B03777C6F941C2311D7095DD247ECA54E5EEEEEBFB016EA60B82FC9F6', '06.01.2025 19:57', 'Google Chrome', '::', 'Windows 10'),
(8, '', '06.01.2025 19:57', 'Google Chrome', '::', 'Windows 10'),
(9, '5569858D45A9A63B03777C6F941C2311D7095DD247ECA54E5EEEEEBFB016EA60B82FC9F6', '06.01.2025 19:57', 'Google Chrome', '::', 'Windows 10'),
(10, 'EF05DE0A8C8BCCE502B4F3EA7A37633A3C04434FA69E711A1BFA3D725EED9A3E4C6EEB39', '06.01.2025 19:58', 'Google Chrome', '::', 'Windows 10'),
(11, 'EF05DE0A8C8BCCE502B4F3EA7A37633A3C04434FA69E711A1BFA3D725EED9A3E4C6EEB39', '08.01.2025 12:17', 'Google Chrome', '::', 'Windows 10'),
(12, 'EF05DE0A8C8BCCE502B4F3EA7A37633A3C04434FA69E711A1BFA3D725EED9A3E4C6EEB39', '11.01.2025 13:38', 'Google Chrome', '::', 'Windows 10'),
(13, 'EF05DE0A8C8BCCE502B4F3EA7A37633A3C04434FA69E711A1BFA3D725EED9A3E4C6EEB39', '11.01.2025 13:42', 'Google Chrome', '::', 'Windows 10'),
(14, '356A192B7913B04C54574D18C28D46E6395428AB60191CEFE45CF40E82BCB1E827E0AC92', '11.01.2025 14:14', 'Google Chrome', '::', 'Windows 10'),
(15, '356A192B7913B04C54574D18C28D46E6395428ABFC7E855B9E2947C9E32981E4AE4FC6AF', '11.01.2025 14:15', 'Google Chrome', '::', 'Windows 10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `history` varchar(255) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news_comments`
--

CREATE TABLE `news_comments` (
  `id` int(11) NOT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `date_text` varchar(255) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `odemeler`
--

CREATE TABLE `odemeler` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `miktar` varchar(255) DEFAULT NULL,
  `yontem` varchar(255) DEFAULT NULL,
  `tarih` varchar(255) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `query`
--

CREATE TABLE `query` (
  `id` int(11) NOT NULL,
  `queryName` varchar(255) DEFAULT NULL,
  `queryTotal` int(11) DEFAULT NULL,
  `queryHash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rate_limit_exceptions`
--

CREATE TABLE `rate_limit_exceptions` (
  `id` int(11) NOT NULL,
  `max_request` varchar(255) DEFAULT NULL,
  `second` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `records`
--

CREATE TABLE `records` (
  `id` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `hour` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_domain` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `discord` varchar(255) DEFAULT NULL,
  `webhook` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_domain`, `telegram`, `discord`, `webhook`, `logo`) VALUES
(1, '', '', '', '', '', '../assets/img/logo.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `systems`
--

CREATE TABLE `systems` (
  `id` int(11) NOT NULL,
  `multiSystem` varchar(255) DEFAULT NULL,
  `confirmationSystem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `webhooks`
--

CREATE TABLE `webhooks` (
  `id` int(11) NOT NULL,
  `confirmationHook` varchar(255) DEFAULT NULL,
  `cookieChangeHook` varchar(255) DEFAULT NULL,
  `multiHook` varchar(255) DEFAULT NULL,
  `reportHook` varchar(255) DEFAULT NULL,
  `adminHook` varchar(255) DEFAULT '',
  `queryHook` varchar(255) DEFAULT NULL,
  `vipqueryHook` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(11) NOT NULL,
  `user_hash` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `iban` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `request_date` datetime NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `balance_transfers`
--
ALTER TABLE `balance_transfers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `dosyalar`
--
ALTER TABLE `dosyalar`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `dosya_comments`
--
ALTER TABLE `dosya_comments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `login_sessions`
--
ALTER TABLE `login_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `news_comments`
--
ALTER TABLE `news_comments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `odemeler`
--
ALTER TABLE `odemeler`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `rate_limit_exceptions`
--
ALTER TABLE `rate_limit_exceptions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `systems`
--
ALTER TABLE `systems`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `webhooks`
--
ALTER TABLE `webhooks`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `balance_transfers`
--
ALTER TABLE `balance_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `dosyalar`
--
ALTER TABLE `dosyalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `dosya_comments`
--
ALTER TABLE `dosya_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `login_sessions`
--
ALTER TABLE `login_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `odemeler`
--
ALTER TABLE `odemeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `query`
--
ALTER TABLE `query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
