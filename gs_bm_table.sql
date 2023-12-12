-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 12 月 12 日 13:42
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
-- データベース: `gs_db1`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` text NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `date`) VALUES
(1, 'あたらしい家中華', 'https://www.amazon.co.jp/dp/4838732511', 'ありふれた素材であっさり美味しい、毎日食べたい味', '2023-12-10 10:22:32'),
(2, '10品を繰り返し作りましょう', 'https://www.amazon.co.jp/dp/4479785698', '普段の家中華がちょっとしたコツでレベルアップ', '2023-12-10 10:24:27'),
(4, '奥薗流・いいことずくめの乾物料理', 'https://www.amazon.co.jp/dp/4579210972', '低脂肪、低カロリー、栄養豊富、長期保存ができ料理が簡単な、いいことずくめな乾物料理', '2023-12-10 10:37:57'),
(7, 'ちゃんと作れるイタリアン', 'https://www.amazon.co.jp/%E3%81%A1%E3%82%83%E3%82%93%E3%81%A8%E4%BD%9C%E3%82%8C%E3%82%8B%E3%82%A4%E3%82%BF%E3%83%AA%E3%82%A2%E3%83%B3-Magazine-House-mook%E2%80%95Hanako-cooking/dp/4838781911/ref=sr_1_19?qid=1702383254&s=books&sr=1-19', 'パスタの茹で方はこの本で習った。', '2023-12-12 21:14:49'),
(8, 'おくぞの流　簡単　激早　たっぷり野菜おかず２２９', 'https://www.amazon.co.jp/%E3%81%8A%E3%81%8F%E3%81%9E%E3%81%AE%E6%B5%81-%E7%B0%A1%E5%8D%98-%E6%BF%80%E6%97%A9-%E3%81%9F%E3%81%A3%E3%81%B7%E3%82%8A%E9%87%8E%E8%8F%9C%E3%81%8A%E3%81%8B%E3%81%9A229-%E8%AC%9B%E8%AB%87%E7%A4%BE%E3%81%AE%E3%81%8A%E6%96%99%E7%90%86BOOK/dp/4062715686/ref=tmm_pap_swatch_0?_encoding=UTF8&qid=&sr=', '野菜１つで手軽に作れて美味しいおかず集。', '2023-12-12 21:40:17');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
