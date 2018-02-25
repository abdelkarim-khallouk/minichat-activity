-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 10, 2018 at 01:10 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocr_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `minichat`
--

CREATE TABLE `minichat` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `date_creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minichat`
--

INSERT INTO `minichat` (`id`, `pseudo`, `message`, `date_creation`) VALUES
(1, 'Gerard', 'Salut les ami!', '2018-02-04 22:54:49'),
(3, 'Ahmed', 'Salut tous le monde! Je suis Ahmed et vous ?', '2018-02-09 19:55:07'),
(4, 'Kamal', 'Saluuuuuuuuuuut !', '2018-02-09 22:55:08'),
(5, 'Ahmed', 'Bonjour Karim.', '2018-02-09 22:55:10'),
(6, 'Ahmed', 'Bonjour Karim. ca va ?', '2018-02-09 22:54:13'),
(7, 'Sarah', 'Salut les gars :-)', '2018-02-09 22:55:22'),
(8, 'Karim', 'Oui Ahmed, ca va. et toi?', '2018-02-09 22:57:19'),
(9, 'Kamal', 'aussi', '2018-02-09 22:55:23'),
(10, 'Sarah', 'Je suis la !!', '2018-02-09 22:58:25'),
(11, 'Kader', 'Whats up gays ?', '2018-02-09 22:59:29'),
(12, 'Kader', 'English speakers ?', '2018-02-09 22:59:32'),
(13, 'Sandy', 'Heyyyy !', '2018-02-09 23:55:37'),
(14, 'Hahia', 'Cooooooool !', '2018-02-09 20:55:41'),
(15, 'Dani', '*_*', '2018-02-09 23:31:14'),
(16, 'Gad', 'LOL', '2018-02-10 00:45:25'),
(17, 'Ronaldo', ':D', '2018-02-10 00:45:35'),
(19, 'Messi', 'o.O', '2018-02-09 23:54:07'),
(20, 'Xavi', 'Hola a todos', '2018-02-10 01:05:39'),
(21, 'Xavi', 'Hay hispanohablantes aquÃ­?', '2018-02-10 01:08:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `minichat`
--
ALTER TABLE `minichat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `minichat`
--
ALTER TABLE `minichat`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
