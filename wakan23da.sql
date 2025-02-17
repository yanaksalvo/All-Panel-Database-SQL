-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Tem 2024, 09:41:17
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
-- Veritabanı: `Wakanda`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL, -- bcrypt için yeterli
  `hash` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `cookie` varchar(255) DEFAULT NULL,
  `secret_question` varchar(255) DEFAULT NULL,
  `secret_answer` varchar(255) DEFAULT NULL,
  `confirmed` varchar(255) DEFAULT NULL,
  `access_level` varchar(255) DEFAULT '1',
  `hide_username` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `last_login_time` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `exp` bigint(20) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `balance` DECIMAL(10, 2) DEFAULT '0.00',
  `success_login_count` varchar(255) DEFAULT '0',
  `failed_login_count` INT DEFAULT 0,
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
(1, 'c3hqb3JreQ==', 'YmFiYW5uZXppcGxhdGFuQGdtYWlsLmNvbQ==', '98c1edd1922d833ae57704972bf7bb52', '98c1edd1922d833ae57704972bf7bb52', '::1', '89AC4D381EF29A72', NULL, 'wakanda', 'true', '6', 'false', NULL, '2024-07-05 10:41:01', 0, NULL, '25', '3', '5', '0', '0', '0', '11.08.24 20:05', '0', '0', NULL, 3, NULL, '1711741473', 3, NULL, NULL);

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
  `password` varchar(60) DEFAULT NULL, -- bcrypt için yeterli
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
(1, 'A141D464CB14DFAFCE667F0BD727126554BFF023023974618D255E24C14B5B47C5282260', '12.06.2024 11:26', 'Google Chrome', '::', 'Windows 10'),
(2, 'A141D464CB14DFAFCE667F0BD727126554BFF023023974618D255E24C14B5B47C5282260', '12.06.2024 13:48', 'Google Chrome', '::', 'Windows 10'),
(3, 'A141D464CB14DFAFCE667F0BD727126554BFF023023974618D255E24C14B5B47C5282260', '05.07.2024 10:40', 'Google Chrome', '::', 'Windows 10');

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

--
-- Tablo döküm verisi `news_comments`
--

INSERT INTO `news_comments` (`id`, `user_hash`, `date_text`, `preview`, `hash`) VALUES
(1, '41CD0FD0E21E9504F9BC90C48A3F7EEC3D1AB4C21151D244AB9F0E147D5D81D609D9B610', '2024-06-04 23:31:25', 'adam haklı', 'DA44F792E8CB57C8A6E8D143B9AF15BC9C275ED74342FBA4651372DE5B36DD5C');

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

--
-- Tablo döküm verisi `records`
--

INSERT INTO `records` (`id`, `message`, `icon`, `user_hash`, `hour`) VALUES
(1, 'Wakanda giriş yaptı, git lan nerden geldin', 'fa-solid fa fa-sign-in text-warning', '41CD0FD0E21E9504F9BC90C48A3F7EEC3D1AB4C2FC841E513DA905DA7664E80C91F54339', '11:26'),
(2, 'Wakanda giriş yaptı, sokakta sinyalcilik yapıyor, burada sanki pablo escobar pezevenk. yine de hoşgeldin kanka.', 'fa-solid fa fa-sign-in text-warning', '41CD0FD0E21E9504F9BC90C48A3F7EEC3D1AB4C2FC841E513DA905DA7664E80C91F54339', '13:48'),
(3, 'Wakanda giriş yaptı, sokakta sinyalcilik yapıyor, burada sanki pablo escobar pezevenk. yine de hoşgeldin kanka.', 'fa-solid fa fa-sign-in text-warning', '41CD0FD0E21E9504F9BC90C48A3F7EEC3D1AB4C2FC841E513DA905DA7664E80C91F54339', '10:40');

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
(1, 'Wakanda Community', '', 'https://t.me/w4k4nda', 'https://discord.gg/Wakanda', '.', '../assets/img/logo.png');

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

--
-- Tablo döküm verisi `webhooks`
--

INSERT INTO `webhooks` (`id`, `confirmationHook`, `cookieChangeHook`, `multiHook`, `reportHook`, `adminHook`, `queryHook`, `vipqueryHook`) VALUES
(1, NULL, 'NULL', NULL, 'NULL', 'NULL', NULL, '');

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
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `odemeler`
--
ALTER TABLE `odemeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `query`
--
ALTER TABLE `query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
