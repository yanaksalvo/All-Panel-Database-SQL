-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 Nis 2023, 21:09:00
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ben10`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `atina_duyuru`
--

CREATE TABLE `atina_duyuru` (
  `id` int(11) NOT NULL,
  `s_subject` varchar(330) NOT NULL,
  `s_details` varchar(330) NOT NULL,
  `s_date` varchar(330) NOT NULL,
  `s_user` varchar(330) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `atina_duyuru`
--

INSERT INTO `atina_duyuru` (`id`, `s_subject`, `s_details`, `s_date`, `s_user`) VALUES
(9, 'Duyuru', 'Atina - İllegalMedya.Org ', '08-04-2024', 'AtinaV2');


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `atina_kullanici`
--

CREATE TABLE `atina_kullanici` (
  `id` int(11) NOT NULL,
  `s_name` varchar(330) NOT NULL,
  `s_key` varchar(330) NOT NULL,
  `s_sorgu` varchar(330) NOT NULL,
  `s_bakiye` varchar(330) NOT NULL,
  `s_verified` enum('0','1') NOT NULL DEFAULT '1',
  `s_lastlogin` varchar(330) NOT NULL,
  `s_endmember` varchar(330) NOT NULL,
  `s_member` enum('0','1','2', '3') NOT NULL DEFAULT '1',
  `s_cooldown` varchar(330) NOT NULL,
  `s_email` varchar(330) NOT NULL,
  `s_add` varchar(330) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `atina_kullanici`
--

INSERT INTO `atina_kullanici` (`id`, `s_name`, `s_key`, `s_sorgu`,`s_verified`,  `s_lastlogin`, `s_endmember`, `s_member`, `s_cooldown`, `s_add`, `s_email` ) VALUES
(1, 'AtinaV2', 'atina', '', '1',  '', '18-06-2058', '2', '', 'AtinaV2', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `atina_log`
--

CREATE TABLE `atina_log` (
  `id` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `s_sorgu` varchar(330) NOT NULL,
  `s_details` varchar(255) NOT NULL,
  `s_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `sh_sayaç` (
  `id` int(11) NOT NULL,
  `değer` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `sh_sayaç`
--

INSERT INTO `sh_sayaç` (`id`, `değer`) VALUES
(1, 1);
--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `atina_duyuru`
--
ALTER TABLE `atina_duyuru`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `destek_talepleri`
  ADD PRIMARY KEY (`id`);


--
-- Tablo için indeksler `atina_kullanici`
--
ALTER TABLE `atina_kullanici`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `atina_log`
--
ALTER TABLE `atina_log`
  ADD PRIMARY KEY (`id`);

  --
ALTER TABLE `sh_sayaç`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `atina_duyuru`
--
ALTER TABLE `atina_duyuru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `atina_kullanici`
--
ALTER TABLE `atina_kullanici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

  ALTER TABLE `destek_talepleri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tablo için AUTO_INCREMENT değeri `atina_log`
--
ALTER TABLE `atina_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

ALTER TABLE `sh_sayaç`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
