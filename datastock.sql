/*
SQLyog Community Edition- MySQL GUI v8.2 
MySQL - 5.5.28 : Database - database
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`database` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `database`;

/*Table structure for table `tbarticle` */

DROP TABLE IF EXISTS `tbarticle`;

CREATE TABLE `tbarticle` (
  `codart` int(11) NOT NULL COMMENT 'code d''article',
  `nomart` varchar(15) NOT NULL COMMENT 'nom de l''article',
  `clécodsoufam` int(11) NOT NULL COMMENT 'clé code sous famille',
  PRIMARY KEY (`codart`),
  UNIQUE KEY `NewIndex1` (`nomart`),
  KEY `indexsousfamille` (`clécodsoufam`),
  CONSTRAINT `FK_tbarticle` FOREIGN KEY (`clécodsoufam`) REFERENCES `tbsousfamille` (`codsoufam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbarticle` */

/*Table structure for table `tbdepot` */

DROP TABLE IF EXISTS `tbdepot`;

CREATE TABLE `tbdepot` (
  `coddep` int(11) NOT NULL COMMENT 'code du dépot',
  `nomdep` varchar(15) NOT NULL COMMENT 'nom du dépot',
  PRIMARY KEY (`coddep`),
  UNIQUE KEY `NewIndex1` (`nomdep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbdepot` */

/*Table structure for table `tbfamille` */

DROP TABLE IF EXISTS `tbfamille`;

CREATE TABLE `tbfamille` (
  `codfam` int(11) NOT NULL COMMENT 'code de la famille',
  `nomfam` varchar(15) NOT NULL COMMENT 'nom de la famille',
  PRIMARY KEY (`codfam`),
  UNIQUE KEY `NewIndex1` (`nomfam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbfamille` */

/*Table structure for table `tbsousfamille` */

DROP TABLE IF EXISTS `tbsousfamille`;

CREATE TABLE `tbsousfamille` (
  `codsoufam` int(11) NOT NULL COMMENT 'code sous famille',
  `nomsoufam` varchar(15) NOT NULL COMMENT 'nom sous famille',
  `clecodfam` int(11) NOT NULL COMMENT 'cle code famille',
  PRIMARY KEY (`codsoufam`),
  UNIQUE KEY `NewIndex1` (`nomsoufam`),
  KEY `indexcodfamille` (`clecodfam`),
  CONSTRAINT `FK_tbsousfamille` FOREIGN KEY (`clecodfam`) REFERENCES `tbfamille` (`codfam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbsousfamille` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
