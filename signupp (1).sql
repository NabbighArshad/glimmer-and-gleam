-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2024 at 10:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signupp`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_cart`
--

CREATE TABLE `add_to_cart` (
  `id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `data/time` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `productname` varchar(500) NOT NULL,
  `productquantity` int(255) NOT NULL,
  `productype` varchar(100) NOT NULL,
  `productprice` varchar(100) NOT NULL,
  `productpic` varchar(255) NOT NULL,
  `locked` int(11) NOT NULL,
  `total_bill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_to_cart`
--

INSERT INTO `add_to_cart` (`id`, `user_id`, `user_email`, `data/time`, `productname`, `productquantity`, `productype`, `productprice`, `productpic`, `locked`, `total_bill`) VALUES
(53, 0, 'nabarshad@gmail.com', '2024-07-19 04:48:23.931222', 'bangles', 2, 'Earrings', ' 30000', 'bangles2.jpg', 0, 0),
(73, 0, 'a@gmail.com', '2024-08-06 08:22:40.524121', 'necklace', 6, 'Necklace', '3000', 'necklace.jpg', 1, 18000),
(74, 88, 'a@gmail.com', '2024-08-06 09:32:54.369988', 'ear rings', 1, 'Earrings', '3000', 'earing6.jpg', 1, 3000),
(75, 112, 'u@gmail.com', '2024-08-06 10:16:09.519558', 'anklets', 5, 'Anklets', '7500', 'anklet2.jpg', 0, 37500),
(76, 112, 'noorulhuda@gmail.com', '2024-08-07 08:19:11.994794', 'anklets', 5, 'Anklets', '7500', 'anklet2.jpg', 0, 37500);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `productquantity` varchar(100) NOT NULL,
  `productype` varchar(255) NOT NULL,
  `productprice` varchar(255) NOT NULL,
  `productpic` varchar(5000) NOT NULL,
  `time` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `email`, `productname`, `productquantity`, `productype`, `productprice`, `productpic`, `time`) VALUES
(84, '', 'earings', '5', 'Earrings', '1000', 'earing5.jpg', '2024-07-22 13:11:55.512219'),
(86, '', 'earings', '9', 'Earrings', '2000', 'earing10.jpg', '2024-07-22 13:11:55.512219'),
(87, '', 'earings', '3', 'Earrings', '4000', 'earing8.jpg', '2024-07-22 13:11:55.512219'),
(88, '', 'ear rings', '1', 'Earrings', '3000', 'earing6.jpg', '2024-07-22 13:11:55.512219'),
(89, '', 'earings', '4', 'Earrings', '600', 'earing4.jpg', '2024-07-22 13:11:55.512219'),
(90, '', 'earring', '3', 'Earrings', '1000', 'earing9.jpg', '2024-07-22 13:11:55.512219'),
(91, '', 'necklace', '3', 'Necklace', '10000', 'coverpic.jpg', '2024-07-22 13:11:55.512219'),
(92, '', 'necklace', '6', 'Necklace', '3000', 'necklace.jpg', '2024-07-22 13:11:55.512219'),
(93, '', 'necklace', '8', 'Necklace', '10000', 'necklace3.jpg', '2024-07-22 13:11:55.512219'),
(94, '', 'party wear necklace', '5', 'Party wear Necklace', '9999', 'coverpic3.jpg', '2024-07-22 13:11:55.512219'),
(95, '', 'party wear necklace', '8', 'Party wear Necklace', '2000', 'necklace5.jpg', '2024-07-22 13:11:55.512219'),
(96, '', 'party wear necklace', '1', 'Party wear Necklace', '10000', 'party necklace1.jpg', '2024-07-22 13:11:55.512219'),
(97, '', 'party wear necklace', '3', 'Party wear Necklace', '9999', 'party necklace2.jpg', '2024-07-22 13:11:55.512219'),
(98, '', 'bangles', '5', 'Bangles', '2000', 'bangles2.jpg', '2024-07-22 13:11:55.512219'),
(99, '', 'bangles', '5', 'Bangles', '900', 'bangles3.jpg', '2024-07-22 13:11:55.512219'),
(100, '', 'bangles', '9', 'Bangles', '800', 'bangles6.jpg', '2024-07-22 13:11:55.512219'),
(101, '', 'bangles', '3', 'Bangles', '1000', 'bangles4.jpg', '2024-07-22 13:11:55.512219'),
(102, '', 'bangles', '4', 'Bangles', '1000', 'bangles1.jpg', '2024-07-22 13:11:55.512219'),
(103, '', 'headwear', '6', 'Headwear', '9999', 'headwear2.jpg', '2024-07-22 13:11:55.512219'),
(104, '', 'headwear', '5', 'Headwear', '8000', 'headwear1.jpg', '2024-07-22 13:11:55.512219'),
(105, '', 'headwear', '7', 'Headwear', '8000', 'headwear3.jpg', '2024-07-22 13:11:55.512219'),
(106, '', 'headwear', '5', 'Headwear', '10000', 'headwear4.jpg', '2024-07-22 13:11:55.512219'),
(109, '', 'headwear', '7', 'Headwear', '9000', 'headwear5.jpg', '2024-07-22 13:11:55.512219'),
(110, '', 'headwear', '5', 'Headwear', '5000', 'headwear6.jpg', '2024-07-22 13:11:55.512219'),
(111, '', 'anklets', '6', 'Anklets', '8000', 'anklet1.jpg', '2024-07-22 13:11:55.512219'),
(112, '', 'anklets', '5', 'Anklets', '7500', 'anklet2.jpg', '2024-07-22 13:11:55.512219'),
(113, '', 'anklets', '4', 'Anklets', '7000', 'anklet3.jpg', '2024-07-22 13:11:55.512219'),
(114, '', 'anklets', '4', 'Anklets', '6000', 'anklet4.jpg', '2024-07-22 13:11:55.512219'),
(115, '', 'anklets', '5', 'Anklets', '7000', 'anklet5.jpg', '2024-07-22 13:11:55.512219'),
(116, '', 'anklets', '3', 'Anklets', '6000', 'anklet6.jpg', '2024-07-22 13:11:55.512219'),
(117, '', 'bridal sets', '8', 'Bridal Sets', '25000', 'bridalset2.jpg', '2024-07-22 13:11:55.512219'),
(118, '', 'bridal sets', '7', 'Bridal Sets', '20000', 'bridalset4.jpg', '2024-07-22 13:11:55.512219'),
(119, '', 'bridal sets', '8', 'Bridal Sets', '30000', 'bridalset1.jpg', '2024-07-22 13:11:55.512219'),
(120, '', 'bridal sets', '9', 'Bridal Sets', '45000', 'bridalset3.jpg', '2024-07-22 13:11:55.512219'),
(121, '', 'bridal sets', '6', 'Bridal Sets', '23000', 'coverpic.jpg', '2024-07-22 13:11:55.512219'),
(122, '', 'bridal sets', '9', 'Bridal Sets', '50000', 'bridalset5.jpg', '2024-07-22 13:11:55.512219'),
(124, '', 'rings', '9', 'Rings', '50000', 'ring1.jpg', '2024-07-22 13:11:55.512219'),
(125, '', 'rings', '8', 'Rings', '45000', 'ring4.jpg', '2024-07-22 13:11:55.512219'),
(126, '', 'rings', '8', 'Rings', '55000', 'ring2.jpg', '2024-07-22 13:11:55.512219'),
(127, '', 'rings', '7', 'Rings', '40000', 'ring6.jpg', '2024-07-22 13:11:55.512219'),
(128, '', 'rings', '5', 'Rings', '30000', 'ring3.jpg', '2024-07-22 13:11:55.512219'),
(129, '', 'rings', '4', 'Rings', '32000', 'ring5.jpg', '2024-07-22 13:11:55.512219'),
(130, '', 'necklace', '6', 'Necklace', '10000', 'necklace2.jpg', '2024-07-22 13:11:55.512219'),
(131, '', 'necklace', '6', 'Necklace', '9000', 'necklace1.jpg', '2024-07-22 13:11:55.512219'),
(132, '', 'necklace', '5', 'Necklace', '8000', 'necklace4.jpg', '2024-07-22 13:11:55.512219'),
(133, '', 'bangles', '7', 'Bangles', '10000', 'bangles5.jpg', '2024-07-22 13:11:55.512219'),
(134, '', 'party wear necklace', '9', 'Party wear Necklace', '20000', 'party necklace4.jpg', '2024-07-22 13:11:55.512219'),
(135, '', 'party wear necklace', '7', 'Party wear Necklace', '13000', 'party necklace5.jpg', '2024-07-22 13:11:55.512219'),
(139, '', 'bangles', '3', 'Bangles', '3000', 'bangles3.jpg', '2024-08-06 13:49:07.679232'),
(140, '', 'bridal sets', '1', 'Bridal Sets', '10000', 'bridalset6.jpg', '2024-08-06 13:54:09.705717'),
(141, '', 'headwear', '2', 'Headwear', '3000', 'headwear5.jpg', '2024-08-06 14:40:08.824262'),
(142, 'iram@gmail.com', 'necklace', '1', 'Necklace', '30000', 'necklace2.jpg', '2024-08-06 15:06:53.271410');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `user_id` int(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `productquantity` int(255) NOT NULL,
  `productype` varchar(255) NOT NULL,
  `productprice` varchar(255) NOT NULL,
  `productpic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`user_id`, `productname`, `productquantity`, `productype`, `productprice`, `productpic`) VALUES
