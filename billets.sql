-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 21, 2020 at 09:24 PM
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
-- Table structure for table `billets`
--

CREATE TABLE `billets` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenue` text NOT NULL,
  `date_creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `billets`
--

INSERT INTO `billets` (`id`, `titre`, `contenue`, `date_creation`) VALUES
(1, 'Premier Billet de ce blog', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed ante velit. Vestibulum id rutrum ex, sed accumsan felis. Mauris congue massa et lectus mattis, ut facilisis felis volutpat. Nullam id odio a nunc tincidunt mattis. Aenean maximus eros nec dui aliquam congue. Nulla interdum in nunc ut dignissim. Pellentesque ultricies lacinia dui sed vehicula. Pellentesque quis commodo quam, vel facilisis lacus. In at elit a nisi malesuada gravida vitae ac orci. Nunc pharetra at nulla et sodales. Nam arcu neque, varius in euismod a, congue vel justo.', '2020-07-18 08:24:30'),
(2, 'Second billet de ce blog', 'Ut nec ligula a dolor aliquam gravida. Maecenas ullamcorper cursus ex, sit amet bibendum lorem varius dictum. Etiam venenatis tincidunt lacinia. Sed sit amet lectus felis. Morbi vitae pulvinar ligula, eget convallis libero. Nullam fringilla augue non nisi bibendum, quis convallis est condimentum. Integer id luctus turpis.', '2020-07-18 08:24:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billets`
--
ALTER TABLE `billets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billets`
--
ALTER TABLE `billets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
