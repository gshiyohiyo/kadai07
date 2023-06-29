-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-06-29 15:35:56
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `testdb`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `benchmarks`
--

CREATE TABLE `benchmarks` (
  `id` int(11) NOT NULL,
  `platform` varchar(255) NOT NULL,
  `cpu` varchar(255) NOT NULL,
  `system` varchar(255) NOT NULL,
  `single` int(12) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `benchmarks`
--

INSERT INTO `benchmarks` (`id`, `platform`, `cpu`, `system`, `single`, `date`) VALUES
(1, 'Windows 24', 'AMD Ryzen Threadripper PRO 5995WX', 'G\'s System', 9999, '2023-06-28 00:00:00'),
(2, 'Web', 'Unknown', 'Unknown', 1536, '2023-06-28 22:24:11'),
(3, 'Web', 'Unknown', 'Unknown', 1456, '2023-06-28 22:29:17'),
(4, 'Web', 'Unknown', 'Unknown', 1456, '2023-06-28 22:29:54'),
(5, 'Web', 'Unknown', 'Unknown', 1476, '2023-06-29 21:23:44'),
(12, 'Web', 'Unknown', 'Unknown', 1494, '2023-06-29 22:22:20');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `benchmarks`
--
ALTER TABLE `benchmarks`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `benchmarks`
--
ALTER TABLE `benchmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
