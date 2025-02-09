-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 19 Haz 2023, 00:41:54
-- Sunucu sürümü: 10.5.19-MariaDB-cll-lve
-- PHP Sürümü: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `u643642719_remotee`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `destek_talepleri`
--

CREATE TABLE `destek_talepleri` (
  `id` int(11) NOT NULL,
  `kullanici_id` int(11) DEFAULT NULL,
  `k_adi` varchar(99) DEFAULT NULL,
  `konu` mediumtext DEFAULT NULL,
  `mesaj` mediumtext DEFAULT NULL,
  `son_form_gonderim` timestamp NULL DEFAULT NULL,
  `cevap` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `destek_talepleri`
--

INSERT INTO `destek_talepleri` (`id`, `kullanici_id`, `k_adi`, `konu`, `mesaj`, `son_form_gonderim`, `cevap`) VALUES
(64, 2928, 'dropmehmet', 'sa ', 'kolay gelsın  uyelıkler ne kadar ', '2023-04-09 09:04:24', '.gg/quarex'),
(65, 5036, 'Bilalacar07', 'Sunucu hatası', 'Vıp üyelik aldım  ', '2023-04-09 10:20:16', 'Şuanda bakımdayız yakında düzeltilmiş olacak.');

-- ----------------------------------------------------------


-- Tablo için tablo yapısı `scottyayar`
--

CREATE TABLE `scottyayar` (
  `id` int(11) NOT NULL,
  `bakim` enum('0','1') NOT NULL DEFAULT '0',
  `scotty_sidebarlogo` varchar(3299) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `scottyayar`
--

INSERT INTO `scottyayar` (`id`, `bakim`, `scotty_sidebarlogo`) VALUES
(1, '0', '/assets/images/quarexlogox2.png?v=123');

-- --------------------------------------------------------


--
-- Tablo için tablo yapısı `sh_paraiadesi`
--

CREATE TABLE `sh_paraiadesi` (
  `id` int(11) NOT NULL,
  `k_adi` varchar(255) DEFAULT NULL,
  `iade_istedi_mi` tinyint(1) DEFAULT NULL,
  `iade_iban` varchar(255) DEFAULT NULL,
  `iade_adsoyad` varchar(255) DEFAULT NULL,
  `iade_aciklama` text DEFAULT NULL,
  `iade_miktar` varchar(255) DEFAULT NULL,
  `iade_eposta` varchar(8888) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sh_paraiadesi`
--

INSERT INTO `sh_paraiadesi` (`id`, `k_adi`, `iade_istedi_mi`, `iade_iban`, `iade_adsoyad`, `iade_aciklama`, `iade_miktar`, `iade_eposta`) VALUES
(101, 'xx', 1, 'gizli', 'gizli', 'gizli', '275', 'gizli@gizli.com'),


-- --------------------------------------------------------


--
-- Tablo için indeksler `destek_talepleri`
--
ALTER TABLE `destek_talepleri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `scottyayar`
--
ALTER TABLE `scottyayar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sh_paraiadesi`
--
ALTER TABLE `sh_paraiadesi`
  ADD PRIMARY KEY (`id`);


  --
-- Tablo için AUTO_INCREMENT değeri `destek_talepleri`
--
ALTER TABLE `destek_talepleri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- Tablo için AUTO_INCREMENT değeri `scottyayar`
--
ALTER TABLE `scottyayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4432;


--
-- Tablo için AUTO_INCREMENT değeri `sh_paraiadesi`
--
ALTER TABLE `sh_paraiadesi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
