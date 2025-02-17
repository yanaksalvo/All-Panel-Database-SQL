-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Ağu 2023, 15:30:29
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
-- Veritabanı: `wlozincheck`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `announcement`
--

CREATE TABLE `announcement` (
  `id` int(99) NOT NULL,
  `annContent` varchar(255) DEFAULT 'Tanımlanmamış',
  `annTime` date DEFAULT NULL,
  `annPriority` varchar(32) NOT NULL DEFAULT 'Duyuru',
  `annPriorityColor` int(99) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `announcement`
--

INSERT INTO `announcement` (`id`, `annContent`, `annTime`, `annPriority`, `annPriorityColor`) VALUES
(73, 'Ban Yiyen Kullanıcılar Discord Sunucumuzdan Tekrardan Ücret Karşılığında Key Alabilirler', '2023-08-05', 'Duyuru', 0),
(74, 'MULTİ HESAP Yasaktır Otomatik Ban Yersiniz', '2023-08-05', 'Duyuru', 0),
(75, 'Canlı Destekte Adınızı Ve Mailinizi Yazınız Sohbette Sıkıntı Yaşanırsa Mail Üzerinden Yardım Sağlanılacaktır', '2023-08-05', 'Duyuru', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

CREATE TABLE `services` (
  `id` int(99) NOT NULL,
  `serviceContent` varchar(255) DEFAULT 'Tanımlanmamış',
  `serviceTime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `serviceContent`, `serviceTime`) VALUES
(1, 'Ad-Soyad Sorgu', '2023-01-30'),
(2, 'asdfasdfasdf', '2023-01-31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(500) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `title`, `url`, `logo`, `status`) VALUES
(1, 'Wlozin Checker', 'http://localhost/', '', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userRole` int(10) DEFAULT 0,
  `userLog` varchar(40) DEFAULT NULL,
  `userTime` date DEFAULT NULL,
  `userBrowser` varchar(50) DEFAULT NULL,
  `userOS` varchar(50) DEFAULT NULL,
  `userModerator` varchar(100) DEFAULT NULL,
  `userAuthKey` varchar(144) DEFAULT NULL,
  `userVerified` int(99) DEFAULT 0,
  `multiCheck` int(11) NOT NULL DEFAULT 0,
  `userName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `userRole`, `userLog`, `userTime`, `userBrowser`, `userOS`, `userModerator`, `userAuthKey`, `userVerified`, `multiCheck`, `userName`) VALUES
(250, 1, '::1', '2023-08-12', 'Google Chrome', 'Windows OS', 'Kayıt Sistemi', 'wlozinadmin31', 1, 0, 'Wlozin');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Tablo için AUTO_INCREMENT değeri `services`
--
ALTER TABLE `services`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
