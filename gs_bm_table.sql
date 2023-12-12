-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 12 月 12 日 13:11
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
(3, 'Rose\'s Heavenly Cakes', 'https://www.amazon.co.jp/dp/B00BKRONE6', 'この本のレシピで作ったカップケーキは最高。', '2023-12-10 10:29:18'),
(4, '奥薗流・いいことずくめの乾物料理', 'https://www.amazon.co.jp/dp/4579210972', '低脂肪、低カロリー、栄養豊富、長期保存ができ料理が簡単な、いいことずくめな乾物料理', '2023-12-10 10:37:57'),
(6, 'おくぞの流　簡単　激早　たっぷり野菜おかず２２９', 'https://www.amazon.co.jp/gp/product/B07MYX2Z2Y', '野菜１つで手軽に作れて美味しいおかず集。', '2023-12-10 21:50:07');

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
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
