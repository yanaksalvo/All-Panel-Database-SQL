-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Tem 2024, 19:59:54
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
  `expiration_date` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `010001_accounts`
--

INSERT INTO `010001_accounts` (`id`, `username`, `email`, `password`, `hash`, `ip`, `secret_question`, `secret_answer`, `confirmed`, `access_level`, `hide_username`, `profile_image`, `last_login_time`, `exp`, `ref`, `balance`, `success_login_count`, `failed_login_count`, `suspect_login_count`, `premium`, `first_login`, `register_date`, `tcvip`, `expiration_date`) VALUES
(45, 'd29yZXg=', 'c293aXhwcm9AZ21haWwuY29t', '99603faf29d6a3ebaf47f0df578d8f6a', 'CAEDA50C431AAF75FF163E673A95C7714C0DC202F1666E7AEAEB8F47F52E3D7BDF0B313F', '::1', 'En sevdiğin hacker filmi hangisidir?', 'annen', 'true', '6', 'false', 'https://localhost/assets/img/account/e7ac03490ef1127e7ed4db6b43f130c0_1721233776', '2024-07-17 20:59:24', 1000, NULL, '1000', '1000', '0', '0', '0', '1', '17.07.24 19:28', '0', '2100-07-17');

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

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `010001_news`
--

CREATE TABLE `010001_news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
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
  `telegram` varchar(255) DEFAULT NULL,
  `discord` varchar(255) DEFAULT NULL,
  `webhook` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `010001_settings`
--

INSERT INTO `010001_settings` (`id`, `site_name`, `site_domain`, `telegram`, `discord`, `webhook`, `logo`) VALUES
(1, 'SOWİX PRP', 'https://localhost', 'https://t.me/sowixpro', 'https://discord.com', 'https://discord.com/api/webhooks/1260157139708678155/UiqR5dc70Zz2r1TXfgFE3fGOyPEJap8gj7avOuZALxVOcU5sxWUOq-zRt9LUuTID70ac', 'assets/img/favicon.ico');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Tablo için AUTO_INCREMENT değeri `010001_balance_transfers`
--
ALTER TABLE `010001_balance_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `010001_chat`
--
ALTER TABLE `010001_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `010001_login_sessions`
--
ALTER TABLE `010001_login_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Tablo için AUTO_INCREMENT değeri `010001_news`
--
ALTER TABLE `010001_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `010001_news_comments`
--
ALTER TABLE `010001_news_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `010001_records`
--
ALTER TABLE `010001_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
