-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 03:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpoop_221`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `sex` varchar(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  `user_profile_picture` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `birthday`, `sex`, `user_name`, `user_pass`, `user_profile_picture`, `email`) VALUES
(18, 'Gabriel', 'Yamsuan', '1872-10-10', 'Male', 'gab', '$2y$10$1pznbl82dXcioKCNkLV3j.muikseEg9F6grSUr7Blme5.sawaIVwa', 'uploads/gab_1716170240.jpg', 'roxaspm@students.nu-lipa.edu.ph'),
(19, 'Keith', 'Lara', '2012-12-12', 'Female', 'Keith', '$2y$10$IVLAY.AbRrQPxO./2UMCweEkEVwKwf5PYJf2CM7iKl9I7wRK10zFu', 'uploads/cat_1716170718.jpg', 'kit@gmail.com'),
(20, 'Ryu', 'Sun Jae', '1996-03-10', 'Male', 'Byeon Woo Seok', '$2y$10$NMZxGeiqUfSc6WIx3vqaKuuDz7hfeIWUy4lYL.gCXFeal6zv5tBjO', 'uploads/sunjae_1716170958.jpg', 'bwooseok@gmail.com'),
(23, 'Coleen', 'Roxas', '2004-12-10', 'Female', 'Coleen', '$2y$10$M0BsMidrYPDi8Af1mw0sP.or/xKfTwIoKwZgANSlRGwEmL4iL7V4u', 'uploads/R_1716172161.jpg', 'proxas064@gmail.com'),
(24, 'Paula', 'De Chavez', '2002-02-12', 'Female', 'Paula', '$2y$10$d.KeWQ47RpY/xnmbW6i0DO73r/bXTvTPIc.6fE7N.g6lBCqAEa4iG', 'uploads/pau_1716424986.jpg', 'pau@gmaiul.com'),
(25, 'Cham', 'Oliva', '1997-11-27', 'Female', 'Cham ', '$2y$10$Waa7hjzEbmCN3HduC3XbWuE2GNP.Qf.hYsmnu7tm.z.DmPzEyg2My', 'uploads/olaf_1716426171.jpg', 'cham@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `user_address_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_street` varchar(255) DEFAULT NULL,
  `user_barangay` varchar(255) DEFAULT NULL,
  `user_city` varchar(255) DEFAULT NULL,
  `user_province` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`user_address_id`, `user_id`, `user_street`, `user_barangay`, `user_city`, `user_province`) VALUES
(11, 18, 'diwata pares overload ', 'Tongmageng', 'Sitangkai', 'Autonomous Region in Muslim Mindanao (ARMM)'),
(12, 19, '12345', 'Pisong A', 'Maria', 'Region VII (Central Visayas)'),
(13, 20, '172', 'Kuhaw', 'Talipao', 'Autonomous Region in Muslim Mindanao (ARMM)'),
(14, 23, '135', 'Domandan', 'Ipil (Capital)', 'Region IX (Zamboanga Peninzula)'),
(15, 24, '172', 'Malainin', 'Ibaan', 'Region IV-A (CALABARZON)'),
(16, 25, '12345', 'Marugang', 'Concepcion', 'Region X (Northern Mindanao)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`user_address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `user_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
