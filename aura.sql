-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Haz 2021, 21:24:51
-- Sunucu sürümü: 10.4.19-MariaDB
-- PHP Sürümü: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `aura`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `badges`
--

CREATE TABLE `badges` (
  `id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `badge` varchar(999) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(999) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(999) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `badges`
--

INSERT INTO `badges` (`id`, `username`, `badge`, `name`, `description`) VALUES
(5, 'WoCean', 'https://images.habbo.com/c_images/album1584/TC050.gif', '19 Mayıs Atatürk`ü Anma, Gençlik ve Spor Bayramı', ''),
(6, 'WoCean', 'https://images.habbo.com/c_images/album1584/TR157.gif', '19 Mayıs bayramınız kutlu olsun!', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bans`
--

CREATE TABLE `bans` (
  `id` int(9) UNSIGNED NOT NULL,
  `username` varchar(180) DEFAULT NULL,
  `reason` varchar(500) NOT NULL,
  `ban_start` varchar(180) DEFAULT NULL,
  `ban_finish` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basvuru`
--

CREATE TABLE `basvuru` (
  `id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discordname` varchar(999) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `basvururanki` varchar(999) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `neden` varchar(999) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `basvuru`
--

INSERT INTO `basvuru` (`id`, `username`, `discordname`, `basvururanki`, `neden`) VALUES
(3, 'zBusy', 'Altan#8110', 'Moderatör', 'beni seçmelisiniz çünkü ben çok güzel bir teknisyenim <3'),
(4, 'zBusy', 'Altan#8110', 'Grafiker', 'bo şyapma lan'),
(5, 'zBusy', 'Altan#8110', 'Yazar', 'tm bye'),
(6, 'zBusy', 'Altan#8110', 'Tasarım Mimarı', 'testtstst'),
(7, 'zBusy', 'Altan#8110', 'Düzenek Mimarı', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'),
(8, 'saaaaaaaaa', 'saaaaaaaaa', 'Mimar', 'aasaaaaaaaaaaaaa'),
(9, 'Sanane lan', 'He', 'Moderator', 'Nah'),
(10, 'Twenzy€zBusy', 'YOK', 'Moderator', 'Çünkü çok güzelim '),
(11, 'Sangoer', 'Sangoer#3131', 'Moderator', 'Calıskanım'),
(12, 'Kava84', 'Kava Kaya', 'Moderator', 'Ben eskiden bayafan sitede çalıştım ve burayada gelmek istedim');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `username` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `look` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bubbleid` varchar(255) DEFAULT 'black'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `chat`
--

INSERT INTO `chat` (`id`, `username`, `look`, `text`, `bubbleid`) VALUES
(1, 'Twenzy', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62', 'Deneme Yazıdır bu', 'black'),
(16, 'zBusy', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014', 'test', 'vip'),
(17, 'zBusy', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014', 'Altan burayı test amaçlı olarak yapmıştır burası sonradan silinecektir bilginize.', 'staff'),
(18, 'zBusy', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014', 'tstetsetsetes', 'basketball'),
(19, 'zBusy', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014', 'mimar bubble', 'mimar'),
(20, 'zBusy', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014', 'lake?', 'lake'),
(21, 'zBusy', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014', 'vip2', 'vip2'),
(22, 'WoCean', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'oOooo', 'duck'),
(23, 'WoCean', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'chat', 'pirate'),
(24, '', '', '', 'black'),
(26, 'Twenzy', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62', 'tekrar sa', 'black'),
(27, 'zBusy', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014', 'hello', 'black'),
(28, 'zBusy', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014', 'tststs', 'basketball'),
(29, 'Twenzy', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62', 'ds', 'lake'),
(30, 'Twenzy', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62', 'sa', 'lake'),
(31, 'Twenzy', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014', 'saaaa', 'black'),
(32, 'Twenzy', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62', 'Altan', 'lake'),
(33, 'Twenzy', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62', '2. deneme', 'lake'),
(34, 'zBusy', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014', 'mrb kere', 'basketball'),
(35, 'MgKassyLa', 'hd-180-1.hr-3163-31.ha-3362-110.ea-3170-1408.ch-240-92.cc-3158-62.ca-3414-62.lg-3418-110.sh-305-92', 'selam', 'black'),
(36, 'Twenzy', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62', 'sa', 'lake'),
(37, 'Twenzy', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62', 'sa', 'lake'),
(38, 'Twenzy', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62', 'sa', 'lake'),
(39, 'Twenzy', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62', 'dd', 'lake'),
(40, 'zBusy', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014', 'test', 'basketball'),
(41, 'Twenzy', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62', 'sa', 'lake'),
(42, 'WoCean', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'As', 'black'),
(43, 'WoCean', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'test 2', 'black'),
(44, 'zBusy', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014', 'tttttttttttttttts', 'basketball'),
(45, 'Rushh', 'lg-275-176626.hd-9835-10.ch-3203-110', 'a', 'black'),
(46, 'zBusy', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014', 'fffffff', 'basketball');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `username` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `article_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `look` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`id`, `username`, `article_id`, `comment`, `look`) VALUES
(42, 'Twenzy', 10, ':oo', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62'),
(43, 'Risk', 10, 'Nice!', 'lg-275-176626.hd-9835-10.ch-3203-110'),
(44, 'WoCean', 12, 'Hll olsun kerem ?!', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68'),
(45, 'zBusy', 12, ':o:o canım kerem tebrikler :)', 'hr-3163-1403-1403.sh-3035-92.ca-4115-110-110.ch-215-92.he-3778-92.fa-3276-92.lg-280-110.hd-180-1014'),
(46, 'Rushh', 12, 'amdam!!', 'wa-2001-1408.sh-300-110.hd-180-7.ch-235-110.cc-3075-1417.hr-100-0.lg-3058-110.ha-1011-110.ea-1404-110'),
(47, 'WoCean', 13, '19 Mayıs Atatürk\'ü Anma, Gençlik ve Spor Bayramı Hepimize Kutlu Olsun !', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68'),
(48, 'Corelo', 17, 'bk', 'lg-275-176626.hd-9835-10.ch-3203-110'),
(49, 'zBusy', 16, 'Bol Şanslar katılacak herkese.', 'ha-3488-63.cc-2935-73-1322.hd-208-10.ch-255-82.lg-280-82.he-3833-92.hr-3163-52.sh-290-107554');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'blue',
  `maintenance` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `login` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `register` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `yilmazev` varchar(65) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'https://github.com/yilmazev'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `config`
--

INSERT INTO `config` (`id`, `url`, `title`, `description`, `keywords`, `theme`, `maintenance`, `login`, `register`, `yilmazev`) VALUES
(1, 'https://runoaura.in/', 'RunoAura', 'test', 'runoaura, runo fansite', 'blue', '0', '1', '1', 'https://runoaura.in/');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kisahaber`
--

CREATE TABLE `kisahaber` (
  `id` int(11) NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `haber` longtext COLLATE utf8_unicode_ci NOT NULL,
  `look` longtext COLLATE utf8_unicode_ci NOT NULL DEFAULT 'lg-280-64.sh-290-1408.hr-831-61.hd-190-10.ch-255-110',
  `category` varchar(9999) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'runo'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `kisahaber`
--

INSERT INTO `kisahaber` (`id`, `author`, `title`, `date`, `haber`, `look`, `category`) VALUES
(5, 'Twenzy', 'Runo - Uzman Seçimleri Başladı!', '', '<p>Bildiğiniz &uuml;zere Runo Hotel ailesi olarak Runo&#39;da yeni bir d&ouml;neme başlangı&ccedil; yaptık. Yeni d&ouml;nemin hepimiz i&ccedil;in tertemiz bir sayfa olacağını &ouml;nceden belirtmiştik. Personel ekibimizdeki uzman eksikliğinden dolayı bir se&ccedil;im başlatma kararı aldık.</p><p><strong>Uzman Ekibi Şartları</strong></p><p>1- 15 yaşında veya 15 yaşından b&uuml;y&uuml;k olmalısınız.</p><p>2- Discord kullanmalısınız.</p><p>3- Olgun tavırlar sergilemelisiniz.</p><p>4- K&uuml;f&uuml;r, argo kullanmamalısınız.</p><p>5- &Ccedil;abuk pes etmeyen bir yapıya sahip olmalısınız.&nbsp;</p><p>6- G&uuml;venilir bir kişiliğiniz olmalıdır.</p><p>7- Diğer kişler ile saygı &ccedil;er&ccedil;evesi i&ccedil;erisinde konuşabilmeli, sorunları konuşarak halledebilmelisiniz.</p><p>8- Oyunda aktif olmalısınız.</p><p><strong>Uzman se&ccedil;imlerine nasıl katılırım?</strong></p><p><a href=\"https://forms.gle/vdTVdgJB6YqvAtM89\">Se&ccedil;im formuna gitmek i&ccedil;in buraya tıkla!</a></p><p>Son başvuru tarihi 18.05.2021</p><p>Herkese Başarılar!</p>', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62', 'hotel');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-',
  `date` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No definida'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `logs`
--

INSERT INTO `logs` (`id`, `username`, `action`, `date`) VALUES
(1, 'Twenzy', 'Registered', '2021-04-20'),
(2, 'zBusy', 'Registered', '2021-04-20'),
(3, 'Twenzy', 'Signed in', '2021-04-20'),
(4, 'zBusy', 'Signed in', '2021-04-20'),
(5, 'WoCean', 'Registered', '2021-04-20'),
(6, 'WoCean', 'Signed in', '2021-04-20'),
(7, 'Twenzy', 'News created', '2021-04-20'),
(8, 'Twenzy', 'Commented', '2021-04-20'),
(9, 'zBusy', 'Commented', '2021-04-20'),
(10, 'Twenzy', 'Add new badge', '2021-04-20'),
(11, 'WoCean', 'Commented', '2021-04-20'),
(12, 'zBusy', 'Exit done', '2021-04-20'),
(13, 'zBusy', 'Signed in', '2021-04-20'),
(14, 'WoCean', 'Add new badge', '2021-04-20'),
(15, 'WoCean', 'Signed in', '2021-04-20'),
(16, 'Twenzy', 'Signed in', '2021-04-20'),
(17, 'WoCean', 'Exit done', '2021-04-20'),
(18, 'zBusy', 'Signed in', '2021-04-20'),
(19, 'Twenzy', 'Exit done', '2021-04-20'),
(20, 'WoCean', 'Signed in', '2021-04-20'),
(21, 'WoCean', 'Adjusted the config settings', '2021-04-20'),
(22, 'WoCean', 'Adjusted the config settings', '2021-04-20'),
(23, 'zBusy', 'Exit done', '2021-04-20'),
(24, 'zBusy', 'Signed in', '2021-04-20'),
(25, 'WoCean', 'Adjusted the config settings', '2021-04-20'),
(26, 'WoCean', 'Adjusted the config settings', '2021-04-20'),
(27, 'WoCean', 'Add new poll', '2021-04-20'),
(28, 'Twenzy', 'Signed in', '2021-04-20'),
(29, 'WoCean', 'Add new poll', '2021-04-20'),
(30, 'WoCean', 'Delete a comment', '2021-04-20'),
(31, 'TestAura', 'Registered', '2021-04-20'),
(32, 'TestAura', 'Signed in', '2021-04-20'),
(33, 'WoCean', 'Ban lifted', '2021-04-20'),
(34, 'WoCean', 'Ban lifted', '2021-04-20'),
(35, 'WoCean', 'Ban lifted', '2021-04-20'),
(36, 'WoCean', 'News created', '2021-04-20'),
(37, 'WoCean', 'Signed in', '2021-04-20'),
(38, 'WoCean', 'Adjusted the config settings', '2021-04-20'),
(39, 'WoCean', 'Çıkış Yapıldı', '2021-04-20'),
(40, 'TestAura', 'Giriş Yapıldı', '2021-04-20'),
(41, 'TestAura', 'Çıkış Yapıldı', '2021-04-20'),
(42, 'WoCean', 'Giriş Yapıldı', '2021-04-20'),
(43, 'WoCean', 'Çıkış Yapıldı', '2021-04-20'),
(44, 'WoCean', 'Giriş Yapıldı', '2021-04-20'),
(45, 'WoCean', 'Çıkış Yapıldı', '2021-04-20'),
(46, 'WoCean', 'Giriş Yapıldı', '2021-04-20'),
(47, 'zBusy', 'Giriş Yapıldı', '2021-04-20'),
(48, 'Twenzy', 'Yorum Yaptı', '2021-04-20'),
(49, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(50, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(51, 'Twenzy', 'Haberi Güncelledi', '2021-04-20'),
(52, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(53, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(54, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(55, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(56, 'Twenzy', 'Haberi Güncelledi', '2021-04-20'),
(57, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(58, 'Twenzy', 'Yorum Yaptı', '2021-04-20'),
(59, 'Twenzy', 'Yorum Yaptı', '2021-04-20'),
(60, 'Twenzy', 'Yorum Yaptı', '2021-04-20'),
(61, 'Twenzy', 'Yorum Yaptı', '2021-04-20'),
(62, 'Twenzy', 'Yorum Yaptı', '2021-04-20'),
(63, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(64, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(65, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(66, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(67, 'Twenzy', 'Yorum Yaptı', '2021-04-20'),
(68, 'Twenzy', 'Yorum Yaptı', '2021-04-20'),
(69, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(70, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(71, 'Twenzy', 'Yorum Yaptı', '2021-04-20'),
(72, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(73, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(74, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(75, 'WoCean', 'Yorum Yaptı', '2021-04-20'),
(76, 'Twenzy', 'Yorum Yaptı', '2021-04-20'),
(77, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(78, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(79, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(80, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(81, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(82, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(83, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(84, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(85, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(86, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(87, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(88, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(89, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(90, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(91, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(92, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(93, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(94, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(95, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(96, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(97, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(98, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(99, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(100, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(101, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(102, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(103, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(104, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(105, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(106, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(107, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(108, 'Twenzy', 'Yorum Sildi', '2021-04-20'),
(109, 'WoCean', 'Haberi Güncelledi', '2021-04-20'),
(110, 'WoCean', 'Giriş Yapıldı', '2021-04-20'),
(111, 'WoCean', 'Config Ayarlarını Güncelledi', '2021-04-20'),
(112, 'WoCean', 'Config Ayarlarını Güncelledi', '2021-04-20'),
(113, 'Hod', 'Kayıt Oldu', '2021-04-20'),
(114, 'Hod', 'Giriş Yapıldı', '2021-04-20'),
(115, 'Hod', 'Çıkış Yapıldı', '2021-04-20'),
(116, 'Hod', 'Giriş Yapıldı', '2021-04-20'),
(117, 'WoCean', 'Giriş Yapıldı', '2021-04-21'),
(118, 'WoCean', 'Çıkış Yapıldı', '2021-04-21'),
(119, 'Twenzy', 'Giriş Yapıldı', '2021-04-21'),
(120, 'zBusy', 'Giriş Yapıldı', '2021-04-21'),
(121, 'Twenzy', 'Giriş Yapıldı', '2021-04-21'),
(122, 'Twenzy', 'Yorum Yaptı', '2021-04-21'),
(123, 'Twenzy', 'Oylama Oluşturdu', '2021-04-21'),
(124, 'Twenzy', 'Giriş Yapıldı', '2021-04-21'),
(125, 'zBusy', 'Çıkış Yapıldı', '2021-04-21'),
(126, 'WoCean', 'Giriş Yapıldı', '2021-04-21'),
(127, 'WoCean', 'Giriş Yapıldı', '2021-04-21'),
(128, 'WoCean', 'Giriş Yapıldı', '2021-04-21'),
(129, 'WoCean', 'Giriş Yapıldı', '2021-04-22'),
(130, 'WoCean', 'Giriş Yapıldı', '2021-04-22'),
(131, 'Twenzy', 'Giriş Yapıldı', '2021-04-22'),
(132, 'WoCean', 'Config Ayarlarını Güncelledi', '2021-04-22'),
(133, 'zbusy', 'Giriş Yapıldı', '2021-04-22'),
(134, 'WoCean', 'Config Ayarlarını Güncelledi', '2021-04-22'),
(135, 'WoCean', 'Config Ayarlarını Güncelledi', '2021-04-22'),
(136, 'WoCean', 'Config Ayarlarını Güncelledi', '2021-04-22'),
(137, 'Twenzy', 'Giriş Yapıldı', '2021-04-22'),
(138, 'Twenzy', 'Çıkış Yapıldı', '2021-04-22'),
(139, 'Twenzy', 'Giriş Yapıldı', '2021-04-22'),
(140, 'Twenzy', 'Config Ayarlarını Güncelledi', '2021-04-22'),
(141, 'Twenzy', 'Giriş Yapıldı', '2021-04-22'),
(142, 'WoCean', 'Giriş Yapıldı', '2021-04-22'),
(143, 'zbusy', 'Giriş Yapıldı', '2021-04-22'),
(144, 'Twenzy', 'Yorum Yaptı', '2021-04-22'),
(145, 'Twenzy', 'Yorum Yaptı', '2021-04-22'),
(146, 'WoCean', 'Yorum Yaptı', '2021-04-22'),
(147, 'WoCean', 'Yorum Yaptı', '2021-04-22'),
(148, 'WoCean', 'Yorum Sildi', '2021-04-22'),
(149, 'WoCean', 'Yorum Sildi', '2021-04-22'),
(150, 'WoCean', 'Config Ayarlarını Güncelledi', '2021-04-22'),
(151, 'WoCean', 'Config Ayarlarını Güncelledi', '2021-04-22'),
(152, 'WoCean', 'Config Ayarlarını Güncelledi', '2021-04-22'),
(153, 'WoCean', 'Config Ayarlarını Güncelledi', '2021-04-22'),
(154, 'WoCean', 'Config Ayarlarını Güncelledi', '2021-04-22'),
(155, 'WoCean', 'Yorum Yaptı', '2021-04-22'),
(156, 'zBusy', 'Giriş Yapıldı', '2021-04-22'),
(157, 'Twenzy', 'Giriş Yapıldı', '2021-04-22'),
(158, 'zBusy', 'Yorum Sildi', '2021-04-22'),
(159, 'zBusy', 'Yorum Sildi', '2021-04-22'),
(160, 'WoCean', 'Yorum Yaptı', '2021-04-22'),
(161, 'Twenzy', 'Giriş Yapıldı', '2021-04-22'),
(162, 'Twenzy', 'Giriş Yapıldı', '2021-04-22'),
(163, 'WoCean', 'Giriş Yapıldı', '2021-04-22'),
(164, 'Zbusy', 'Giriş Yapıldı', '2021-04-23'),
(165, 'zBusy', 'Config Ayarlarını Güncelledi', '2021-04-23'),
(166, 'zBusy', 'Giriş Yapıldı', '2021-04-23'),
(167, 'zBusy', 'Config Ayarlarını Güncelledi', '2021-04-23'),
(168, 'zBusy', 'Config Ayarlarını Güncelledi', '2021-04-23'),
(169, 'zBusy', 'Config Ayarlarını Güncelledi', '2021-04-23'),
(170, 'zbusy', 'Giriş Yapıldı', '2021-04-23'),
(171, 'Twenzy', 'Giriş Yapıldı', '2021-04-23'),
(172, 'Twenzy', 'Giriş Yapıldı', '2021-04-23'),
(173, 'zBusy', 'Giriş Yapıldı', '2021-04-24'),
(174, 'zBusy', 'Yorum Sildi', '2021-04-24'),
(175, 'zBusy', 'Yorum Sildi', '2021-04-24'),
(176, 'zBusy', 'Haberi Güncelledi', '2021-04-24'),
(177, 'zBusy', 'Yorum Sildi', '2021-04-24'),
(178, 'zBusy', 'Yorum Sildi', '2021-04-24'),
(179, 'zBusy', 'Yorum Sildi', '2021-04-24'),
(180, 'zBusy', 'Haberi Güncelledi', '2021-04-24'),
(181, 'zBusy', 'Haberi Güncelledi', '2021-04-24'),
(182, 'zBusy', 'Haberi Güncelledi', '2021-04-24'),
(183, 'zBusy', 'Haber Oluşturdu', '2021-04-24'),
(184, 'WoCean', 'Haber Oluşturdu', '2021-04-24'),
(185, 'zBusy', 'Haberi Güncelledi', '2021-04-24'),
(186, 'zBusy', 'Yorum Sildi', '2021-04-24'),
(187, 'zBusy', 'Yorum Sildi', '2021-04-24'),
(188, 'zBusy', 'Haber Oluşturdu', '2021-04-24'),
(189, 'Lucera', 'Kayıt Oldu', '2021-05-03'),
(190, 'Twenzy', 'Giriş Yapıldı', '2021-05-03'),
(191, 'Lucera', 'Giriş Yapıldı', '2021-05-03'),
(192, 'Twenzy', 'Config Ayarlarını Güncelledi', '2021-05-03'),
(193, 'Twenzy', 'Config Ayarlarını Güncelledi', '2021-05-03'),
(194, 'Twenzy', 'Config Ayarlarını Güncelledi', '2021-05-03'),
(195, 'Suig', 'Kayıt Oldu', '2021-05-03'),
(196, 'Suig', 'Giriş Yapıldı', '2021-05-03'),
(197, 'Suig', 'Yorum Yaptı', '2021-05-03'),
(198, 'MgKassyLa', 'Kayıt Oldu', '2021-05-03'),
(199, 'MgKassyLa', 'Giriş Yapıldı', '2021-05-03'),
(200, 'WoCean', 'Giriş Yapıldı', '2021-05-03'),
(201, 'Suig', 'Giriş Yapıldı', '2021-05-03'),
(202, 'zBusy', 'Giriş Yapıldı', '2021-05-03'),
(203, 'Wocean', 'Giriş Yapıldı', '2021-05-04'),
(204, 'Twenzy', 'Giriş Yapıldı', '2021-05-04'),
(205, 'Twenzy', 'Haber Oluşturdu', '2021-05-04'),
(206, 'Twenzy', 'Haber Oluşturdu', '2021-05-04'),
(207, 'Wocean', 'Giriş Yapıldı', '2021-05-04'),
(208, 'WoCean', 'Haber Oluşturdu', '2021-05-04'),
(209, 'Twenzy', 'Haber Oluşturdu', '2021-05-04'),
(210, 'Twenzy', 'Haber Oluşturdu', '2021-05-04'),
(211, 'ZBusy', 'Giriş Yapıldı', '2021-05-04'),
(212, 'zBusy', 'Haber Oluşturdu', '2021-05-04'),
(213, '', 'Haber Oluşturdu', '2021-05-04'),
(214, 'zBusy', 'Haber Oluşturdu', '2021-05-04'),
(215, '', 'Haber Oluşturdu', '2021-05-04'),
(216, 'Twenzy', 'Çıkış Yapıldı', '2021-05-04'),
(217, '', 'Haber Oluşturdu', '2021-05-04'),
(218, 'WoCean', 'Haber Oluşturdu', '2021-05-04'),
(219, 'MgKassyLa', 'Giriş Yapıldı', '2021-05-04'),
(220, 'Lucera', 'Giriş Yapıldı', '2021-05-04'),
(221, 'Lucera', 'Haber Oluşturdu', '2021-05-04'),
(222, 'MgKassyLa', 'Haber Oluşturdu', '2021-05-04'),
(223, 'zBusy', 'Giriş Yapıldı', '2021-05-05'),
(224, 'zBusy', 'Yorum Yaptı', '2021-05-05'),
(225, 'zBusy', 'Yorum Sildi', '2021-05-05'),
(226, 'zBusy', 'Yorum Sildi', '2021-05-05'),
(227, 'zBusy', 'Yorum Sildi', '2021-05-05'),
(228, 'zBusy', 'Yorum Sildi', '2021-05-05'),
(229, 'zBusy', 'Yorum Sildi', '2021-05-05'),
(230, 'zBusy', 'Yorum Sildi', '2021-05-05'),
(231, 'zBusy', 'Yorum Sildi', '2021-05-05'),
(232, 'zBusy', 'Yorum Sildi', '2021-05-05'),
(233, 'Wocean', 'Giriş Yapıldı', '2021-05-05'),
(234, 'WoCean', 'Yorum Sildi', '2021-05-05'),
(235, 'WoCean', 'Yorum Sildi', '2021-05-05'),
(236, 'zBusy', 'Haber Oluşturdu', '2021-05-05'),
(237, 'Wocean', 'Giriş Yapıldı', '2021-05-05'),
(238, 'WoCean', 'Haber Oluşturdu', '2021-05-05'),
(239, 'zBusy', 'Haber Oluşturdu', '2021-05-05'),
(240, 'zBusy', 'Haber Oluşturdu', '2021-05-05'),
(241, 'zBusy', 'Haber Oluşturdu', '2021-05-05'),
(242, 'zBusy', 'Haber Oluşturdu', '2021-05-05'),
(243, 'zBusy', 'Haber Oluşturdu', '2021-05-05'),
(244, 'zBusy', 'Haber Oluşturdu', '2021-05-05'),
(245, 'zBusy', 'Haber Oluşturdu', '2021-05-05'),
(246, 'Wocean', 'Giriş Yapıldı', '2021-05-05'),
(247, 'zBusy', 'Haber Oluşturdu', '2021-05-05'),
(248, 'WoCean', 'Haber Oluşturdu', '2021-05-05'),
(249, 'WoCean', 'Haber Oluşturdu', '2021-05-05'),
(250, 'zBusy', 'Çıkış Yapıldı', '2021-05-05'),
(251, 'MgKassyLa', 'Giriş Yapıldı', '2021-05-05'),
(252, 'MgKassyLa', 'Haber Oluşturdu', '2021-05-05'),
(253, 'Wocean', 'Giriş Yapıldı', '2021-05-05'),
(254, 'MgKassyLa', 'Haber Oluşturdu', '2021-05-05'),
(255, 'MgKassyLa', 'Yorum Yaptı', '2021-05-05'),
(256, 'Twenzy', 'Giriş Yapıldı', '2021-05-05'),
(257, 'MgKassyLa', 'Haberi Güncelledi', '2021-05-05'),
(258, 'MgKassyLa', 'Haberi Güncelledi', '2021-05-05'),
(259, 'zbusy', 'Giriş Yapıldı', '2021-05-05'),
(260, 'MgKassyLa', 'Haberi Güncelledi', '2021-05-05'),
(261, 'Twenzy', 'Giriş Yapıldı', '2021-05-05'),
(262, 'Twenzy', 'Haber Oluşturdu', '2021-05-05'),
(263, 'Twenzy', 'Haber Oluşturdu', '2021-05-05'),
(264, 'zBusy', 'Haber Oluşturdu', '2021-05-05'),
(265, 'zBusy', 'Haber Oluşturdu', '2021-05-05'),
(266, 'Twenzy', 'Haber Oluşturdu', '2021-05-05'),
(267, 'MgKassyLa', 'Yorum Sildi', '2021-05-05'),
(268, 'MgKassyLa', 'Yorum Sildi', '2021-05-05'),
(269, 'MgKassyLa', 'Yorum Sildi', '2021-05-05'),
(270, 'zBusy', 'Yorum Sildi', '2021-05-05'),
(271, 'MgKassyLa', 'Yorum Yaptı', '2021-05-05'),
(272, 'Twenzy', 'Haber Oluşturdu', '2021-05-05'),
(273, 'Twenzy', 'Haber Oluşturdu', '2021-05-05'),
(274, 'Twenzy', 'Haber Oluşturdu', '2021-05-05'),
(275, 'zBusy', 'Haber Oluşturdu', '2021-05-05'),
(276, 'MgKassyLa', 'Haber Oluşturdu', '2021-05-05'),
(277, 'Twenzy', 'Haber Oluşturdu', '2021-05-05'),
(278, 'Twenzy', 'Haber Oluşturdu', '2021-05-05'),
(279, 'Twenzy', 'Haber Oluşturdu', '2021-05-05'),
(280, 'Twenzy', 'Haber Oluşturdu', '2021-05-05'),
(281, 'zBusy', 'Haber Oluşturdu', '2021-05-05'),
(282, 'Twenzy', 'Haber Oluşturdu', '2021-05-05'),
(283, 'Wocean', 'Giriş Yapıldı', '2021-05-05'),
(284, 'MgKassyLa', 'Giriş Yapıldı', '2021-05-06'),
(285, 'Wocean', 'Giriş Yapıldı', '2021-05-06'),
(286, 'WoCean', 'Haber Oluşturdu', '2021-05-06'),
(287, 'WoCean', 'Haber Oluşturdu', '2021-05-06'),
(288, 'zBusy', 'Giriş Yapıldı', '2021-05-06'),
(289, 'zBusy', 'Haber Oluşturdu', '2021-05-06'),
(290, 'Lucera', 'Giriş Yapıldı', '2021-05-06'),
(291, 'Wocean', 'Giriş Yapıldı', '2021-05-07'),
(292, 'Wocean', 'Giriş Yapıldı', '2021-05-09'),
(293, 'Lucera', 'Giriş Yapıldı', '2021-05-09'),
(294, 'Lucera', 'Yorum Sildi', '2021-05-09'),
(295, 'Lucera', 'Haber Oluşturdu', '2021-05-09'),
(296, 'Rushh', 'Kayıt Oldu', '2021-05-09'),
(297, 'Lucera', 'Yorum Sildi', '2021-05-09'),
(298, 'Lucera', 'Yorum Sildi', '2021-05-09'),
(299, 'Rushh', 'Giriş Yapıldı', '2021-05-09'),
(300, 'Risk', 'Kayıt Oldu', '2021-05-09'),
(301, 'Chou', 'Kayıt Oldu', '2021-05-09'),
(302, 'Twenzy', 'Giriş Yapıldı', '2021-05-09'),
(303, 'Wocean', 'Giriş Yapıldı', '2021-05-09'),
(304, 'Twenzy', 'Çıkış Yapıldı', '2021-05-09'),
(305, 'Rushh', 'Haber Oluşturdu', '2021-05-09'),
(306, 'Twenzy', 'Giriş Yapıldı', '2021-05-09'),
(307, 'Twenzy', 'Rozet Ekledi', '2021-05-09'),
(308, 'zBusy', 'Giriş Yapıldı', '2021-05-10'),
(309, 'Chou', 'Giriş Yapıldı', '2021-05-10'),
(310, 'F16', 'Kayıt Oldu', '2021-05-10'),
(311, 'F16', 'Giriş Yapıldı', '2021-05-10'),
(312, 'F16', 'Giriş Yapıldı', '2021-05-10'),
(313, 'zBusy', 'Giriş Yapıldı', '2021-05-11'),
(314, 'zBusy', 'Haber Oluşturdu', '2021-05-11'),
(315, 'F16', 'Giriş Yapıldı', '2021-05-11'),
(316, 'Twenzy', 'Giriş Yapıldı', '2021-05-11'),
(317, 'Twenzy', 'Haber Oluşturdu', '2021-05-11'),
(318, 'Twenzy', 'Haber Oluşturdu', '2021-05-11'),
(319, 'Twenzy', 'Haber Oluşturdu', '2021-05-11'),
(320, 'Twenzy', 'Haber Oluşturdu', '2021-05-11'),
(321, 'Rushh', 'Giriş Yapıldı', '2021-05-11'),
(322, 'Twenzy', 'Çıkış Yapıldı', '2021-05-11'),
(323, 'Twenzy', 'Giriş Yapıldı', '2021-05-11'),
(324, 'DELIROSS', 'Kayıt Oldu', '2021-05-11'),
(325, 'Twenzy', 'Haber Oluşturdu', '2021-05-11'),
(326, 'Twenzy', 'Haber Oluşturdu', '2021-05-11'),
(327, 'DELIROSS', 'Giriş Yapıldı', '2021-05-11'),
(328, 'Twenzy', 'Haber Oluşturdu', '2021-05-11'),
(329, 'Twenzy', 'Haber Oluşturdu', '2021-05-11'),
(330, 'Twenzy', 'Haber Oluşturdu', '2021-05-11'),
(331, 'Wocean', 'Giriş Yapıldı', '2021-05-11'),
(332, 'Rushh', 'Haber Oluşturdu', '2021-05-11'),
(333, 'Twenzy', 'Haber Oluşturdu', '2021-05-11'),
(334, 'Rushh', 'Haber Oluşturdu', '2021-05-11'),
(335, 'Rushh', 'Haber Oluşturdu', '2021-05-11'),
(336, 'Rushh', 'Config Ayarlarını Güncelledi', '2021-05-11'),
(337, 'Rushh', 'Config Ayarlarını Güncelledi', '2021-05-11'),
(338, 'Rushh', 'Config Ayarlarını Güncelledi', '2021-05-11'),
(339, 'Rushh', 'Config Ayarlarını Güncelledi', '2021-05-11'),
(340, 'Rushh', 'Config Ayarlarını Güncelledi', '2021-05-11'),
(341, 'Rushh', 'Haber Oluşturdu', '2021-05-11'),
(342, 'MgKassyLa', 'Giriş Yapıldı', '2021-05-11'),
(343, 'MgKassyLa', 'Giriş Yapıldı', '2021-05-11'),
(344, 'CeYDaJX', 'Kayıt Oldu', '2021-05-11'),
(345, 'CeYDaJX', 'Giriş Yapıldı', '2021-05-11'),
(346, 'F16', 'Giriş Yapıldı', '2021-05-11'),
(347, 'Rushh', 'Giriş Yapıldı', '2021-05-12'),
(348, 'Rushh', 'Haber Oluşturdu', '2021-05-12'),
(349, 'DELIROSS', 'Giriş Yapıldı', '2021-05-12'),
(350, 'Rushh', 'Haber Oluşturdu', '2021-05-12'),
(351, 'Rushh', 'Yorum Sildi', '2021-05-12'),
(352, 'Rushh', 'Yorum Sildi', '2021-05-12'),
(353, 'Shiver', 'Kayıt Oldu', '2021-05-12'),
(354, 'Shiver', 'Giriş Yapıldı', '2021-05-12'),
(355, 'Lucera', 'Giriş Yapıldı', '2021-05-12'),
(356, 'Lucera', 'Haber Oluşturdu', '2021-05-12'),
(357, 'Rushh', 'Giriş Yapıldı', '2021-05-13'),
(358, 'Rushh', 'Haber Oluşturdu', '2021-05-13'),
(359, 'Rushh', 'Haber Oluşturdu', '2021-05-13'),
(360, 'Risk', 'Giriş Yapıldı', '2021-05-13'),
(361, 'Risk', 'Haber Oluşturdu', '2021-05-13'),
(362, 'Rushh', 'Haber Oluşturdu', '2021-05-13'),
(363, 'Rushh', 'Haber Oluşturdu', '2021-05-13'),
(364, 'Rushh', 'Haber Oluşturdu', '2021-05-13'),
(365, 'Rushh', 'Giriş Yapıldı', '2021-05-13'),
(366, 'Lucera', 'Giriş Yapıldı', '2021-05-13'),
(367, 'Dracking', 'Kayıt Oldu', '2021-05-13'),
(368, 'Chou', 'Giriş Yapıldı', '2021-05-13'),
(369, 'Chou', 'Haber Oluşturdu', '2021-05-13'),
(370, 'Dracking', 'Giriş Yapıldı', '2021-05-13'),
(371, 'F16', 'Giriş Yapıldı', '2021-05-13'),
(372, 'CeYDaJX', 'Giriş Yapıldı', '2021-05-13'),
(373, 'M.Drms32', 'Kayıt Oldu', '2021-05-13'),
(374, 'Chou', 'Haber Oluşturdu', '2021-05-13'),
(375, 'Lucera', 'Giriş Yapıldı', '2021-05-14'),
(376, 'Lucera', 'Haber Oluşturdu', '2021-05-14'),
(377, 'Lucera', 'Haberi Güncelledi', '2021-05-14'),
(378, 'Twenzy', 'Giriş Yapıldı', '2021-05-14'),
(379, 'Twenzy', 'Yorum Yaptı', '2021-05-14'),
(380, 'Twenzy', 'Haber Oluşturdu', '2021-05-14'),
(381, 'Twenzy', 'Haberi Güncelledi', '2021-05-14'),
(382, 'Twenzy', 'Haberi Güncelledi', '2021-05-14'),
(383, 'Twenzy', 'Haberi Güncelledi', '2021-05-14'),
(384, 'M.Drms32', 'Giriş Yapıldı', '2021-05-14'),
(385, 'Risk', 'Giriş Yapıldı', '2021-05-15'),
(386, 'Risk', 'Yorum Yaptı', '2021-05-15'),
(387, 'Risk', 'Rozet Ekledi', '2021-05-15'),
(388, 'Risk', 'Yorum Sildi', '2021-05-15'),
(389, 'Risk', 'Rozet Ekledi', '2021-05-15'),
(390, 'Wocean', 'Giriş Yapıldı', '2021-05-15'),
(391, 'Lucera', 'Haber Oluşturdu', '2021-05-15'),
(392, 'Lucera', 'Haber Oluşturdu', '2021-05-15'),
(393, 'Wocean', 'Giriş Yapıldı', '2021-05-16'),
(394, 'Myth', 'Kayıt Oldu', '2021-05-16'),
(395, 'Myth', 'Giriş Yapıldı', '2021-05-16'),
(396, 'Lucera', 'Giriş Yapıldı', '2021-05-16'),
(397, 'Lucera', 'Haber Oluşturdu', '2021-05-16'),
(398, 'Lucera', 'Haber Oluşturdu', '2021-05-16'),
(399, 'Myth', 'Çıkış Yapıldı', '2021-05-16'),
(400, 'Lucera', 'Haber Oluşturdu', '2021-05-16'),
(401, 'Risk', 'Giriş Yapıldı', '2021-05-16'),
(402, 'Lucera', 'Haber Oluşturdu', '2021-05-16'),
(403, 'Lucera', 'Haber Oluşturdu', '2021-05-16'),
(404, 'Suig', 'Giriş Yapıldı', '2021-05-17'),
(405, 'Suig', 'Haber Oluşturdu', '2021-05-17'),
(406, 'Wocean', 'Giriş Yapıldı', '2021-05-17'),
(407, 'Wocean', 'Giriş Yapıldı', '2021-05-17'),
(408, 'WoCean', 'Haber Oluşturdu', '2021-05-17'),
(409, 'WoCean', 'Haberi Güncelledi', '2021-05-17'),
(410, 'WoCean', 'Giriş Yapıldı', '2021-05-17'),
(411, 'WoCean', 'Haber Oluşturdu', '2021-05-17'),
(412, 'WoCean', 'Yorum Yaptı', '2021-05-17'),
(413, 'zBusy', 'Giriş Yapıldı', '2021-05-18'),
(414, 'zBusy', 'Yorum Yaptı', '2021-05-18'),
(415, 'zBusy', 'Haber Oluşturdu', '2021-05-18'),
(416, 'Rushh', 'Giriş Yapıldı', '2021-05-18'),
(417, 'Rushh', 'Haber Oluşturdu', '2021-05-18'),
(418, 'Rushh', 'Haber Oluşturdu', '2021-05-18'),
(419, 'Rushh', 'Haber Oluşturdu', '2021-05-18'),
(420, 'Rushh', 'Yorum Yaptı', '2021-05-18'),
(421, 'aeternumvale', 'Kayıt Oldu', '2021-05-18'),
(422, 'Rushh', 'Haber Oluşturdu', '2021-05-18'),
(423, 'Twenzy', 'Giriş Yapıldı', '2021-05-18'),
(424, 'Rushh', 'Haber Oluşturdu', '2021-05-18'),
(425, 'aeternumvale', 'Giriş Yapıldı', '2021-05-18'),
(426, 'trTuana', 'Kayıt Oldu', '2021-05-18'),
(427, 'Rushh', 'Haber Oluşturdu', '2021-05-18'),
(428, 'trTuana', 'Giriş Yapıldı', '2021-05-18'),
(429, 'zBusy', 'Giriş Yapıldı', '2021-05-18'),
(430, 'Akai03', 'Kayıt Oldu', '2021-05-18'),
(431, 'Akai03', 'Giriş Yapıldı', '2021-05-18'),
(432, 'zBusy', 'Haber Oluşturdu', '2021-05-18'),
(433, 'Rushh', 'Giriş Yapıldı', '2021-05-18'),
(434, 'Rushh', 'Giriş Yapıldı', '2021-05-18'),
(435, 'Myth', 'Giriş Yapıldı', '2021-05-18'),
(436, 'Rushh', 'Haber Oluşturdu', '2021-05-18'),
(437, 'WoCean', 'Haber Oluşturdu', '2021-05-19'),
(438, 'WoCean', 'Haberi Güncelledi', '2021-05-19'),
(439, 'WoCean', 'Haberi Güncelledi', '2021-05-19'),
(440, 'WoCean', 'Haberi Güncelledi', '2021-05-19'),
(441, 'WoCean', 'Haberi Güncelledi', '2021-05-19'),
(442, 'WoCean', 'Haberi Güncelledi', '2021-05-19'),
(443, 'WoCean', 'Haberi Güncelledi', '2021-05-19'),
(444, 'WoCean', 'Haberi Güncelledi', '2021-05-19'),
(445, 'WoCean', 'Haberi Güncelledi', '2021-05-19'),
(446, 'WoCean', 'Yorum Sildi', '2021-05-19'),
(447, 'WoCean', 'Rozet Ekledi', '2021-05-19'),
(448, 'WoCean', 'Rozet Ekledi', '2021-05-19'),
(449, 'WoCean', 'Config Ayarlarını Güncelledi', '2021-05-19'),
(450, 'zBusy', 'Giriş Yapıldı', '2021-05-19'),
(451, 'zBusy', 'Haberi Güncelledi', '2021-05-19'),
(452, 'zBusy', 'Haberi Güncelledi', '2021-05-19'),
(453, 'Twenzy', 'Giriş Yapıldı', '2021-05-19'),
(454, 'Twenzy', 'Haber Oluşturdu', '2021-05-19'),
(455, 'Rushh', 'Giriş Yapıldı', '2021-05-19'),
(456, 'Rushh', 'Haber Oluşturdu', '2021-05-19'),
(457, 'M.Drms32', 'Giriş Yapıldı', '2021-05-19'),
(458, 'trTuana', 'Giriş Yapıldı', '2021-05-19'),
(459, 'DELIROSS', 'Giriş Yapıldı', '2021-05-20'),
(460, 'Kava84', 'Kayıt Oldu', '2021-05-20'),
(461, 'Kava84', 'Giriş Yapıldı', '2021-05-20'),
(462, 'Kava84', 'Haber Oluşturdu', '2021-05-20'),
(463, 'Kava84', 'Çıkış Yapıldı', '2021-05-20'),
(464, 'Kava84', 'Giriş Yapıldı', '2021-05-20'),
(465, 'Rushh', 'Giriş Yapıldı', '2021-05-20'),
(466, 'Rushh', 'Haber Oluşturdu', '2021-05-20'),
(467, 'Kava84', 'Giriş Yapıldı', '2021-05-20'),
(468, 'Kava84', 'Giriş Yapıldı', '2021-05-20'),
(469, 'Kava84', 'Giriş Yapıldı', '2021-05-20'),
(470, 'F16', 'Giriş Yapıldı', '2021-05-20'),
(471, 'Kava84', 'Giriş Yapıldı', '2021-05-21'),
(472, 'Kava84', 'Giriş Yapıldı', '2021-05-21'),
(473, 'Kava84', 'Giriş Yapıldı', '2021-05-21'),
(474, 'trTuana', 'Giriş Yapıldı', '2021-05-22'),
(475, 'zBusy', 'Giriş Yapıldı', '2021-05-27'),
(476, 'zBusy', 'Çıkış Yapıldı', '2021-05-27'),
(477, 'zBusy', 'Giriş Yapıldı', '2021-05-27'),
(478, 'zBusy', 'Çıkış Yapıldı', '2021-05-27'),
(479, 'denemeforcms', 'Kayıt Oldu', '2021-05-27'),
(480, 'denemeforcms', 'Giriş Yapıldı', '2021-05-27'),
(481, 'WoCean', 'Giriş Yapıldı', '2021-05-27'),
(482, 'WoCean', 'Çıkış Yapıldı', '2021-05-27'),
(483, 'WoCean', 'Giriş Yapıldı', '2021-05-27'),
(484, 'WoCean', 'Haber Oluşturdu', '2021-05-27'),
(485, 'WoCean', 'Haber Oluşturdu', '2021-05-27'),
(486, 'WoCean', 'Haberi Güncelledi', '2021-05-27'),
(487, 'WoCean', 'Haber Oluşturdu', '2021-05-27'),
(488, 'WoCean', 'Haber Oluşturdu', '2021-05-27'),
(489, 'WoCean', 'Config Ayarlarını Güncelledi', '2021-05-27'),
(490, 'WoCean', 'Giriş Yapıldı', '2021-05-27'),
(491, 'WoCean', 'Çıkış Yapıldı', '2021-05-27'),
(492, 'Jizzle', 'Kayıt Oldu', '2021-05-27'),
(493, 'Jizzle', 'Giriş Yapıldı', '2021-05-27'),
(494, 'WoCean', 'Giriş Yapıldı', '2021-05-27'),
(495, 'WoCean', 'Haber Oluşturdu', '2021-05-27'),
(496, 'WoCean', 'Haber Oluşturdu', '2021-05-27'),
(497, 'WoCean', 'Haber Oluşturdu', '2021-05-27'),
(498, 'zBusy', 'Giriş Yapıldı', '2021-05-28'),
(499, 'Corelo', 'Kayıt Oldu', '2021-05-28'),
(500, 'Corelo', 'Giriş Yapıldı', '2021-05-28'),
(501, 'Corelo', 'Yorum Yaptı', '2021-05-28'),
(502, 'WoCean', 'Giriş Yapıldı', '2021-05-28'),
(503, 'Dracking', 'Giriş Yapıldı', '2021-05-28'),
(504, 'Dracking', 'Giriş Yapıldı', '2021-05-28'),
(505, 'trTuana', 'Giriş Yapıldı', '2021-05-28'),
(506, 'JoyKomutan', 'Kayıt Oldu', '2021-05-28'),
(507, 'JoyKomutan', 'Giriş Yapıldı', '2021-05-28'),
(508, 'Gaztambide', 'Kayıt Oldu', '2021-05-28'),
(509, 'Rushh', 'Giriş Yapıldı', '2021-05-29'),
(510, 'Rushh', 'Giriş Yapıldı', '2021-05-29'),
(511, 'Rushh', 'Haber Oluşturdu', '2021-05-29'),
(512, 'Rushh', 'Haber Oluşturdu', '2021-05-29'),
(513, 'Rushh', 'Haber Oluşturdu', '2021-05-29'),
(514, 'Rushh', 'Haber Oluşturdu', '2021-05-29'),
(515, 'Rushh', 'Haber Oluşturdu', '2021-05-29'),
(516, 'Rushh', 'Haber Oluşturdu', '2021-05-29'),
(517, 'zBusy', 'Giriş Yapıldı', '2021-05-29'),
(518, 'zBusy', '', '2021-05-29'),
(519, 'M.Drms32', 'Giriş Yapıldı', '2021-05-29'),
(520, 'Wocean', 'Giriş Yapıldı', '2021-05-29'),
(521, 'WoCean', 'Haber Oluşturdu', '2021-05-29'),
(522, 'WoCean', 'Haber Oluşturdu', '2021-05-29'),
(523, 'WoCean', 'Haber Oluşturdu', '2021-05-29'),
(524, 'WoCean', 'Haberi Güncelledi', '2021-05-29'),
(525, 'WoCean', 'Haberi Güncelledi', '2021-05-29'),
(526, 'WoCean', 'Haberi Güncelledi', '2021-05-29'),
(527, 'WoCean', 'Haberi Güncelledi', '2021-05-29'),
(528, 'WoCean', 'Haberi Güncelledi', '2021-05-29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `logs_visiting`
--

CREATE TABLE `logs_visiting` (
  `id` int(9) UNSIGNED NOT NULL,
  `ip` varchar(180) DEFAULT NULL,
  `date_start` varchar(180) DEFAULT NULL,
  `hour` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `logs_visiting`
--

INSERT INTO `logs_visiting` (`id`, `ip`, `date_start`, `hour`) VALUES
(1, '213.43.90.68', '2021-04-20', '05:35:41'),
(2, '186.2.164.59', '2021-04-20', '05:36:32'),
(3, '176.239.215.229', '2021-04-20', '05:36:44'),
(4, '88.246.185.170', '2021-04-20', '05:38:34'),
(5, '186.2.164.130', '2021-04-20', '05:52:11'),
(6, '186.2.164.11', '2021-04-20', '05:52:32'),
(7, '186.2.164.24', '2021-04-20', '05:52:33'),
(8, '186.2.164.101', '2021-04-20', '05:52:33'),
(9, '186.2.164.74', '2021-04-20', '05:52:33'),
(10, '186.2.164.52', '2021-04-20', '05:52:33'),
(11, '186.2.164.45', '2021-04-20', '05:52:33'),
(12, '186.2.164.3', '2021-04-20', '05:52:33'),
(13, '162.158.210.148', '2021-04-20', '05:52:37'),
(14, '186.2.164.231', '2021-04-20', '05:52:37'),
(15, '186.2.164.129', '2021-04-20', '05:53:57'),
(16, '141.101.105.136', '2021-04-20', '05:54:29'),
(17, '141.101.76.186', '2021-04-20', '05:55:10'),
(18, '162.158.159.55', '2021-04-20', '05:55:34'),
(19, '141.101.76.242', '2021-04-20', '05:55:38'),
(20, '141.101.99.41', '2021-04-20', '05:57:07'),
(21, '141.101.104.225', '2021-04-20', '05:58:34'),
(22, '141.101.104.226', '2021-04-20', '05:58:38'),
(23, '162.158.158.101', '2021-04-20', '05:59:22'),
(24, '162.158.111.154', '2021-04-20', '05:59:35'),
(25, '141.101.105.110', '2021-04-20', '05:59:58'),
(26, '141.101.76.253', '2021-04-20', '06:00:02'),
(27, '162.158.111.153', '2021-04-20', '06:00:14'),
(28, '141.101.76.60', '2021-04-20', '06:00:21'),
(29, '172.69.54.23', '2021-04-20', '06:00:26'),
(30, '141.101.105.82', '2021-04-20', '06:00:31'),
(31, '141.101.76.190', '2021-04-20', '06:00:35'),
(32, '141.101.98.28', '2021-04-20', '06:02:04'),
(33, '141.101.104.203', '2021-04-20', '06:02:34'),
(34, '141.101.98.94', '2021-04-20', '06:03:13'),
(35, '141.101.105.56', '2021-04-20', '06:03:56'),
(36, '162.158.155.196', '2021-04-20', '06:07:19'),
(37, '141.101.104.233', '2021-04-20', '06:07:20'),
(38, '162.158.111.15', '2021-04-20', '06:07:48'),
(39, '162.158.155.197', '2021-04-20', '06:08:37'),
(40, '172.69.55.202', '2021-04-20', '06:09:23'),
(41, '141.101.76.252', '2021-04-20', '06:09:31'),
(42, '141.101.99.69', '2021-04-20', '06:09:34'),
(43, '141.101.98.12', '2021-04-20', '06:11:32'),
(44, '141.101.99.91', '2021-04-20', '06:14:24'),
(45, '172.69.55.198', '2021-04-20', '06:16:08'),
(46, '172.69.54.24', '2021-04-20', '06:16:33'),
(47, '162.158.111.147', '2021-04-20', '06:16:50'),
(48, '162.158.155.46', '2021-04-20', '06:17:08'),
(49, '141.101.76.191', '2021-04-20', '06:19:04'),
(50, '141.101.105.74', '2021-04-20', '06:19:29'),
(51, '162.158.111.111', '2021-04-20', '06:23:07'),
(52, '172.69.54.179', '2021-04-20', '06:23:23'),
(53, '141.101.99.177', '2021-04-20', '06:24:11'),
(54, '162.142.125.121', '2021-04-20', '06:28:41'),
(55, '141.101.76.62', '2021-04-20', '06:38:10'),
(56, '141.101.104.51', '2021-04-20', '06:38:45'),
(57, '162.158.158.171', '2021-04-20', '07:07:20'),
(58, '34.77.163.42', '2021-04-20', '07:11:00'),
(59, '162.158.159.54', '2021-04-20', '07:17:27'),
(60, '141.101.98.254', '2021-04-20', '07:18:26'),
(61, '162.158.155.148', '2021-04-20', '07:21:27'),
(62, '141.101.98.29', '2021-04-20', '07:22:42'),
(63, '141.101.99.92', '2021-04-20', '07:36:27'),
(64, '162.158.159.25', '2021-04-20', '07:45:36'),
(65, '162.158.159.24', '2021-04-20', '07:45:59'),
(66, '186.2.164.87', '2021-04-20', '08:01:07'),
(67, '162.158.158.172', '2021-04-20', '08:11:33'),
(68, '80.82.77.192', '2021-04-20', '08:48:32'),
(69, '128.14.133.58', '2021-04-20', '11:25:51'),
(70, '186.2.164.1', '2021-04-20', '11:46:51'),
(71, '141.101.77.162', '2021-04-20', '11:53:55'),
(72, '186.2.164.117', '2021-04-20', '12:34:34'),
(73, '141.101.105.57', '2021-04-20', '13:31:37'),
(74, '141.101.104.204', '2021-04-20', '13:31:49'),
(75, '141.101.105.150', '2021-04-20', '13:49:45'),
(76, '172.69.55.203', '2021-04-20', '14:03:58'),
(77, '143.198.207.170', '2021-04-20', '14:57:34'),
(78, '162.158.235.43', '2021-04-20', '14:57:57'),
(79, '193.118.53.194', '2021-04-20', '15:01:48'),
(80, '172.68.50.84', '2021-04-20', '15:21:10'),
(81, '162.158.7.151', '2021-04-20', '15:26:12'),
(82, '162.158.111.51', '2021-04-20', '15:26:20'),
(83, '172.68.132.151', '2021-04-20', '15:26:44'),
(84, '141.101.99.42', '2021-04-20', '15:28:06'),
(85, '162.158.210.122', '2021-04-20', '15:31:06'),
(86, '167.248.133.39', '2021-04-20', '15:36:13'),
(87, '141.101.105.103', '2021-04-20', '15:38:40'),
(88, '172.70.34.214', '2021-04-20', '15:46:42'),
(89, '162.158.111.51', '2021-04-21', '04:45:10'),
(90, '141.101.76.62', '2021-04-21', '04:45:20'),
(91, '141.101.77.214', '2021-04-21', '04:45:24'),
(92, '141.101.76.210', '2021-04-21', '04:45:47'),
(93, '141.101.105.136', '2021-04-21', '04:54:46'),
(94, '141.101.98.254', '2021-04-21', '05:34:56'),
(95, '162.158.155.196', '2021-04-21', '05:35:06'),
(96, '141.101.99.69', '2021-04-21', '05:35:54'),
(97, '162.158.158.171', '2021-04-21', '05:36:11'),
(98, '141.101.99.177', '2021-04-21', '05:36:40'),
(99, '162.158.159.54', '2021-04-21', '05:37:07'),
(100, '172.69.54.215', '2021-04-21', '05:37:09'),
(101, '162.158.155.148', '2021-04-21', '05:38:15'),
(102, '141.101.98.28', '2021-04-21', '05:44:06'),
(103, '141.101.98.94', '2021-04-21', '05:45:21'),
(104, '141.101.99.87', '2021-04-21', '05:50:08'),
(105, '172.69.54.216', '2021-04-21', '05:50:26'),
(106, '162.158.158.101', '2021-04-21', '05:50:41'),
(107, '162.158.111.21', '2021-04-21', '05:50:44'),
(108, '141.101.105.150', '2021-04-21', '05:50:55'),
(109, '141.101.105.102', '2021-04-21', '05:51:02'),
(110, '141.101.98.12', '2021-04-21', '05:53:34'),
(111, '162.158.159.24', '2021-04-21', '05:56:11'),
(112, '141.101.99.91', '2021-04-21', '06:02:17'),
(113, '141.101.99.41', '2021-04-21', '06:03:56'),
(114, '186.2.164.101', '2021-04-21', '08:57:51'),
(115, '186.2.164.133', '2021-04-21', '08:57:56'),
(116, '186.2.164.130', '2021-04-21', '09:00:58'),
(117, '186.2.164.11', '2021-04-21', '09:03:05'),
(118, '186.2.164.26', '2021-04-21', '09:08:02'),
(119, '162.158.111.111', '2021-04-21', '09:10:56'),
(120, '141.101.105.16', '2021-04-21', '09:11:09'),
(121, '141.101.99.178', '2021-04-21', '09:15:10'),
(122, '162.158.155.46', '2021-04-21', '09:51:08'),
(123, '186.2.164.30', '2021-04-21', '11:31:34'),
(124, '186.2.164.59', '2021-04-21', '13:36:16'),
(125, '186.2.164.52', '2021-04-21', '13:53:43'),
(126, '186.2.164.12', '2021-04-21', '16:07:58'),
(127, '186.2.164.131', '2021-04-21', '16:08:17'),
(128, '186.2.164.3', '2021-04-21', '16:08:47'),
(129, '186.2.164.31', '2021-04-21', '16:08:52'),
(130, '141.101.104.51', '2021-04-21', '17:09:19'),
(131, '186.2.164.130', '2021-04-22', '00:22:21'),
(132, '186.2.164.26', '2021-04-22', '00:22:47'),
(133, '186.2.164.11', '2021-04-22', '00:27:30'),
(134, '186.2.164.101', '2021-04-22', '00:27:32'),
(135, '141.101.98.254', '2021-04-22', '03:12:14'),
(136, '162.158.155.196', '2021-04-22', '03:12:39'),
(137, '162.158.158.171', '2021-04-22', '03:12:45'),
(138, '172.69.54.215', '2021-04-22', '03:16:38'),
(139, '141.101.76.228', '2021-04-22', '03:16:55'),
(140, '141.101.99.41', '2021-04-22', '03:17:15'),
(141, '141.101.76.210', '2021-04-22', '03:17:34'),
(142, '141.101.99.87', '2021-04-22', '03:28:12'),
(143, '141.101.104.233', '2021-04-22', '03:30:24'),
(144, '141.101.104.234', '2021-04-22', '03:30:27'),
(145, '141.101.105.16', '2021-04-22', '03:30:32'),
(146, '141.101.76.242', '2021-04-22', '03:30:40'),
(147, '141.101.105.150', '2021-04-22', '04:14:13'),
(148, '141.101.105.136', '2021-04-22', '04:14:34'),
(149, '141.101.77.214', '2021-04-22', '04:14:44'),
(150, '141.101.76.229', '2021-04-22', '04:14:53'),
(151, '186.2.164.52', '2021-04-22', '04:15:49'),
(152, '162.158.159.24', '2021-04-22', '04:19:08'),
(153, '162.158.159.54', '2021-04-22', '04:19:13'),
(154, '141.101.99.69', '2021-04-22', '04:20:24'),
(155, '141.101.98.94', '2021-04-22', '04:20:36'),
(156, '141.101.76.62', '2021-04-22', '04:22:08'),
(157, '141.101.99.178', '2021-04-22', '04:23:58'),
(158, '162.158.111.111', '2021-04-22', '04:25:37'),
(159, '141.101.98.28', '2021-04-22', '04:25:55'),
(160, '141.101.98.12', '2021-04-22', '04:28:40'),
(161, '162.158.155.148', '2021-04-22', '04:35:37'),
(162, '141.101.99.91', '2021-04-22', '04:35:59'),
(163, '162.158.155.46', '2021-04-22', '04:36:20'),
(164, '162.158.158.101', '2021-04-22', '04:37:27'),
(165, '141.101.99.177', '2021-04-22', '04:47:53'),
(166, '186.2.164.59', '2021-04-22', '05:52:39'),
(167, '186.2.164.100', '2021-04-22', '06:05:19'),
(168, '162.158.159.25', '2021-04-22', '08:00:25'),
(169, '141.101.99.4', '2021-04-22', '08:00:30'),
(170, '162.158.111.51', '2021-04-22', '08:14:17'),
(171, '162.158.210.122', '2021-04-22', '09:02:26'),
(172, '162.158.210.123', '2021-04-22', '09:02:32'),
(173, '141.101.99.70', '2021-04-22', '09:29:48'),
(174, '162.158.210.148', '2021-04-22', '09:57:52'),
(175, '162.158.111.21', '2021-04-22', '10:02:41'),
(176, '162.158.155.149', '2021-04-22', '10:18:45'),
(177, '141.101.104.51', '2021-04-22', '10:22:43'),
(178, '162.158.210.154', '2021-04-22', '10:36:48'),
(179, '141.101.105.102', '2021-04-22', '10:36:52'),
(180, '162.158.63.114', '2021-04-22', '10:37:35'),
(181, '162.158.159.55', '2021-04-22', '10:59:08'),
(182, '186.2.164.29', '2021-04-22', '14:13:36'),
(183, '186.2.164.9', '2021-04-22', '14:17:43'),
(184, '172.69.55.198', '2021-04-22', '14:54:51'),
(185, '186.2.164.229', '2021-04-22', '15:31:07'),
(186, '141.101.76.72', '2021-04-23', '02:19:50'),
(187, '141.101.77.148', '2021-04-23', '02:20:03'),
(188, '141.101.76.243', '2021-04-23', '02:20:13'),
(189, '172.69.54.215', '2021-04-23', '02:20:20'),
(190, '141.101.76.210', '2021-04-23', '02:20:33'),
(191, '141.101.104.51', '2021-04-23', '02:20:43'),
(192, '141.101.76.242', '2021-04-23', '02:20:54'),
(193, '186.2.164.229', '2021-04-23', '04:40:14'),
(194, '186.2.164.9', '2021-04-23', '05:12:48'),
(195, '186.2.164.101', '2021-04-23', '05:12:48'),
(196, '186.2.164.130', '2021-04-23', '05:13:16'),
(197, '186.2.164.29', '2021-04-23', '05:13:17'),
(198, '172.69.54.107', '2021-04-23', '09:14:44'),
(199, '186.2.164.87', '2021-04-23', '14:15:25'),
(200, '186.2.164.103', '2021-04-23', '14:20:34'),
(201, '186.2.164.54', '2021-04-23', '14:52:41'),
(202, '162.158.111.112', '2021-04-23', '17:47:07'),
(203, '141.101.76.228', '2021-04-23', '17:47:27'),
(204, '162.158.111.15', '2021-04-23', '17:47:33'),
(205, '141.101.105.16', '2021-04-23', '17:47:43'),
(206, '141.101.105.102', '2021-04-23', '17:49:32'),
(207, '141.101.105.150', '2021-04-23', '17:55:11'),
(208, '186.2.164.229', '2021-04-24', '02:55:31'),
(209, '186.2.164.226', '2021-04-24', '02:55:49'),
(210, '172.69.54.107', '2021-04-24', '04:21:03'),
(211, '162.158.111.51', '2021-04-24', '04:21:16'),
(212, '162.158.111.111', '2021-04-24', '04:21:20'),
(213, '141.101.76.228', '2021-04-24', '04:24:50'),
(214, '141.101.76.210', '2021-04-24', '04:24:54'),
(215, '186.2.164.101', '2021-04-24', '05:07:53'),
(216, '186.2.164.9', '2021-04-24', '05:08:02'),
(217, '186.2.164.29', '2021-04-24', '05:08:10'),
(218, '186.2.164.130', '2021-04-24', '05:12:21'),
(219, '186.2.164.14', '2021-04-24', '05:12:51'),
(220, '172.69.54.215', '2021-04-24', '05:24:51'),
(221, '141.101.105.150', '2021-04-24', '05:25:04'),
(222, '162.158.111.15', '2021-04-24', '05:25:08'),
(223, '186.2.164.28', '2021-04-24', '05:32:00'),
(224, '186.2.164.27', '2021-04-24', '05:35:35'),
(225, '186.2.164.11', '2021-04-24', '05:35:39'),
(226, '186.2.164.87', '2021-04-24', '05:36:12'),
(227, '186.2.164.60', '2021-04-24', '05:37:09'),
(228, '186.2.164.131', '2021-04-24', '05:38:46'),
(229, '186.2.164.132', '2021-04-24', '05:40:14'),
(230, '186.2.164.103', '2021-04-24', '05:40:31'),
(231, '186.2.164.135', '2021-04-24', '05:49:33'),
(232, '186.2.164.31', '2021-04-24', '06:14:44'),
(233, '186.2.164.96', '2021-04-24', '06:15:03'),
(234, '186.2.164.24', '2021-04-24', '06:15:08'),
(235, '186.2.164.100', '2021-04-24', '06:25:28'),
(236, '186.2.164.30', '2021-04-24', '06:28:12'),
(237, '186.2.164.98', '2021-04-24', '06:28:15'),
(238, '186.2.164.102', '2021-04-24', '06:28:57'),
(239, '176.55.198.248', '2021-05-03', '09:31:44'),
(240, '186.2.164.229', '2021-05-03', '09:37:52'),
(241, '186.2.164.101', '2021-05-03', '09:59:41'),
(242, '186.2.164.30', '2021-05-03', '09:59:43'),
(243, '186.2.164.81', '2021-05-03', '09:59:45'),
(244, '186.2.164.11', '2021-05-03', '09:59:54'),
(245, '186.2.164.133', '2021-05-03', '10:00:12'),
(246, '186.2.164.128', '2021-05-03', '10:00:26'),
(247, '186.2.164.9', '2021-05-03', '14:34:07'),
(248, '186.2.164.4', '2021-05-03', '14:34:13'),
(249, '186.2.164.100', '2021-05-03', '16:05:56'),
(250, '186.2.164.53', '2021-05-03', '18:23:20'),
(251, '186.2.164.133', '2021-05-04', '03:12:35'),
(252, '186.2.164.229', '2021-05-04', '03:15:03'),
(253, '186.2.164.230', '2021-05-04', '04:08:14'),
(254, '186.2.164.101', '2021-05-04', '06:22:18'),
(255, '186.2.164.30', '2021-05-04', '06:22:59'),
(256, '186.2.164.11', '2021-05-04', '06:23:51'),
(257, '186.2.164.53', '2021-05-04', '07:05:38'),
(258, '186.2.164.84', '2021-05-04', '07:05:40'),
(259, '186.2.164.229', '2021-05-05', '02:47:34'),
(260, '186.2.164.101', '2021-05-05', '04:42:51'),
(261, '186.2.164.11', '2021-05-05', '04:59:09'),
(262, '186.2.164.133', '2021-05-05', '05:00:00'),
(263, '186.2.164.30', '2021-05-05', '05:09:01'),
(264, '186.2.164.28', '2021-05-05', '05:13:19'),
(265, '186.2.164.226', '2021-05-05', '05:16:24'),
(266, '186.2.164.231', '2021-05-05', '05:17:24'),
(267, '186.2.164.230', '2021-05-05', '06:03:43'),
(268, '186.2.164.227', '2021-05-05', '06:09:25'),
(269, '172.69.199.143', '2021-05-05', '14:48:43'),
(270, '186.2.164.96', '2021-05-05', '14:50:00'),
(271, '186.2.164.132', '2021-05-05', '14:57:52'),
(272, '172.69.199.132', '2021-05-05', '15:35:24'),
(273, '186.2.164.31', '2021-05-05', '15:35:59'),
(274, '186.2.164.53', '2021-05-05', '15:36:56'),
(275, '186.2.164.59', '2021-05-05', '15:39:16'),
(276, '186.2.164.130', '2021-05-05', '16:12:29'),
(277, '172.69.199.142', '2021-05-05', '16:19:43'),
(278, '186.2.164.135', '2021-05-05', '16:22:31'),
(279, '172.69.199.141', '2021-05-05', '16:28:45'),
(280, '186.2.164.229', '2021-05-06', '00:04:55'),
(281, '172.69.199.133', '2021-05-06', '03:16:03'),
(282, '172.69.199.143', '2021-05-06', '03:16:09'),
(283, '186.2.164.226', '2021-05-06', '05:30:57'),
(284, '186.2.164.225', '2021-05-06', '05:31:12'),
(285, '186.2.164.30', '2021-05-06', '05:51:12'),
(286, '186.2.164.26', '2021-05-06', '05:51:18'),
(287, '186.2.164.11', '2021-05-06', '05:51:21'),
(288, '186.2.164.133', '2021-05-06', '05:51:28'),
(289, '186.2.164.101', '2021-05-06', '05:51:35'),
(290, '186.2.164.227', '2021-05-06', '06:04:47'),
(291, '186.2.164.96', '2021-05-06', '06:55:24'),
(292, '186.2.164.128', '2021-05-06', '06:57:01'),
(293, '186.2.164.99', '2021-05-06', '07:15:12'),
(294, '186.2.164.29', '2021-05-06', '16:01:25'),
(295, '186.2.164.9', '2021-05-06', '16:01:47'),
(296, '186.2.164.230', '2021-05-06', '21:19:54'),
(297, '186.2.164.230', '2021-05-07', '03:31:37'),
(298, '186.2.164.228', '2021-05-07', '06:50:08'),
(299, '186.2.164.229', '2021-05-07', '06:50:17'),
(300, '186.2.164.230', '2021-05-08', '03:49:13'),
(301, '186.2.164.12', '2021-05-08', '16:37:54'),
(302, '186.2.164.99', '2021-05-08', '16:38:24'),
(303, '186.2.164.230', '2021-05-09', '00:45:55'),
(304, '186.2.164.99', '2021-05-09', '11:42:12'),
(305, '186.2.164.12', '2021-05-09', '11:42:51'),
(306, '186.2.164.29', '2021-05-09', '11:42:59'),
(307, '186.2.164.128', '2021-05-09', '11:44:08'),
(308, '186.2.164.58', '2021-05-09', '13:32:50'),
(309, '186.2.164.80', '2021-05-09', '15:09:17'),
(310, '186.2.164.231', '2021-05-09', '15:41:46'),
(311, '186.2.164.52', '2021-05-09', '17:20:34'),
(312, '186.2.164.133', '2021-05-09', '17:20:45'),
(313, '186.2.164.12', '2021-05-10', '00:26:49'),
(314, '186.2.164.128', '2021-05-10', '00:27:02'),
(315, '186.2.164.29', '2021-05-10', '00:27:11'),
(316, '186.2.164.99', '2021-05-10', '03:13:45'),
(317, '186.2.164.130', '2021-05-10', '03:35:08'),
(318, '186.2.164.28', '2021-05-10', '03:35:39'),
(319, '186.2.164.52', '2021-05-10', '09:19:12'),
(320, '186.2.164.80', '2021-05-10', '10:14:35'),
(321, '186.2.164.230', '2021-05-10', '14:19:03'),
(322, '186.2.164.99', '2021-05-11', '01:23:06'),
(323, '186.2.164.97', '2021-05-11', '01:23:11'),
(324, '186.2.164.29', '2021-05-11', '01:23:28'),
(325, '186.2.164.230', '2021-05-11', '03:31:58'),
(326, '186.2.164.128', '2021-05-11', '05:18:48'),
(327, '186.2.164.98', '2021-05-11', '05:18:53'),
(328, '186.2.164.12', '2021-05-11', '06:38:33'),
(329, '186.2.164.31', '2021-05-11', '06:38:39'),
(330, '186.2.164.103', '2021-05-11', '06:38:41'),
(331, '186.2.164.83', '2021-05-11', '07:36:59'),
(332, '186.2.164.96', '2021-05-11', '07:50:58'),
(333, '186.2.164.130', '2021-05-11', '08:16:48'),
(334, '186.2.164.15', '2021-05-11', '18:51:23'),
(335, '186.2.164.135', '2021-05-11', '18:52:40'),
(336, '186.2.164.128', '2021-05-12', '04:40:44'),
(337, '186.2.164.12', '2021-05-12', '04:40:51'),
(338, '186.2.164.29', '2021-05-12', '04:41:28'),
(339, '186.2.164.99', '2021-05-12', '04:41:42'),
(340, '186.2.164.133', '2021-05-12', '04:41:53'),
(341, '186.2.164.230', '2021-05-12', '07:37:39'),
(342, '186.2.164.52', '2021-05-12', '14:05:06'),
(343, '186.2.164.100', '2021-05-12', '14:17:16'),
(344, '186.2.164.102', '2021-05-12', '17:28:02'),
(345, '186.2.164.29', '2021-05-13', '00:28:24'),
(346, '186.2.164.12', '2021-05-13', '00:28:46'),
(347, '186.2.164.128', '2021-05-13', '00:28:56'),
(348, '186.2.164.13', '2021-05-13', '00:30:20'),
(349, '186.2.164.99', '2021-05-13', '00:30:49'),
(350, '186.2.164.129', '2021-05-13', '02:17:26'),
(351, '186.2.164.98', '2021-05-13', '07:26:12'),
(352, '186.2.164.230', '2021-05-13', '13:51:29'),
(353, '186.2.164.101', '2021-05-13', '14:58:36'),
(354, '186.2.164.28', '2021-05-13', '15:01:28'),
(355, '186.2.164.8', '2021-05-13', '15:04:11'),
(356, '186.2.164.100', '2021-05-13', '15:04:11'),
(357, '186.2.164.97', '2021-05-13', '15:26:32'),
(358, '186.2.164.130', '2021-05-13', '15:32:33'),
(359, '186.2.164.55', '2021-05-13', '23:35:23'),
(360, '186.2.164.101', '2021-05-14', '00:23:42'),
(361, '186.2.164.12', '2021-05-14', '00:23:53'),
(362, '186.2.164.134', '2021-05-14', '05:21:40'),
(363, '186.2.164.28', '2021-05-14', '08:33:28'),
(364, '186.2.164.230', '2021-05-14', '09:54:10'),
(365, '186.2.164.97', '2021-05-14', '11:23:48'),
(366, '186.2.164.31', '2021-05-14', '11:25:24'),
(367, '186.2.164.15', '2021-05-14', '11:25:49'),
(368, '186.2.164.129', '2021-05-14', '11:32:05'),
(369, '186.2.164.84', '2021-05-14', '11:36:28'),
(370, '186.2.164.132', '2021-05-14', '11:38:10'),
(371, '186.2.164.76', '2021-05-14', '12:42:58'),
(372, '186.2.164.226', '2021-05-14', '13:26:03'),
(373, '186.2.164.45', '2021-05-14', '15:16:41'),
(374, '186.2.164.59', '2021-05-14', '18:08:08'),
(375, '186.2.164.49', '2021-05-14', '19:12:12'),
(376, '186.2.164.1', '2021-05-14', '21:46:03'),
(377, '186.2.164.129', '2021-05-15', '00:01:12'),
(378, '186.2.164.1', '2021-05-15', '00:18:56'),
(379, '186.2.164.97', '2021-05-15', '01:25:49'),
(380, '186.2.164.15', '2021-05-15', '01:26:27'),
(381, '186.2.164.31', '2021-05-15', '01:27:42'),
(382, '186.2.164.226', '2021-05-15', '03:10:07'),
(383, '186.2.164.231', '2021-05-15', '04:31:07'),
(384, '186.2.164.228', '2021-05-15', '04:31:16'),
(385, '186.2.164.49', '2021-05-15', '04:36:11'),
(386, '186.2.164.76', '2021-05-15', '08:05:29'),
(387, '186.2.164.45', '2021-05-15', '08:05:31'),
(388, '186.2.164.133', '2021-05-15', '10:31:35'),
(389, '186.2.164.84', '2021-05-15', '11:31:54'),
(390, '186.2.164.39', '2021-05-15', '13:31:01'),
(391, '186.2.164.59', '2021-05-15', '13:50:55'),
(392, '186.2.164.112', '2021-05-15', '22:59:38'),
(393, '186.2.164.233', '2021-05-15', '22:59:39'),
(394, '186.2.164.97', '2021-05-16', '02:29:59'),
(395, '186.2.164.226', '2021-05-16', '03:16:46'),
(396, '186.2.164.15', '2021-05-16', '03:17:23'),
(397, '186.2.164.31', '2021-05-16', '03:46:43'),
(398, '186.2.164.1', '2021-05-16', '03:48:15'),
(399, '186.2.164.49', '2021-05-16', '07:09:52'),
(400, '186.2.164.59', '2021-05-16', '07:09:55'),
(401, '186.2.164.129', '2021-05-16', '08:33:08'),
(402, '186.2.164.233', '2021-05-16', '09:39:53'),
(403, '186.2.164.45', '2021-05-16', '09:39:55'),
(404, '186.2.164.84', '2021-05-16', '11:40:12'),
(405, '186.2.164.76', '2021-05-16', '19:09:33'),
(406, '186.2.164.59', '2021-05-17', '00:05:26'),
(407, '186.2.164.49', '2021-05-17', '00:05:27'),
(408, '186.2.164.209', '2021-05-17', '00:21:13'),
(409, '186.2.164.129', '2021-05-17', '00:50:00'),
(410, '186.2.164.31', '2021-05-17', '00:56:36'),
(411, '186.2.164.84', '2021-05-17', '01:05:46'),
(412, '186.2.164.97', '2021-05-17', '02:16:31'),
(413, '186.2.164.76', '2021-05-17', '03:07:23'),
(414, '186.2.164.45', '2021-05-17', '03:07:23'),
(415, '186.2.164.104', '2021-05-17', '03:07:25'),
(416, '186.2.164.15', '2021-05-17', '06:31:43'),
(417, '45.155.126.222', '2021-05-17', '07:27:04'),
(418, '186.2.164.226', '2021-05-17', '08:22:39'),
(419, '186.2.164.225', '2021-05-17', '08:23:25'),
(420, '186.2.164.224', '2021-05-17', '08:23:31'),
(421, '186.2.164.1', '2021-05-17', '09:44:31'),
(422, '186.2.164.3', '2021-05-17', '09:44:52'),
(423, '186.2.164.6', '2021-05-17', '09:47:21'),
(424, '186.2.164.96', '2021-05-17', '11:37:41'),
(425, '186.2.164.112', '2021-05-17', '18:00:11'),
(426, '186.2.164.59', '2021-05-18', '00:45:27'),
(427, '186.2.164.31', '2021-05-18', '01:12:16'),
(428, '186.2.164.15', '2021-05-18', '01:18:25'),
(429, '186.2.164.97', '2021-05-18', '01:19:00'),
(430, '186.2.164.129', '2021-05-18', '01:19:07'),
(431, '186.2.164.84', '2021-05-18', '02:00:08'),
(432, '186.2.164.226', '2021-05-18', '02:11:20'),
(433, '88.225.218.47', '2021-05-18', '02:14:26'),
(434, '186.2.164.49', '2021-05-18', '03:04:57'),
(435, '186.2.164.28', '2021-05-18', '03:08:37'),
(436, '186.2.164.1', '2021-05-18', '03:14:48'),
(437, '186.2.164.12', '2021-05-18', '05:46:46'),
(438, '186.2.164.27', '2021-05-18', '06:31:36'),
(439, '186.2.164.14', '2021-05-18', '06:49:58'),
(440, '186.2.164.209', '2021-05-18', '08:21:37'),
(441, '186.2.164.104', '2021-05-18', '08:21:39'),
(442, '186.2.164.76', '2021-05-18', '14:51:31'),
(443, '186.2.164.45', '2021-05-18', '14:51:32'),
(444, '185.67.33.244', '2021-05-18', '16:47:26'),
(445, '186.2.164.39', '2021-05-18', '21:30:22'),
(446, '186.2.164.15', '2021-05-19', '00:26:43'),
(447, '186.2.164.226', '2021-05-19', '00:38:37'),
(448, '186.2.164.129', '2021-05-19', '00:58:43'),
(449, '186.2.164.31', '2021-05-19', '01:33:17'),
(450, '186.2.164.97', '2021-05-19', '01:34:50'),
(451, '186.2.164.27', '2021-05-19', '01:34:54'),
(452, '186.2.164.102', '2021-05-19', '01:37:41'),
(453, '186.2.164.12', '2021-05-19', '01:39:05'),
(454, '186.2.164.30', '2021-05-19', '01:39:17'),
(455, '186.2.164.25', '2021-05-19', '01:39:47'),
(456, '186.2.164.103', '2021-05-19', '01:48:40'),
(457, '186.2.164.205', '2021-05-19', '01:54:08'),
(458, '186.2.164.89', '2021-05-19', '02:36:01'),
(459, '186.2.164.1', '2021-05-19', '02:55:05'),
(460, '186.2.164.45', '2021-05-19', '04:41:35'),
(461, '186.2.164.76', '2021-05-19', '04:41:38'),
(462, '186.2.164.99', '2021-05-19', '05:24:26'),
(463, '186.2.164.100', '2021-05-19', '05:24:30'),
(464, '186.2.164.84', '2021-05-19', '05:56:54'),
(465, '186.2.164.59', '2021-05-19', '06:08:56'),
(466, '186.2.164.130', '2021-05-19', '08:34:43'),
(467, '186.2.164.49', '2021-05-19', '11:34:07'),
(468, '186.2.164.57', '2021-05-19', '11:41:36'),
(469, '186.2.164.133', '2021-05-19', '11:41:37'),
(470, '186.2.164.62', '2021-05-19', '11:41:38'),
(471, '186.2.164.134', '2021-05-19', '11:41:39'),
(472, '186.2.164.131', '2021-05-19', '11:41:39'),
(473, '186.2.164.63', '2021-05-19', '11:41:49'),
(474, '186.2.164.60', '2021-05-19', '11:42:40'),
(475, '186.2.164.61', '2021-05-19', '11:43:45'),
(476, '186.2.164.56', '2021-05-19', '11:43:50'),
(477, '186.2.164.135', '2021-05-19', '11:43:51'),
(478, '186.2.164.224', '2021-05-19', '11:44:19'),
(479, '186.2.164.128', '2021-05-19', '11:44:33'),
(480, '186.2.164.58', '2021-05-19', '11:44:50'),
(481, '186.2.164.7', '2021-05-19', '11:44:53'),
(482, '186.2.164.4', '2021-05-19', '11:45:03'),
(483, '186.2.164.233', '2021-05-19', '17:16:21'),
(484, '78.186.211.100', '2021-05-19', '18:14:12'),
(485, '186.2.164.129', '2021-05-20', '00:07:38'),
(486, '186.2.164.226', '2021-05-20', '00:40:01'),
(487, '185.67.33.232', '2021-05-20', '01:51:26'),
(488, '186.2.164.1', '2021-05-20', '01:52:40'),
(489, '186.2.164.97', '2021-05-20', '02:45:45'),
(490, '186.2.164.31', '2021-05-20', '03:08:10'),
(491, '186.2.164.15', '2021-05-20', '04:25:19'),
(492, '186.2.164.39', '2021-05-20', '04:59:08'),
(493, '186.2.164.59', '2021-05-20', '05:32:30'),
(494, '186.2.164.76', '2021-05-20', '06:56:57'),
(495, '186.2.164.45', '2021-05-20', '06:56:59'),
(496, '95.9.166.101', '2021-05-20', '07:03:54'),
(497, '186.2.164.11', '2021-05-20', '08:29:50'),
(498, '186.2.164.131', '2021-05-20', '08:31:37'),
(499, '186.2.164.84', '2021-05-20', '10:53:54'),
(500, '185.67.33.204', '2021-05-20', '15:26:34'),
(501, '186.2.164.49', '2021-05-20', '15:34:41'),
(502, '186.2.164.226', '2021-05-21', '00:32:44'),
(503, '186.2.164.1', '2021-05-21', '01:25:56'),
(504, '186.2.164.221', '2021-05-21', '02:13:05'),
(505, '186.2.164.31', '2021-05-21', '02:46:05'),
(506, '186.2.164.97', '2021-05-21', '02:46:16'),
(507, '186.2.164.15', '2021-05-21', '02:46:59'),
(508, '186.2.164.129', '2021-05-21', '03:21:39'),
(509, '186.2.164.59', '2021-05-21', '04:01:05'),
(510, '186.2.164.45', '2021-05-21', '04:30:19'),
(511, '185.67.33.209', '2021-05-21', '06:06:55'),
(512, '186.2.164.84', '2021-05-21', '08:31:07'),
(513, '186.2.164.62', '2021-05-21', '09:22:14'),
(514, '185.67.33.204', '2021-05-21', '09:50:33'),
(515, '186.2.164.205', '2021-05-21', '10:13:15'),
(516, '186.2.164.49', '2021-05-21', '10:20:37'),
(517, '186.2.164.104', '2021-05-21', '12:38:33'),
(518, '37.154.113.114', '2021-05-21', '14:34:34'),
(519, '186.2.164.226', '2021-05-22', '00:15:55'),
(520, '195.174.232.62', '2021-05-22', '00:18:23'),
(521, '186.2.164.49', '2021-05-22', '00:58:40'),
(522, '186.2.164.129', '2021-05-22', '01:41:43'),
(523, '186.2.164.39', '2021-05-22', '01:42:15'),
(524, '186.2.164.15', '2021-05-22', '01:44:10'),
(525, '186.2.164.84', '2021-05-22', '01:55:18'),
(526, '186.2.164.1', '2021-05-22', '02:27:37'),
(527, '186.2.164.97', '2021-05-22', '03:35:46'),
(528, '186.2.164.45', '2021-05-22', '04:12:20'),
(529, '186.2.164.31', '2021-05-22', '06:15:04'),
(530, '186.2.164.103', '2021-05-22', '06:15:18'),
(531, '186.2.164.134', '2021-05-22', '06:15:24'),
(532, '186.2.164.11', '2021-05-22', '09:46:06'),
(533, '88.247.117.78', '2021-05-22', '12:26:45'),
(534, '186.2.164.229', '2021-05-22', '14:33:00'),
(535, '186.2.164.130', '2021-05-22', '21:08:18'),
(536, '186.2.164.231', '2021-05-23', '03:12:00'),
(537, '186.2.164.97', '2021-05-23', '04:19:54'),
(538, '186.2.164.31', '2021-05-23', '04:28:54'),
(539, '186.2.164.15', '2021-05-23', '05:02:33'),
(540, '186.2.164.129', '2021-05-23', '05:14:06'),
(541, '186.2.164.229', '2021-05-23', '07:33:59'),
(542, '186.2.164.224', '2021-05-23', '14:06:45'),
(543, '186.2.164.225', '2021-05-24', '00:20:09'),
(544, '186.2.164.230', '2021-05-24', '08:42:32'),
(545, '186.2.164.224', '2021-05-24', '11:53:34'),
(546, '186.2.164.229', '2021-05-24', '17:55:10'),
(547, '186.2.164.231', '2021-05-25', '04:20:22'),
(548, '186.2.164.225', '2021-05-25', '10:22:41'),
(549, '186.2.164.1', '2021-05-25', '12:39:08'),
(550, '186.2.164.227', '2021-05-25', '21:05:26'),
(551, '186.2.164.31', '2021-05-26', '00:42:09'),
(552, '186.2.164.97', '2021-05-26', '00:52:23'),
(553, '186.2.164.224', '2021-05-26', '06:31:35'),
(554, '186.2.164.226', '2021-05-26', '08:02:19'),
(555, '186.2.164.129', '2021-05-26', '09:15:28'),
(556, '186.2.164.225', '2021-05-26', '10:52:05'),
(557, '186.2.164.231', '2021-05-26', '10:54:15'),
(558, '186.2.164.15', '2021-05-26', '15:17:18'),
(559, '186.2.164.84', '2021-05-26', '15:41:35'),
(560, '186.2.164.1', '2021-05-26', '16:24:35'),
(561, '186.2.164.229', '2021-05-26', '17:04:32'),
(562, '186.2.164.73', '2021-05-26', '17:21:06'),
(563, '186.2.164.45', '2021-05-26', '17:21:06'),
(564, '186.2.164.76', '2021-05-26', '17:21:08'),
(565, '185.67.33.207', '2021-05-26', '17:44:13'),
(566, '186.2.164.227', '2021-05-26', '17:54:50'),
(567, '186.2.164.223', '2021-05-26', '19:40:08'),
(568, '186.2.164.49', '2021-05-26', '21:51:45'),
(569, '186.2.164.97', '2021-05-27', '00:12:47'),
(570, '186.2.164.15', '2021-05-27', '00:15:54'),
(571, '186.2.164.129', '2021-05-27', '00:18:17'),
(572, '186.2.164.226', '2021-05-27', '00:21:22'),
(573, '186.2.164.31', '2021-05-27', '00:27:05'),
(574, '186.2.164.133', '2021-05-27', '00:27:09'),
(575, '172.69.199.141', '2021-05-27', '00:34:51'),
(576, '186.2.164.134', '2021-05-27', '00:35:58'),
(577, '85.99.247.19', '2021-05-27', '00:56:02'),
(578, '186.2.164.224', '2021-05-27', '01:25:44'),
(579, '186.2.164.59', '2021-05-27', '02:18:32'),
(580, '186.2.164.1', '2021-05-27', '02:51:19'),
(581, '186.2.164.45', '2021-05-27', '02:53:21'),
(582, '186.2.164.76', '2021-05-27', '02:53:23'),
(583, '186.2.164.84', '2021-05-27', '03:06:03'),
(584, '186.2.164.49', '2021-05-27', '05:12:48'),
(585, '186.2.164.229', '2021-05-27', '06:07:21'),
(586, '186.2.164.225', '2021-05-27', '10:57:10'),
(587, '185.67.33.204', '2021-05-27', '12:18:12'),
(588, '185.67.33.204', '2021-05-27', '12:18:12'),
(589, '186.2.164.131', '2021-05-27', '16:01:51'),
(590, '186.2.164.9', '2021-05-27', '16:52:55'),
(591, '186.2.164.231', '2021-05-27', '19:31:48'),
(592, '186.2.164.230', '2021-05-27', '20:42:02'),
(593, '186.2.164.15', '2021-05-28', '00:12:48'),
(594, '186.2.164.129', '2021-05-28', '00:12:49'),
(595, '186.2.164.31', '2021-05-28', '00:13:55'),
(596, '186.2.164.97', '2021-05-28', '00:22:17'),
(597, '186.2.164.128', '2021-05-28', '00:55:34'),
(598, '186.2.164.224', '2021-05-28', '02:03:31'),
(599, '186.2.164.226', '2021-05-28', '02:39:13'),
(600, '186.2.164.230', '2021-05-28', '03:56:53'),
(601, '185.67.33.209', '2021-05-28', '05:36:32'),
(602, '186.2.164.1', '2021-05-28', '07:02:18'),
(603, '186.2.164.76', '2021-05-28', '07:02:51'),
(604, '186.2.164.45', '2021-05-28', '07:02:53'),
(605, '186.2.164.59', '2021-05-28', '12:50:03'),
(606, '186.2.164.12', '2021-05-28', '12:54:02'),
(607, '186.2.164.49', '2021-05-28', '15:39:41'),
(608, '186.2.164.84', '2021-05-28', '16:41:02'),
(609, '186.2.164.229', '2021-05-28', '17:10:00'),
(610, '186.2.164.228', '2021-05-28', '23:01:08'),
(611, '186.2.164.15', '2021-05-29', '00:11:38'),
(612, '186.2.164.226', '2021-05-29', '00:36:31'),
(613, '186.2.164.49', '2021-05-29', '00:46:34'),
(614, '186.2.164.97', '2021-05-29', '01:31:52'),
(615, '186.2.164.129', '2021-05-29', '01:36:55'),
(616, '186.2.164.84', '2021-05-29', '02:45:15'),
(617, '186.2.164.59', '2021-05-29', '02:45:33'),
(618, '186.2.164.76', '2021-05-29', '02:51:55'),
(619, '186.2.164.45', '2021-05-29', '02:51:56'),
(620, '186.2.164.1', '2021-05-29', '03:06:50'),
(621, '186.2.164.31', '2021-05-29', '06:07:21'),
(622, '186.2.164.30', '2021-05-29', '07:16:22'),
(623, '186.2.164.26', '2021-05-29', '07:16:54'),
(624, '186.2.164.9', '2021-05-29', '08:59:35'),
(625, '186.2.164.133', '2021-05-29', '10:42:20'),
(626, '186.2.164.225', '2021-05-29', '15:03:14'),
(627, '186.2.164.227', '2021-05-29', '15:15:34'),
(628, '78.186.158.112', '2021-05-29', '21:12:24'),
(629, '186.2.164.15', '2021-05-30', '00:29:19'),
(630, '186.2.164.129', '2021-05-30', '00:51:34'),
(631, '186.2.164.31', '2021-05-30', '00:51:37'),
(632, '186.2.164.97', '2021-05-30', '00:51:38'),
(633, '186.2.164.226', '2021-05-30', '01:01:27'),
(634, '186.2.164.228', '2021-05-30', '02:49:39'),
(635, '186.2.164.49', '2021-05-30', '03:46:33'),
(636, '186.2.164.1', '2021-05-30', '03:51:55'),
(637, '186.2.164.59', '2021-05-30', '03:55:27'),
(638, '186.2.164.84', '2021-05-30', '06:34:36'),
(639, '172.69.199.141', '2021-05-30', '07:08:16'),
(640, '78.174.255.157', '2021-05-30', '12:21:22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `article` longtext COLLATE utf8_unicode_ci NOT NULL,
  `look` longtext COLLATE utf8_unicode_ci NOT NULL DEFAULT 'lg-280-64.sh-290-1408.hr-831-61.hd-190-10.ch-255-110',
  `category` varchar(9999) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'leet'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `author`, `title`, `date`, `featured_image`, `article`, `look`, `category`) VALUES
(11, 'WoCean', '#1-20 Yarışması Başladı!', '', 'https://cdn.discordapp.com/attachments/679036190426660866/843828186566885406/lpromo_baw_generic.png', '<p>Selam Sevgili Runolar !<br><br>#20 yarışması yeniden başlıyor..!</p><p><br></p><p>#20 Yarışması nedir?<br>#20 yarışması, Houshi adlı personel tarafından d&uuml;zenlenen bir yarışmadır.<br>Yarışmanın amacı, personelin belirlediği kategorideki mobilerden ve personelin belirlediği 5 ana mobiden toplam 20 mobi olacak şekilde oda tasarlamaktır. Yaptığınız oda diğer katılımcıların yaptığı odalar ile kıyaslanır ve derece alır. En iyi 3 odanın sahiplerine belirli &ouml;d&uuml;ller verilir.<br><br>Yarışma katılım şartları;</p><p><br>1- Yaptığınız odanın ismi #1-20 olmalıdır.</p><p><br>2- Odanız kilitli olmalı, kimseden yardım almamalısınız.</p><p><br>3- Odalar kesinlikle sizin yaratıcılığınız ile tasarlanmalıdır. İnternet &uuml;zerinden, herhangi bir oyuncudan oda alırsanız yarışmadan elenirsiniz.</p><p><br>4- Odanız toplamda 20 mobiden oluşmalıdır.(personelin belirlediği 5 mobi ile birlikte)</p><p><br>5- Odadaki mobiler personelin belirlediği kategorideki mobilerden oluşmalıdır.</p><p><br>6- Duvar ya da zemin boyası kullanırsanız bu boyalar da 1er mobi sayılır.(&Ouml;rneğin duvar boyası ve zemin boyası kullandım ikisi birlikte 2 mobi sayılıyor.)<br><br>7- Robot kullanmakta aynı şekilde 1 mobi sayılmaktadır.<br><br>20 mobi kullanacağınız #1-20 kategorisi ise; Gunesli Sehir<br>Kullanmanız gereken 5 ana mobi ise;<br><br><img src=\"https://i.froala.com/download/e0f68da03cd6b59db90e92e8b1987770b40a1cc9.?1621254654\" alt=\"\" class=\"fr-dii fr-draggable\"></p><p>Yarışmanın son tarihi; 22.05.2021</p><p>En iyi 3 oda i&ccedil;in verilecek &ouml;d&uuml;ller;</p><p>1. Oda - 20.000 Kredi + 20 Elmas + Birincilik Rozeti</p><p>2. Oda - 10.000 Kredi + 15 Elmas + İkincilik Rozeti</p><p>3. Oda - 5.000 Kredi + 10 Elmas + &Uuml;&ccedil;&uuml;nc&uuml;l&uuml;k Rozeti&nbsp;</p><p><br>Başarılar dilerim, yarışma ile ilgili bir probleminiz olursa Houshi&#39;ye (houshi#4900) ulaşabilirsiniz.</p><p><br></p><p><br></p>', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'hotel'),
(10, 'Lucera', 'RunoAura Aktif!', '', 'https://3.bp.blogspot.com/-zfSjoGWIGuo/XKzwiAUMPoI/AAAAAAABOgE/smvw14SPAEovay52BPfywIkdvPQiQXQKACKgBGAs/s1600/Flyer_da_Festa_Carnaval.png', '<p><strong>Bir zamanların efsanesi olan RunoAura geri d&ouml;n&uuml;yor!</strong></p><p><br></p><p>Harika işler başardığımız RunoAura projesini, yepyeni ekip arkadaşlarımızla tekrar a&ccedil;maya karar verdik.</p><p>Herşeyin daha m&uuml;kemmel olduğu yeni RunoAura&#39;nın m&uuml;kemmel ekibine sende katılmak istemez misin?</p><p>Eğer seninde cevabın &quot;evet&quot; ise beklemeden discord &uuml;zerinden <strong>Twenzy#2468&nbsp;</strong>&#39;e ulaş!</p><p>Hepimize hayırlı olsun!</p>', 'https://www.habbo.com.tr/habbo-imaging/avatarimage?figure=hd-209-1390.ch-255-1409.fa-3276-100.sh-3035-110.hr-3163-1404.lg-275-110', 'fansite'),
(12, 'WoCean', 'Uzman Seçimleri Açıklandı', '', 'https://images.habbo.com/web_images/habbo-web-articles/lpromo_2020_habbosecurity-1.png', '<p>Selam Runolar!</p><p><br></p><p>Bildiğiniz &uuml;zere ge&ccedil;tiğimiz g&uuml;nlerde bir uzman se&ccedil;imi başlatmıştık. Y&ouml;netim Ekibi olarak formlarınızı inceledik ve aranızdan en uygun olan kişileri belirledik. Bahsettiğimiz hassas se&ccedil;im sistemi dolayısıyla discord &uuml;zerinden ekran a&ccedil;arak sizlere katılan herkesin formunu, formu k&ouml;t&uuml;yse neden olduğunu belirttik.&nbsp;</p><p><br></p><p>İşte Yeni D&ouml;nem Uzmanlarımız:<br><img src=\"https://cdn.discordapp.com/attachments/834569517858291713/843904693456338984/runo_2.png\" class=\"fr-dii fr-draggable\"></p><p><br></p><p>Se&ccedil;ilen arkadaşlarıma başarılar diliyorum. Eğer se&ccedil;ilmediyseniz &uuml;z&uuml;lmeyin, daha &ouml;n&uuml;m&uuml;zde bir&ccedil;ok se&ccedil;im var.</p><p><br></p><p>G&ouml;r&uuml;şmek &Uuml;zere!</p>', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'hotel'),
(13, 'WoCean', '19 Mayıs Atatürk\'ü Anma, Gençlik ve Spor Bayramı', '', 'https://i2.cnnturk.com/i/cnnturk/75/630x0/60a38a29b57f15029411346f.jpg', '<p>B&uuml;y&uuml;k &Ouml;nder Atat&uuml;rk&#39;&uuml;n 19 Mayıs 1919&#39;da Samsun&#39;a &ccedil;ıkarak başlattığı milli m&uuml;cadelemiz T&uuml;rk tarihinde &ouml;nemli d&ouml;n&uuml;m noktalarından biridir. Tarihi boyunca bağımsız yaşamış olan T&uuml;rk Milleti&#39;nin yine d&uuml;nya &uuml;zerindeki varlığını h&uuml;r, bağımsız olarak s&uuml;rd&uuml;rmesi i&ccedil;in buna inanan ve &quot;T&uuml;rk milletini yine milletin kendi azim ve kararı kurtaracaktır&quot; diyen y&uuml;ce &ouml;nder yediden yetmişe, kuzeylisi g&uuml;neylisi, doğulusu batılısı, her insanımızı arkasına alarak milli m&uuml;cadeleyi başlatmış ve t&uuml;m yoksulluğa, yokluğa rağmen bu m&uuml;cadelede T&uuml;rk Milleti başarı elde etmiştir. Bağımsızlığımızın nasıl elde edildiğini, hangi zorluklarla kazanıldığını herkesin bilmesi gerekir. Bu a&ccedil;ıdan milli m&uuml;cadele sonrası 29 Ekim 1923&#39;te ilan edilen Cumhuriyet&#39;imizle d&uuml;nya milletleri arasında şerefli yerini almıştır.</p><p>Atat&uuml;rk, en b&uuml;y&uuml;k eserim dediği Cumhuriyet&#39;i demokratik, laik, sosyal hukuk devleti olan T&uuml;rkiye Cumhuriyeti&#39;ni T&uuml;rk gen&ccedil;liğine emanet etmiştir. T&uuml;rk gen&ccedil;liği bu g&uuml;ne kadar olduğu gibi bundan sonra da Atasının emanetine Cumhuriyet&#39;e sahip &ccedil;ıkacak, O&#39;nun g&ouml;sterdiği hedef olan &ccedil;ağdaş uygarlık d&uuml;zeyinin &uuml;zerine &ccedil;ıkarılması i&ccedil;in &uuml;st&uuml;ne d&uuml;şen g&ouml;revi yerine getirecektir. Buna y&uuml;rekten inanıyoruz. Birlik, beraberlik i&ccedil;inde birbirine sevgi ile yaklaşan, iyi eğitim almış, teknolojik kabiliyetlerle donatılmış T&uuml;rk Genci &uuml;lkemizi en iyi şekilde geleceğe taşıyacaktır.</p><p>Milli m&uuml;cadeledeki inan&ccedil;, birlik, beraberliğin her zaman &ouml;rnek alınarak, aynı kararlılıkla s&uuml;rd&uuml;r&uuml;lmesi &uuml;lkemizin başarıya ulaşmasında en b&uuml;y&uuml;k etken olacaktır. Bunun bozulmasına da başta T&uuml;rk Gen&ccedil;liği olmak &uuml;zere T&uuml;rk Milleti fırsat vermeyecektir.</p><p>Bayrağımız h&uuml;r olarak vatan toprakları &uuml;zerinde dalgalanıyorsa, bunu bor&ccedil;lu olduğumuz b&uuml;y&uuml;k &ouml;nder Atat&uuml;rk başta olmak &uuml;zere b&uuml;t&uuml;n şehitlerimizi rahmet ve minnetle anıyor, hayatta olan gazilerimize sağlık diliyor, t&uuml;m gen&ccedil;lerimizin 19 Mayıs Atat&uuml;rk&#39;&uuml; Anma, Gen&ccedil;lik ve Spor Bayramı&#39;nı sevgi, saygıyla kutluyorum.&quot;</p>', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'fansite'),
(14, 'WoCean', '#1-20 Kazananları Belli Oldu!', '', 'https://images.habbo.com/web_images/habbo-web-articles/largepromo_helpcentrum.png', '<p>Selam Runolar!</p><p><br>İşte ge&ccedil;en haftanın (#1-20) kazananları;</p><p><br></p><p>1) _Mamizm</p><p><img src=\"https://media.discordapp.net/attachments/758681917515890743/845683742844125184/Mamizm.png\" class=\"fr-dii fr-draggable\"></p><p><br></p><p>2) Kava84</p><p><img src=\"https://images-ext-1.discordapp.net/external/WrG_aoKzvbUgkLXytJFNczMNs1M2VmeImYdVnImXnuA/https/media.discordapp.net/attachments/758681917515890743/845683790604271676/Kava84.png\" class=\"fr-dii fr-draggable\"></p><p><br></p><p>3) Lucera</p><p><img src=\"https://images-ext-2.discordapp.net/external/giPbdQVQ02cnFOCf0un_8r58DbDgqhlP1Ofb-2h5-o4/https/media.discordapp.net/attachments/758681917515890743/845683918791114762/Lucera.png\" class=\"fr-dii fr-draggable\"></p><p><br></p><p>Kazanan arkadaşlarımız Houshi&#39;ye ulaşarak &ouml;d&uuml;llerini alabilirler.</p>', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'hotel'),
(15, 'WoCean', 'Mimarlık Seçimleri Başladı!', '', 'https://habbolar.com/img/userfiles/kapakresim/300/lpromo_baw_generic.png', '<p><img src=\"https://habbofont.net/font/habbowood_big/mimarlik+secimleri.gif\" class=\"fr-dii fr-draggable\"></p><ul><li><strong><strong><strong><strong>&nbsp;Tasarım Mimarları Ne Yapar?</strong></strong></strong></strong></li><li><strong><strong><strong><strong><strong>&nbsp;Bu kişiler Runo Hotel&#39;in resmi odalarının ve etkinlik odalarının tasarımından sorumlu &nbsp; &nbsp;kişilerdir.</strong></strong><br></strong></strong></strong></li></ul><p><strong><strong><strong><strong>D&uuml;zenli maaşları ve belirli g&ouml;revleri vardır. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></strong></strong></strong></p><p><strong><strong><strong><img src=\"https://cdn.discordapp.com/attachments/771346547437862953/845771493199839232/KihabboSmll03.png\" class=\"fr-dii fr-draggable\">&nbsp; &nbsp; <strong>D&uuml;zenek Mimarları Ne Yapar?</strong></strong></strong></strong></p><p><strong><strong><strong>Bu Kişilerin Runo Hotel&#39;in etkinlik odalarının ve mazelerinin d&uuml;zeneğinden sorumlu kişilerdir.</strong></strong></strong></p><p><strong><strong><strong>Tıpkı tasarım mimarları gibi d&uuml;zenli bir maaşları ve belirli bir g&ouml;revleri vardır.</strong></strong></strong></p><p><strong><strong>&nbsp; &nbsp;</strong></strong></p><p><strong><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></strong></p><p><strong><strong>&nbsp;<img src=\"https://cdn.discordapp.com/attachments/771346547437862953/845772237990133780/images.png\" class=\"fr-dii fr-draggable\"><strong>&nbsp;Nasıl Tasarım ya da D&uuml;zenek mimarı olunur?</strong></strong></strong></p><p><strong><strong><strong><strong>&nbsp;Tasarımcılar i&ccedil;in mağazadaki Yaz kataloğundaki mobileri kullanarak oda yapmak.</strong></strong></strong></strong></p><p><strong><strong><strong><strong>D&uuml;zenek&ccedil;iler i&ccedil;in kendi istedikleri şekilde oto oyun yapmak.</strong></strong></strong></strong></p><p><strong>Bunları yaparken odanın isminin MimarlıkSecimleri-1 olması şarttır.</strong></p><p><strong><strong><strong><strong>&nbsp; &nbsp;</strong></strong></strong></strong></p><p><strong><strong><strong>&nbsp; &nbsp; &nbsp; &nbsp;</strong></strong></strong></p><p><strong><strong><strong><span>Se&ccedil;imin A&ccedil;ıklanma tarihi : 26 Mayıs &Ccedil;arşamba&nbsp;</span></strong></strong></strong></p><p><strong><strong><strong><span>&nbsp; &nbsp;Se&ccedil;im hakkında sorusu veya sorunu olanlar JoyKomutan (JoyKomutan#3131),</span></strong></strong></strong></p><p><strong><strong><strong><span>&nbsp;-Tahoma (Tahoma#1356) Discord adresleri &uuml;zerinden gerekli kişilere ulaşabilir,onlardan yardım alabilir.Se&ccedil;ime katılan herkese başarılar dileriz.&nbsp;</span></strong></strong></strong></p>', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'hotel'),
(16, 'WoCean', 'Büyük Çekiliş Başlıyor !', '', 'https://habbolar.com/img/userfiles/kapakresim/600/ny15_rare_largepromo.png', '<p><img src=\"https://cdn.discordapp.com/attachments/807521684528955412/845961171718242334/bgb.png\" class=\"fr-dii fr-draggable\"></p><h4>Merhaba değerli kullanıcılarımız !</h4><p>Runo&#39;da b&uuml;y&uuml;k bir etkinlik yapacağız / Yaz Partisi + B&uuml;y&uuml;k &Ccedil;ekiliş !<br><br>Etkinliğimiz 1 Haziran 19.00 ila 21.00 arası olacaktır !<br><br><br></p><h4>&Ccedil;ekilişimizin &Ouml;d&uuml;lleri;</h4><p>-5 Milyon OwO Parası<br>-Nitro Klasik<br>-50 T&uuml;rk Lirası</p><p>-30 T&uuml;rk Lirası Steam Kodu<br>-3 Spotify Premium</p><p><br></p><h4>&Ccedil;ekilişi Katılma Şartları;</h4><p>1 Haziran 19.00 ile 21.00 arasında oyunda aktif kalmaktır !</p><h4>&Ouml;NEMLİ BİLGİLENDİRME !</h4><p>Uyanıklık yapıp aktif olmayanlar anında tespit edilecektir sistemlerimiz ile.</p>', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'hotel'),
(17, 'WoCean', '#2-20 Yarışması Başladı!', '', 'https://images.habbo.com/web_images/habbo-web-articles/lpromo_sept18_gen.png', '<p>Selam Sevgili Runolar !</p><p><br></p><p>#20 yarışması devam ediyor.!</p><p><br></p><p>#20 Yarışması nedir?<br>#20 yarışması, Houshi adlı personel tarafından d&uuml;zenlenen bir yarışmadır.<br>Yarışmanın amacı, personelin belirlediği kategorideki mobilerden ve personelin belirlediği 5 ana mobiden toplam 20 mobi olacak şekilde oda tasarlamaktır. Yaptığınız oda diğer katılımcıların yaptığı odalar ile kıyaslanır ve derece alır. En iyi 3 odanın sahiplerine belirli &ouml;d&uuml;ller verilir.<br><br>Yarışma katılım şartları;</p><p><br>1- Yaptığınız odanın ismi #2-20 olmalıdır.</p><p><br>2- Odanız kilitli olmalı, kimseden yardım almamalısınız.</p><p><br>3- Odalar kesinlikle sizin yaratıcılığınız ile tasarlanmalıdır. İnternet &uuml;zerinden, herhangi bir oyuncudan oda alırsanız yarışmadan elenirsiniz.</p><p><br>4- Odanız toplamda 20 mobiden oluşmalıdır.(personelin belirlediği 5 mobi ile birlikte)</p><p><br>5- Odadaki mobiler personelin belirlediği kategorideki mobilerden oluşmalıdır.</p><p><br>6- Duvar ya da zemin boyası kullanırsanız bu boyalar da 1er mobi sayılır.(&Ouml;rneğin duvar boyası ve zemin boyası kullandım ikisi birlikte 2 mobi sayılıyor.)<br><br>7- Robot kullanmakta aynı şekilde 1 mobi sayılmaktadır.<br><br>20 mobi kullanacağınız #2-20 kategorisi ise; Sunset Cafe<br>Kullanmanız gereken 5 ana mobi ise;</p><p><img src=\"https://media.discordapp.net/attachments/618088387357966339/846102685807411280/unknown.png\" class=\"fr-dii fr-draggable\"></p><p><br></p><p>Yarışmanın a&ccedil;ıklanma tarihi; 28.05.2021</p><p>En iyi 3 oda i&ccedil;in verilecek &ouml;d&uuml;ller;</p><p>1. Oda - 20.000 Kredi + 20 Elmas + Birincilik Rozeti</p><p>2. Oda - 10.000 Kredi + 15 Elmas + İkincilik Rozeti</p><p>3. Oda - 5.000 Kredi + 10 Elmas + &Uuml;&ccedil;&uuml;nc&uuml;l&uuml;k Rozeti&nbsp;</p><p><br>Başarılar dilerim, yarışma ile ilgili bir probleminiz olursa Houshi&#39;ye (houshi#4900) ulaşabilirsiniz.</p>', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'hotel'),
(18, 'WoCean', '#2-20 Kazananları Belli Oldu!', '', 'https://cdn.discordapp.com/attachments/679036190426660866/848278775313858600/article_webPromo_uni_generic2.png', '<p>1) Sarrow</p><p><img src=\"https://media.discordapp.net/attachments/758681917515890743/847841365429452811/Sarrow.png\" class=\"fr-dii fr-draggable\"></p><p>2) Esektive</p><p><img src=\"https://media.discordapp.net/attachments/758681917515890743/847841189503434772/Esektive.png?width=373&height=405\" class=\"fr-dii fr-draggable\"></p><p>3) Noach</p><p><br></p><p><img src=\"https://media.discordapp.net/attachments/758681917515890743/847841306943160381/Noach.png\" class=\"fr-dii fr-draggable\"></p><p>Kazanan arkadaşlarımız Houshi&#39;ye ulaşarak &ouml;d&uuml;llerini alabilirler.</p>', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'hotel'),
(19, 'WoCean', '#3-20 Yarışması Başladı!', '', 'https://cdn.discordapp.com/attachments/679036190426660866/848279008026034176/lpromo_summer18.png', '<p><br></p><p>Selam Sevgili Runolar !</p><p><br></p><p>#20 yarışması devam ediyor.!</p><p><br></p><p>#20 Yarışması nedir?<br>#20 yarışması, Houshi adlı personel tarafından d&uuml;zenlenen bir yarışmadır.<br>Yarışmanın amacı, personelin belirlediği kategorideki mobilerden ve personelin belirlediği 5 ana mobiden toplam 20 mobi olacak şekilde oda tasarlamaktır. Yaptığınız oda diğer katılımcıların yaptığı odalar ile kıyaslanır ve derece alır. En iyi 3 odanın sahiplerine belirli &ouml;d&uuml;ller verilir.<br><br>Yarışma katılım şartları;</p><p><br>1- Yaptığınız odanın ismi #3-20 olmalıdır.</p><p><br>2- Odanız kilitli olmalı, kimseden yardım almamalısınız.</p><p><br>3- Odalar kesinlikle sizin yaratıcılığınız ile tasarlanmalıdır. İnternet &uuml;zerinden, herhangi bir oyuncudan oda alırsanız yarışmadan elenirsiniz.</p><p><br>4- Odanız toplamda 20 mobiden oluşmalıdır.(personelin belirlediği 5 mobi ile birlikte)</p><p><br>5- Odadaki mobiler personelin belirlediği kategorideki mobilerden oluşmalıdır.</p><p><br>6- Duvar ya da zemin boyası kullanırsanız bu boyalar da 1er mobi sayılır.(&Ouml;rneğin duvar boyası ve zemin boyası kullandım ikisi birlikte 2 mobi sayılıyor.)<br><br>7- Robot kullanmakta aynı şekilde 1 mobi sayılmaktadır.<br><br>20 mobi kullanacağınız #3-20 kategorisi ise; Bahce 2016<br>Kullanmanız gereken 5 ana mobi ise;</p><p><img src=\"https://media.discordapp.net/attachments/846899279112175616/848176297498902558/unknown.png?width=523&height=406\" class=\"fr-dii fr-draggable\"></p><p>Yarışmanın a&ccedil;ıklanma tarihi; 03.06.2021</p><p>En iyi 3 oda i&ccedil;in verilecek &ouml;d&uuml;ller;</p><p>1. Oda - 30.000 Kredi + 25 Elmas + Birincilik Rozeti</p><p>2. Oda - 20.000 Kredi + 20 Elmas + İkincilik Rozeti</p><p>3. Oda - 10.000 Kredi + 15 Elmas + &Uuml;&ccedil;&uuml;nc&uuml;l&uuml;k Rozeti&nbsp;</p><p><br>Başarılar dilerim, yarışma ile ilgili bir probleminiz olursa Houshi&#39;ye (houshi#4900) ulaşabilirsiniz.</p>', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'hotel'),
(20, 'WoCean', 'Elçi Seçimleri Başladı!', '', 'https://cdn.discordapp.com/attachments/679036190426660866/848279206869991514/kpk.png', '<h1>RUNO EL&Ccedil;İ SE&Ccedil;İMLERİ BAŞLADI !</h1><h5>Merhaba Runolar !</h5><h6>El&ccedil;i ekibimizdeki a&ccedil;ıktan dolayı el&ccedil;i se&ccedil;imleri kısa bir zaman sonra yeniden yapılmaya karar verildi.</h6><h6>El&ccedil;i se&ccedil;imleri i&ccedil;in gereken şartlar ;<br><br>&bull; 15 yaşında veya 15 yaşından b&uuml;y&uuml;k olmalısınız.<br>&bull; Discord Kullanmalısınız.<br>&bull; Olgun tavırlar sergilemelisiniz.<br>&bull; K&uuml;f&uuml;r, Argo kullanmamalısınız.<br>&bull; &Ccedil;abuk pes etmeyen bir yapıya sahip olmalısınız.<br>&bull; G&uuml;venilir bir kişiliğiniz olmalıdır.<br>&bull; Diğer kişiler ile saygı &ccedil;er&ccedil;evesi i&ccedil;erisinde konuşabilmeli, sorunları konuşarak halledebilmelisiniz.<br>&bull; Oyunda, g&uuml;nl&uuml;k en az 4 saat aktif kalmalısınız<br><br>Eğer bu şartları kendinizde g&ouml;r&uuml;yorsanız aşağıdaki formu olumlu y&ouml;nde doldurunuz.<br><br><u>El&ccedil;i se&ccedil;imine nasıl katılırım ?&nbsp;</u><br>Doldurmanız gereken Form : &nbsp;<a href=\"https://docs.google.com/forms/d/e/1FAIpQLSfRpGyxSLL6aTODOP22m6I5PEigjQ0jmo_1TOJshMKim1GTrw/viewform\">Se&ccedil;im formuna gitmek i&ccedil;in tıkla !</a><br><br>NOT : Eski M&uuml;lakat sistemi kaldırılmıştır.<br><br>&Ouml;NEMLİ : Eğer alt ekiplerde bulunuyorsanız bunun se&ccedil;imde şansınızı arttıracağını unutmayın.<br><br>&Ouml;NEMLİ : Hotelde aktifliğiniz de uzman se&ccedil;imlerinde şansınızı arttırır. Se&ccedil;imin bitiş s&uuml;recine kadar hotel i&ccedil;erisinde g&ouml;zlemleneceğinizi unutmayın.<br><br>Eğer soru veya sorununuz olursa Jizzle ve ya Audrey&#39;a danışabilirsiniz.<br><br>Son başvuru tarihi 01.06.2021<br><br><br><p><img src=\"https://media.discordapp.net/attachments/807521684528955412/842447412018282496/amb10.png\" class=\"fr-dii fr-draggable\"></p></h6>', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', 'hotel');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `siteadi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sitebanner` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sitelinki` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sitesahibi` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `partner`
--

INSERT INTO `partner` (`id`, `siteadi`, `sitebanner`, `sitelinki`, `sitesahibi`) VALUES
(1, 'RunoLoji', 'https://cdn.discordapp.com/attachments/797859867049197608/834703224355160094/testlogo.png', 'http://runoaura.in/', 'Twenzy - Rush'),
(2, 'HabSite', 'https://habboloji.com/admin/fileman/Uploads/banner.png', 'habsite.com', 'Anan İle Baban');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `polls`
--

CREATE TABLE `polls` (
  `id` int(9) UNSIGNED NOT NULL,
  `username` varchar(999) NOT NULL,
  `poll_name` varchar(999) NOT NULL,
  `a_option` varchar(999) NOT NULL,
  `a_option_result` varchar(99) NOT NULL DEFAULT '0',
  `b_option` varchar(999) NOT NULL,
  `b_option_result` varchar(99) NOT NULL DEFAULT '0',
  `other_option` varchar(999) NOT NULL,
  `other_option_result` varchar(99) NOT NULL DEFAULT '0',
  `date` varchar(99) NOT NULL DEFAULT '1 Ocak 2021',
  `participant` varchar(99) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `polls`
--

INSERT INTO `polls` (`id`, `username`, `poll_name`, `a_option`, `a_option_result`, `b_option`, `b_option_result`, `other_option`, `other_option_result`, `date`, `participant`) VALUES
(3, 'Twenzy', 'Kerem Vs Burak', 'Kerem', '55', 'Burak', '45', '', '', '21.04.2021', '120');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ranks`
--

CREATE TABLE `ranks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `ranks`
--

INSERT INTO `ranks` (`id`, `name`) VALUES
(1, 'User'),
(3, 'DJ'),
(4, 'Tasarım Mimarı'),
(5, 'Düzenek Mimarı'),
(6, 'Yazar'),
(7, 'Müfettiş'),
(2, 'Destek Ekibi'),
(8, 'Yönetici'),
(9, 'Teknisyen');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `ID` int(9) UNSIGNED NOT NULL,
  `username` mediumtext DEFAULT NULL,
  `password` varchar(180) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `date` varchar(12) NOT NULL,
  `rank` varchar(2) NOT NULL DEFAULT '1',
  `look` longtext NOT NULL DEFAULT 'lg-275-176626.hd-9835-10.ch-3203-110',
  `ip` varchar(500) NOT NULL,
  `ban` varchar(20) NOT NULL DEFAULT '0',
  `ban_start` varchar(20) NOT NULL DEFAULT '0',
  `ban_finish` varchar(20) NOT NULL DEFAULT '0',
  `avatar` longtext DEFAULT 'normal',
  `kredi` varchar(1000) DEFAULT '200',
  `elmas` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '50',
  `bubbleid` varchar(1000) DEFAULT 'black',
  `motto` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Runoaura, Yenilikleri ile Runoda',
  `ekiplideri` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'false',
  `profilplace` varchar(255) DEFAULT '1',
  `rankplace` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `email`, `date`, `rank`, `look`, `ip`, `ban`, `ban_start`, `ban_finish`, `avatar`, `kredi`, `elmas`, `bubbleid`, `motto`, `ekiplideri`, `profilplace`, `rankplace`) VALUES
(1, 'Twenzy', '73e8ebad4a374ab1ac4730d86f4cb836', 'kerem_incesu@hotmail.com', '20/04/21', '11', 'hr-170-58-58.ch-3032-110-82.lg-280-82.ha-1005-110.hd-180-22.fa-3276-82.sh-908-92.cp-3313-62', '213.43.90.68', '0', '0', '0', 'http://37.122.140.236//images/avatars/T.png', '200', '50', 'lake', 'RunoAura En İyisi Karşim', 'true', '1', '1'),
(2, 'zBusy', '61af3fd22f2694316bb0dee47e1c11f7', 'altan@gmail.com', '20/04/21', '0', 'ha-3488-63.cc-2935-73-1322.hd-208-10.ch-255-82.lg-280-82.he-3833-92.hr-3163-52.sh-290-107554', '0.0.0.0.1', '0', '0', '0', 'http://37.122.140.236//images/avatars/Z.png', '200', '50', 'basketball', 'im the BEST :]', 'false', '4', '2'),
(3, 'WoCean', '601a916e742c7a4bfac62be4d30bb849', 'wocean@gmail.com', '20/04/21', '9', 'hr-4117-54-1348.cp-3315-1328.lg-3006-92-1408.sh-3035-98.he-3082-97.fa-3276-95.ch-3013-92.ca-3937-1289.hd-629-2.ea-8536-68', '88.246.185.170', '0', '0', '0', 'http://37.122.140.236//images/avatars/W.png', '200', '50', 'black', 'test', 'true', 'wocean', '3'),
(4, 'TestAura', '601a916e742c7a4bfac62be4d30bb849', 'aurttest@gmail.com', '20/04/21', '1', 'lg-275-176626.hd-9835-10.ch-3203-110', '186.2.164.11', '0', '0', '0', 'https://runoaura.in//images/avatars/T.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '3', '4'),
(5, 'Hod', '137fae2b2c661b7299222960951746f3', 'batuhan.hod@gmail.com', '20/04/21', '1', 'lg-275-176626.hd-9835-10.ch-3203-110', '141.101.98.28', '0', '0', '0', 'https://runoaura.in//images/avatars/H.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '4', '5'),
(7, 'Lucera', 'd51832f9b1af4603c3bdc17f1b3bbb5b', 'lucera@gmail.com', '03/05/21', '1', 'https://www.habbo.com.tr/habbo-imaging/avatarimage?figure=lg-3078-1325.he-3070-1408.sh-905-64.ca-3702-1320-64.hr-3163-1403.cp-3315-1408.fa-3276-73.hd-180-10.ch-255-110&direction=2', '186.2.164.11', '0', '0', '0', 'https://runoaura.in//images/avatars/L.png', '200', '50', 'duck', 'RunoAura V2 hiç alışılmadık bir şekilde?', 'false', '4', NULL),
(8, 'Suig', '9dd52e237408a2ba4842c7412303349b', 'suig@argentstudios.com', '03/05/21', '1', 'ch-3779-64-1408.fa-3350-110.hr-3278-45-32.sh-3016-64.lg-3058-64.cc-3827-110-110.hd-190-2.ha-3054-110-1408', '186.2.164.30', '0', '0', '0', 'https://runoaura.in//images/avatars/S.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '2', NULL),
(9, 'MgKassyLa', '3f2b6e0815e8c0543e4014df23714352', 'tekinkerem2007@gmail.com', '03/05/21', '1', 'hd-180-1.hr-3163-31.ha-3362-110.ea-3170-1408.ch-240-92.cc-3158-62.ca-3414-62.lg-3418-110.sh-305-92', '186.2.164.133', '0', '0', '0', 'https://runoaura.in//images/avatars/M.png', '200', '50', 'black', 'Adım Adım Yukarıya, Resmi Olmaya!', 'false', '1', NULL),
(13, 'F16', 'b1c6bd66ee966c88bf55b002c6f50da9', 'ardademirhabbo@gmail.com', '10/05/21', '1', 'hr-3531-1407-61.hd-208-1.ch-3001-92-110.lg-285-110.sh-290-92-110.fa-3276-96.ha-3546-64.cc-3946-92', '186.2.164.128', '0', '0', '0', 'https://runoaura.in//images/avatars/F.png', '200', '50', 'black', 'Ekip Alımları İçin: F16#2468 Ulaşabilirsiniz.', 'false', '3', NULL),
(10, 'Rushh', 'f27f66e7c59e513f515db11412f4149c', 'yasindogan12111@hotmail.com', '09/05/21', '10', 'wa-2001-1408.sh-300-110.hd-180-7.ch-235-110.cc-3075-1417.hr-100-0.lg-3058-110.ha-1011-110.ea-1404-110', '186.2.164.99', '0', '0', '0', 'https://runoaura.in//images/avatars/R.png', '200', '50', 'black', 'çikomel', 'false', '3', NULL),
(11, 'Risk', '62d537df050e809e59b27c3873794305', 'boombagibigeliyoruz@gmail.com', '09/05/21', '1', 'lg-275-176626.hd-9835-10.ch-3203-110', '186.2.164.12', '0', '0', '0', 'https://runoaura.in//images/avatars/R.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'true', '4', NULL),
(12, 'Chou', '8d0c1395f5b5d4c4a440f526294ae5dd', 'barisexe45@outlook.com', '09/05/21', '1', 'ca-3876-63-1408.wa-2005-63.ch-235-92.hr-3871-1403.sh-8370-92.fa-3276-1411.hd-205-1383.ea-8025-63.lg-275-1428', '186.2.164.12', '0', '0', '0', 'https://runoaura.in//images/avatars/C.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'true', '2', NULL),
(14, 'DELIROSS', 'e138d4d6b7877f634ad48e638e0916b3', 'osmanmartt@icloud.com', '11/05/21', '1', 'hr-3163-61.hd-3092-1370.ch-3279-100.lg-3202-110-1408.fa-3865-1408.ha-3734-1408.cc-3509-110-92.sh-3587-110-93', '186.2.164.128', '0', '0', '0', 'https://runoaura.in//images/avatars/D.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '2', NULL),
(15, 'CeYDaJX', '58f3383570a13b73856172eacf2b510a', 'goncagulgnd96@gmail.com', '11/05/21', '8', 'lg-710-110.ha-1004-110.hr-7310-1404.hd-3096-10.ch-660-1335.sh-725-92.ca-3876-92-92.fa-3276-1329', '186.2.164.12', '0', '0', '0', 'https://runoaura.in//images/avatars/C.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '2', NULL),
(16, 'Shiver', 'bf79f9b03fbbc2b6b918a9f1044c47c3', 'shiver18@gmail.com', '12/05/21', '8', 'lg-280-110.fa-3276-110.sh-3275-92.ch-255-100.he-8208-1412.hr-3163-61.hd-190-1391', '186.2.164.128', '0', '0', '0', 'https://runoaura.in//images/avatars/S.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'true', '1', NULL),
(17, 'Dracking', 'b5d5ff008c9c5a685e11a34ce987cc24', 'xxmehmetxx584@gmail.com', '13/05/21', '1', 'he-8208-110.hr-3163-1403.lg-280-110.hd-190-2.wa-7600-63.ch-210-110.sh-290-92', '186.2.164.28', '0', '0', '0', 'https://runoaura.in//images/avatars/D.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', NULL, NULL),
(18, 'M.Drms32', '053d33c36c71c2728977dee6dc19eb11', 'mamizim.32@gmail.com', '13/05/21', '8', 'he-3181-1408.hd-180-8.ca-3485-63.lg-3320-1408-110.hr-828-49.ch-3880-110.sh-3587-1408-1408', '186.2.164.128', '0', '0', '0', 'https://runoaura.in//images/avatars/M.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '1', NULL),
(19, 'Myth', '2520b022addf1ae007bd12da729f2466', 'Myth1905@gmail.com', '16/05/21', '1', 'hd-3093-10.lg-3023-91.cc-3420-110.ea-1404-110.sh-300-110.hr-63889-36', '186.2.164.31', '0', '0', '0', 'https://runoaura.in//images/avatars/M.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '4', NULL),
(20, 'aeternumvale', '446fc72eff3d5b98ead914322907496e', 'erenarslansen58@gmail.com', '18/05/21', '1', 'lg-3418-92.ha-3767-81.fa-3276-1414.sh-3275-81.hd-208-10.hr-110-156638.ch-3728-81-92', '186.2.164.31', '0', '0', '0', 'https://runoaura.in//images/avatars/A.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '2', NULL),
(21, 'trTuana', '6e5fdf5884baee5addd0db39356d5ae3', 'tuana@gmail.com', '18/05/21', '7', 'sh-3587-66-92.wa-3661-66-1408.hr-3870-34.he-3752-76.ch-660-73.hd-3096-10.fa-3276-73.lg-3418-92', '186.2.164.31', '0', '0', '0', 'https://runoaura.in//images/avatars/T.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '2', NULL),
(22, 'Akai03', 'f404c3303dd0b94945e8873f04533470', 'frtdmr321@gmail.com', '18/05/21', '1', 'ca-1812-107553.hd-190-1383.cp-3313-92.ch-215-92.cc-3509-110-1408.sh-290-92.hr-7302-45.ha-7991-93.lg-3057-110.ea-8070-63', '186.2.164.97', '0', '0', '0', 'https://runoaura.in//images/avatars/A.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '1', NULL),
(23, 'Kava84', '82f06b9f00ae7cd7ca1e1a02ba5a5c54', 'Kava84habbotr@gmail.com', '20/05/21', '7', 'lg-275-176626.hd-9835-10.ch-3203-110', '186.2.164.129', '0', '0', '0', 'https://runoaura.in//images/avatars/K.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '1', NULL),
(24, 'denemeforcms', 'db37ecc8011b529d365425fdb8b9a4b5', 'altn@gmai.com', '27/05/21', '1', 'lg-275-176626.hd-9835-10.ch-3203-110', '186.2.164.31', '0', '0', '0', 'https://runoaura.in//images/avatars/D.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '1', NULL),
(25, 'Jizzle', '6436ce2fabd7a05146bb52b1c3f5bf9c', 'Jizzle@Business.com', '27/05/21', '1', 'lg-275-176626.hd-9835-10.ch-3203-110', '186.2.164.31', '0', '0', '0', 'https://runoaura.in//images/avatars/J.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '1', NULL),
(26, 'Corelo', '60f03530dee2eeb791a8b3f92644fcd4', 'sananeamk@sananeamk.de', '28/05/21', '1', 'lg-275-176626.hd-9835-10.ch-3203-110', '186.2.164.129', '0', '0', '0', 'https://runoaura.in//images/avatars/C.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '1', NULL),
(27, 'JoyKomutan', 'caecdac73c2b174ed205d5b6848b0d6f', 'joy@gmail.com', '28/05/21', '1', 'lg-275-176626.hd-9835-10.ch-3203-110', '186.2.164.31', '0', '0', '0', 'https://runoaura.in//images/avatars/J.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', '2', NULL),
(28, 'Gaztambide', '62d537df050e809e59b27c3873794305', 'gaztambide@gaztambide.com', '28/05/21', '1', 'lg-275-176626.hd-9835-10.ch-3203-110', '186.2.164.31', '0', '0', '0', 'https://runoaura.in//images/avatars/G.png', '200', '50', 'black', 'Runoaura, Yenilikleri ile Runoda', 'false', NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `basvuru`
--
ALTER TABLE `basvuru`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `yilmazev` (`yilmazev`);

--
-- Tablo için indeksler `kisahaber`
--
ALTER TABLE `kisahaber`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `logs_visiting`
--
ALTER TABLE `logs_visiting`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `basvuru`
--
ALTER TABLE `basvuru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Tablo için AUTO_INCREMENT değeri `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kisahaber`
--
ALTER TABLE `kisahaber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;

--
-- Tablo için AUTO_INCREMENT değeri `logs_visiting`
--
ALTER TABLE `logs_visiting`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;

--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
