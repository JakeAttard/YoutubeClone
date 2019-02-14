-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2019 at 07:53 PM
-- Server version: 5.7.24-log
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
-- Database: `youtubeclone`
--
CREATE DATABASE IF NOT EXISTS `youtubeclone` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `youtubeclone`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Film & Animation'),
(2, 'Autos & Vehicles'),
(3, 'Music'),
(4, 'Pets & Animals'),
(5, 'Sports'),
(6, 'Travel & Events'),
(7, 'Gaming'),
(8, 'People & Blogs'),
(9, 'Comedy'),
(10, 'Entertainment'),
(11, 'News & Politics'),
(12, 'Howto & Style'),
(13, 'Education'),
(14, 'Science & Technology'),
(15, 'Nonprofits & Activism');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postedBy` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `responseTo` int(11) NOT NULL,
  `body` text NOT NULL,
  `datePosted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `postedBy`, `videoId`, `responseTo`, `body`, `datePosted`) VALUES
(1, 'jakeattard', 1, 0, 'hey', '2019-02-01 01:03:46'),
(2, 'jakeattard', 1, 0, 'Great to video mate!', '2019-02-01 14:29:35'),
(3, 'jakeattard', 1, 0, 'test comment', '2019-02-01 14:42:17'),
(4, 'jakeattard', 1, 0, 'this is a test comment', '2019-02-01 14:43:45'),
(5, 'jakeattard', 1, 0, 'hey', '2019-02-02 12:36:03'),
(6, 'jakeattard', 1, 0, 'ftwd', '2019-02-02 17:45:01'),
(7, 'jakeattard', 1, 0, 'im a cool kid', '2019-02-02 17:47:33'),
(8, 'jakeattard', 1, 0, 'hey!', '2019-02-02 17:49:30'),
(9, 'jakeattard', 1, 0, 'i love the walking dead', '2019-02-02 17:57:02'),
(10, 'jakeattard', 1, 0, 'I love the walking dead', '2019-02-02 17:57:25'),
(11, 'jakeattard', 1, 0, 'I love the walking dead', '2019-02-02 17:58:01'),
(12, 'jakeattard', 1, 0, 'hey there', '2019-02-02 18:58:31'),
(13, 'jakeattard', 1, 0, 'hey there', '2019-02-02 19:32:43'),
(14, 'jakeattard', 1, 0, 'Hey there im a hack', '2019-02-02 19:44:38'),
(15, 'jakeattard', 1, 0, 'hey', '2019-02-02 19:45:59'),
(16, 'jakeattard', 1, 0, 'Hey there', '2019-02-02 20:09:53'),
(17, 'jakeattard', 1, 0, 'hey', '2019-02-02 20:13:46'),
(18, 'jakeattard', 1, 0, 'This is another test', '2019-02-02 20:54:43'),
(19, 'jakeattard', 1, 0, 'Hey this is another test', '2019-02-02 21:00:01'),
(20, 'jakeattard', 1, 0, 'This is another test', '2019-02-02 21:00:22'),
(21, 'jakeattard', 1, 0, 'This is a bad naughty comment', '2019-02-02 21:03:13'),
(22, 'jakeattard', 1, 21, 'hi there', '2019-02-03 18:02:24'),
(23, 'jakeattard', 1, 20, 'ftwd', '2019-02-03 18:10:44'),
(24, 'jakeattard', 1, 22, 'hi', '2019-02-03 19:58:40'),
(25, 'jakeattard', 1, 24, 'ftws', '2019-02-03 20:00:10'),
(26, 'jakeattard', 1, 18, 'twd', '2019-02-03 20:02:56'),
(27, 'jakeattard', 1, 26, 'hi to you too', '2019-02-03 20:03:12'),
(28, 'jakecattard', 3, 0, 'Hey there', '2019-02-11 19:24:45'),
(29, 'jakecattard', 3, 0, 'yo bro', '2019-02-11 19:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `commentId`, `videoId`) VALUES
(10, 'jakeattard', 19, 0),
(14, 'jakeattard', 21, 0),
(20, 'jakeattard1', 0, 3),
(24, 'jakecattard', 28, 0),
(27, 'jakecattard', 0, 3),
(28, 'jakecattard', 29, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `userTo` varchar(50) NOT NULL,
  `userFrom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `userTo`, `userFrom`) VALUES
(17, 'jakeattard', 'jakeattard1'),
(23, 'jakeattard', 'jakecattard');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `videoId` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `selected` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profilePic` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(5, 'Jake', 'Attard', 'jakeattard', 'jake@jakeattard.com', '3b49389d779322f52da753f984243de92d3c38d08028f984485e6d1d96ffd03ac6ae6a4a5e5b852538a0e850c3adac7a5a3ba03e4926eb2b7e8e3b2e695798e1', '2019-02-14 19:52:06', 'assets/images/profilePictures/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `uploadedBy` varchar(50) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `privacy` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `category` int(11) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) NOT NULL,
  `duration` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `uploadedBy`, `title`, `description`, `privacy`, `filePath`, `category`, `uploadDate`, `views`, `duration`) VALUES
(1, 'jakeattard', 'This Video is a test', 'Test Video for testing purposes', 1, 'uploads/videos/5c4d08e83328d.mp4', 1, '2019-01-27 11:27:04', 204, '00:06'),
(3, 'jakeattard', 'Kids Video', 'This video is for kids who love to watch there favourite show bear', 1, 'uploads/videos/5c596313f0181.mp4', 10, '2019-02-05 20:18:59', 13, '02:08'),
(4, 'jakecattard', 'Test Video', 'hey', 1, 'uploads/videos/5c61424c59911.mp4', 7, '2019-02-11 19:37:16', 1, '02:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
