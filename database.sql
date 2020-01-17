-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Pritësi (host): 127.0.0.1
-- Koha e gjenerimit: Jan 17, 2020 në 08:54 MD
-- Versioni i serverit: 10.4.10-MariaDB
-- PHP Versioni: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databaza: `hotel`
--

-- --------------------------------------------------------

--
-- Struktura e tabelës për tabelën `prenotimi`
--

CREATE TABLE `prenotimi` (
  `id` int(11) NOT NULL,
  `emri` varchar(30) NOT NULL,
  `mbiemri` varchar(30) NOT NULL,
  `telefoni` varchar(20) NOT NULL,
  `lloji_dhomes` enum('tek','cift','suite') NOT NULL,
  `nr_shtreterve` int(4) NOT NULL,
  `data_prenotimit` date NOT NULL,
  `deri_kur` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zbraz të dhënat për tabelën `prenotimi`
--

INSERT INTO `prenotimi` (`id`, `emri`, `mbiemri`, `telefoni`, `lloji_dhomes`, `nr_shtreterve`, `data_prenotimit`, `deri_kur`) VALUES
(1, 'sadasd', 'asdsdasd', '0', 'tek', 0, '2020-01-01', '2020-01-01'),
(2, 'asdasd', 'ERG ', '45654345', 'tek', 0, '2020-01-09', '2020-01-02'),
(3, 'asdasd', 'sad', '45654345', 'tek', 0, '2020-01-01', '2020-01-09'),
(4, 'asdasddsad', 'sad', '0', 'tek', 0, '2020-01-09', '2020-01-23'),
(5, 'asdasddsad', 'sad', '0', 'tek', 0, '2020-01-09', '2020-01-23'),
(6, 'asdasd', 'ERG ', '45654345', 'tek', 0, '2020-01-10', '2020-01-24'),
(7, 'eeee', 'ERG ', '0', 'tek', 0, '2020-01-15', '2020-01-16'),
(8, 'eeee', 'ERG ', '0', 'tek', 0, '2020-01-15', '2020-01-16'),
(9, 'asdsadd', 'sadsdd', '0', 'tek', 0, '2020-01-09', '2020-01-09'),
(10, 'asdasda', 'asdad', '0', 'tek', 0, '2020-01-16', '2020-01-23');

--
-- Indekset për tabelat e hedhura
--

--
-- Indekset për tabelë `prenotimi`
--
ALTER TABLE `prenotimi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT për tabelat e hedhura
--

--
-- AUTO_INCREMENT për tabelë `prenotimi`
--
ALTER TABLE `prenotimi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
