-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Eyl 2024, 18:44:36
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
-- Veritabanı: `godlevel`
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
  `gift_date` varchar(255) DEFAULT NULL,
  `ekleyen_admin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `email`, `password`, `hash`, `ip`, `cookie`, `secret_question`, `secret_answer`, `confirmed`, `access_level`, `hide_username`, `profile_image`, `last_login_time`, `exp`, `ref`, `balance`, `success_login_count`, `failed_login_count`, `suspect_login_count`, `premium`, `first_login`, `register_date`, `tcvip`, `expiration_date`, `gift_date`, `ekleyen_admin`) VALUES
(9802, 'UGFsYURMTA==', 'aW5mb2xhbm1hbUBwcm90b24ubWU=', 'ea5f0f75eaa0a396f94d6d66198c86a1', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '::1', '5F827642249B7620', NULL, 'ezik2024', 'true', '6', 'false', 'https://ezik.world/assets/img/account/0b5f28dee44d614fc202fa5d7a407a46_1725293633', '2024-09-02 19:43:46', 100167, NULL, '0', '14', '0', '0', '0', '0', '16.03.24 21:30', '0', '0', NULL, NULL);

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
-- Tablo için tablo yapısı `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `history` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `chat`
--

INSERT INTO `chat` (`id`, `message`, `hash`, `history`) VALUES
(1073, 'En İyiniz PALADLL', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '22:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `destek_talepleri`
--

CREATE TABLE `destek_talepleri` (
  `id` int(11) NOT NULL,
  `konu` varchar(255) DEFAULT NULL,
  `yardim_turu` varchar(50) DEFAULT NULL,
  `olusturan` varchar(255) DEFAULT NULL,
  `olay` text DEFAULT NULL,
  `cevap` text DEFAULT NULL,
  `admin` text DEFAULT NULL,
  `durum` int(11) DEFAULT NULL,
  `tarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

--
-- Tablo döküm verisi `dosyalar`
--

INSERT INTO `dosyalar` (`id`, `ucret`, `title`, `content`, `type`, `view`, `history`, `user_hash`, `hash`, `link`, `virus`, `password`, `admin`, `miktar`) VALUES
(9802, 'ucretsiz', '[Android RAT]Craxs Rat 6.7', '<p>Android RAT Programı, kurbana APK oluştururak apkyı kurbanın indirmesini ve yüklemesini sağlayarak cihazına erişim sağlayabildiğiniz program.</p>', 'rat', '1943', '08.03.2024 01:33', '6AB5D1A98A31D9780F62917874114A44143EF05350B81EEA59BDB845CBE488D2CF36E428', 'CF3C3FBC299772085C5184C2A174518496F42A06DE0F1672C5A1F5862417B7B7', 'https://dosya.co/jmg5m0smj75b/CraxsRat-V6.7.rar.html', 'https://www.virustotal.com/gui/file/8fea395fbab9fd246acd24c6b8a1ad3d9b788b41ba71c0e8c0f85f9ad9c5f046', 'ezik2024', 'infolanmam', NULL);

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
(133, '356A192B7913B04C54574D18C28D46E6395428AB921FC9C7FD3EC362C7276F81FA81BAF9', '30.10.2023 16:41', 'Google Chrome', '::', 'Windows 10'),
(28154, 'B3C9420393CAE116F8DD09459C50667408DA3B8026FA990347EB7BDF28528A18DE2F3E31', '15.03.2024 20:26', 'Google Chrome', '46', 'Android Device'),
(28155, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '16.03.2024 21:30', 'Google Chrome', '::', 'Windows 10'),
(28156, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '16.03.2024 22:07', 'Google Chrome', '::', 'Windows 10'),
(28157, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:19', 'Google Chrome', '::', 'Windows 10'),
(28158, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:32', 'Google Chrome', '57', 'Windows 10'),
(28159, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:32', 'Google Chrome', '57', 'Windows 10'),
(28160, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:32', 'Google Chrome', '57', 'Windows 10'),
(28161, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:32', 'Google Chrome', '57', 'Windows 10'),
(28162, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:32', 'Google Chrome', '57', 'Windows 10'),
(28163, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:32', 'Google Chrome', '57', 'Windows 10'),
(28164, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:32', 'Google Chrome', '57', 'Windows 10'),
(28165, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:32', 'Google Chrome', '57', 'Windows 10'),
(28166, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:32', 'Google Chrome', '57', 'Windows 10'),
(28167, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:33', 'Google Chrome', '57', 'Windows 10'),
(28168, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:33', 'Google Chrome', '57', 'Windows 10'),
(28169, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:33', 'Google Chrome', '57', 'Windows 10'),
(28170, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:33', 'Google Chrome', '57', 'Windows 10'),
(28171, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:33', 'Google Chrome', '57', 'Windows 10'),
(28172, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:33', 'Google Chrome', '57', 'Windows 10'),
(28173, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:33', 'Google Chrome', '57', 'Windows 10'),
(28174, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:33', 'Google Chrome', '57', 'Windows 10'),
(28175, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:33', 'Google Chrome', '57', 'Windows 10'),
(28176, '229C72860C8E44A2117040D19C863399FE0463FC0F73CEC4E9F890D78002E10615C2D7F9', '16.03.2024 22:34', 'Google Chrome', '46', 'Windows 10'),
(28177, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '16.03.2024 23:50', 'Google Chrome', '::', 'Windows 10'),
(28178, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '17.03.2024 01:47', 'Google Chrome', '::', 'Windows 10'),
(28179, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '17.03.2024 02:05', 'Google Chrome', '::', 'Windows 10'),
(28180, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '17.03.2024 02:57', 'Google Chrome', '::', 'Windows 10'),
(28181, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '17.03.2024 03:00', 'Google Chrome', '::', 'Windows 10'),
(28182, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '17.03.2024 14:02', 'Google Chrome', '::', 'Windows 10'),
(28183, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '17.03.2024 15:08', 'Google Chrome', '::', 'Windows 10'),
(28184, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '17.03.2024 16:13', 'Google Chrome', '::', 'Windows 10'),
(28185, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '17.03.2024 20:30', 'Google Chrome', '::', 'Windows 10'),
(28186, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '17.03.2024 22:47', 'Google Chrome', '::', 'Windows 10'),
(28187, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '18.03.2024 21:08', 'Google Chrome', '::', 'Windows 10'),
(28188, '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '02.09.2024 18:53', 'Google Chrome', '::', 'Windows 10');

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
-- Tablo için tablo yapısı `rate_limit_exceptions`
--

CREATE TABLE `rate_limit_exceptions` (
  `id` int(11) NOT NULL,
  `max_request` varchar(255) DEFAULT NULL,
  `second` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `rate_limit_exceptions`
--

INSERT INTO `rate_limit_exceptions` (`id`, `max_request`, `second`, `status`) VALUES
(1, '200', '100000', 'yes');

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
(28124, 'infolanmam giriş yaptı, fazla bakma kafa yapar. ', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '21:30'),
(28125, 'infolanmam Tüm Sorgulamalarımız Sorunsuz Aktiftir. Başlıklı bir duyuru paylaştı.', 'fa fa-bullhorn', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '21:32'),
(28126, 'infolanmam Api İşlemleri Başlıklı bir duyuru paylaştı.', 'fa fa-bullhorn', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '21:39'),
(28127, 'infolanmam Üyelik Başlıklı bir duyuru paylaştı.', 'fa fa-bullhorn', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '21:52'),
(28128, 'infolanmam Üyelik Kazan! Başlıklı bir duyuru paylaştı.', 'fa fa-bullhorn', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '22:00'),
(28129, 'infolanmam giriş yaptı, giriş yaptı,nerdesin kardeşim sen?', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '22:07'),
(28150, 'infolanmam giriş yaptı, sokakta sinyalcilik yapıyor, burada sanki pablo escobar pezevenk. yine de hoşgeldin kanka.', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '23:50'),
(28151, 'infolanmam giriş yaptı, fazla bakma kafa yapar. ', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '01:47'),
(28152, 'infolanmam giriş yaptı, fazla bakma kafa yapar. ', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '02:05'),
(28153, 'infolanmam giriş yaptı, giriş yaptı,nerdesin kardeşim sen?', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '02:57'),
(28154, 'infolanmam giriş yaptı, hoş geldin gönlümün sultanı!', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '03:00'),
(28155, 'infolanmam giriş yaptı, giriş yaptı,nerdesin kardeşim sen?', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '14:02'),
(28156, 'infolanmam giriş yaptı, giriş yaptı,nerdesin kardeşim sen?', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '15:08'),
(28157, 'infolanmam giriş yaptı, giriş yaptı,nerdesin kardeşim sen?', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '16:13'),
(28158, 'infolanmam giriş yaptı, leee olm kaç kere dedim gelme diye sana.', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '20:30'),
(28159, 'infolanmam giriş yaptı, giriş yaptı,nerdesin kardeşim sen?', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '22:47'),
(28160, 'infolanmam giriş yaptı, hoş geldin gönlümün sultanı!', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '21:08'),
(28161, 'infolanmam giriş yaptı, leee olm kaç kere dedim gelme diye sana.', 'fa fa-sign-in', '5F827642249B762036F352A43C09CF239C864D5D3A66AFF309D35319563FA0B81887D58B', '18:53');

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
(1, 'PalaDLL', 'http://localhost/', 'https://discord.gg/4pmqgNGMnC', 'https://discord.gg/4pmqgNGMnC', 'https://discord.com/api/webhooks/1280143109027532931/9CNqWsB6DTZGW57pkd4l0RUrj5TEd8xlK2deq5_VPKHVgTvNjk2owONeRImzo-zIYbXM', '../assets/img/pala.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

CREATE TABLE `siparisler` (
  `id` int(11) NOT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `date_text` varchar(255) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `siparisler`
--

INSERT INTO `siparisler` (`id`, `user_hash`, `date_text`, `preview`, `hash`) VALUES
(14, '6AB5D1A98A31D9780F62917874114A44143EF05350B81EEA59BDB845CBE488D2CF36E428', '2024-03-10 16:40:09', 'babababababa', 'CF3C3FBC299772085C5184C2A174518496F42A06DE0F1672C5A1F5862417B7B7');

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
-- Tablo için indeksler `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `destek_talepleri`
--
ALTER TABLE `destek_talepleri`
  ADD PRIMARY KEY (`id`);

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
-- Tablo için indeksler `siparisler`
--
ALTER TABLE `siparisler`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9804;

--
-- Tablo için AUTO_INCREMENT değeri `balance_transfers`
--
ALTER TABLE `balance_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1081;

--
-- Tablo için AUTO_INCREMENT değeri `destek_talepleri`
--
ALTER TABLE `destek_talepleri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- Tablo için AUTO_INCREMENT değeri `dosyalar`
--
ALTER TABLE `dosyalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9804;

--
-- Tablo için AUTO_INCREMENT değeri `dosya_comments`
--
ALTER TABLE `dosya_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `login_sessions`
--
ALTER TABLE `login_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28189;

--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `odemeler`
--
ALTER TABLE `odemeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2887;

--
-- Tablo için AUTO_INCREMENT değeri `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28162;

--
-- Tablo için AUTO_INCREMENT değeri `siparisler`
--
ALTER TABLE `siparisler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