(0, 'headwear', 2, 'Headwear', '3000', 'headwear5.jpg'),
(0, 'headwear', 2, 'Headwear', '3000', 'headwear5.jpg'),
(0, 'headwear', 2, 'Headwear', '3000', 'headwear5.jpg'),
(0, 'headwear', 2, 'Headwear', '3000', 'headwear5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `studentsdata`
--

CREATE TABLE `studentsdata` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobileNumber` int(12) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentsdata`
--

INSERT INTO `studentsdata` (`id`, `email`, `mobileNumber`, `username`, `password`, `time`) VALUES
(176, 'nabbigharshad@gmail.com', 2147483647, 'nabbigh arshad', '$2y$10$/4/UB/odlz9FKfL28iO09.wfIZOWkCRZgG9Watso0WVJjVL6IGb6a', '2024-06-11 10:50:50.218125'),
(177, 'k@gmail.com', 56789, 'komal', '$2y$10$8bbgZ8t5ug5XXYbRMEWLveGph210wI0N5dQmuhc51GOv5smIkoue2', '2024-06-11 11:10:40.893842'),
(178, 'sahlaarshad@gmail.com', 1111111111, 'sahlaa', '$2y$10$hegzjJHK.n5wfxVDh2Z0A.Jo9YohO7xkBB.97eshY2qjymTm0R4CG', '2024-06-11 11:16:22.529982'),
(179, 't@gmail.com', 1234567, 'john', '', '2024-06-11 11:23:21.015305'),
(180, 'iram@gmail.com', 234567, 'harry', 'harry', '2024-06-11 11:25:25.356069'),
(181, 'ahsan@gmail.com', 456789, 'jutt', '$2y$10$u9f6dxWch6ZcPrceXvwSa.VaFvR48PO7ETxwPlBSMrTC2Rs8BeBdK', '2024-06-11 11:30:30.145267'),
(182, 'h@gmail.com', 78345678, 'sajal', '$2y$10$LXIqwVG/0TWLUgJJgApIIememNqvDA76p.lUd3teQVT3cgo.vZbxC', '2024-06-11 11:31:37.915076'),
(183, 'nabeegh@gmail.com', 2147483647, 'nabeegh', '$2y$10$uIjTvAab8RpknvdaQ4rrrugVJZdYS.D/pO/y5AmDXtK/70Rj.fWCW', '2024-06-11 14:56:32.160217'),
(184, 'gjh@gmail.com', 78678, 'ft', '$2y$10$sus9e.aCB7T4HF0s7Akx.u7UX1gf2ajnaihexrq6f9oWtJdDnPA8i', '2024-06-11 14:57:51.327315'),
(185, 'm@gmail.com', 2345, 'hira', '$2y$10$XtS.bR./T/EB1T/VoijE4OPw2dCuFdTKDx0/1JxS7grzX1OAjlL4S', '2024-06-11 21:03:21.322856'),
(186, 'chahsan066@gmail.com', 2147483647, 'CH Ahsan', '$2y$10$PLH.ggNGS6xG3b8wCfbq0.OJ6C.GJ1gbnDQyLOF4HGpSTvSUTDQqa', '2024-06-12 08:15:55.894330'),
(187, 'chahsannns@gmail.com', 2147483647, 'CH AHSAN', 'chahsan066', '2024-06-12 08:21:03.609782'),
(188, 'gls@gmail.com', 234567890, 'glass bhaii', '$2y$10$SdRBD0oGw/yeyLumBQgeS.fb20xTc.TZd5FdLQ3V3G0znCe5Dv1La', '2024-06-12 08:24:01.177767'),
(189, 'sdfg@gmail.com', 234567890, 'sadaf', 'ffffff', '2024-06-12 08:26:04.102263'),
(190, 'nabarshad@gmail.com', 11, 'sss', 'sss', '2024-06-12 09:52:03.636209'),
(191, 'BSCSF@22E40gmail.com', 123456, 'ddddddd', 'ddd', '2024-06-12 09:52:53.479201'),
(192, 'phone@gmail.com', 456789, 'dafar', 'dafar', '2024-06-12 13:09:56.567774'),
(193, 'abrarjamil906@gmail.com', 2147483647, 'ace1', 'bhai3920187', '2024-06-19 18:05:15.513133'),
(194, 'u@gmail.com', 2147483647, 'user', 'user', '2024-07-01 08:24:27.132572'),
(195, 'jack@gmail.com', 3456789, 'jackjohn', 'jack', '2024-07-01 08:51:51.594618'),
(196, 'bag@gmail.com', 234567890, 'baggy', 'baggy', '2024-07-14 21:07:20.494630'),
(197, 'cs@gmail.com', 1234, 'cs', 'cs', '2024-07-30 14:38:32.380151'),
(198, 'a@gmail.com', 1111, 'a', 'a', '2024-07-30 14:40:49.017141'),
(199, 'b@gmail.com', 1111, 'b', 'b', '2024-07-30 14:42:31.402397'),
(200, 'shiza@gmail.com', 238888, 'shiza fakhar', 'shiza', '2024-08-02 16:14:14.788220'),
(201, 'o@gmail.com', 23456789, 'opera', 'opera', '2024-08-05 01:11:50.338219'),
(202, 'sidra@gmail.com', 3456789, 'sidra', 'sidra', '2024-08-05 01:17:34.950777'),
(203, 'noorulhuda@gmail.com', 4576789, 'noor ul huda', 'huda', '2024-08-07 13:18:37.918862'),
(204, 'liza@gmail.com', 345678, 'liza', 'liza', '2024-08-07 13:27:24.830567');

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(255) NOT NULL,
  `email` varchar(256) NOT NULL,
  `cardname` varchar(256) NOT NULL,
  `cardno` int(11) NOT NULL,
  `expdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `cvv` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `email`, `cardname`, `cardno`, `expdate`, `cvv`, `balance`) VALUES
(2, 'nabeegh@gmail.com', 'nabeegh', 1111, '2024-07-23 19:00:00', 123, 9536999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentsdata`
--
ALTER TABLE `studentsdata`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `studentsdata`
--
ALTER TABLE `studentsdata`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
