-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2024-02-29 14:52:48
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `test`
--

-- --------------------------------------------------------

--
-- 資料表結構 `songs`
--

CREATE TABLE `songs` (
  `song_id` int(11) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `length` time DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `album_name` varchar(255) DEFAULT NULL,
  `producer` varchar(255) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `lyrics` text DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT NULL,
  `featured_artists` varchar(255) DEFAULT NULL,
  `record_label` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `play_count` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `dislikes` int(11) DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `is_explicit` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `songs`
--

INSERT INTO `songs` (`song_id`, `song_name`, `author`, `length`, `genre`, `release_date`, `album_name`, `producer`, `language`, `lyrics`, `is_featured`, `featured_artists`, `record_label`, `year`, `play_count`, `likes`, `dislikes`, `comments`, `rating`, `is_explicit`) VALUES
(1, 'BA START', 'MX STUDIO', '00:03:30', '??', '2023-10-26', 'BlueAr', 'Arona', 'Jp', '???????', 1, '?????', '????', 2023, 1000, 500, 50, 100, 4.5, 1),
(2, 'Goz', 'MI', '00:03:30', '??', '2023-10-26', '??1', '???1', '??1', '??1', 1, '?????1', '????1', 2023, 1000, 500, 50, 100, 4.5, 1),
(3, 'Kol', 'MU', '00:04:00', '??', '2023-10-26', '??2', '???2', '??2', '??2', 1, '?????2', '????2', 2023, 1200, 600, 60, 120, 4.2, 0),
(4, 'POr', 'MU', '00:03:45', '??', '2023-10-27', '??3', '???3', '??3', '??3', 1, '?????3', '????3', 2023, 800, 400, 40, 80, 4, 1),
(5, 'BA Say', 'Mi STUDIO', '00:03:30', '??', '2023-10-26', '??1', '???1', '??1', '??1', 1, '?????1', '????1', 2023, 1000, 500, 50, 100, 4.5, 1),
(6, 'BA Lva', 'MX STUDIO', '00:04:00', '??', '2023-10-26', '??2', '???2', '??2', '??2', 1, '?????2', '????2', 2023, 1200, 600, 60, 120, 4.2, 0),
(7, 'BA START 2', 'MX STUDIO', '00:03:45', '??', '2023-10-27', '??3', '???3', '??3', '??3', 1, '?????3', '????3', 2023, 800, 400, 40, 80, 4, 1),
(8, 'BA Song 1', 'MX STUDIO', '00:03:30', '??', '2023-10-26', 'BA Album 1', 'Producer 1', 'Language 1', 'Lyrics 1', 1, 'Featured Artist 1', 'Record Label 1', 2023, 1000, 500, 50, 100, 4.5, 1),
(9, 'BA Song 2', 'MX STUDIO', '00:04:00', '??', '2023-10-26', 'BA Album 2', 'Producer 2', 'Language 2', 'Lyrics 2', 1, 'Featured Artist 2', 'Record Label 2', 2023, 1200, 600, 60, 120, 4.2, 0),
(10, 'GZ Song 1', 'MI STUDIO', '00:03:45', '??', '2023-10-27', 'GZ Album 1', 'Producer 3', 'Language 3', 'Lyrics 3', 1, 'Featured Artist 3', 'Record Label 3', 2023, 800, 400, 40, 80, 4, 1),
(11, 'GZ Song 2', 'MI STUDIO', '00:03:20', '??', '2023-10-28', 'GZ Album 2', 'Producer 4', 'Language 4', 'Lyrics 4', 1, 'Featured Artist 4', 'Record Label 4', 2023, 1500, 700, 70, 150, 4.8, 0),
(12, 'BA Song 3', 'MX STUDIO', '00:03:15', '??', '2023-10-29', 'BA Album 3', 'Producer 3', 'Language 3', 'Lyrics 3', 1, 'Featured Artist 3', 'Record Label 3', 2023, 900, 450, 45, 90, 4.2, 1),
(13, 'GZ Song 3', 'MI STUDIO', '00:03:40', '??', '2023-10-30', 'GZ Album 3', 'Producer 5', 'Language 5', 'Lyrics 5', 1, 'Featured Artist 5', 'Record Label 5', 2023, 1100, 550, 55, 110, 4.3, 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `songs`
--
ALTER TABLE `songs`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
