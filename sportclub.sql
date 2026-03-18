-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2019 at 11:37 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportclub`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--
create database sportclub;
use sportclub;
CREATE TABLE `admin_login` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `admin_email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `entry_register_tournament`
--

CREATE TABLE `entry_register_tournament` (
  `r_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `game_name` varchar(250) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `apply_date` varchar(50) NOT NULL,
  `team_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entry_register_tournament`
--

INSERT INTO `entry_register_tournament` (`r_id`, `user_id`, `game_name`, `name`, `email`, `contact`, `address`, `apply_date`, `team_name`) VALUES
(12, 3, 'cricket', 'prabhat', 'prabhat@gmail.com', '756746766', 'bhopal', '2019-09-29', 'wst'),
(13, 4, 'badminton', 'vinode', 'v@gmail.com', '12345', 'bhopal', '2019-09-29', 'wst'),
(14, 3, 'game', 'example', 'example@gmail.com', '111111111111', 'bhopal', '2019-11-12', 'team');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `about` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `name`, `email`, `subject`, `about`) VALUES
(2, 'prabhat', 'prabhat@gmail.com', 'tournament', 'example feedback');

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE `galery` (
  `img_id` int(11) NOT NULL,
  `image_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `player_detail`
--

CREATE TABLE `player_detail` (
  `p_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `player_name` varchar(250) NOT NULL,
  `p_designation` varchar(50) NOT NULL,
  `p_type` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `p_image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_detail`
--

INSERT INTO `player_detail` (`p_id`, `user_id`, `player_name`, `p_designation`, `p_type`, `contact`, `team_name`, `p_image`) VALUES
(3, 1, 'amit', 'bastman', 'team-member', '5666564566', 'tigers', 'p06jb0m6.jpg'),
(5, 3, 'raj', 'feilder', 'team-member', '545454545', 'wst', 'istockphoto-949190756-612x612.jpg'),
(7, 3, 'a', 'feilder', 'team-member', '67999458', 'team', 'Penguins.jpg'),
(8, 3, 'b', 'bastman', 'extra', '123123123', 'team', 'Jellyfish.jpg'),
(9, 3, 'c', 'keeper', 'team-member', '123234345', 'team', 'Tulips.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `s_id` int(11) NOT NULL,
  `s_date` date NOT NULL,
  `s_time` varchar(50) NOT NULL,
  `groupA_team_name` varchar(50) NOT NULL,
  `groupB_team_name` varchar(50) NOT NULL,
  `game_name` varchar(50) NOT NULL,
  `place` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`s_id`, `s_date`, `s_time`, `groupA_team_name`, `groupB_team_name`, `game_name`, `place`) VALUES
(2, '2019-09-29', '2pm', 'Lions', 'Tigers', 'cricket', 'mp nagar bhopal ');

-- --------------------------------------------------------

--
-- Table structure for table `team_detail`
--

CREATE TABLE `team_detail` (
  `team_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `team_captian` varchar(50) NOT NULL,
  `total_player` int(50) NOT NULL,
  `participate_player` int(50) NOT NULL,
  `extra_player` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_detail`
--

INSERT INTO `team_detail` (`team_id`, `user_id`, `team_name`, `team_captian`, `total_player`, `participate_player`, `extra_player`) VALUES
(1, 1, 'lions', 'mohan', 15, 11, 4),
(2, 3, 'wst', 'prabhat', 15, 11, 4),
(3, 4, 'wst', 'prabhat', 15, 11, 4),
(4, 3, 'team', 'abc', 12, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tournament`
--

CREATE TABLE `tournament` (
  `t_id` int(11) NOT NULL,
  `game_name` varchar(250) NOT NULL,
  `game_type` varchar(50) NOT NULL,
  `player_size` int(50) NOT NULL,
  `total_player` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `place` varchar(250) NOT NULL,
  `entry_fees` double(9,2) NOT NULL,
  `wining_price` double(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`t_id`, `game_name`, `game_type`, `player_size`, `total_player`, `start_date`, `end_date`, `place`, `entry_fees`, `wining_price`) VALUES
(1, 'cricket', 'Outdoor', 11, '15', '2019-09-04', '2019-09-27', 'bhopal', 3000.00, 21000.00),
(3, 'badminton', 'Indoor', 1, '5', '2019-08-26', '2019-09-06', 'indore', 1000.00, 5000.00),
(6, 'hockey', 'Outdoor', 11, '15', '2019-09-03', '2019-09-20', 'indore', 5000.00, 15000.00),
(10, 'game', 'Indoor', 23, '33', '2019-10-08', '2019-10-03', 'g', 45.00, 54.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(250) NOT NULL,
  `register_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_contact`, `user_address`, `register_date`) VALUES
(3, 'prabhat', 'prabhat@gmail.com', 'prabhat123', '7067573957', '	bhopal								\r\n								', '2019-09-28'),
(4, 'vinode', 'v@gmail.com', '123123', '1234567890', '	bhopal								\r\n								', '2019-09-29'),
(5, 'demo', 'demo@gmail.com', '123123', '7225857413', '							bhopal		\r\n								', '2019-11-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `entry_register_tournament`
--
ALTER TABLE `entry_register_tournament`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `player_detail`
--
ALTER TABLE `player_detail`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `team_detail`
--
ALTER TABLE `team_detail`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `entry_register_tournament`
--
ALTER TABLE `entry_register_tournament`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `player_detail`
--
ALTER TABLE `player_detail`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `team_detail`
--
ALTER TABLE `team_detail`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tournament`
--
ALTER TABLE `tournament`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
