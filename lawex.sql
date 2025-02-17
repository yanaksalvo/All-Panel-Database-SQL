-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 May 2023, 19:15:18
-- Sunucu sürümü: 10.4.25-MariaDB
-- PHP Sürümü: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `lawex`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `lawex_duyuru`
--

CREATE TABLE `lawex_duyuru` (
  `id` int(11) NOT NULL,
  `d_icerik` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `d_time` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `lawex_duyuru`
--

INSERT INTO `lawex_duyuru` (`id`, `d_icerik`, `d_time`) VALUES
(37, 'http://lawexchecker.epizy.com/infazlist', '13.04.2023');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `lawex_kullanici`
--

CREATE TABLE `lawex_kullanici` (
  `id` int(11) NOT NULL,
  `k_rol` enum('0','1','2') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `k_log` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `u_time` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `k_browser` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `k_os` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `k_time` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `k_key` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `k_verified` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `k_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `k_lastlogin` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `k_ekleyen` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `k_cooldown` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `k_cooldown_bypass` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `lawex_kullanici`
--

INSERT INTO `lawex_kullanici` (`id`, `k_rol`, `k_log`, `u_time`, `k_browser`, `k_os`, `k_time`, `k_key`, `k_verified`, `k_adi`, `k_lastlogin`, `k_ekleyen`, `k_cooldown`, `k_cooldown_bypass`) VALUES
(1, '1', '::1', '1', 'Google Chrome', 'Windows 10', '2022-06-01 18:56:19', 'xxhacked', 'true', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '', '1677324746', '0'),
(1418, '2', '', '2023-05-08', '', '', '2023-02-28 19:40:57', 'awACeI8sq4PHFBF0y1m4t7TASRvwSsCs', 'true', 'Deneme', '', '', '', ''),
(1419, '2', '::020', '2023-04-29', 'Handheld Browser', 'Android Device', '2023-03-30 21:15:01', '0cdGClslfcBiBNbDVzI3rSiCXYjQUuEh', 'true', 'xxhackereasyx2', '', '', '', ''),
(1421, '1', '', '', '', '', '2023-03-31 12:33:17', 'yTOvOKVhMZsfxnvXfdy3n5CvY8Ajq5Wd', 'true', 'luxions', '', '', '', ''),
(1426, '0', '', '', '', '', '2023-04-18 02:09:49', '2GGfOfkthkcFOQU03MneA1CasXlgDYTF', 'true', '31cek', '', '', '', ''),
(1427, '0', '', '', '', '', '2023-04-29 21:53:37', '0ffYB0WBaU64EQhgTj8R65K4FzMxPQa8', 'true', '31cek', '', '', '', ''),
(1428, '0', '', '', '', '', '2023-04-30 23:33:29', 'W1tui5VRcqRLFEsVetFPqjtlG3opB2oi', 'true', '31cek', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `lawex_log`
--

CREATE TABLE `lawex_log` (
  `id` int(11) NOT NULL,
  `k_adi` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `k_ip` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `k_city` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `k_country` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `k_acent` varchar(256) COLLATE utf8_turkish_ci NOT NULL,
  `k_time` varchar(24) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `lawex_duyuru`
--
ALTER TABLE `lawex_duyuru`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `lawex_kullanici`
--
ALTER TABLE `lawex_kullanici`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `lawex_log`
--
ALTER TABLE `lawex_log`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `lawex_duyuru`
--
ALTER TABLE `lawex_duyuru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Tablo için AUTO_INCREMENT değeri `lawex_kullanici`
--
ALTER TABLE `lawex_kullanici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1429;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
