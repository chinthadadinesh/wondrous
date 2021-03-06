-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 26, 2018 at 01:44 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wondrous`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`) VALUES
(9, 'Vizianagaram'),
(2, 'srikakulam'),
(3, 'visakhapatnam'),
(4, 'Hyderabad'),
(5, 'Chennai'),
(6, 'Kochi'),
(7, 'kolkatta'),
(8, 'Kochi');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postId` int(11) NOT NULL,
  `description` text,
  `city` int(255) DEFAULT NULL,
  `votes` bigint(20) NOT NULL DEFAULT '0',
  `userId` int(11) DEFAULT NULL,
  `posteddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postId`, `description`, `city`, `votes`, `userId`, `posteddate`) VALUES
(1, 'biryani in alpha is good', 3, 35, 4, '2018-09-20 07:02:16'),
(2, 'Dosa in sairam parlur is good', 3, 11, 4, '2018-09-20 07:03:06'),
(3, 'Cake in karachi bakery is good', 3, 29, 4, '2018-09-20 07:03:28'),
(4, 'biryani in paradise is good', 3, 34, 4, '2018-09-20 07:03:59'),
(5, 'Biryani famous in myrestaurent', 2, 9, 6, '2018-09-20 10:58:11'),
(6, 'pot biryani in myrestaurent was superb!!', 3, 2, 7, '2018-09-26 10:20:57'),
(7, 'pot biryani in myrestaurent was superb!!', 3, 1, 7, '2018-09-26 10:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` text,
  `createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `name`, `email`, `password`, `createdate`) VALUES
(1, 'dinesh', 'dineshdnk@gmail.com', '$2a$10$BQmSJUV3ERfitQQ6eLVFae18k58uEeSDjvOmQmcRJ/jO1sZeb47c.', '2018-09-19 10:43:27'),
(2, 'dinesh', 'dineshdnk1@gmail.com', '$2a$10$q.qQ9VhH/pYZUiYpwmEV5.Jpd9kmxI04COBImzkiF5UIYNXRVi67u', '2018-09-19 10:45:44'),
(3, 'dinesh', 'dineshdnk2@gmail.com', '$2a$10$1R4D0MV/BcTTh4qXZFPyA.7slAiSetGhRDkFzPZpB39l5J.nqSKry', '2018-09-19 10:47:14'),
(4, 'dinesh Chinthada', 'dinesh123@gmail.com', '$2a$10$m4ZgoEO2kf5fREGRlKFll.DrEhdXiuJQCMGdCh5pVQWL0uOkfx7tK', '2018-09-19 10:39:08'),
(5, 'dinesh Chinthada', 'user@gmail.com', '$2a$10$7COsDg1w1g9hRN0vU75Grumfpp7T7Qd4/2QMZyG3jawRiewzf1fb.', '2018-09-20 10:33:44'),
(6, 'Ravi', 'ravi@gmail.com', '$2a$10$JJ.CMd2Tk8RSJPE2jgcHmOLYqOmWuG0H1POhx3QP.ebSC/shcgwqO', '2018-09-20 10:56:21'),
(7, 'sunil', 'sunilsingampallis@gmail.com', '$2a$10$AK5.oFHMRtp2r4gcwePBju1iwlkH3qBJDC6Az6Wzdrfo2jhdF6AW6', '2018-09-26 09:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `voteid` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `postId` int(11) DEFAULT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`voteid`, `userId`, `postId`, `createDate`) VALUES
(1, 7, 2, '2018-09-26 10:45:04'),
(2, 7, 2, '2018-09-26 10:45:04'),
(3, 7, 2, '2018-09-26 10:45:23'),
(4, 7, 1, '2018-09-26 11:19:26'),
(5, 7, 4, '2018-09-26 11:19:38'),
(6, 7, 7, '2018-09-26 11:20:20'),
(7, 7, 5, '2018-09-26 11:20:24'),
(8, 7, 6, '2018-09-26 11:20:27'),
(9, 7, 3, '2018-09-26 11:36:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`voteid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `voteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
