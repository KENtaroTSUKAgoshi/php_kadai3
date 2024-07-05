-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-07-06 00:52:53
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db_class3`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `furigana` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `tel` varchar(256) NOT NULL,
  `content` text DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `furigana`, `email`, `tel`, `content`, `indate`) VALUES
(1, 'だし醬油', 'hh', 'test', '00000000', '炙りたい', '2024-07-05 22:49:55'),
(4, '清原和博', '0', 'test', '1111111', 'PL学園→西武→巨人→オリックス', '2022-09-22 16:07:48'),
(16, '大谷翔平', '0', 'test', '555555', 'bbbbbbb', '2024-07-05 15:58:33'),
(18, '落合博満', '0', 'test', '888888', 'jjjjjjjjkjkjkjkjkjkjkjk', '2024-07-05 16:01:26'),
(19, '清原和博', '0', 'yyyy', '22222', 'redirect($file_name)ppppp', '2024-07-05 16:28:57'),
(21, '菊池雄星', 'イシゲ', 'tese@test', '3', 'ddddddddddd', '2024-07-05 20:15:56'),
(22, '大谷翔平', 'ブライアント', 'test@test', '0', 'bbbbbbbb', '2024-07-06 07:46:00'),
(23, '門田博光', 'ナンカイホークス', 'test@test', '0', 'sssssssssssssssssssssssss', '2024-07-05 21:40:38'),
(24, '大谷翔平', 'ブライアント', 'test', '0', 'yyyyy', '2024-07-05 22:49:46'),
(25, '大谷翔平', 'ブライアント', 'test', '0', 'tttttttt', '2024-07-06 07:45:54');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
