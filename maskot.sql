-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 18 Eyl 2022, 12:20:27
-- Sunucu sürümü: 10.3.34-MariaDB-0ubuntu0.20.04.1
-- PHP Sürümü: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `liberal`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ahmetkayakaya`
--

CREATE TABLE `ahmetkayakaya` (
  `id` int(11) NOT NULL,
  `k_rol` enum('0','1','2') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `k_log` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `u_time` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `k_browser` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `k_os` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `k_time` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `k_key` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `k_verified` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `k_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ahmetkayakaya`
--

INSERT INTO `ahmetkayakaya` (`id`, `k_rol`, `k_log`, `u_time`, `k_browser`, `k_os`, `k_time`, `k_key`, `k_verified`, `k_adi`) VALUES
(31, '1', '::1', '1', 'Google Chrome', 'Windows 10', '0571-04-20 24:00:00', 'SOWİXPRO', 'true', 'SOWİX');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ban`
--

CREATE TABLE `ban` (
  `ban` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo için tablo yapısı `sh_duyuru`
--

CREATE TABLE `sh_duyuru` (
  `id` int(11) NOT NULL,
  `d_icerik` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `d_time` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `sh_duyuru`
--

INSERT INTO `sh_duyuru` (`id`, `d_icerik`, `d_time`) VALUES
(20, 'Tüm sorgular aktiftir, sadece adres sorgu ve vesikalar bakımdadır. İyi kullanımlar.', '10.02.2023');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ahmetkayakaya`
--
ALTER TABLE `ahmetkayakaya`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sh_duyuru`
--
ALTER TABLE `sh_duyuru`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ahmetkayakaya`
--
ALTER TABLE `ahmetkayakaya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Tablo için AUTO_INCREMENT değeri `sh_duyuru`
--
ALTER TABLE `sh_duyuru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
