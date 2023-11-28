-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2023-11-28 13:19:58
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
-- 資料庫： `music_database`
--

-- --------------------------------------------------------

--
-- 資料表結構 `music_info`
--

CREATE TABLE `music_info` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `youtube_id` varchar(11) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `music_info`
--

INSERT INTO `music_info` (`id`, `title`, `youtube_id`, `description`) VALUES
(1, 'Song Title', 'XzzDUSLTcC8', 'Description of the song'),
(2, 'Song 2', 'z9Ib1FguF-0', 'Description of the song'),
(3, 'Enjoy', '4bSeT_9gmJs', 'Description of the song'),
(4, '涯系客家人', 'EKA8xJpsbUc', 'Description of the song');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `music_info`
--
ALTER TABLE `music_info`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `music_info`
--
ALTER TABLE `music_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
