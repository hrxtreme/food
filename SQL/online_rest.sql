-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2020 at 04:28 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT
= 0;
START TRANSACTION;
SET time_zone
= "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin`
(
  `adm_id` int
(222) NOT NULL,
  `username` varchar
(222) NOT NULL,
  `password` varchar
(222) NOT NULL,
  `email` varchar
(222) NOT NULL,
  `code` varchar
(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp
() ON
UPDATE current_timestamp()
) ENGINE
=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`
adm_id`,
`username
`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', '', '2018-04-09 07:36:18'),
(8, 'abc888', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 18:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes`
(
  `id` int
(222) NOT NULL,
  `codes` varchar
(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`
id`,
`codes
`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes`
(
  `d_id` int
(222) NOT NULL,
  `rs_id` int
(222) NOT NULL,
  `title` varchar
(222) NOT NULL,
  `slogan` varchar
(222) NOT NULL,
  `price` decimal
(10,2) NOT NULL,
  `img` varchar
(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`
d_id`,
`rs_id
`, `title`, `slogan`, `price`, `img`) VALUES
(19, 54, 'Maggi', 'Only plain maggi', '25.00', '5e25a5b34fde6.jpg'),
(20, 55, 'Egg Omelet', 'Egg Omelet of anda', '30.00', '5e25a5efe17ee.jpg'),
(21, 54, 'French Fries', 'Fries not from france', '40.00', '5e25a60e4c48e.jpg'),
(22, 55, 'Pasta', 'pasta pasta dekho bhuk mujhe lagi hai', '45.00', '5e25a64be63cb.jpg'),
(23, 54, 'Burger', 'Videshi Vadapav', '60.00', '5e25a688d4da8.jpg'),
(24, 54, 'Pizza', 'Pizza', '80.00', '5e25a6bc74681.jpg'),
(25, 55, 'Chicken Balls ', 'Balls made of chicken', '100.00', '5e25a6da735f7.jpg'),
(27, 55, 'Idli ', 'Anna ki Idli ', '45.00', '5e25a73b860ac.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark`
(
  `id` int
(11) NOT NULL,
  `frm_id` int
(11) NOT NULL,
  `status` varchar
(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp
()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`
id`,
`frm_id
`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2018-04-18 17:35:52'),
(63, 32, 'closed', 'cc', '2018-04-18 17:36:46'),
(64, 32, 'in process', 'fff', '2018-04-18 18:01:37'),
(65, 32, 'closed', 'its delv', '2018-04-18 18:08:55'),
(66, 34, 'in process', 'on the way', '2018-04-18 18:56:32'),
(67, 35, 'closed', 'ok', '2018-04-18 18:59:08'),
(68, 37, 'in process', 'on the way!', '2018-04-18 19:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 19:51:19'),
(70, 37, 'closed', 'delivered success', '2018-04-18 19:51:50'),
(71, 41, 'in process', 'ok', '2020-01-20 14:42:51'),
(72, 41, 'in process', ' ', '2020-01-21 07:24:57'),
(73, 41, 'closed', 'hj', '2020-01-21 07:25:38'),
(74, 55, 'in process', 'f', '2020-01-22 12:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant`
(
  `rs_id` int
(222) NOT NULL,
  `c_id` int
(222) NOT NULL,
  `title` varchar
(222) NOT NULL,
  `email` varchar
(222) NOT NULL,
  `phone` varchar
(222) NOT NULL,
  `url` varchar
(222) NOT NULL,
  `o_hr` varchar
(222) NOT NULL,
  `c_hr` varchar
(222) NOT NULL,
  `o_days` varchar
(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp
() ON
UPDATE current_timestamp()
) ENGINE
=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`
rs_id`,
`c_id`,
`title`,
`email
`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(54, 5, '5th Floor Canteen', '5thfloor@ubisoft.com', '9898989898', 'https://example.com', '9am', '6pm', 'mon-fri', '5th Floor B3 Building', '5e25a4cba7ae2.jpg', '2020-01-20 13:02:03'),
(55, 6, '6th Floor Canteen', '6thfloor@ubisoft.com', '9898989899', 'https://example.com', '10am', '6pm', 'mon-fri', '6th Floor B3 ', '5e25a5034c23e.jpg', '2020-01-20 13:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category`
(
  `c_id` int
(222) NOT NULL,
  `c_name` varchar
(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp
() ON
UPDATE current_timestamp()
) ENGINE
=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`
c_id`,
`c_name
`, `date`) VALUES
(5, 'grill', '2018-04-14 18:45:28'),
(6, 'pizza', '2018-04-14 18:44:56'),
(7, 'pasta', '2018-04-14 18:45:13'),
(8, 'thaifood', '2018-04-14 18:32:56'),
(9, 'fish', '2018-04-14 18:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users`
(
  `u_id` int
(222) NOT NULL,
  `username` varchar
(222) NOT NULL,
  `f_name` varchar
(222) NOT NULL,
  `l_name` varchar
(222) NOT NULL,
  `email` varchar
(222) NOT NULL,
  `phone` varchar
(222) NOT NULL,
  `password` varchar
(222) NOT NULL,
  `address` text NOT NULL,
  `status` int
(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp
() ON
UPDATE current_timestamp()
) ENGINE
=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`
u_id`,
`username
`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(31, 'navjot789', 'navjot', 'singh', 'ns949405@gmail.com', '9041240385', '6d0361d5777656072438f6e314a852bc', 'badri col phase 2', 1, '2018-04-18 10:05:03'),
(32, 'navjot890', 'nav', 'singh', 'nds949405@gmail.com', '6232125458', '6d0361d5777656072438f6e314a852bc', 'badri col phase 1', 1, '2018-04-18 09:50:56'),
(33, 'user1', 'user', 'user', 'user1@ymail.in', '9898986545', '3fc0a7acf087f549ac2b266baf94b8b1', 'QWERTY PUNE', 1, '2020-01-17 08:53:29'),
(34, 'user2', 'user2', 'user2', 'user2@yopmail.com', '9812345678', '3fc0a7acf087f549ac2b266baf94b8b1', 'For Honor', 1, '2020-01-20 13:16:48'),
(35, 'user3', 'user3', 'user3', 'user3@yopmail.com', '2323232323', '3fc0a7acf087f549ac2b266baf94b8b1', 'Far Cry ', 1, '2020-01-22 08:29:42'),
(36, 'neha', 'neha', 'neha', 'neha@gmail.com', '9822560729', '73f582658ddc648641b237857a5de53f', 'uBISOFT', 1, '2020-01-22 06:26:52'),
(37, 'T1', 'Tester', 'One', 'T1@gmail.com', '1234567890', '25f9e794323b453885f5181f1b624d0b', '', 1, '2020-01-22 12:16:40'),
(38, 'T2', 'Tester', '2', 'T2@gmail.com', '1234567890', '25f9e794323b453885f5181f1b624d0b', 'vffgd', 1, '2020-01-22 12:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders`
(
  `o_id` int
(222) NOT NULL,
  `u_id` int
(222) NOT NULL,
  `title` varchar
(222) NOT NULL,
  `quantity` int
(222) NOT NULL,
  `price` decimal
(10,2) NOT NULL,
  `status` varchar
(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp
() ON
UPDATE current_timestamp()
) ENGINE
=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`
o_id`,
`u_id
`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(41, 34, 'Maggi', 1, '25.00', 'closed', '2020-01-21 07:25:38'),
(42, 34, 'Burger', 1, '60.00', NULL, '2020-01-20 13:20:13'),
(43, 34, 'Idli ', 1, '45.00', NULL, '2020-01-20 13:20:13'),
(44, 34, 'Maggi', 1, '25.00', NULL, '2020-01-20 13:20:19'),
(45, 34, 'Burger', 1, '60.00', NULL, '2020-01-20 13:20:19'),
(46, 34, 'Idli ', 1, '45.00', NULL, '2020-01-20 13:20:19'),
(47, 35, 'Idli ', 1, '45.00', NULL, '2020-01-22 05:58:25'),
(48, 35, 'Chicken Balls ', 1, '100.00', NULL, '2020-01-22 05:58:25'),
(49, 35, 'Idli ', 1, '45.00', NULL, '2020-01-22 06:03:49'),
(50, 35, 'Chicken Balls ', 4, '100.00', NULL, '2020-01-22 06:03:49'),
(51, 35, 'Idli ', 1, '45.00', NULL, '2020-01-22 06:13:12'),
(52, 35, 'Chicken Balls ', 4, '100.00', NULL, '2020-01-22 06:13:12'),
(53, 35, 'Idli ', 1, '45.00', NULL, '2020-01-22 06:14:11'),
(54, 35, 'Chicken Balls ', 4, '100.00', NULL, '2020-01-22 06:14:11'),
(55, 37, 'Maggi', 3, '25.00', 'in process', '2020-01-22 12:28:27'),
(56, 37, 'Maggi', 3, '25.00', NULL, '2020-01-22 12:19:59'),
(57, 37, 'Maggi', 3, '25.00', NULL, '2020-01-22 12:31:07'),
(58, 37, 'French Fries', 1, '40.00', NULL, '2020-01-22 12:31:07'),
(59, 38, 'Egg Omelet', 2, '30.00', NULL, '2020-01-22 12:32:41'),
(60, 38, 'Chicken Balls ', 1, '100.00', NULL, '2020-01-22 12:32:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
ADD PRIMARY KEY
(`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
ADD PRIMARY KEY
(`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
ADD PRIMARY KEY
(`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
ADD PRIMARY KEY
(`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
ADD PRIMARY KEY
(`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
ADD PRIMARY KEY
(`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int
(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int
(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int
(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int
(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int
(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int
(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int
(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
