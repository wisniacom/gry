-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Maj 2020, 13:43
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `3ti`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `producenci`
--

CREATE TABLE `producenci` (
  `firma` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `kraj` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `rok` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `producenci`
--

INSERT INTO `producenci` (`firma`, `kraj`, `rok`) VALUES
('Atlus', 'Japonia', 1986),
('Konami', 'Japonia', 1969),
('Nintendo', 'Japonia', 1889),
('Rare', 'Anglia', 1985),
('Sega', 'Japonia', 1940);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `smash`
--

CREATE TABLE `smash` (
  `hero` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `game` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `smash`
--

INSERT INTO `smash` (`hero`, `game`, `ip`) VALUES
('Banjo & Kazooie', 'Banjo-Kazooie', 'Rare'),
('Joker', 'Persona', 'Atlus'),
('Link', 'The Legend of Zelda', 'Nintendo'),
('Luigi', 'Super Mario Bros.', 'Nintendo'),
('Mario', 'Super Mario Bros.', 'Nintendo'),
('Mewtwo', 'Pokemon', 'Nintendo'),
('Olimar', 'Pikmin', 'Nintendo'),
('Pikachu', 'Pokemon', 'Nintendo'),
('Snake', 'Metal Gear Solid', 'Konami'),
('Sonic', 'Sonic the Hedgehog', 'Sega');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `producenci`
--
ALTER TABLE `producenci`
  ADD PRIMARY KEY (`firma`);

--
-- Indeksy dla tabeli `smash`
--
ALTER TABLE `smash`
  ADD PRIMARY KEY (`hero`),
  ADD KEY `ip` (`ip`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `smash`
--
ALTER TABLE `smash`
  ADD CONSTRAINT `smash_ibfk_1` FOREIGN KEY (`ip`) REFERENCES `producenci` (`firma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
