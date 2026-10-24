SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `esports` DEFAULT CHARACTER SET utf16 COLLATE utf16_general_ci;
USE `esports`;

DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `gameid` int(11) NOT NULL AUTO_INCREMENT,
  `game` varchar(11) NOT NULL,
  `platform` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`gameid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `game` (`gameid`, `game`, `platform`) VALUES
(1, 'Massive RPG', 'X-station'),
(2, 'SuperJoe', 'S-box'),
(3, 'Terra 1999', 'PC');

DROP TABLE IF EXISTS `gamescore`;
CREATE TABLE IF NOT EXISTS `gamescore` (
  `scoreid` int(11) NOT NULL AUTO_INCREMENT,
  `playername` varchar(20) DEFAULT NULL,
  `gameid` int(11) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  PRIMARY KEY (`scoreid`)
) ENGINE=InnoDB AUTO_INCREMENT=632 DEFAULT CHARSET=utf8;

INSERT INTO `gamescore` (`scoreid`, `playername`, `gameid`, `score`) VALUES
(625, 'shocker', 1, 726122),
(626, 'peach', 2, 102928),
(627, 'peach', 1, 625100),
(628, 'shocker', 3, 821200),
(629, 'destroyer', 3, 120001),
(630, 'peach', 1, 283102),
(631, 'destroyer', 2, 299000);

DROP TABLE IF EXISTS `player`;
CREATE TABLE IF NOT EXISTS `player` (
  `player` varchar(9) NOT NULL,
  `realname` varchar(15) DEFAULT NULL,
  `password` varchar(9) DEFAULT NULL,
  `email` varchar(16) DEFAULT NULL,
  `tagphase` varchar(28) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `player` (`player`, `realname`, `password`, `email`, `tagphase`, `status`) VALUES
('destroyer', 'Chloe Davidson', 'shadow99', 'chloe@coders.org', 'I love games', 'on'),
('peach', 'Sally MacDonald', 'trustme1', 'sally@scott.com', 'I’m part of an eSports team', 'on'),
('shocker', 'Paul White', 'pink10red', 'paul@gamers.org', 'I want to play competitively', 'on');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
