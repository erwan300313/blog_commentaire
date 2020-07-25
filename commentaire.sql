-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 21, 2020 at 09:23 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `id_billet` int(11) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `commentaire` text NOT NULL,
  `date_commentaire` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentaire`
--

INSERT INTO `commentaire` (`id`, `id_billet`, `auteur`, `commentaire`, `date_commentaire`) VALUES
(1, 1, 'Toto', 'Très bon article', '2020-07-18 08:28:40'),
(2, 2, 'Erwan', 'Je n\'ai rien compris à cette article', '2020-07-18 08:28:40'),
(3, 1, 'Toni', 'Ut nec ligula a dolor aliquam gravida. Maecenas ullamcorper cursus ex, sit amet bibendum lorem varius dictum. Etiam venenatis tincidunt lacinia. Sed sit amet lectus felis. Morbi vitae pulvinar ligula, eget convallis libero. Nullam fringilla augue non nisi bibendum, quis convallis est condimentum. Integer id luctus turpis.', '2020-07-18 08:28:40'),
(4, 2, 'Kenny', 'Faute d\'orthographe ligne 4', '2020-07-18 08:28:40'),
(5, 1, 'Joseph', 'Ut nec ligula a dolor aliquam gravida. Maecenas ullamcorper cursus ex, sit amet bibendum lorem varius dictum. Etiam venenatis tincidunt lacinia. Sed sit amet lectus felis. Morbi vitae pulvinar ligula, eget convallis libero. Nullam fringilla augue non nisi bibendum, quis convallis est condimentum. Integer id luctus turpis.', '2020-07-18 08:28:40'),
(6, 2, 'Valérie', 'Combien font 2X2 ?', '2020-07-18 08:28:40'),
(7, 1, 'Dylan', 'Qu\'est ce qu\'ont mange', '2020-07-18 08:28:40'),
(8, 2, 'Christelle', 'L\'auteur de ce billet n\'as rien compris', '2020-07-18 08:28:40'),
(9, 1, 'Louis', 'Qui est partant pour un peu de codage ?', '2020-07-18 08:28:40'),
(10, 2, 'Kady', 'Une très bonne vision de l\'oeuvre, félicitation.', '2020-07-18 08:28:40'),
(11, 1, 'Erwan', 'teste de zine de com', '2020-07-21 22:55:29'),
(12, 2, 'Erwan', 'Test de commentaire', '2020-07-21 22:55:51'),
(13, 2, 'Erwan', 'Test de commentaire', '2020-07-21 22:56:22'),
(14, 1, 'Erwan 2', 'Test 2', '2020-07-21 22:56:46'),
(15, 2, 'TEst', 'Rz', '2020-07-21 22:58:57'),
(16, 2, 'TEst', 'Rz', '2020-07-21 23:02:01'),
(17, 2, 'TEst', 'Rz', '2020-07-21 23:02:58'),
(18, 2, 'TEst', 'Rz', '2020-07-21 23:03:05'),
(19, 2, 'TEst', 'Rz', '2020-07-21 23:03:28'),
(20, 2, 'ds', 'dsdsdsdsds', '2020-07-21 23:04:44'),
(21, 2, 'ds', 'dsdsdsdsds', '2020-07-21 23:11:29'),
(22, 1, 'ss', 's', '2020-07-21 23:14:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
