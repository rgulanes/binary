-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2017 at 05:18 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `binary`
--

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `code_id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `generated_date` varchar(100) DEFAULT NULL,
  `generated_by` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `used_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES
(1, 'zdG5EQECW7', '2016-12-27 14:38:10', '14', '1', '38'),
(2, 'oopCBLxqwy', '2016-12-27 14:38:10', '14', '1', '37'),
(3, 'bTpa5OPxRK', '2016-12-27 14:50:19', '14', '1', '15'),
(4, 'Kl8pv3X2VD', '2016-12-27 14:50:19', '14', '1', '36'),
(5, 'WjnycuHMih', '2016-12-27 14:50:19', '14', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `position_id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `position_left` varchar(100) DEFAULT NULL,
  `position_right` varchar(100) NOT NULL,
  `sponsor_by` varchar(100) DEFAULT NULL,
  `upline` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES
(16, '36', '0', '1', '15', '15'),
(17, '37', '0', '1', '15', '36'),
(18, '38', '', '', '15', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `entered_on` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sponsor_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES
(14, 'rhonnel.cordova', '12345', 'Rhonnel', 'Cordova', 'Male', '09324269637', 'Bangkal', '2016-12-23 05:50:47', '', 1, 'rhonnelcordova@gmail.com', ''),
(15, 'mark.cruz', '12345', 'Mark', 'Cruz', 'Male', '09324269637', 'Sasa', '2016-12-26 16:43:08', '', 0, 'markcruz@gmail.com', '14'),
(36, 'mitch.lim', '12345', 'Mitch', 'Lim', 'Female', '09123122141', 'Puan', '2017-01-02 13:40:58', NULL, 0, 'mitchlim', '15'),
(37, 'jack.lester', '12345', 'Jack', 'Lester', 'Male', '09123121212', 'Maa', '2017-01-02 13:47:39', NULL, 0, 'jacklester@gmail.com', '15'),
(38, 'ronald.gulanes', '12345', 'Ronald', 'Gulanes', 'Male', '09123123214', 'Toril', '2017-01-07 04:59:51', NULL, 0, 'ronaldgulanes@gmail.com', '36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
