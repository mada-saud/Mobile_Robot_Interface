-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: 23 يونيو 2021 الساعة 23:45
-- إصدار الخادم: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robot_arm`
--

-- --------------------------------------------------------

--
-- بنية الجدول `directione`
--

CREATE TABLE `directione` (
  `Forword` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Backword` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Right_r` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Stop_s` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Left_l` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `directione`
--

INSERT INTO `directione` (`Forword`, `Backword`, `Right_r`, `Stop_s`, `Left_l`) VALUES
('', '', 'Right', '', ''),
('', '', '', '', 'Left'),
('', '', 'Right', '', ''),
('', '', 'Right', '', ''),
('', '', '', '', 'Left'),
('', '', '', 'Stop', ''),
('', '', 'Right', '', ''),
('Forword', '', '', '', ''),
('Forword', '', '', '', ''),
('', '', '', 'Stop', ''),
('', '', 'Right', '', ''),
('', '', '', '', 'Left'),
('Forword', '', '', '', ''),
('Forword', '', '', '', ''),
('', '', '', 'Stop', ''),
('', '', '', 'Stop', ''),
('', '', '', '', 'Left'),
('', '', '', 'Stop', ''),
('Forword', '', '', '', ''),
('Forword', '', '', '', '');

-- --------------------------------------------------------

--
-- بنية الجدول `motors`
--

CREATE TABLE `motors` (
  `Motor1` int(11) NOT NULL,
  `Motor2` int(11) NOT NULL,
  `Motor3` int(11) NOT NULL,
  `Motor4` int(11) NOT NULL,
  `Motor5` int(11) NOT NULL,
  `Motor6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `motors`
--

INSERT INTO `motors` (`Motor1`, `Motor2`, `Motor3`, `Motor4`, `Motor5`, `Motor6`) VALUES
(0, 0, 0, 0, 0, 0),
(151, 81, 48, 114, 0, 165),
(127, 180, 159, 172, 109, 59),
(53, 85, 157, 150, 114, 180),
(135, 68, 180, 98, 59, 180),
(164, 72, 116, 23, 180, 83),
(116, 68, 170, 78, 129, 157),
(120, 149, 149, 52, 90, 129),
(91, 101, 100, 100, 149, 180),
(95, 147, 114, 114, 41, 92),
(143, 67, 67, 114, 94, 147),
(135, 54, 75, 123, 172, 170),
(0, 0, 0, 0, 0, 0),
(0, 0, 0, 0, 0, 0),
(85, 85, 159, 115, 52, 134),
(160, 144, 71, 102, 34, 132),
(0, 0, 0, 0, 0, 0),
(0, 0, 0, 0, 0, 0),
(108, 76, 154, 31, 107, 139),
(170, 166, 167, 158, 172, 160),
(68, 53, 53, 56, 78, 62),
(96, 58, 128, 155, 71, 113);

-- --------------------------------------------------------

--
-- بنية الجدول `run`
--

CREATE TABLE `run` (
  `run_on` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `run`
--

INSERT INTO `run` (`run_on`) VALUES
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
