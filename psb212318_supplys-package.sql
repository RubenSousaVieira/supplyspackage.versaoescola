-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 21, 2024 at 11:37 AM
-- Server version: 5.7.16-log
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psb212318_supplys-package`
--

-- --------------------------------------------------------

--
-- Table structure for table `encomendas`
--

CREATE TABLE `encomendas` (
  `id_encomenda` int(11) NOT NULL,
  `tracking_number` varchar(50) DEFAULT NULL,
  `pin_entrega` varchar(10) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `morada` varchar(255) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `localidade` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telemovel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `encomendas`
--

INSERT INTO `encomendas` (`id_encomenda`, `tracking_number`, `pin_entrega`, `nome`, `morada`, `cp`, `localidade`, `email`, `telemovel`) VALUES
(1, 'ABCD1234EFGH', '1234', '', '', '', '', '', ''),
(2, 'WXYZ5678QRST', '5678', 'Ana Sousa', 'Avenida da Liberdade, 456', '1000-456', 'Lisboa', 'ana.sousa@email.com', '987654321'),
(3, 'UVWX9012YZAB', '9012', '', '', '', '', '', ''),
(5, 'V7H2R76G0ZE4', '7142', 'Fabiana Portugal', 'Avenida dos Aliados 100', '4000-123', 'Porto', 'alice@email.com', '910000000');

-- --------------------------------------------------------

--
-- Table structure for table `estado_encomendas`
--

CREATE TABLE `estado_encomendas` (
  `id_estado_encomenda` int(11) NOT NULL,
  `id_encomenda` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `utilizadores`
--

CREATE TABLE `utilizadores` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(180) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utilizadores`
--

INSERT INTO `utilizadores` (`id`, `username`, `password`, `email`, `data_criacao`) VALUES
(1, 'psb212318', '$2y$10$vAiT6pzqg1O1CGSljqYnLOeROSkT.QO/uLlJMwbEw4aOKS0156eEe', 'po2318@alunos.epbjc.pt', '2023-09-28 12:18:22'),
(3, 'admin', '$2y$10$dpjHpnWjhsPonkSUNXmu4OdS8ChtOk268bF./tH86JJuBiYd79sW.', '', '2024-02-09 19:37:01'),
(4, 'teste02', '$2y$15$73B0F.sf8XUd/qfq765GY.7vgsrGlAOidsAOIbpztUR3f5EPUCAVq', '', '2024-02-10 12:03:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `encomendas`
--
ALTER TABLE `encomendas`
  ADD PRIMARY KEY (`id_encomenda`);

--
-- Indexes for table `estado_encomendas`
--
ALTER TABLE `estado_encomendas`
  ADD PRIMARY KEY (`id_estado_encomenda`),
  ADD KEY `id_encomenda` (`id_encomenda`);

--
-- Indexes for table `utilizadores`
--
ALTER TABLE `utilizadores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `encomendas`
--
ALTER TABLE `encomendas`
  MODIFY `id_encomenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `estado_encomendas`
--
ALTER TABLE `estado_encomendas`
  MODIFY `id_estado_encomenda` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `utilizadores`
--
ALTER TABLE `utilizadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `estado_encomendas`
--
ALTER TABLE `estado_encomendas`
  ADD CONSTRAINT `estado_encomendas_ibfk_1` FOREIGN KEY (`id_encomenda`) REFERENCES `encomendas` (`id_encomenda`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
