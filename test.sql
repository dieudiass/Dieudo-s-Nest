-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2018 at 01:34 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `user` varchar(16) DEFAULT NULL,
  `friend` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`user`, `friend`) VALUES
('dieudo', 'murielle'),
('ketsia', 'murielle'),
('murielle', 'dieudo'),
('dieudo', 'ketsia'),
('murielle', 'ketsia'),
('ketsia', 'dieudo'),
('dieudo', 'hulda'),
('murielle', 'hulda'),
('ketsia', 'hulda'),
('dieudo', 'erick'),
('hulda', 'erick'),
('ketsia', 'erick'),
('murielle', 'erick');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `user` varchar(16) DEFAULT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`user`, `pass`) VALUES
('murielle', 'murielle'),
('dieudo', 'dieudo'),
('ketsia', 'ketsia'),
('hulda', '045454'),
('erick', 'nkash');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `auth` varchar(16) DEFAULT NULL,
  `recip` varchar(16) DEFAULT NULL,
  `pm` char(1) DEFAULT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL,
  `message` varchar(4096) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `auth`, `recip`, `pm`, `time`, `message`) VALUES
(1, 'murielle', 'murielle', '0', 1536758127, 'I\'m in love'),
(2, 'dieudo', 'dieudo', '0', 1536758277, 'To all ladies just to inform you that i\'m taken...'),
(3, 'ketsia', 'ketsia', '0', 1536758445, 'What a wonderful day with BA'),
(4, 'dieudo', 'murielle', '0', 1536758590, 'with who?'),
(5, 'ketsia', 'murielle', '0', 1536758672, 'Tell us'),
(6, 'murielle', 'dieudo', '1', 1536758764, 'I love u bb'),
(7, 'dieudo', 'dieudo', '1', 1536758831, 'I love you too, i can\'t wait to see u'),
(8, 'dieudo', 'ketsia', '1', 1536758886, 'How was it?'),
(9, 'ketsia', 'ketsia', '1', 1536758938, 'Well the paper leaked out'),
(10, 'ketsia', 'hulda', '0', 1537611213, 'hi'),
(11, 'erick', 'erick', '0', 1537724814, 'hi everybody');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `user` varchar(16) DEFAULT NULL,
  `text` varchar(4096) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`user`, `text`) VALUES
('murielle', 'Hi, Please add me i\'m new on this dieudo\'s nest'),
('dieudo', 'Hi, Please add me i\'m looking for friends'),
('ketsia', 'Hi guys, Please add me to your network'),
('hulda', 'im the IT guy '),
('erick', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD KEY `user` (`user`(6)),
  ADD KEY `friend` (`friend`(6));

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD KEY `user` (`user`(6));

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth` (`auth`(6)),
  ADD KEY `recip` (`recip`(6));

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD KEY `user` (`user`(6));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
