-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2022 at 10:19 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_bibliotheque`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE `cds` (
  `id` int(11) NOT NULL,
  `auteur` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `num_ouvrage` varchar(255) DEFAULT NULL,
  `date_emprunt` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`id`, `auteur`, `titre`, `num_ouvrage`, `date_emprunt`) VALUES
(1, 'CDA2', 'CDT2', '2666', 'dimanche 13 janvier 2019'),
(3, 'CDT3', 'CDA3', '2777', 'dimanche 13 janvier 2019'),
(4, 'CDA4', 'CDT4', '2888', 'dimanche 13 janvier 2019');

-- --------------------------------------------------------

--
-- Table structure for table `emprunteurs`
--

CREATE TABLE `emprunteurs` (
  `id` int(11) NOT NULL,
  `client` varchar(255) DEFAULT NULL,
  `cin` varchar(255) DEFAULT NULL,
  `date_emprunt` varchar(255) DEFAULT NULL,
  `delai` varchar(255) DEFAULT NULL,
  `num_ouvrage` int(11) NOT NULL,
  `type_ouvrage` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emprunteurs`
--

INSERT INTO `emprunteurs` (`id`, `client`, `cin`, `date_emprunt`, `delai`, `num_ouvrage`, `type_ouvrage`) VALUES
(7, 'AKI', '00033', '08-02-2019 18:29:29', '10-02-2019', 3, 'periodiques');

-- --------------------------------------------------------

--
-- Table structure for table `livres`
--

CREATE TABLE `livres` (
  `id` int(11) NOT NULL,
  `auteur` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `editeur` varchar(255) DEFAULT NULL,
  `num_ouvrage` varchar(255) DEFAULT NULL,
  `date_emprunt` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `livres`
--

INSERT INTO `livres` (`id`, `auteur`, `titre`, `editeur`, `num_ouvrage`, `date_emprunt`) VALUES
(9, 'livreA', 'livreT', 'livreE', '1555', 'dimanche 13 janvier 2019');

-- --------------------------------------------------------

--
-- Table structure for table `periodiques`
--

CREATE TABLE `periodiques` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `periodicite` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `num_ouvrage` varchar(255) DEFAULT NULL,
  `date_emprunt` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `periodiques`
--

INSERT INTO `periodiques` (`id`, `nom`, `periodicite`, `numero`, `num_ouvrage`, `date_emprunt`) VALUES
(1, 'Nom2', 'PP', 'NN111', '3555', 'dimanche 13 janvier 2019'),
(2, 'Nom1', 'Per1', 'NN152', '3777', 'dimanche 13 janvier 2019'),
(3, 'Nom3', 'Per3', 'NN245', '3555', 'lundi 14 janvier 2019'),
(5, 'TestEMSI', 'chaque semaine', '5566', '2019', 'mercredi 16 janvier 2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emprunteurs`
--
ALTER TABLE `emprunteurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periodiques`
--
ALTER TABLE `periodiques`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `emprunteurs`
--
ALTER TABLE `emprunteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `periodiques`
--
ALTER TABLE `periodiques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
