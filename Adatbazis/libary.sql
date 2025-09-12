-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Sze 12. 10:59
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `libary`
--
CREATE DATABASE IF NOT EXISTS `libary` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `libary`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `books`
--

CREATE TABLE `books` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `RelesDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `books`
--

INSERT INTO `books` (`Id`, `Title`, `Author`, `RelesDate`) VALUES
(1, 'Android', 'Di Gregorio', '2025-08-02'),
(2, 'Life Is Beautiful (La Vita è bella)', 'Plows', '2024-11-04'),
(3, 'Numb', 'Caldwall', '2025-07-16'),
(4, 'Vital Signs', 'Ratlee', '2024-10-05'),
(5, 'Stepfather, The', 'Eveleigh', '2025-08-02'),
(6, 'Wild About Harry', 'Starbucke', '2025-01-21'),
(7, 'Ugly', 'Arias', '2024-10-30'),
(8, 'Judgment Night', 'Vuitton', '2025-02-20'),
(9, 'Mary Stevens M.D.', 'Bullene', '2024-09-29'),
(10, 'Concert, Le', 'Grugerr', '2025-09-09'),
(11, 'Wild at Heart', 'Remmer', '2024-11-28'),
(12, 'Plastic', 'Sloan', '2025-07-20'),
(13, 'Men of Means', 'Abbotts', '2025-02-19'),
(14, 'Specialist, The', 'McKellar', '2025-05-02'),
(15, 'No God, No Master', 'Rivelin', '2024-12-20'),
(16, 'Foreigner, The', 'Skirrow', '2025-05-23'),
(17, 'Southern Yankee, A', 'Berget', '2025-01-07'),
(18, 'Sometimes a Great Notion', 'Braim', '2025-07-30'),
(19, 'Accidental Tourist, The', 'Vedeshkin', '2025-02-03'),
(20, 'Powder Room', 'Gammie', '2025-08-04'),
(21, 'Six Shooter', 'Tebbett', '2025-03-27'),
(22, 'Master, The', 'Kirke', '2025-09-04'),
(23, 'Experience Preferred... But Not Essential', 'Revie', '2025-04-21'),
(24, 'Zombieland', 'Goodlake', '2025-08-12'),
(25, 'Independence Day (a.k.a. ID4)', 'Flisher', '2025-06-01'),
(26, 'Burke and Hare', 'Roser', '2025-06-03'),
(27, 'Visions of Europe', 'Jenoure', '2025-03-06'),
(28, 'Horse Soldiers, The', 'Langston', '2024-09-20'),
(29, 'My Wife, A Body to Love', 'Trusse', '2024-12-15'),
(30, 'Dampfnudelblues', 'Cossar', '2024-12-05'),
(31, 'Hitting Home', 'Seeler', '2025-02-11'),
(32, 'Penalty, The', 'Clemonts', '2025-01-30'),
(33, 'The Cave of the Golden Rose', 'Beneze', '2025-05-14'),
(34, 'Deterrence', 'Persence', '2025-09-10'),
(35, 'Straight Time', 'Quiney', '2025-02-18'),
(36, 'Wanted: Dead or Alive', 'Stephens', '2024-09-15'),
(37, 'Streetcar Named Desire, A', 'Sommerled', '2025-02-05'),
(38, 'Deliver Us From Evil', 'Piggrem', '2024-11-27'),
(39, 'Crazy in Alabama', 'Sikora', '2025-06-09'),
(40, 'À l\'aventure', 'Lightowler', '2024-11-06'),
(41, 'Liar\'s Autobiography: The Untrue Story of Monty Python\'s Graham Chapman, A', 'Orrett', '2024-11-07'),
(42, 'Mirror Crack\'d, The', 'Lawfull', '2025-06-20'),
(43, 'Progression', 'Stuckford', '2025-07-17'),
(44, 'I, the Worst of All (Yo, la peor de todas)', 'Joderli', '2025-06-04'),
(45, 'MacGruber', 'Prosser', '2024-09-17'),
(46, 'Cameraman, The', 'Trevarthen', '2024-12-21'),
(47, 'Avengers, The', 'Coomer', '2025-02-11'),
(48, 'Marked for Death', 'Pallesen', '2025-04-11'),
(49, 'Bring Me the Head of Alfredo Garcia', 'Spur', '2024-11-06'),
(50, 'Sundays and Cybele (Les dimanches de Ville d\'Avray)', 'Sussans', '2025-05-26'),
(51, 'That Sugar Film', 'Jekyll', '2024-10-11'),
(52, 'Ingmar Bergman Makes a Movie (Ingmar Bergman gör en film)', 'MacIlwrick', '2025-04-13'),
(53, 'Somewhere in the Night', 'MacCallam', '2025-04-20'),
(54, 'Five and Ten', 'Huison', '2025-06-15'),
(55, 'Moon', 'Petrosian', '2025-05-28'),
(56, 'Stuck', 'Penhall', '2025-04-20'),
(57, 'Going All the Way', 'Danels', '2025-03-23'),
(58, 'Captain America II: Death Too Soon', 'Cunniam', '2024-10-05'),
(59, 'Krippendorf\'s Tribe', 'Santo', '2025-03-05'),
(60, 'Mesmerist, The', 'Coleford', '2025-03-26'),
(61, 'Minecraft: The Story of Mojang', 'Lansdown', '2025-04-18'),
(62, 'Naughty Room, The', 'Blaisdale', '2024-09-12'),
(63, 'Miss Nobody', 'Bedo', '2024-09-19'),
(64, 'Kiss Before Dying, A', 'Holme', '2025-01-14'),
(65, 'Beethoven\'s 3rd', 'Crickmore', '2025-02-11'),
(66, 'Girl on a Bicycle', 'Shelly', '2024-11-28'),
(67, 'Bangkok Dangerous', 'Burke', '2024-10-10'),
(68, 'The Challenge', 'Shrigley', '2024-12-01'),
(69, 'Dead or Alive: Final', 'Dorin', '2025-07-03'),
(70, 'Life After Beth', 'Dunabie', '2025-05-13'),
(71, 'Funky Forest: The First Contact', 'Witsey', '2024-12-31'),
(72, 'Star Is Born, A', 'Allred', '2025-05-23'),
(73, 'Funeral Parade of Roses (Bara no sôretsu)', 'Kibbee', '2025-05-26'),
(74, 'Babylon 5: Thirdspace', 'Flockhart', '2025-01-04'),
(75, 'Nothing Left to Fear', 'Powlesland', '2025-08-25'),
(76, 'The Horribly Slow Murderer with the Extremely Inefficient Weapon', 'Turn', '2024-09-14'),
(77, 'Where the Heart Is', 'Brevitt', '2024-12-27'),
(78, 'Smashing Pumpkins: If All Goes Wrong', 'Genery', '2025-06-10'),
(79, 'Road Trip: Beer Pong', 'Sinyard', '2024-11-23'),
(80, 'Loaded', 'Ambler', '2025-03-10'),
(81, 'Saw VI', 'McNirlan', '2024-09-17'),
(82, 'Munich', 'Crocumbe', '2025-06-11'),
(83, 'Vampires', 'Spenley', '2025-08-25'),
(84, 'Ghost in the Shell (Kôkaku kidôtai)', 'Kezourec', '2025-08-21'),
(85, 'Man of the Year', 'Matyja', '2025-08-07'),
(86, 'Julius Caesar', 'Glamart', '2025-01-15'),
(87, 'Jagged Edge', 'Trolley', '2025-08-20'),
(88, 'Out of the Blue', 'Obell', '2024-12-12'),
(89, 'Braddock: Missing in Action III', 'Meace', '2025-04-11'),
(90, 'Basket Case', 'Staten', '2025-04-03'),
(91, 'Searching for Bobby Fischer', 'Lyfield', '2025-07-08'),
(92, 'Christmas Carol, A', 'Perchard', '2025-08-10'),
(93, 'In the Blood', 'Challace', '2024-12-25'),
(94, 'King of Texas, The', 'Cowper', '2025-06-29'),
(95, 'Hello Down There', 'Riddle', '2025-01-25'),
(96, 'Kids in the Hall: Brain Candy', 'Goalley', '2025-03-04'),
(97, 'The Suspicious Death of a Minor', 'Elen', '2025-09-03'),
(98, 'Indian Summer', 'Manwaring', '2024-12-30'),
(99, 'Nicky\'s Family', 'Bynert', '2025-06-11'),
(100, 'Emma\'s Bliss (Emmas Glück)', 'Devenny', '2024-12-09');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `books`
--
ALTER TABLE `books`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
