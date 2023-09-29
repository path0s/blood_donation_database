-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ago 23, 2023 alle 12:03
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.2.4
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Database: `blood_donation`
--
-- --------------------------------------------------------
--
-- Struttura della tabella `banca_trasfusionale`
--
CREATE TABLE `banca_trasfusionale` (
  `IDBANCA` int(11) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `NUMERO_SACCHE_TOT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Dump dei dati per la tabella `banca_trasfusionale`
--
INSERT INTO `banca_trasfusionale` (`IDBANCA`, `NOME`, `NUMERO_SACCHE_TOT`) VALUES
(1, 'BolognaBank', 123456),
(2, 'FerraraBank', 130657),
(3, 'RavennaBank', 189765),
(4, 'ModenaBank', 100339);
-- --------------------------------------------------------
--
-- Struttura della tabella `donatore`
--
CREATE TABLE `donatore` (
  `IDDONATORE` int(11) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `COGNOME` varchar(30) NOT NULL,
  `DATA_NASCITA` date NOT NULL,
  `ETA` int(11) NOT NULL,
  `SESSO` char(1) NOT NULL,
  `PESO` float NOT NULL,
  `GRUPPO_SANGUIGNO` varchar(5) NOT NULL,
  `DATA_ULTIMA_DONAZIONE` date NOT NULL,
  `NUMERO_DONAZIONI_ANNO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Dump dei dati per la tabella `donatore`
--
INSERT INTO `donatore` (`IDDONATORE`, `NOME`, `COGNOME`, `DATA_NASCITA`, `ETA`, `SESSO`, `PESO`, `GRUPPO_SANGUIGNO`, `DATA_ULTIMA_DONAZIONE`, `NUMERO_DONAZIONI_ANNO`) VALUES
(1, 'Maria', 'Rossi', '2000-01-10', 23, 'F', 61, 'AB+', '2023-10-10', 2),
(2, 'Giuseppe', 'Bianchi', '1985-09-15', 37, 'M', 80.16, 'A-', '2023-12-06', 2),
(3, 'Laura', 'Verdi', '1995-12-31', 27, 'F', 53.56, 'B+', '2023-11-15', 1),
(4, 'Marco', 'Neri', '1980-03-25', 43, 'M', 70.09, '0-', '2023-12-28', 4),
(5, 'Sara', 'Gialli', '1998-06-18', 24, 'F', 55.44, 'A+', '2023-08-22', 2),
(6, 'Luca', 'Marroni', '1992-11-05', 30, 'M', 75.42, 'AB-', '2023-02-05', 1);
-- --------------------------------------------------------
--
-- Struttura della tabella `medico`
--
CREATE TABLE `medico` (
  `IDMEDICO` int(11) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `COGNOME` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Dump dei dati per la tabella `medico`
--
INSERT INTO `medico` (`IDMEDICO`, `NOME`, `COGNOME`) VALUES
(1, 'Piero', 'Magico'),
(2, 'Maria', 'Del Sole');
-- --------------------------------------------------------
--
-- Struttura della tabella `paziente`
--
CREATE TABLE `paziente` (
  `IDPAZIENTE` int(11) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `COGNOME` varchar(30) NOT NULL,
  `DATA_NASCITA` date NOT NULL,
  `ETA` int(11) NOT NULL,
  `GRUPPO_SANGUIGNO` varchar(5) NOT NULL,
  `ID_M` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Dump dei dati per la tabella `paziente`
--
INSERT INTO `paziente` (`IDPAZIENTE`, `NOME`, `COGNOME`, `DATA_NASCITA`, `ETA`, `GRUPPO_SANGUIGNO`, `ID_M`) VALUES
(1, 'Olivia', 'Davoli', '1961-08-08', 61, 'B-', 1),
(2, 'Rosario', 'Greco', '1951-08-08', 71, 'AB-', 1),
(3, 'Marco', 'Del Verde', '1941-08-08', 81, '0+', 2);
-- --------------------------------------------------------
--
-- Struttura della tabella `richiesta`
--
CREATE TABLE `richiesta` (
  `IDRICHIESTA` int(11) NOT NULL,
  `DATA_EFFETTUATA` date NOT NULL,
  `QUANTITA_SACCHE_NECESSARIE` int(11) NOT NULL,
  `GRUPPO_SANGUIGNO` varchar(5) NOT NULL,
  `ID_B` int(11) NOT NULL,
  `ID_M` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Dump dei dati per la tabella `richiesta`
--
INSERT INTO `richiesta` (`IDRICHIESTA`, `DATA_EFFETTUATA`, `QUANTITA_SACCHE_NECESSARIE`, `GRUPPO_SANGUIGNO`, `ID_B`, `ID_M`) VALUES
(1, '2023-04-10', 2, 'B-', 2, 1),
(2, '2023-04-10', 5, 'A-', 4, 1),
(3, '2023-04-11', 3, '0+', 2, 2);
-- --------------------------------------------------------
--
-- Struttura della tabella `sacca_sangue`
--
CREATE TABLE `sacca_sangue` (
  `IDSACCA` int(11) NOT NULL,
  `GRUPPO_SANGUIGNO` varchar(5) NOT NULL,
  `DATA_EFFETTUATA` date NOT NULL,
  `ID_D` int(11) NOT NULL,
  `ID_B` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Dump dei dati per la tabella `sacca_sangue`
--
INSERT INTO `sacca_sangue` (`IDSACCA`, `GRUPPO_SANGUIGNO`, `DATA_EFFETTUATA`, `ID_D`, `ID_B`) VALUES
(1, 'AB+', '2023-10-10', 1, 1),
(2, 'A-', '2023-12-06', 2, 2),
(3, 'B+', '2023-11-15', 3, 3),
(4, '0-', '2023-12-28', 4, 4),
(5, 'A+', '2023-08-22', 5, 2),
(6, 'AB-', '2023-02-05', 6, 2);
--
-- Indici per le tabelle scaricate
--
--
-- Indici per le tabelle `banca_trasfusionale`
--
ALTER TABLE `banca_trasfusionale`
  ADD PRIMARY KEY (`IDBANCA`);
--
-- Indici per le tabelle `donatore`
--
ALTER TABLE `donatore`
  ADD PRIMARY KEY (`IDDONATORE`);
--
-- Indici per le tabelle `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`IDMEDICO`);
--
-- Indici per le tabelle `paziente`
--
ALTER TABLE `paziente`
  ADD PRIMARY KEY (`IDPAZIENTE`),
  ADD KEY `paziente_ibfk_1` (`ID_M`);
--
-- Indici per le tabelle `richiesta`
--
ALTER TABLE `richiesta`
  ADD PRIMARY KEY (`IDRICHIESTA`),
  ADD KEY `richiesta_ibfk_1` (`ID_B`),
  ADD KEY `richiesta_ibfk_2` (`ID_M`);
--
-- Indici per le tabelle `sacca_sangue`
--
ALTER TABLE `sacca_sangue`
  ADD PRIMARY KEY (`IDSACCA`),
  ADD KEY `sacca_sangue_ibfk_1` (`ID_D`),
  ADD KEY `sacca_sangue_ibfk_2` (`ID_B`);
--
-- AUTO_INCREMENT per le tabelle scaricate
--
--
-- AUTO_INCREMENT per la tabella `banca_trasfusionale`
--
ALTER TABLE `banca_trasfusionale`
  MODIFY `IDBANCA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `donatore`
--
ALTER TABLE `donatore`
  MODIFY `IDDONATORE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `medico`
--
ALTER TABLE `medico`
  MODIFY `IDMEDICO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `paziente`
--
ALTER TABLE `paziente`
  MODIFY `IDPAZIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `richiesta`
--
ALTER TABLE `richiesta`
  MODIFY `IDRICHIESTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `sacca_sangue`
--
ALTER TABLE `sacca_sangue`
  MODIFY `IDSACCA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Limiti per le tabelle scaricate
--
--
-- Limiti per la tabella `paziente`
--
ALTER TABLE `paziente`
  ADD CONSTRAINT `paziente_ibfk_1` FOREIGN KEY (`ID_M`) REFERENCES `medico` (`IDMEDICO`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Limiti per la tabella `richiesta`
--
ALTER TABLE `richiesta`
  ADD CONSTRAINT `richiesta_ibfk_1` FOREIGN KEY (`ID_B`) REFERENCES `banca_trasfusionale` (`IDBANCA`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `richiesta_ibfk_2` FOREIGN KEY (`ID_M`) REFERENCES `medico` (`IDMEDICO`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Limiti per la tabella `sacca_sangue`
--
ALTER TABLE `sacca_sangue`
  ADD CONSTRAINT `sacca_sangue_ibfk_1` FOREIGN KEY (`ID_D`) REFERENCES `donatore` (`IDDONATORE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sacca_sangue_ibfk_2` FOREIGN KEY (`ID_B`) REFERENCES `banca_trasfusionale` (`IDBANCA`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
