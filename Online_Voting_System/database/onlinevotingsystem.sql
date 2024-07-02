
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 06:37 AM
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
-- Database: `onlinevotingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate_details`
--

CREATE TABLE `candidate_details` (
  `id` int(11) NOT NULL,
  `election_id` int(11) DEFAULT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_details` text DEFAULT NULL,
  `candidate_photo` text DEFAULT NULL,
  `inserted_by` varchar(255) DEFAULT NULL,
  `inserted_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate_details`
--

INSERT INTO `candidate_details` (`id`, `election_id`, `candidate_name`, `candidate_details`, `candidate_photo`, `inserted_by`, `inserted_on`) VALUES
(13, 7, 'Dhiraj Shirote', 'abcd', '../assets/images/candidate_photos/28740320475_7239918213844275434211_7625158215239078212765_1865870391646496894312_889910446181.jpg', 'Sintu', '2024-05-09'),
(14, 8, 'Sintu Prasad', 'xyz', '../assets/images/candidate_photos/41011347552_8265571418043944385300_31936791168web icons-06.png', 'Sintu', '2024-05-09'),
(15, 8, 'Vaibhav', 'xyz', '../assets/images/candidate_photos/26415055968_5243903536043944385300_31936791168web icons-06.png', 'Sintu', '2024-05-09'),
(16, 7, 'Vaibhav', 'abcd', '../assets/images/candidate_photos/79758922299_5605188048441011347552_8265571418043944385300_31936791168web icons-06.png', 'Sintu18', '2024-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `id` int(11) NOT NULL,
  `election_topic` varchar(255) DEFAULT NULL,
  `no_of_candidates` int(11) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `inserted_by` varchar(255) DEFAULT NULL,
  `inserted_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`id`, `election_topic`, `no_of_candidates`, `starting_date`, `ending_date`, `status`, `inserted_by`, `inserted_on`) VALUES
(7, 'ASCES Representative', 3, '2024-05-08', '2024-05-31', 'Active', 'Sintu', '2024-05-08'),
(8, 'Class Monitor', 2, '2024-05-08', '2024-05-24', 'Active', 'Sintu', '2024-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `user_role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `contact_no`, `password`, `user_role`) VALUES
(10, 'Sintu18', '8411834930', '6396a22601e6a61670f316b918a1f551e8431732', 'Voter'),
(11, 'Sintu18', '9175668480', '6396a22601e6a61670f316b918a1f551e8431732', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `votings`
--

CREATE TABLE `votings` (
  `id` int(11) NOT NULL,
  `election_id` int(11) DEFAULT NULL,
  `voters_id` int(11) DEFAULT NULL,
  `candidate_id` int(11) NOT NULL,
  `vote_date` date DEFAULT NULL,
  `vote_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votings`
--

INSERT INTO `votings` (`id`, `election_id`, `voters_id`, `candidate_id`, `vote_date`, `vote_time`) VALUES
(8, 7, 10, 11, '2024-05-09', '10:48:15'),
(9, 8, 10, 15, '2024-05-09', '10:48:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate_details`
--
ALTER TABLE `candidate_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votings`
--
ALTER TABLE `votings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate_details`
--
ALTER TABLE `candidate_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `votings`
--
ALTER TABLE `votings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




