-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2020 at 05:07 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


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

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', '', '2018-04-09 07:36:18'),
(8, 'abc888', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 18:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
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

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(19, 54, 'Maggi', 'Only plain maggi', '25.00', '5e25a5b34fde6.jpg'),
(20, 55, 'Egg Omelet', 'Egg Omelet of anda', '30.00', '5e25a5efe17ee.jpg'),
(21, 54, 'French Fries', 'Fries not from france', '40.00', '5e25a60e4c48e.jpg'),
(22, 55, 'Pasta', 'pasta pasta dekho bhuk mujhe lagi hai', '45.00', '5e25a64be63cb.jpg'),
(23, 54, 'Burger', 'Videshi Vadapav', '60.00', '5e25a688d4da8.jpg'),
(24, 54, 'Pizza', 'Pizza', '80.00', '5e25a6bc74681.jpg'),
(25, 55, 'Chicken Balls ', 'Balls made of chicken', '100.00', '5e25a6da735f7.jpg'),
(27, 55, 'Idli ', 'Anna ki Idli ', '45.00', '5e25a73b860ac.jpg'),
(28, 55, 'Wadapav', 'Wadapav', '15.00', '5fa3806acf86b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2018-04-18 17:35:52'),
(63, 32, 'closed', 'cc', '2018-04-18 17:36:46'),
(64, 32, 'in process', 'fff', '2018-04-18 18:01:37'),
(65, 32, 'closed', 'its delv', '2018-04-18 18:08:55'),
(66, 34, 'in process', 'on a way', '2018-04-18 18:56:32'),
(67, 35, 'closed', 'ok', '2018-04-18 18:59:08'),
(68, 37, 'in process', 'on the way!', '2018-04-18 19:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 19:51:19'),
(70, 37, 'closed', 'delivered success', '2018-04-18 19:51:50'),
(71, 41, 'in process', 'ok', '2020-01-20 14:42:51'),
(72, 41, 'in process', ' ', '2020-01-21 07:24:57'),
(73, 41, 'closed', 'hj', '2020-01-21 07:25:38'),
(74, 55, 'in process', 'f', '2020-01-22 12:28:27'),
(75, 93, 'in process', ' wd', '2020-02-05 06:22:34'),
(76, 93, 'rejected', 'daswd', '2020-02-05 06:22:42'),
(77, 121, 'in process', 'kk', '2020-02-17 11:15:28'),
(78, 121, 'closed', 'Ndjd', '2020-02-17 11:17:12'),
(79, 134, 'in process', 'Bann rha hai XD', '2020-02-27 08:00:16'),
(80, 135, 'rejected', 'no toppings', '2020-02-27 10:02:12'),
(81, 123, 'closed', 'denied', '2020-02-27 10:02:57'),
(82, 136, 'closed', ' ', '2020-02-27 10:03:53'),
(83, 137, 'rejected', 'Ande sampley', '2020-02-27 10:05:10'),
(84, 144, 'closed', 'Done', '2020-03-02 07:35:47'),
(85, 151, 'closed', 'Done', '2020-03-02 07:55:37'),
(86, 169, 'rejected', 'nhi hai', '2020-03-03 04:44:47'),
(87, 171, 'in process', 'Lol', '2020-03-05 08:35:15'),
(88, 173, 'in process', 'progress', '2020-03-05 09:08:47'),
(89, 173, 'closed', 'delivered', '2020-03-05 09:09:05'),
(90, 144, 'in process', ' ', '2020-11-02 09:22:38'),
(91, 182, 'in process', 'gg', '2020-11-05 04:24:30'),
(92, 182, 'closed', 'gg', '2020-11-05 04:24:43'),
(93, 185, 'in process', 'processing', '2020-11-05 07:31:45'),
(94, 185, 'closed', 'done', '2020-11-05 07:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(54, 9, '5th Floor Canteen', '5thfloor@ubisoft.com', '9898989898', 'https://example.com', '8am', '6pm', 'mon-fri', ' 5th Floor B3 Building ', '5e4a32e96fb5d.jpg', '2020-02-17 06:30:01'),
(55, 5, '6th Floor Canteen', '6thfloor@ubisoft.com', '9898989899', 'https://example.com', '8am', '6pm', 'mon-fri', ' 6th Floor B3  ', '5e4a321121867.jpg', '2020-02-17 06:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, '6th Floor', '2020-02-12 07:36:35'),
(9, '5th Floor', '2020-02-12 07:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(33, 'user1', 'user', 'user', 'user1@ymail.in', '9898986545', '3fc0a7acf087f549ac2b266baf94b8b1', 'QWERTY PUNE', 1, '2020-01-17 08:53:29'),
(34, 'user2', 'user2', 'user2', 'user2@yopmail.com', '9812345678', '3fc0a7acf087f549ac2b266baf94b8b1', 'For Honor', 1, '2020-01-20 13:16:48'),
(35, 'user3', 'user3', 'user3', 'user3@yopmail.com', '2323232323', '3fc0a7acf087f549ac2b266baf94b8b1', 'Far Cry ', 1, '2020-01-22 08:29:42'),
(36, 'neha', 'neha', 'neha', 'neha@gmail.com', '9822560729', '73f582658ddc648641b237857a5de53f', 'uBISOFT', 1, '2020-01-22 06:26:52'),
(37, 'T1', 'Tester', 'One', 'T1@gmail.com', '1234567890', '25f9e794323b453885f5181f1b624d0b', '', 1, '2020-01-22 12:16:40'),
(38, 'T2', 'Tester', '2', 'T2@gmail.com', '1234567890', '25f9e794323b453885f5181f1b624d0b', 'vffgd', 1, '2020-01-22 12:32:13'),
(39, 'neha12345', 'sfsdf', 'sdfsdf', 'sdfsf@ubisoft.com', '4334343434', 'ae5515e371a599b8d82b244212209283', 'efdef', 1, '2020-02-03 13:29:18'),
(40, 'userfive', 'user5', 'user5', 'user5@ubisoft.com', '1212121212', 'ec62a5338185a82353a9c7be4d519fb9', 'battlecat', 1, '2020-02-11 13:24:17'),
(41, 'KiranChoudhari', 'Bhau ', 'But Desi', 'stepkc@ubisoft.com', '6942099221', '64cd7b1a2ee7d3adacbd61fc888205d6', '', 1, '2020-02-17 05:53:33'),
(42, 'mahesh', 'Mahesh', 'Undre', 'Mahesh.Undre@ubisoft.com', '1234565666', '3fc0a7acf087f549ac2b266baf94b8b1', '6th floor', 1, '2020-02-17 06:10:55'),
(43, 'HrushikeshT', 'Hrushikesh', 'T', 'htavadarkar@ubisoft.com', '9895365065', '3fc0a7acf087f549ac2b266baf94b8b1', 'For Honor', 1, '2020-02-17 11:09:37'),
(44, 'akatkar', 'aniket', 'katkar', 'aniket.katkar@ubisoft.com', '9898989898', '3fc0a7acf087f549ac2b266baf94b8b1', 'Just Dance', 1, '2020-02-20 09:56:32'),
(45, 'bakajitu', 'Jitesh', 'Pardhi', 'jitesh.pardhi@ubisoft.com', '9762205284', '66e88d892762bccf1be5074712b8e1ee', '63576,\r\nFor Honor,\r\n6th Floor,\r\nValidation Team.', 1, '2020-02-21 04:44:11'),
(46, 'spote', 'sss', 'sss', 'gg@ubisoft.com', '2131231231', '3fc0a7acf087f549ac2b266baf94b8b1', 'dfafafa', 1, '2020-02-26 10:02:42'),
(47, 'Abbc', 'Abbc', 'kkkk', 'prachi.kamble@ubisoft.com', '8888888888', '4b1fcb5b182f487d0efbd42757ea9316', '', 1, '2020-02-27 06:19:22'),
(48, 'Madmax', 'Ankit', 'Kumar', 'ankit.kumar@ubisoft.com', '9899328083', '2a3949d3a93e744e60b44b16ea4dc80a', '', 1, '2020-02-27 06:24:36'),
(49, 'ashu', 'ashu', 'srj', 'ash.srj@ubisoft.com', '123456789', '6fcbbd280419eadbba775b36de1bef3a', '123,for honor,5th floor', 1, '2020-02-27 06:24:37'),
(50, 'adad', 'asda', 'sadsadas', '234234@ubisoft.com', '1232142141', 'd8578edf8458ce06fbc5bb76a58c5ca4', '', 1, '2020-02-27 06:26:30'),
(51, 'gpise', 'Ganesh', 'Pise', 'ganesh.pise@ubisoft.com', '8668315119', 'ec62a5338185a82353a9c7be4d519fb9', 'JD Bay', 1, '2020-02-27 07:24:14'),
(52, 'Ksravankumar', 'Sravan', 'Kumar', 'k-sravan.kumar@ubisoft.com', '9704789036', 'ff64d63e13b4a20110a1e0effcdcd877', 'Emp id: 65529\r\nProject: For Honor\r\nFloor No. 6\r\nX1 Main', 1, '2020-02-27 07:29:11'),
(53, 'ngujar', 'Nupurkumar', 'Gujar', 'nupurkumar.gujar@ubisoft.com', '8698906355', '6c0be11bc1c45fe0eb6bcda281501c66', '26002', 1, '2020-02-27 07:42:05'),
(54, 'DonNo1', 'Don1', 'Don2', 'vinit.sonavane@ubisoft.com', '8796260705', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'something else', 1, '2020-02-27 10:15:22'),
(55, 'anawaz', 'AHMED', 'NAWAZ', 'ahmed.nawaz@ubisoft.com', '9993579438', 'd3d4b6d5204907aef8d101a535aed19f', 'Emp ID. - 59356\r\nProject name - For Honor\r\nFloor - 6th\r\nSub-Teams - X1 Main Team\r\n', 1, '2020-02-27 11:08:19'),
(56, 'avara', 'Aakash', 'Vara', 'aakash.vara@ubisoft.com', '9767517779', 'b16a443b0d9d5be71c64d3b1af3cbc5d', '61602,\r\nPioneer,\r\n6th Floor,\r\nFirst Desk near bathroom, near Leads desk. ', 1, '2020-02-27 11:51:24'),
(57, 'Vacky', 'Vaibhav', 'Wakode', 'vaibhav.wakode@ubisoft.com', '9970818660', '8dd43ae0638e1ce2690e2e3cfa653923', '', 1, '2020-02-27 11:59:06'),
(58, 'sdhawane', 'Shreyash', 'Dhawane', 'shreyash.dhawane@ubisoft.com', '7875605572', '45742a54cdbfbf739de69c25ba08730b', '64740\r\nOrpheus\r\n6th floor\r\n', 1, '2020-02-28 03:49:53'),
(59, 'anaik', 'Akash', 'Naik', 'akash.naik@ubisoft.com', '8446260503', '3f0c3f69d8b8f505f204c4fb5ba9657f', 'akash.naik@ubisoft.com', 1, '2020-02-28 11:50:58'),
(60, 'npenshanwar', 'neha', 'neha', 'neha.penshanwar@ubisoft.com', '9822560729', 'a68dc9c6134dbe582203fbf43f2e76c0', 'Kalyani Nagar, Pune', 1, '2020-03-02 06:20:54'),
(61, 'MayurK', 'Mayur', 'Kamble', 'mayur.kamble@ubisoft.com', '7709404450', 'ec62a5338185a82353a9c7be4d519fb9', '', 1, '2020-03-02 06:30:02'),
(62, 'adityaasawale', 'Aditya', 'Asawale', 'aditya.asawale@ubisoft.com', '8446650509', '68c6a55e4a161faee3058784c85aa55c', 'Emp ID - 31179\r\nProject - TAJ\r\nFloor - 5th\r\n', 1, '2020-03-02 06:33:42'),
(63, 'pbarkade', 'Pooja', 'Barkade', 'pooja.barkade@ubisoft.com', '9021925260', 'f29b9297eed0d93db1bbf3cf7d478301', '62248, Just Dance, 6th floor', 1, '2020-03-02 07:35:18'),
(64, 'sturalkar', 'sai', 'turalkar', 'sai.turalkar@ubisoft.com', '7021262346', '4948034959915bd9fb826849ee9ecabe', '', 1, '2020-03-02 07:40:04'),
(65, 'schine', 'Shital', 'Chine', 'shital.chine@ubisoft.com', '9527467150', 'cd06faf4f55b49f008f31de0c2c50068', '\r\n', 1, '2020-03-02 07:45:56'),
(66, 'gpise1', 'Ganesh', 'Pise', 'tester01@yopmail.com', '8668315119', 'ec62a5338185a82353a9c7be4d519fb9', '', 1, '2020-03-02 07:53:08'),
(67, 'cmungi', 'Chaitanya', 'Mungi', 'chaitanya.mungi@ubisoft.com', '8390322688', '88f48b4f8601a84d00f2bdee0fd95de9', '', 1, '2020-03-02 07:53:15'),
(68, 'pkulkarni', 'Parth', 'Kulkarni', 'parth.kulkarni@ubisoft.com', '8788979412', '8e3b63a57df6a2cb623671d1cd1f354f', '65402\r\nTaj\r\n5th floor\r\nQC team', 1, '2020-03-02 07:53:24'),
(69, 'gpise11', '123', 'Pise', 'tester011@yopmail.com', '8668315119', 'ec62a5338185a82353a9c7be4d519fb9', '', 1, '2020-03-02 07:55:12'),
(70, 'sdimbar', 'Sonal', 'Dimbar', 'sonal.dimbar@ubisoft.com', '8888481765', '7feea0f7dd8662f31fb1d8cb3a95ed7f', '62261', 1, '2020-03-02 09:17:02'),
(71, 'rsavant', 'Rohit', 'Savant', 'rohit.savant@ubisoft.com', '8483854804', '754dd1a0f5bc7793aeb7fd724c52087f', '62252\r\nJust Dance\r\n6th Floor', 1, '2020-03-02 09:19:05'),
(72, 'schimbalkar', 'Sarangi', 'Chimbalkar', 'sarangi.chimbalkar@ubisoft.com', '9881924847', '1e00d4fadadcdb901e22c09cc9d917e1', '42777\r\n6th floor, JUst dance team.', 1, '2020-03-02 09:25:20'),
(73, 'SMehda', 'Shivam', 'Mehda', 'shivam.mehda@ubisoft.com', '9303078810', 'f2f29872bf10d76edf893cccd2646ceb', '62194\r\nJust Dance\r\n6th floor\r\n', 1, '2020-03-02 09:29:48'),
(74, 'RGunjal', 'Raviraj', 'Gunjal', 'raviraj.gunjal@ubisoft.com', '9049507862', 'f12535442be1c5790a014d2a1be47058', 'nashik', 1, '2020-03-02 09:31:03'),
(75, 'athakre', 'ajinkya', 'thakre', 'ajinkya.thakre@ubisoft.com', '8830190487', '0a698f6f45845f271c2d669cc8d349ba', '', 1, '2020-03-02 09:37:04'),
(76, 'OKumbhar', 'Omkar', 'Kumbhar', 'omkar.kumbhar@ubisoft.com', '7709903276', '7aba3bbff3f53e8518bc7a4600b14d2c', '62255,\r\nJust Dance Team,\r\n6th Floor', 1, '2020-03-02 09:54:23'),
(77, 'pkokate', 'pranav', 'kokate', 'pranav.kokate@ubisoft.com', '8605392451', '72cf5b38d9b1edce6b9fc6839e1f9136', '6698, The Crew 2, 5th floor, PVP team, near Pantry pool table, Last row.', 1, '2020-03-04 11:21:32'),
(78, 'npenshanwar1', 'neha', 'Penshanwar', 'neha.pen@ubisoft.com', '9822560729', '2af9b1ba42dc5eb01743e6b3759b6e4b', '12345\r\nJD\r\n6th floor', 1, '2020-03-05 08:32:19'),
(79, 'htavadarkar', 'Hrushikesh', 'Tavadrkar', 'hrushikesh.tavadarkar@ubisoft.com', '9527365065', '3fc0a7acf087f549ac2b266baf94b8b1', '12345\r\nFH', 1, '2020-03-05 09:06:51'),
(80, 'ubisoft', 'ubi', 'eats', 'ubieats@ubisoft.com', '9898904949', '3fc0a7acf087f549ac2b266baf94b8b1', '12345\r\nUbieats\r\n6th floor \r\nB3 Pune', 1, '2020-03-13 12:01:51'),
(81, 'ubieats', 'ubi', 'eats', 'ubisoft@ubisoft.com', '1234567890', '3fc0a7acf087f549ac2b266baf94b8b1', '12345\r\nUbieats\r\n6th floor\r\nB3 Pune', 1, '2020-03-13 12:06:23'),
(82, 'shubhamPote', 'shubh', 'pote', 'shubh@ubisoft.com', '9999999999', '3fc0a7acf087f549ac2b266baf94b8b1', '', 1, '2020-11-04 04:54:29'),
(83, 'spend', 'Shubham', 'Pote', 'shubham.pote@ubisoft.com', '9874563210', '6c0be11bc1c45fe0eb6bcda281501c66', '', 1, '2020-11-05 04:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(41, 34, 'Maggi', 1, '25.00', 'closed', '2020-01-21 07:25:38'),
(42, 34, 'Burger', 1, '60.00', NULL, '2020-01-20 13:20:13'),
(43, 34, 'Idli ', 1, '45.00', NULL, '2020-01-20 13:20:13'),
(44, 34, 'Maggi', 1, '25.00', NULL, '2020-01-20 13:20:19'),
(45, 34, 'Burger', 1, '60.00', NULL, '2020-01-20 13:20:19'),
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
(60, 38, 'Chicken Balls ', 1, '100.00', NULL, '2020-01-22 12:32:41'),
(61, 35, 'Maggi', 2, '25.00', NULL, '2020-01-31 03:55:47'),
(62, 35, 'Maggi', 2, '25.00', NULL, '2020-01-31 04:16:02'),
(63, 34, 'Maggi', 1, '25.00', NULL, '2020-01-31 05:04:41'),
(64, 34, 'Maggi', 1, '25.00', NULL, '2020-01-31 05:29:50'),
(65, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 07:38:52'),
(66, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 07:39:25'),
(67, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 07:41:08'),
(68, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 07:42:30'),
(69, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 07:42:52'),
(70, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 07:43:07'),
(71, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 07:43:09'),
(72, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 07:50:30'),
(73, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 07:50:38'),
(74, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 07:51:44'),
(75, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 07:51:48'),
(76, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 07:52:12'),
(78, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 08:03:12'),
(79, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 08:03:15'),
(80, 34, 'Pizza', 2, '80.00', NULL, '2020-01-31 08:03:17'),
(91, 33, 'Pasta', 1, '45.00', NULL, '2020-02-05 06:10:04'),
(92, 33, 'Pasta', 1, '45.00', NULL, '2020-02-05 06:11:42'),
(93, 33, 'Chicken Balls ', 1, '100.00', 'rejected', '2020-02-05 06:22:42'),
(94, 33, 'Burger', 1, '60.00', NULL, '2020-02-05 06:24:52'),
(95, 33, 'Egg Omelet', 1, '30.00', NULL, '2020-02-05 06:28:57'),
(96, 33, 'Egg Omelet', 1, '30.00', NULL, '2020-02-05 06:29:17'),
(97, 33, 'Egg Omelet', 1, '30.00', NULL, '2020-02-05 11:55:22'),
(98, 33, 'Egg Omelet', 1, '30.00', NULL, '2020-02-05 11:56:49'),
(99, 33, 'Egg Omelet', 1, '30.00', NULL, '2020-02-05 11:56:52'),
(100, 33, 'Idli ', 1, '45.00', NULL, '2020-02-05 11:59:21'),
(101, 33, 'Idli ', 1, '45.00', NULL, '2020-02-05 12:00:54'),
(102, 33, 'Idli ', 1, '45.00', NULL, '2020-02-05 12:01:26'),
(103, 33, 'Idli ', 1, '45.00', NULL, '2020-02-05 12:01:28'),
(104, 33, 'Idli ', 1, '45.00', NULL, '2020-02-05 12:01:33'),
(105, 33, 'Idli ', 1, '45.00', NULL, '2020-02-05 12:01:59'),
(106, 33, 'Idli ', 1, '45.00', NULL, '2020-02-05 12:07:56'),
(107, 33, 'Idli ', 1, '45.00', NULL, '2020-02-05 12:08:02'),
(108, 33, 'Idli ', 1, '45.00', NULL, '2020-02-05 12:20:56'),
(109, 33, 'French Fries', 1, '40.00', NULL, '2020-02-05 12:22:34'),
(110, 33, 'French Fries', 1, '40.00', NULL, '2020-02-05 12:29:21'),
(111, 33, 'Maggi', 1, '25.00', NULL, '2020-02-10 12:31:05'),
(112, 34, 'Maggi', 1, '25.00', NULL, '2020-02-11 13:18:55'),
(113, 34, 'Burger', 1, '60.00', NULL, '2020-02-11 13:19:52'),
(114, 40, 'Burger', 1, '60.00', NULL, '2020-02-11 13:27:51'),
(115, 40, 'Burger', 1, '60.00', NULL, '2020-02-11 13:32:31'),
(116, 41, 'Pizza', 1, '80.00', NULL, '2020-02-17 05:57:09'),
(117, 33, 'Maggi', 6, '25.00', NULL, '2020-02-17 07:30:42'),
(118, 33, 'French Fries', 1, '40.00', NULL, '2020-02-17 07:30:42'),
(119, 33, 'Burger', 1, '60.00', NULL, '2020-02-17 07:30:42'),
(120, 33, 'Pizza', 1, '80.00', NULL, '2020-02-17 07:30:42'),
(121, 43, 'Maggi', 1, '25.00', 'closed', '2020-02-17 11:17:12'),
(122, 43, 'French Fries', 1, '40.00', NULL, '2020-02-17 11:14:58'),
(123, 49, 'French Fries', 1, '40.00', 'closed', '2020-02-27 10:02:58'),
(124, 51, 'Idli ', 7, '45.00', NULL, '2020-02-27 07:26:58'),
(125, 51, 'Chicken Balls ', 2, '100.00', NULL, '2020-02-27 07:26:58'),
(126, 51, 'Pasta', 2, '45.00', NULL, '2020-02-27 07:26:58'),
(127, 51, 'Egg Omelet', 1, '30.00', NULL, '2020-02-27 07:26:58'),
(128, 51, 'Maggi', 1, '25.00', NULL, '2020-02-27 07:39:51'),
(129, 51, 'French Fries', 9, '40.00', NULL, '2020-02-27 07:39:51'),
(130, 53, 'Egg Omelet', 1, '30.00', NULL, '2020-02-27 07:44:15'),
(131, 53, 'Pasta', 1, '45.00', NULL, '2020-02-27 07:44:15'),
(132, 53, 'Maggi', 7, '25.00', NULL, '2020-02-27 07:59:00'),
(133, 53, 'French Fries', 1, '40.00', NULL, '2020-02-27 07:59:00'),
(134, 53, 'Burger', 1, '60.00', 'in process', '2020-02-27 08:00:16'),
(135, 53, 'Pizza', 1, '80.00', 'rejected', '2020-02-27 10:02:12'),
(136, 53, 'Idli ', 5, '45.00', 'closed', '2020-02-27 10:03:53'),
(137, 53, 'Egg Omelet', 1, '30.00', 'rejected', '2020-02-27 10:05:10'),
(138, 33, 'Maggi', 4, '25.00', NULL, '2020-02-27 10:24:36'),
(139, 33, 'Maggi', 2, '25.00', NULL, '2020-02-27 10:24:57'),
(140, 51, 'Egg Omelet', 1, '30.00', NULL, '2020-02-27 11:18:27'),
(141, 57, 'Idli ', 2, '45.00', NULL, '2020-02-27 12:00:29'),
(142, 57, 'Pasta', 1, '45.00', NULL, '2020-02-27 12:00:29'),
(143, 52, 'Pasta', 1, '45.00', NULL, '2020-02-28 09:05:13'),
(144, 62, 'Burger', 1, '60.00', 'in process', '2020-11-02 09:22:38'),
(145, 63, 'French Fries', 1, '40.00', NULL, '2020-03-02 07:36:09'),
(147, 51, 'Chicken Balls ', 9, '100.00', NULL, '2020-03-02 07:48:43'),
(148, 51, 'Egg Omelet', 1, '30.00', NULL, '2020-03-02 07:48:43'),
(149, 51, 'Pasta', 1, '45.00', NULL, '2020-03-02 07:48:43'),
(150, 51, 'Egg Omelet', 1, '30.00', NULL, '2020-03-02 07:49:44'),
(153, 69, 'Pizza', 10, '80.00', NULL, '2020-03-02 08:00:10'),
(154, 69, 'French Fries', 1, '40.00', NULL, '2020-03-02 08:00:10'),
(155, 69, 'Burger', 1, '60.00', NULL, '2020-03-02 08:00:10'),
(156, 69, 'Egg Omelet', 9, '30.00', NULL, '2020-03-02 09:15:38'),
(158, 70, 'Idli ', 1, '45.00', 'in process', '2020-03-02 09:56:31'),
(159, 70, 'Pasta', 1, '45.00', NULL, '2020-03-02 09:19:49'),
(160, 70, 'Chicken Balls ', 1, '100.00', NULL, '2020-03-02 09:19:49'),
(163, 74, 'Burger', 1, '60.00', NULL, '2020-03-02 09:32:31'),
(164, 74, 'Pizza', 1, '80.00', NULL, '2020-03-02 09:32:31'),
(165, 74, 'Egg Omelet', 1, '30.00', NULL, '2020-03-02 09:32:31'),
(166, 74, 'Pasta', 1, '45.00', NULL, '2020-03-02 09:32:31'),
(167, 74, 'Chicken Balls ', 1, '100.00', NULL, '2020-03-02 09:32:31'),
(168, 74, 'Idli ', 1, '45.00', NULL, '2020-03-02 09:32:31'),
(169, 76, 'Maggi', 1, '25.00', 'rejected', '2020-03-03 04:44:48'),
(170, 76, 'Idli ', 1, '45.00', NULL, '2020-03-02 10:11:06'),
(171, 78, 'Maggi', 1, '25.00', 'in process', '2020-03-05 08:35:15'),
(172, 78, 'French Fries', 1, '40.00', NULL, '2020-03-05 08:34:14'),
(173, 79, 'Egg Omelet', 2, '30.00', 'closed', '2020-03-05 09:09:05'),
(174, 79, 'Pasta', 1, '45.00', NULL, '2020-03-05 09:09:34'),
(175, 81, 'Egg Omelet', 1, '30.00', NULL, '2020-03-13 12:07:24'),
(176, 81, 'Pasta', 1, '45.00', NULL, '2020-03-13 12:07:24'),
(177, 81, 'Maggi', 1, '25.00', NULL, '2020-03-13 12:07:51'),
(178, 33, 'Egg Omelet', 1, '30.00', NULL, '2020-11-02 08:56:36'),
(179, 33, 'Wadapav', 1, '15.00', NULL, '2020-11-02 08:56:36'),
(180, 33, 'Maggi', 1, '25.00', NULL, '2020-11-02 11:43:21'),
(181, 33, 'Maggi', 1, '25.00', NULL, '2020-11-04 05:00:57'),
(182, 83, 'Maggi', 1, '25.00', 'closed', '2020-11-05 04:24:43'),
(183, 33, 'Maggi', 1, '25.00', NULL, '2020-11-05 04:49:11'),
(184, 33, 'Egg Omelet', 1, '30.00', NULL, '2020-11-05 04:49:12'),
(185, 33, 'Egg Omelet', 1, '30.00', 'closed', '2020-11-05 07:32:07'),
(186, 33, 'Wadapav', 1, '15.00', NULL, '2020-11-05 07:30:54'),
(187, 33, 'Maggi', 1, '25.00', NULL, '2020-11-05 13:15:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
