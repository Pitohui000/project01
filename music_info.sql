-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024 年 03 月 27 日 20:13
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

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
-- 資料表結構 `music_info`
--

CREATE TABLE `music_info` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `youtube_id` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `buttonid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `music_info`
--

INSERT INTO `music_info` (`id`, `title`, `youtube_id`, `description`, `buttonid`) VALUES
(1, 'Song Title', '6JCMhGSuZNU?si=ts_i4fVui_19-4i9', 'Description of the song', 'A01'),
(2, 'Song 2', 'z9Ib1FguF-0', 'Description of the song', 'A02'),
(3, 'Enjoy', '4bSeT_9gmJs', 'Description of the song', ''),
(4, '涯系客家人', 'EKA8xJpsbUc', 'Description of the song', ''),
(5, '存在', 'o96c7CQC_y0?si=InpMD7WB-RNI_Hpa', 'John Doe is a software engineer at Google.', ''),
(6, '心地', 'P4z1I3r_CJ4?si=Csy34VdxqZnP8XzD', 'Jane Doe is a data scientist at Google.', ''),
(7, '靚細妹', 'RknBsohizas?si=woRa_tW-QxMB45Eo', 'Peter Smith is a product manager at Google.', ''),
(8, '五月雪', '6C5CP3RQdZ0?si=7MVQdNzt6_Swc64w', 'Sarah Jones is a marketing manager at Google.', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
