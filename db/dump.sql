/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table alchemy_attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_attachments`;

CREATE TABLE `alchemy_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `file_uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_attachments_on_file_uid` (`file_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table alchemy_cells
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_cells`;

CREATE TABLE `alchemy_cells` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_cells` WRITE;
/*!40000 ALTER TABLE `alchemy_cells` DISABLE KEYS */;

INSERT INTO `alchemy_cells` (`id`, `page_id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,4,'left_column','2011-09-28 09:08:51','2014-12-10 18:38:04'),
	(2,4,'right_column','2011-09-28 09:08:51','2015-09-24 20:22:03'),
	(3,4,'slide_gallery','2011-09-28 09:08:51','2014-09-03 19:27:42'),
	(25,15,'left_column','2011-10-08 23:39:50','2015-09-24 20:34:14'),
	(26,15,'right_column','2011-10-08 23:39:50','2015-09-22 20:26:30'),
	(27,15,'slide_gallery','2011-10-08 23:39:50','2011-10-08 23:39:50'),
	(91,35,'left_column','2011-10-25 10:10:44','2011-10-25 10:10:44'),
	(92,35,'right_column','2011-10-25 10:10:44','2016-11-18 08:10:18'),
	(93,35,'slide_gallery','2011-10-25 10:10:44','2011-10-25 10:10:44'),
	(115,37,'slide_gallery','2013-02-19 15:54:37','2013-02-19 15:54:37'),
	(116,49,'left_column','2014-06-16 10:55:24','2016-11-18 15:03:07'),
	(117,49,'right_column','2014-06-16 10:55:24','2016-11-18 08:10:19'),
	(118,49,'slide_gallery','2014-06-16 10:55:24','2014-06-16 10:55:24'),
	(119,35,'packages','2014-06-30 21:01:40','2015-09-24 16:20:24'),
	(120,50,'slide_gallery','2014-07-01 05:46:15','2014-07-01 05:46:15'),
	(121,50,'packages','2014-07-01 05:46:15','2014-07-01 05:46:15'),
	(122,51,'slide_gallery','2014-07-01 05:49:55','2014-07-01 05:49:55'),
	(123,51,'packages','2014-07-01 05:49:55','2014-07-01 05:49:55');

/*!40000 ALTER TABLE `alchemy_cells` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_contents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_contents`;

CREATE TABLE `alchemy_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `essence_type` varchar(255) DEFAULT NULL,
  `essence_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_contents_on_element_id_and_position` (`element_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_contents` WRITE;
/*!40000 ALTER TABLE `alchemy_contents` DISABLE KEYS */;

INSERT INTO `alchemy_contents` (`id`, `name`, `essence_type`, `essence_id`, `element_id`, `position`, `created_at`, `updated_at`, `creator_id`, `updater_id`)
VALUES
	(4,'bigtext','Alchemy::EssenceRichtext',2,4,1,'2011-09-28 09:13:32','2011-11-28 17:58:41',1,1),
	(6,'bigtext','Alchemy::EssenceRichtext',3,6,1,'2011-09-28 09:15:25','2011-11-28 17:58:41',1,1),
	(8,'headline','Alchemy::EssenceText',4,7,1,'2011-09-28 11:04:20','2014-09-03 19:19:56',1,1),
	(9,'subheadline','Alchemy::EssenceText',5,7,2,'2011-09-28 11:04:20','2014-09-03 19:19:56',1,1),
	(58,'subheadline','Alchemy::EssenceText',34,37,1,'2011-10-08 23:42:13','2011-11-29 19:41:09',2,2),
	(59,'headline','Alchemy::EssenceText',35,38,1,'2011-10-08 23:47:02','2014-09-03 19:31:56',2,1),
	(60,'features','Alchemy::EssenceRichtext',14,38,1,'2011-10-08 23:47:02','2014-09-03 19:31:56',2,1),
	(62,'bigtext','Alchemy::EssenceRichtext',15,40,1,'2011-10-08 23:53:24','2011-11-29 19:42:23',2,2),
	(63,'subheadline','Alchemy::EssenceText',37,41,1,'2011-10-08 23:54:06','2011-11-28 17:58:41',2,2),
	(64,'subheadline','Alchemy::EssenceText',38,42,1,'2011-10-08 23:55:17','2011-11-28 17:58:41',2,2),
	(68,'addthis_profile','Alchemy::EssenceText',41,45,1,'2011-10-09 00:09:52','2016-03-22 22:54:25',2,1),
	(69,'bigtext','Alchemy::EssenceRichtext',17,45,1,'2011-10-09 00:09:52','2016-03-22 22:54:25',2,1),
	(95,'bigtext','Alchemy::EssenceRichtext',27,66,1,'2011-10-09 01:10:24','2011-11-28 17:58:42',2,2),
	(102,'headline','Alchemy::EssenceText',60,73,1,'2011-10-09 01:42:12','2015-09-22 20:26:29',2,1),
	(103,'features','Alchemy::EssenceRichtext',30,73,1,'2011-10-09 01:42:12','2015-09-22 20:26:30',2,1),
	(111,'addthis_profile','Alchemy::EssenceText',64,79,1,'2011-10-11 17:16:41','2016-03-22 22:53:08',2,1),
	(112,'bigtext','Alchemy::EssenceRichtext',35,79,1,'2011-10-11 17:16:41','2016-03-22 22:53:08',2,1),
	(113,'addthis_profile','Alchemy::EssenceText',65,80,1,'2011-10-11 17:20:28','2015-09-22 20:30:10',2,1),
	(114,'bigtext','Alchemy::EssenceRichtext',36,80,1,'2011-10-11 17:20:28','2015-09-22 20:30:10',2,1),
	(213,'bigtext','Alchemy::EssenceRichtext',40,95,1,'2011-10-28 21:31:24','2011-11-28 17:58:42',2,2),
	(214,'image','Alchemy::EssencePicture',97,96,1,'2011-10-28 21:34:55','2014-09-03 19:27:41',2,1),
	(215,'headline','Alchemy::EssenceText',76,96,1,'2011-10-28 21:34:55','2014-09-03 19:27:41',2,1),
	(216,'subheadline','Alchemy::EssenceText',77,96,2,'2011-10-28 21:34:55','2014-09-03 19:27:42',2,1),
	(228,'headline','Alchemy::EssenceText',83,106,1,'2011-11-09 15:16:28','2011-11-28 17:58:42',2,2),
	(230,'bigtext','Alchemy::EssenceRichtext',46,108,1,'2011-11-09 16:08:49','2011-11-28 17:58:42',2,2),
	(234,'bigtext','Alchemy::EssenceRichtext',47,112,1,'2011-11-09 16:12:07','2011-11-28 17:58:42',2,2),
	(280,'image','Alchemy::EssencePicture',101,7,1,'2011-11-10 21:42:43','2014-09-03 19:19:56',1,1),
	(281,'image','Alchemy::EssencePicture',102,117,1,'2011-11-10 21:43:13','2014-09-03 19:26:52',1,1),
	(282,'headline','Alchemy::EssenceText',87,117,1,'2011-11-10 21:43:13','2014-09-03 19:26:52',1,1),
	(283,'subheadline','Alchemy::EssenceText',88,117,2,'2011-11-10 21:43:13','2014-09-03 19:26:52',1,1),
	(290,'essence_picture_1','Alchemy::EssencePicture',103,124,1,'2011-11-10 22:40:55','2011-11-28 17:58:42',1,1),
	(293,'subheadline','Alchemy::EssenceText',92,127,1,'2011-11-10 22:47:12','2011-11-28 17:58:42',1,1),
	(294,'subheadline','Alchemy::EssenceText',93,128,1,'2011-11-10 22:47:42','2011-11-28 17:58:42',1,1),
	(295,'subheadline','Alchemy::EssenceText',94,129,1,'2011-11-10 22:48:32','2011-11-28 17:58:42',1,1),
	(296,'bigtext','Alchemy::EssenceRichtext',52,130,1,'2011-11-10 22:49:49','2011-11-28 17:58:42',1,1),
	(383,'essence_picture_1','Alchemy::EssencePicture',107,166,1,'2011-12-21 08:41:25','2011-12-21 08:41:25',NULL,NULL),
	(395,'image','Alchemy::EssencePicture',112,173,1,'2013-02-19 14:40:01','2013-02-19 14:40:01',1,1),
	(396,'headline','Alchemy::EssenceText',98,173,1,'2013-02-19 14:40:01','2013-02-19 14:40:01',1,1),
	(397,'subheadline','Alchemy::EssenceText',99,173,2,'2013-02-19 14:40:01','2013-02-19 14:40:01',1,1),
	(403,'image','Alchemy::EssencePicture',115,176,1,'2013-02-19 15:41:26','2013-02-19 15:41:26',1,1),
	(404,'headline','Alchemy::EssenceText',102,176,1,'2013-02-19 15:41:26','2013-02-19 15:41:26',1,1),
	(405,'subheadline','Alchemy::EssenceText',103,176,2,'2013-02-19 15:41:26','2013-02-19 15:41:26',1,1),
	(406,'image','Alchemy::EssencePicture',116,177,1,'2013-02-19 15:41:53','2013-02-19 15:41:53',1,1),
	(407,'headline','Alchemy::EssenceText',104,177,1,'2013-02-19 15:41:53','2013-02-19 15:41:53',1,1),
	(408,'subheadline','Alchemy::EssenceText',105,177,2,'2013-02-19 15:41:53','2013-02-19 15:41:53',1,1),
	(416,'image','Alchemy::EssencePicture',120,180,1,'2013-02-19 15:54:37','2013-02-19 15:54:37',1,1),
	(417,'headline','Alchemy::EssenceText',110,180,1,'2013-02-19 15:54:37','2013-02-19 15:54:37',1,1),
	(418,'subheadline','Alchemy::EssenceText',111,180,2,'2013-02-19 15:54:37','2013-02-19 15:54:37',1,1),
	(419,'image','Alchemy::EssencePicture',121,181,1,'2013-02-19 15:55:23','2013-02-19 15:55:23',1,1),
	(420,'headline','Alchemy::EssenceText',112,181,1,'2013-02-19 15:55:23','2013-02-19 15:55:23',1,1),
	(421,'subheadline','Alchemy::EssenceText',113,181,2,'2013-02-19 15:55:23','2013-02-19 15:55:23',1,1),
	(422,'image','Alchemy::EssencePicture',122,182,1,'2013-02-19 15:56:15','2013-02-19 15:56:15',1,1),
	(423,'headline','Alchemy::EssenceText',114,182,1,'2013-02-19 15:56:15','2013-02-19 15:56:15',1,1),
	(424,'subheadline','Alchemy::EssenceText',115,182,2,'2013-02-19 15:56:15','2013-02-19 15:56:15',1,1),
	(425,'image','Alchemy::EssencePicture',123,183,1,'2013-02-19 16:00:47','2013-02-19 16:00:47',1,1),
	(426,'headline','Alchemy::EssenceText',116,183,1,'2013-02-19 16:00:47','2013-02-19 16:00:47',1,1),
	(427,'subheadline','Alchemy::EssenceText',117,183,2,'2013-02-19 16:00:47','2013-02-19 16:00:47',1,1),
	(428,'image','Alchemy::EssencePicture',124,184,1,'2013-02-19 16:04:20','2013-02-19 16:04:20',1,1),
	(429,'headline','Alchemy::EssenceText',118,184,1,'2013-02-19 16:04:20','2013-02-19 16:04:20',1,1),
	(430,'subheadline','Alchemy::EssenceText',119,184,2,'2013-02-19 16:04:20','2013-02-19 16:04:20',1,1),
	(431,'image','Alchemy::EssencePicture',125,185,1,'2013-02-19 16:15:20','2013-02-19 16:15:20',1,1),
	(432,'headline','Alchemy::EssenceText',120,185,1,'2013-02-19 16:15:20','2013-02-19 16:15:20',1,1),
	(433,'subheadline','Alchemy::EssenceText',121,185,2,'2013-02-19 16:15:20','2013-02-19 16:15:20',1,1),
	(434,'essence_picture_1','Alchemy::EssencePicture',126,186,1,'2013-02-19 16:21:13','2013-02-19 16:21:13',1,1),
	(435,'subheadline','Alchemy::EssenceText',122,187,1,'2013-02-19 16:34:11','2013-02-19 16:34:11',1,1),
	(436,'bigtext','Alchemy::EssenceRichtext',58,188,1,'2013-02-19 16:34:24','2013-02-19 16:34:24',1,1),
	(437,'essence_picture_1','Alchemy::EssencePicture',127,189,1,'2013-02-19 16:35:24','2013-02-19 16:35:24',1,1),
	(439,'essence_picture_2','Alchemy::EssencePicture',128,166,2,'2013-02-19 17:12:20','2013-02-19 17:12:20',1,1),
	(440,'essence_picture_2','Alchemy::EssencePicture',129,186,2,'2013-02-19 17:14:01','2013-02-19 17:14:01',1,1),
	(441,'headline','Alchemy::EssenceText',123,191,1,'2013-02-20 01:19:28','2013-02-20 01:19:28',1,1),
	(442,'headline','Alchemy::EssenceText',124,192,1,'2013-02-20 01:20:16','2013-02-20 01:20:16',1,1),
	(443,'headline','Alchemy::EssenceText',125,193,1,'2013-02-20 01:21:05','2013-02-20 01:21:05',1,1),
	(444,'headline','Alchemy::EssenceText',126,79,2,'2013-02-20 10:09:54','2016-03-22 22:53:08',1,1),
	(445,'headline','Alchemy::EssenceText',127,80,2,'2013-02-20 10:10:08','2015-09-22 20:30:10',1,1),
	(446,'headline','Alchemy::EssenceText',128,45,2,'2013-02-20 10:10:34','2016-03-22 22:54:25',1,1),
	(447,'bigtext','Alchemy::EssenceRichtext',59,194,1,'2014-03-05 23:15:44','2015-09-22 20:27:16',1,1),
	(449,'headline','Alchemy::EssenceText',129,196,1,'2014-06-16 11:05:50','2014-06-16 11:05:50',4,4),
	(450,'subheadline','Alchemy::EssenceText',130,197,1,'2014-06-16 11:06:23','2014-06-16 11:06:23',4,4),
	(451,'bigtext','Alchemy::EssenceRichtext',60,199,1,'2014-06-16 11:06:42','2014-06-16 11:06:42',4,4),
	(459,'subheadline','Alchemy::EssenceText',134,206,1,'2014-06-16 11:11:44','2014-06-16 11:11:44',4,4),
	(460,'bigtext','Alchemy::EssenceRichtext',64,207,1,'2014-06-16 11:11:56','2016-11-18 15:01:19',4,1),
	(461,'subheadline','Alchemy::EssenceText',135,208,1,'2014-06-16 11:14:34','2014-06-16 11:14:34',4,4),
	(464,'headline','Alchemy::EssenceText',137,211,1,'2014-06-16 11:15:33','2014-06-16 11:15:33',4,4),
	(465,'features','Alchemy::EssenceRichtext',66,211,1,'2014-06-16 11:15:33','2014-06-16 11:15:33',4,4),
	(468,'bigtext','Alchemy::EssenceRichtext',68,214,1,'2014-06-30 21:01:09','2016-11-18 14:57:21',1,1),
	(469,'subheadline','Alchemy::EssenceText',139,215,1,'2014-06-30 21:01:16','2014-06-30 21:01:16',1,1),
	(470,'bigtext','Alchemy::EssenceRichtext',69,216,1,'2014-06-30 21:01:22','2014-10-23 14:40:24',1,1),
	(471,'name','Alchemy::EssenceText',140,217,1,'2014-06-30 21:01:40','2015-09-24 16:19:43',1,4),
	(472,'description','Alchemy::EssenceRichtext',70,217,1,'2014-06-30 21:01:40','2015-09-24 16:19:43',1,4),
	(473,'default_days','Alchemy::EssenceText',141,217,2,'2014-06-30 21:01:40','2015-09-24 16:19:43',1,4),
	(474,'min_days','Alchemy::EssenceText',142,217,3,'2014-06-30 21:01:40','2015-09-24 16:19:44',1,4),
	(475,'amount_per_day','Alchemy::EssenceText',143,217,4,'2014-06-30 21:01:40','2015-09-24 16:19:44',1,4),
	(476,'payment','Alchemy::EssenceSelect',1,217,1,'2014-06-30 21:01:40','2015-09-24 16:19:43',1,4),
	(477,'success_page','Alchemy::EssenceSelect',2,217,2,'2014-06-30 21:01:40','2015-09-24 16:19:44',1,4),
	(478,'abort_page','Alchemy::EssenceSelect',3,217,3,'2014-06-30 21:01:40','2015-09-24 16:19:44',1,4),
	(479,'name','Alchemy::EssenceText',144,218,1,'2014-06-30 21:01:52','2015-09-24 16:20:05',1,4),
	(480,'description','Alchemy::EssenceRichtext',71,218,1,'2014-06-30 21:01:52','2015-09-24 16:20:06',1,4),
	(481,'default_days','Alchemy::EssenceText',145,218,2,'2014-06-30 21:01:52','2015-09-24 16:20:06',1,4),
	(482,'min_days','Alchemy::EssenceText',146,218,3,'2014-06-30 21:01:52','2015-09-24 16:20:07',1,4),
	(483,'amount_per_day','Alchemy::EssenceText',147,218,4,'2014-06-30 21:01:52','2015-09-24 16:20:07',1,4),
	(484,'payment','Alchemy::EssenceSelect',4,218,1,'2014-06-30 21:01:52','2015-09-24 16:20:06',1,4),
	(485,'success_page','Alchemy::EssenceSelect',5,218,2,'2014-06-30 21:01:52','2015-09-24 16:20:07',1,4),
	(486,'abort_page','Alchemy::EssenceSelect',6,218,3,'2014-06-30 21:01:52','2015-09-24 16:20:07',1,4),
	(487,'name','Alchemy::EssenceText',148,219,1,'2014-06-30 21:02:02','2015-09-24 16:20:24',1,4),
	(488,'description','Alchemy::EssenceRichtext',72,219,1,'2014-06-30 21:02:02','2015-09-24 16:20:24',1,4),
	(489,'default_days','Alchemy::EssenceText',149,219,2,'2014-06-30 21:02:02','2015-09-24 16:20:24',1,4),
	(490,'min_days','Alchemy::EssenceText',150,219,3,'2014-06-30 21:02:02','2015-09-24 16:20:24',1,4),
	(491,'amount_per_day','Alchemy::EssenceText',151,219,4,'2014-06-30 21:02:02','2015-09-24 16:20:24',1,4),
	(492,'payment','Alchemy::EssenceSelect',7,219,1,'2014-06-30 21:02:02','2015-09-24 16:20:24',1,4),
	(493,'success_page','Alchemy::EssenceSelect',8,219,2,'2014-06-30 21:02:02','2015-09-24 16:20:24',1,4),
	(494,'abort_page','Alchemy::EssenceSelect',9,219,3,'2014-06-30 21:02:02','2015-09-24 16:20:24',1,4),
	(495,'headline','Alchemy::EssenceText',152,220,1,'2014-07-01 05:46:27','2014-07-01 05:46:27',4,4),
	(497,'bigtext','Alchemy::EssenceRichtext',73,222,1,'2014-07-01 05:47:03','2014-07-01 05:47:03',4,4),
	(498,'subheadline','Alchemy::EssenceText',154,223,1,'2014-07-01 05:47:07','2014-07-01 05:47:07',4,4),
	(499,'bigtext','Alchemy::EssenceRichtext',74,224,1,'2014-07-01 05:48:02','2014-07-01 05:48:02',4,4),
	(500,'headline','Alchemy::EssenceText',155,225,1,'2014-07-01 05:50:01','2014-07-01 05:50:01',4,4),
	(501,'bigtext','Alchemy::EssenceRichtext',75,226,1,'2014-07-01 05:50:05','2014-07-01 05:50:05',4,4),
	(502,'headline','Alchemy::EssenceText',156,227,1,'2014-09-03 12:41:26','2014-09-03 12:41:31',1,1),
	(503,'bigtext','Alchemy::EssenceRichtext',76,228,1,'2014-09-03 12:41:35','2014-11-27 10:58:31',1,1),
	(504,'subheadline','Alchemy::EssenceText',157,229,1,'2014-10-23 14:37:42','2014-10-23 14:37:57',1,1),
	(505,'subheadline','Alchemy::EssenceText',158,230,1,'2015-03-17 13:44:27','2015-03-17 13:47:02',1,1),
	(506,'bigtext','Alchemy::EssenceRichtext',77,231,1,'2015-03-17 13:44:53','2016-11-18 15:02:43',1,1),
	(507,'headline','Alchemy::EssenceText',159,232,1,'2015-09-24 20:16:14','2015-09-24 20:17:44',1,1),
	(508,'text','Alchemy::EssenceRichtext',78,232,1,'2015-09-24 20:16:14','2015-09-24 20:17:45',1,1),
	(509,'email_label','Alchemy::EssenceText',160,232,2,'2015-09-24 20:16:14','2015-09-24 20:17:45',1,1),
	(510,'button_label','Alchemy::EssenceText',161,232,3,'2015-09-24 20:16:14','2015-09-24 20:17:45',1,1),
	(511,'headline','Alchemy::EssenceText',162,233,1,'2015-09-24 20:27:06','2015-09-24 20:28:13',1,1),
	(512,'text','Alchemy::EssenceRichtext',79,233,1,'2015-09-24 20:27:06','2015-09-24 20:28:13',1,1),
	(513,'email_label','Alchemy::EssenceText',163,233,2,'2015-09-24 20:27:06','2015-09-24 20:28:13',1,1),
	(514,'button_label','Alchemy::EssenceText',164,233,3,'2015-09-24 20:27:06','2015-09-24 20:28:13',1,1),
	(515,'headline','Alchemy::EssenceText',165,234,1,'2015-09-24 20:28:54','2015-09-24 20:30:02',1,1),
	(516,'text','Alchemy::EssenceRichtext',80,234,1,'2015-09-24 20:28:54','2015-09-24 20:30:02',1,1),
	(517,'email_label','Alchemy::EssenceText',166,234,2,'2015-09-24 20:28:54','2015-09-24 20:30:02',1,1),
	(518,'button_label','Alchemy::EssenceText',167,234,3,'2015-09-24 20:28:54','2015-09-24 20:30:02',1,1),
	(519,'headline','Alchemy::EssenceText',168,235,1,'2015-09-24 20:31:07','2015-09-24 20:34:14',1,1),
	(520,'text','Alchemy::EssenceRichtext',81,235,1,'2015-09-24 20:31:08','2015-09-24 20:34:14',1,1),
	(521,'email_label','Alchemy::EssenceText',169,235,2,'2015-09-24 20:31:08','2015-09-24 20:34:14',1,1),
	(522,'button_label','Alchemy::EssenceText',170,235,3,'2015-09-24 20:31:08','2015-09-24 20:34:14',1,1),
	(523,'headline','Alchemy::EssenceText',171,236,1,'2015-09-24 20:55:37','2015-09-24 20:56:07',1,1),
	(524,'text','Alchemy::EssenceRichtext',82,236,1,'2015-09-24 20:55:37','2015-09-24 20:56:07',1,1),
	(525,'email_label','Alchemy::EssenceText',172,236,2,'2015-09-24 20:55:38','2015-09-24 20:56:07',1,1),
	(526,'button_label','Alchemy::EssenceText',173,236,3,'2015-09-24 20:55:38','2015-09-24 20:56:07',1,1);

/*!40000 ALTER TABLE `alchemy_contents` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_elements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_elements`;

CREATE TABLE `alchemy_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `public` tinyint(1) DEFAULT '1',
  `folded` tinyint(1) DEFAULT '0',
  `unique` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `cell_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_elements_on_page_id_and_position` (`page_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_elements` WRITE;
/*!40000 ALTER TABLE `alchemy_elements` DISABLE KEYS */;

INSERT INTO `alchemy_elements` (`id`, `name`, `position`, `page_id`, `public`, `folded`, `unique`, `created_at`, `updated_at`, `creator_id`, `updater_id`, `cell_id`)
VALUES
	(4,'text',7,4,1,1,0,'2011-09-28 09:13:32','2011-11-29 22:31:51',1,2,1),
	(6,'text',9,4,1,1,0,'2011-09-28 09:15:25','2011-11-29 22:31:53',1,2,1),
	(7,'slide',1,4,1,1,0,'2011-09-28 11:04:19','2014-09-03 19:21:33',1,1,3),
	(37,'subheadline',4,4,1,1,0,'2011-10-08 23:42:13','2011-11-29 22:31:45',2,1,1),
	(38,'features_table',1,4,1,1,1,'2011-10-08 23:47:02','2015-09-24 20:18:10',2,1,2),
	(40,'text',5,4,1,0,0,'2011-10-08 23:53:24','2014-12-10 18:38:04',2,1,1),
	(41,'subheadline',6,4,1,0,0,'2011-10-08 23:54:06','2014-03-23 20:06:05',2,1,1),
	(42,'subheadline',8,4,1,1,0,'2011-10-08 23:55:17','2011-10-08 23:55:24',2,2,1),
	(45,'footer_column',3,18,1,0,0,'2011-10-09 00:09:52','2016-03-22 22:54:25',2,1,NULL),
	(66,'text',3,15,1,0,0,'2011-10-09 01:10:24','2013-02-19 16:14:21',2,1,25),
	(73,'features_table',3,15,1,0,1,'2011-10-09 01:42:12','2015-09-22 20:26:30',2,1,26),
	(79,'footer_column',1,18,1,0,0,'2011-10-11 17:16:41','2016-03-22 22:53:08',2,1,NULL),
	(80,'footer_column',2,18,1,0,0,'2011-10-11 17:20:28','2015-09-22 20:30:10',2,1,NULL),
	(95,'text',2,4,0,1,0,'2011-10-28 21:31:24','2011-11-10 21:45:14',2,1,2),
	(96,'slide',3,4,1,0,0,'2011-10-28 21:34:55','2014-09-03 19:27:42',2,1,3),
	(106,'headline',6,37,1,1,0,'2011-11-09 15:16:28','2013-02-19 16:37:33',2,1,NULL),
	(108,'text',8,37,1,1,0,'2011-11-09 16:08:49','2013-02-19 16:37:33',2,1,NULL),
	(112,'text',11,37,1,1,0,'2011-11-09 16:12:07','2013-02-23 10:26:04',2,1,NULL),
	(117,'slide',2,4,1,0,0,'2011-11-10 21:43:13','2014-09-03 19:26:52',1,1,3),
	(124,'screenshot',9,37,1,1,0,'2011-11-10 22:40:54','2013-02-23 10:26:45',1,1,NULL),
	(127,'subheadline',13,37,1,1,0,'2011-11-10 22:47:12','2013-02-19 16:37:33',1,1,NULL),
	(128,'subheadline',10,37,1,1,0,'2011-11-10 22:47:42','2013-02-23 10:26:35',1,1,NULL),
	(129,'subheadline',7,37,1,1,0,'2011-11-10 22:48:32','2013-02-19 16:37:33',1,1,NULL),
	(130,'text',14,37,1,1,0,'2011-11-10 22:49:49','2013-02-23 10:26:09',1,1,NULL),
	(166,'screenshot',12,37,1,1,0,'2011-12-21 08:41:25','2013-02-23 10:26:06',NULL,1,NULL),
	(173,'slide',1,35,1,0,0,'2013-02-19 14:40:01','2013-02-19 14:40:01',1,1,93),
	(176,'slide',2,35,1,0,0,'2013-02-19 15:41:26','2013-02-19 15:41:26',1,1,93),
	(177,'slide',3,35,1,0,0,'2013-02-19 15:41:53','2013-02-19 15:41:53',1,1,93),
	(180,'slide',1,37,1,0,0,'2013-02-19 15:54:37','2013-02-19 16:07:16',1,1,115),
	(181,'slide',2,37,1,0,0,'2013-02-19 15:55:23','2013-02-19 16:03:41',1,1,115),
	(182,'slide',3,37,1,1,0,'2013-02-19 15:56:15','2013-02-19 16:03:40',1,1,115),
	(183,'slide',4,37,1,0,0,'2013-02-19 16:00:47','2013-02-19 16:00:47',1,1,115),
	(184,'slide',5,37,1,0,0,'2013-02-19 16:04:20','2013-02-19 16:04:20',1,1,115),
	(185,'slide',1,15,1,0,0,'2013-02-19 16:15:20','2013-02-19 16:15:20',1,1,27),
	(186,'screenshot',15,37,1,1,0,'2013-02-19 16:21:13','2013-02-23 10:26:21',1,1,NULL),
	(187,'subheadline',16,37,1,0,0,'2013-02-19 16:34:11','2013-02-19 16:37:33',1,1,NULL),
	(188,'text',17,37,1,0,0,'2013-02-19 16:34:24','2013-02-19 16:37:33',1,1,NULL),
	(189,'screenshot',18,37,1,0,0,'2013-02-19 16:35:24','2013-02-19 16:37:33',1,1,NULL),
	(191,'headline',1,4,1,0,0,'2013-02-20 01:19:28','2013-02-20 01:19:28',1,1,NULL),
	(192,'headline',1,35,1,1,0,'2013-02-20 01:20:16','2014-10-23 14:38:04',1,1,NULL),
	(193,'headline',1,15,1,0,0,'2013-02-20 01:21:05','2013-02-20 01:21:05',1,1,NULL),
	(194,'text',4,15,1,0,0,'2014-03-05 23:15:44','2015-09-22 20:27:16',1,1,25),
	(196,'headline',1,49,1,0,0,'2014-06-16 11:05:50','2015-10-13 21:37:15',4,1,NULL),
	(197,'subheadline',1,49,1,0,0,'2014-06-16 11:06:23','2016-11-18 15:03:04',4,1,116),
	(199,'text',2,49,1,0,0,'2014-06-16 11:06:42','2016-11-18 15:03:07',4,1,116),
	(206,'subheadline',3,49,1,1,0,'2014-06-16 11:11:44','2014-06-16 11:14:47',4,4,116),
	(207,'text',4,49,1,0,0,'2014-06-16 11:11:56','2016-11-18 15:01:19',4,1,116),
	(208,'subheadline',NULL,49,0,1,0,'2014-06-16 11:14:34','2016-11-18 15:02:24',4,1,116),
	(211,'features_table',1,49,1,1,1,'2014-06-16 11:15:33','2014-06-16 12:27:31',4,4,117),
	(214,'text',3,35,1,0,0,'2014-06-30 21:01:09','2016-11-18 14:57:21',1,1,NULL),
	(215,'subheadline',5,35,1,1,0,'2014-06-30 21:01:16','2014-10-23 14:38:04',1,1,NULL),
	(216,'text',6,35,1,0,0,'2014-06-30 21:01:22','2014-10-23 14:40:24',1,1,NULL),
	(217,'package',1,35,1,0,0,'2014-06-30 21:01:40','2015-09-24 16:19:44',1,4,119),
	(218,'package',2,35,1,0,0,'2014-06-30 21:01:52','2015-09-24 16:20:07',1,4,119),
	(219,'package',3,35,1,0,0,'2014-06-30 21:02:02','2015-09-24 16:20:24',1,4,119),
	(220,'headline',1,50,1,1,0,'2014-07-01 05:46:27','2014-07-01 05:46:43',4,4,NULL),
	(222,'text',2,50,1,1,0,'2014-07-01 05:47:03','2014-07-01 05:47:55',4,4,NULL),
	(223,'subheadline',3,50,1,1,0,'2014-07-01 05:47:07','2014-07-01 05:47:58',4,4,NULL),
	(224,'text',4,50,1,1,0,'2014-07-01 05:48:02','2014-07-01 05:49:42',4,4,NULL),
	(225,'headline',1,51,1,0,0,'2014-07-01 05:50:01','2014-07-01 05:50:01',4,4,NULL),
	(226,'text',2,51,1,0,0,'2014-07-01 05:50:05','2014-07-01 05:50:05',4,4,NULL),
	(227,'headline',1,53,1,0,0,'2014-09-03 12:41:26','2014-09-03 12:41:31',1,1,NULL),
	(228,'text',2,53,1,0,0,'2014-09-03 12:41:35','2014-11-27 10:58:31',1,1,NULL),
	(229,'subheadline',2,35,1,0,0,'2014-10-23 14:37:42','2014-10-23 14:38:04',1,1,NULL),
	(230,'subheadline',5,49,1,0,0,'2015-03-17 13:44:27','2015-03-17 13:47:02',1,1,116),
	(231,'text',6,49,1,0,0,'2015-03-17 13:44:53','2016-11-18 15:02:43',1,1,116),
	(232,'newsletter',3,4,1,0,1,'2015-09-24 20:16:14','2015-09-24 20:17:45',1,1,2),
	(233,'newsletter',19,37,1,0,1,'2015-09-24 20:27:05','2015-09-24 20:28:13',1,1,NULL),
	(234,'newsletter',4,35,1,0,1,'2015-09-24 20:28:54','2015-09-24 20:30:02',1,1,NULL),
	(235,'newsletter',5,15,1,0,1,'2015-09-24 20:31:07','2015-09-24 20:34:14',1,1,25),
	(236,'newsletter',7,49,1,0,1,'2015-09-24 20:55:37','2015-09-24 20:56:07',1,1,116);

/*!40000 ALTER TABLE `alchemy_elements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_elements_alchemy_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_elements_alchemy_pages`;

CREATE TABLE `alchemy_elements_alchemy_pages` (
  `element_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_elements_alchemy_pages` WRITE;
/*!40000 ALTER TABLE `alchemy_elements_alchemy_pages` DISABLE KEYS */;

INSERT INTO `alchemy_elements_alchemy_pages` (`element_id`, `page_id`)
VALUES
	(4,4),
	(6,4),
	(7,4),
	(37,4),
	(38,4),
	(40,4),
	(41,4),
	(42,4),
	(45,4),
	(58,27),
	(56,27),
	(59,27),
	(60,27),
	(61,27),
	(62,27),
	(63,27),
	(64,27),
	(57,27),
	(45,27),
	(45,15),
	(45,31),
	(66,15),
	(73,15),
	(75,31),
	(76,31),
	(77,31),
	(45,29),
	(45,33),
	(79,27),
	(79,4),
	(80,4),
	(80,27),
	(79,29),
	(80,29),
	(79,31),
	(80,31),
	(79,33),
	(80,33),
	(83,33),
	(79,15),
	(80,15),
	(79,34),
	(80,34),
	(45,34),
	(88,34),
	(89,34),
	(90,34),
	(79,35),
	(80,35),
	(45,35),
	(95,4),
	(96,4),
	(97,27),
	(98,34),
	(78,27),
	(81,27),
	(46,27),
	(78,33),
	(81,33),
	(46,33),
	(78,34),
	(81,34),
	(46,34),
	(78,31),
	(81,31),
	(46,31),
	(78,29),
	(81,29),
	(46,29),
	(101,29),
	(78,35),
	(81,35),
	(46,35),
	(99,34),
	(100,34),
	(104,33),
	(79,37),
	(80,37),
	(45,37),
	(106,37),
	(108,37),
	(112,37),
	(78,37),
	(81,37),
	(46,37),
	(117,4),
	(124,37),
	(127,37),
	(128,37),
	(129,37),
	(130,37),
	(166,37),
	(173,35),
	(176,35),
	(177,35),
	(180,37),
	(181,37),
	(182,37),
	(183,37),
	(184,37),
	(185,15),
	(186,37),
	(187,37),
	(188,37),
	(189,37),
	(191,4),
	(192,35),
	(193,15),
	(79,18),
	(80,18),
	(45,18),
	(194,15),
	(79,49),
	(80,49),
	(45,49),
	(196,49),
	(197,49),
	(199,49),
	(206,49),
	(207,49),
	(208,49),
	(211,49),
	(214,35),
	(215,35),
	(216,35),
	(217,35),
	(218,35),
	(219,35),
	(79,50),
	(80,50),
	(45,50),
	(220,50),
	(222,50),
	(223,50),
	(224,50),
	(79,51),
	(80,51),
	(45,51),
	(225,51),
	(226,51),
	(79,53),
	(80,53),
	(45,53),
	(227,53),
	(228,53),
	(229,35),
	(230,49),
	(231,49),
	(79,3),
	(80,3),
	(45,3),
	(232,4),
	(233,37),
	(234,35),
	(235,15),
	(236,49),
	(137,42),
	(138,42),
	(139,42),
	(140,42),
	(141,42),
	(142,42),
	(143,42),
	(133,42),
	(78,42),
	(81,42),
	(46,42),
	(79,54),
	(80,54),
	(45,54),
	(79,52),
	(80,52),
	(45,52);

/*!40000 ALTER TABLE `alchemy_elements_alchemy_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_essence_audios
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_essence_audios`;

CREATE TABLE `alchemy_essence_audios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_id` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT '400',
  `height` int(11) DEFAULT '300',
  `show_eq` tinyint(1) DEFAULT '1',
  `show_navigation` tinyint(1) DEFAULT '1',
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table alchemy_essence_booleans
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_essence_booleans`;

CREATE TABLE `alchemy_essence_booleans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_essence_booleans_on_value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table alchemy_essence_dates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_essence_dates`;

CREATE TABLE `alchemy_essence_dates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table alchemy_essence_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_essence_files`;

CREATE TABLE `alchemy_essence_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `css_class` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table alchemy_essence_flashes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_essence_flashes`;

CREATE TABLE `alchemy_essence_flashes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_id` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT '400',
  `height` int(11) DEFAULT '300',
  `player_version` varchar(255) DEFAULT '9.0.28',
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table alchemy_essence_htmls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_essence_htmls`;

CREATE TABLE `alchemy_essence_htmls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` text,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table alchemy_essence_pictures
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_essence_pictures`;

CREATE TABLE `alchemy_essence_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_id` int(11) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alt_tag` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `link_class_name` varchar(255) DEFAULT NULL,
  `link_title` varchar(255) DEFAULT NULL,
  `css_class` varchar(255) DEFAULT NULL,
  `link_target` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `crop_from` varchar(255) DEFAULT NULL,
  `crop_size` varchar(255) DEFAULT NULL,
  `render_size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_essence_pictures` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_pictures` DISABLE KEYS */;

INSERT INTO `alchemy_essence_pictures` (`id`, `picture_id`, `caption`, `title`, `alt_tag`, `link`, `link_class_name`, `link_title`, `css_class`, `link_target`, `creator_id`, `updater_id`, `created_at`, `updated_at`, `crop_from`, `crop_size`, `render_size`)
VALUES
	(97,86,NULL,NULL,NULL,'','','',NULL,'',2,1,'2011-10-28 21:34:55','2014-09-03 19:25:43','425x302','621x414',NULL),
	(101,84,NULL,NULL,NULL,'','','',NULL,'',1,1,'2011-11-10 21:42:43','2014-09-03 19:19:54','0x0','1312x874',NULL),
	(102,85,NULL,NULL,NULL,'','','',NULL,'',1,1,'2011-11-10 21:43:13','2014-09-03 19:26:08','202x88','1031x687',NULL),
	(103,63,'Live preview of your site.','','','','','',NULL,'',1,1,'2011-11-10 22:40:54','2013-02-19 17:17:06','128x62','830x516',NULL),
	(107,83,'Upload a picture once. Assign it everywhere.','','','','','',NULL,'',NULL,1,'2011-12-21 08:41:25','2013-02-19 16:33:03','0x0','1000x622',NULL),
	(112,74,NULL,NULL,NULL,'','','',NULL,'',1,1,'2013-02-19 14:40:01','2013-02-19 15:41:16','','',NULL),
	(115,73,NULL,NULL,NULL,'','','',NULL,'',1,1,'2013-02-19 15:41:26','2013-02-19 15:41:32','','',NULL),
	(116,75,NULL,NULL,NULL,'','','',NULL,'',1,1,'2013-02-19 15:41:53','2013-02-19 15:41:58','','',NULL),
	(120,65,NULL,NULL,NULL,'','','',NULL,'',1,1,'2013-02-19 15:54:37','2013-02-19 15:55:05','','',NULL),
	(121,63,NULL,NULL,NULL,'','','',NULL,'',1,1,'2013-02-19 15:55:23','2013-02-19 16:04:01','128x27','831x553',NULL),
	(122,80,NULL,NULL,NULL,'','','',NULL,'',1,1,'2013-02-19 15:56:15','2013-02-19 16:03:12','216x120','581x388',NULL),
	(123,78,NULL,NULL,NULL,'','','',NULL,'',1,1,'2013-02-19 16:00:47','2013-02-19 16:01:57','261x190','480x320',NULL),
	(124,79,NULL,NULL,NULL,'','','',NULL,'',1,1,'2013-02-19 16:04:20','2013-02-19 16:06:44','38x68','660x440',NULL),
	(125,81,NULL,NULL,NULL,'','','',NULL,'',1,1,'2013-02-19 16:15:20','2013-02-19 16:16:28','','',NULL),
	(126,82,'Manage tons of pictures with tags and filters.','','','','','',NULL,'',1,1,'2013-02-19 16:21:13','2013-02-19 17:13:18','40x26','921x573',NULL),
	(127,78,NULL,NULL,NULL,'','','',NULL,'',1,1,'2013-02-19 16:35:24','2013-02-19 17:15:22','40x85','657x409',NULL),
	(128,80,'Crop the picture right in the browser.','','','','','',NULL,'',1,1,'2013-02-19 17:12:20','2013-02-19 17:12:53','192x123','619x385',NULL),
	(129,67,'Drag\'n\'Drop multiple file upload.','','','','','',NULL,'',1,1,'2013-02-19 17:14:01','2013-02-19 17:14:42','154x123','719x447',NULL);

/*!40000 ALTER TABLE `alchemy_essence_pictures` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_essence_richtexts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_essence_richtexts`;

CREATE TABLE `alchemy_essence_richtexts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text,
  `stripped_body` text,
  `public` tinyint(1) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_essence_richtexts` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_richtexts` DISABLE KEYS */;

INSERT INTO `alchemy_essence_richtexts` (`id`, `body`, `stripped_body`, `public`, `creator_id`, `updater_id`, `created_at`, `updated_at`)
VALUES
	(2,'<p>The content manager mustn&lsquo;t be able to change anything but the content and some basic text formatting. The content manager shouldn&lsquo;t care about headline formatting, image positioning or resizing. The developer should take care of this!</p>','The content manager mustn&lsquo;t be able to change anything but the content and some basic text formatting. The content manager shouldn&lsquo;t care about headline formatting, image positioning or resizing. The developer should take care of this!',1,1,2,'2011-09-28 09:13:32','2011-10-08 23:46:50'),
	(3,'<p>We split the page into logical parts like headlines, paragraphs, images, etc. The only thing we store in the database is text, ids of images and richtext content. Nothing else. No markup (besides basic text formatting inside the richtext elements), no styling, no layout. Pure content!</p>\r\n<p>This gives the webdeveloper the power and flexibility to implement any kind of layout with the insurance that the content manager is not able to break up the layout.</p>','We split the page into logical parts like headlines, paragraphs, images, etc. The only thing we store in the database is text, ids of images and richtext content. Nothing else. No markup (besides basic text formatting inside the richtext elements), no styling, no layout. Pure content!\r\nThis gives the webdeveloper the power and flexibility to implement any kind of layout with the insurance that the content manager is not able to break up the layout.',1,1,2,'2011-09-28 09:15:25','2011-10-08 23:46:35'),
	(14,'<div>\r\n<ul>\r\n<li>Highly flexible Templating System</li>\r\n<li>User centric UI</li>\r\n<li>Multilingual Websites</li>\r\n<li>Multisite Management</li>\r\n<li>Taggable Everything</li>\r\n<li>Search Engine Friendly</li>\r\n<li>User Access Control</li>\r\n<li>Fulltext Search Engine</li>\r\n<li>Contact Forms</li>\r\n<li>Downloadable Attachments</li>\r\n<li>Powerful Image Processing</li>\r\n<li>Extendable Through Rails Engines</li>\r\n<li>Flexible Template Caching</li>\r\n<li>Admin Interface For Your Resource Controllers</li>\r\n</ul>\r\n</div>','\r\n\r\nHighly flexible Templating System\r\nUser centric UI\r\nMultilingual Websites\r\nMultisite Management\r\nTaggable Everything\r\nSearch Engine Friendly\r\nUser Access Control\r\nFulltext Search Engine\r\nContact Forms\r\nDownloadable Attachments\r\nPowerful Image Processing\r\nExtendable Through Rails Engines\r\nFlexible Template Caching\r\nAdmin Interface For Your Resource Controllers\r\n\r\n',1,2,1,'2011-10-08 23:47:02','2014-09-03 19:31:56'),
	(15,'<div>\r\n<div id=\"text_18\" class=\"text\">\r\n<p>Most content management systems store content of a page in a body column in the pages table. This is easy to develop and the user manages the content inside one of the fancy new Javascript based wysiwyg processors. Formatting, image placement, styling and positioning of the content is in the hand of the end-user.</p>\r\n</div>\r\n</div>','\r\n\r\nMost content management systems store content of a page in a body column in the pages table. This is easy to develop and the user manages the content inside one of the fancy new Javascript based wysiwyg processors. Formatting, image placement, styling and positioning of the content is in the hand of the end-user.\r\n\r\n',1,2,1,'2011-10-08 23:53:24','2011-11-10 21:27:07'),
	(17,'<p><a class=\"external\" title=\"Alchemy Sourcecode\" href=\"https://github.com/AlchemyCMS/alchemy_cms\" target=\"_blank\" data-link-target=\"blank\">Sourcecode</a><br><a class=\"external\" title=\"Alchemy API-Documentation\" href=\"http://www.rubydoc.info/github/AlchemyCMS/alchemy_cms\" target=\"_blank\" data-link-target=\"blank\">API-Documentation</a><br><a class=\"external\" title=\"Alchemy Issue Tracker\" href=\"https://github.com/AlchemyCMS/alchemy_cms/issues\" target=\"_blank\" data-link-target=\"blank\">Issue-Tracking<br></a></p>\r\n<p>Join us on Slack</p>\r\n<script src=\"//slack.alchemy-cms.com/slackin.js\" async=\"\" defer=\"defer\"></script>','SourcecodeAPI-DocumentationIssue-Tracking\r\nJoin us on Slack\r\n',1,2,1,'2011-10-09 00:09:52','2016-03-22 22:54:25'),
	(27,'<p>We have built a online demo so you can test drive Alchemy.</p>\r\n<p>In the demo you can test almost every functionality of Alchemy which is applicable for this demo website.</p>\r\n<p>Of course, this is not every feature Alchemy has.</p>\r\n<p>This is not everything Alchemy can do, but is is a great start to see what it can do for you and more importantly hoe it feels to use it.</p>','We have built a online demo so you can test drive Alchemy.\r\nIn the demo you can test almost every functionality of Alchemy which is applicable for this demo website.\r\nOf course, this is not every feature Alchemy has.\r\nThis is not everything Alchemy can do, but is is a great start to see what it can do for you and more importantly hoe it feels to use it.',1,2,1,'2011-10-09 01:10:24','2013-02-19 16:15:09'),
	(30,'<p><strong>See the frontend</strong></p>\r\n<p><a class=\"external\" title=\"Alchemy CMS online demo frontend\" href=\"https://demo.alchemy-cms.com\" target=\"_blank\" data-link-target=\"blank\">https://demo.alchemy-cms.com</a></p>\r\n<p><strong>See the backend <strong>as an administrator</strong></strong></p>\r\n<p><a class=\"external\" title=\"Alchemy CMS online demo admin\" href=\"https://demo.alchemy-cms.com/admin\" target=\"_blank\" data-link-target=\"blank\">https://demo.alchemy-cms.com/admin</a></p>\r\n<p>Username: demo<br>Password: demo123</p>\r\n<h3>Try the Spree demo</h3>\r\n<p><strong>Frontend</strong></p>\r\n<p><a class=\"external\" href=\"http://spree.alchemy-cms.com\" target=\"_blank\" data-link-target=\"blank\">http://spree.alchemy-cms.com</a></p>\r\n<p><strong>Backend</strong></p>\r\n<p><a class=\"external\" href=\"http://spree.alchemy-cms.com/admin\" target=\"_blank\" data-link-target=\"blank\">http://spree.alchemy-cms.com/admin</a></p>\r\n<p>Username: demo<br>Password: demo123</p>','See the frontend\r\nhttps://demo.alchemy-cms.com\r\nSee the backend as an administrator\r\nhttps://demo.alchemy-cms.com/admin\r\nUsername: demoPassword: demo123\r\nTry the Spree demo\r\nFrontend\r\nhttp://spree.alchemy-cms.com\r\nBackend\r\nhttp://spree.alchemy-cms.com/admin\r\nUsername: demoPassword: demo123',1,2,1,'2011-10-09 01:42:12','2015-09-22 20:26:30'),
	(35,'<p>If you love working with Alchemy CMS, like us, share it with your colleagues and friends. Get connected with other people using Alchemy CMS in your social network.</p>','If you love working with Alchemy CMS, like us, share it with your colleagues and friends. Get connected with other people using Alchemy CMS in your social network.',1,2,1,'2011-10-11 17:16:41','2016-03-22 22:53:08'),
	(36,'<p>Alchemy CMS was originally created by Thomas von Deyen and Carsten Fregin and is currently developed by <a class=\"external\" title=\"software development\" href=\"https://magiclabs.de\" target=\"_blank\" data-link-target=\"blank\">magic labs*</a> and <a class=\"external\" href=\"https://github.com/AlchemyCMS/alchemy_cms/graphs/contributors\" target=\"_blank\" data-link-target=\"blank\">many contributers</a> who are investing their time to build this great piece of software.</p>\r\n<p>Hosting sponsored by <a class=\"external\" href=\"http://www.railshoster.com\" target=\"_blank\" data-link-target=\"blank\">RailsHoster</a>. Thanks!<br>Alchemy &lt;3 you. </p>','Alchemy CMS was originally created by Thomas von Deyen and Carsten Fregin and is currently developed by magic labs* and many contributers who are investing their time to build this great piece of software.\r\nHosting sponsored by RailsHoster. Thanks!Alchemy &lt;3 you. ',1,2,1,'2011-10-11 17:20:28','2015-09-22 20:30:10'),
	(40,'<div>\r\n<div>\r\n<ul>\r\n<li><strong>Highly flexible Templating<br /></strong>Webpages are splitted up into logical content-parts.<br />Every design is possible. No templating or theming restrictions.&nbsp;Even Flash&reg; content management is possible<br />&nbsp;</li>\r\n<li><strong>Gorgious End-User centric interface<br /></strong>You only manage the content -&nbsp;The rest gets out of your way -&nbsp;<em><em>What you need is what you get<br /></em></em>No markup editors and other meta programming tools.<em><br />&nbsp;</em></li>\r\n<li><strong>Multilingual<br /></strong>Create as many (complete independent) language trees as you want.&nbsp;URL based language switching.<br /><strong><br /></strong></li>\r\n<li><strong>Search Engine Friendly<br /></strong>Every Part of SEO is manageable by the user<br />Human readable urls (multilingual)<br />Automatic XML Sitemap generation<br /><strong><br /></strong></li>\r\n<li><strong>User Access Control<br /></strong>Rolebased Authentification (RBAS)<br />Protect pages for restricted access<br /><strong><br /></strong></li>\r\n<li><strong>Fulltext Search Engine<br /></strong>Fast Fulltext Search Engine build right in<br />With excerpts and Searchword Highlighting<br /><strong><br /></strong></li>\r\n<li><strong>Contactforms<br /></strong>With validations<br /><strong><br /></strong></li>\r\n<li><strong>Attachments<br /></strong>Provide Downloads<br /><strong><br /></strong></li>\r\n<li><strong>Powerful image rendering<br /></strong>Automatically image resizing.<br />Image cropping via graphical userinterface.<br />Borders, text, rotation and much more via ImageMagick&reg; processing (i.e. Polaroid-Effect, etc.)<br />The image result gets cached for maximum speed!<br /><strong><br /></strong></li>\r\n<li><strong>Extendable<br /></strong>Flexible Plugin DSL (through Rails Engines) allows you to add custom plugins into Alchemy<br /><strong><br /></strong></li>\r\n<li><strong>Caching<br /></strong>Fast and hassle free caching mechanism</li>\r\n</ul>\r\n</div>\r\n</div>','\r\n\r\n\r\nHighly flexible TemplatingWebpages are splitted up into logical content-parts.Every design is possible. No templating or theming restrictions.&nbsp;Even Flash&reg; content management is possible&nbsp;\r\nGorgious End-User centric interfaceYou only manage the content -&nbsp;The rest gets out of your way -&nbsp;What you need is what you getNo markup editors and other meta programming tools.&nbsp;\r\nMultilingualCreate as many (complete independent) language trees as you want.&nbsp;URL based language switching.\r\nSearch Engine FriendlyEvery Part of SEO is manageable by the userHuman readable urls (multilingual)Automatic XML Sitemap generation\r\nUser Access ControlRolebased Authentification (RBAS)Protect pages for restricted access\r\nFulltext Search EngineFast Fulltext Search Engine build right inWith excerpts and Searchword Highlighting\r\nContactformsWith validations\r\nAttachmentsProvide Downloads\r\nPowerful image renderingAutomatically image resizing.Image cropping via graphical userinterface.Borders, text, rotation and much more via ImageMagick&reg; processing (i.e. Polaroid-Effect, etc.)The image result gets cached for maximum speed!\r\nExtendableFlexible Plugin DSL (through Rails Engines) allows you to add custom plugins into Alchemy\r\nCachingFast and hassle free caching mechanism\r\n\r\n\r\n',0,2,2,'2011-10-28 21:31:24','2011-10-28 21:33:37'),
	(46,'<p>With it\'s modern App-like User-Interface even non technical users can manage complex websites in an easy and intuitive way.</p>','With it\'s modern App-like User-Interface even non technical users can manage complex websites in an easy and intuitive way.',1,2,1,'2011-11-09 16:08:49','2011-11-10 21:12:34'),
	(47,'<p>You will never need an image processor again.</p>\r\n<p>With the support for ImageMagick® Technology Alchemy renders images just the size the designer ment the images to be in and caches them on disc.</p>','You will never need an image processor again.\r\nWith the support for ImageMagick® Technology Alchemy renders images just the size the designer ment the images to be in and caches them on disc.',1,2,1,'2011-11-09 16:12:07','2013-02-19 17:16:18'),
	(52,'<p>With multiple image upload support and drag\'n\'drop sorting, managing even the largest image galleries is easy.</p>','With multiple image upload support and drag\'n\'drop sorting, managing even the largest image galleries is easy.',1,1,1,'2011-11-10 22:49:49','2013-02-19 17:16:03'),
	(58,'<p>Manage mulitple sites right in Alchemy.</p>\r\n<p>Set redirects and domain aliases. All build right in your CMS.</p>','Manage mulitple sites right in Alchemy.\r\nSet redirects and domain aliases. All build right in your CMS.',NULL,1,1,'2013-02-19 16:34:24','2013-02-19 17:15:46'),
	(59,'<h3>Spree integration demo</h3>\r\n<p>Alchemy and <a class=\"external\" href=\"http://spreecommerce.com\" target=\"_blank\" data-link-target=\"blank\">Spree</a> are great friends. We tightly integrated Spree into Alchemy. </p>\r\n<p><a class=\"external\" href=\"http://spree.alchemy-cms.com/\" target=\"_blank\" data-link-target=\"blank\">Check out the demo</a>.</p>','Spree integration demo\r\nAlchemy and Spree are great friends. We tightly integrated Spree into Alchemy. \r\nCheck out the demo.',NULL,1,1,'2014-03-05 23:15:44','2014-03-05 23:18:20'),
	(60,'<p>See the <a class=\"external\" href=\"http://guides.alchemy-cms.com/\" target=\"_blank\" data-link-target=\"blank\">Alchemy CMS developer guides</a> to learn more about how to become an Alchemy expert. </p>','See the Alchemy CMS developer guides to learn more about how to become an Alchemy expert. ',NULL,4,4,'2014-06-16 11:06:42','2014-06-16 11:11:22'),
	(64,'<p>So you want the details, huh? Have a look at the <a class=\"external\" href=\"http://www.rubydoc.info/github/AlchemyCMS/alchemy_cms/\" target=\"_blank\" data-link-target=\"blank\">Alchemy CMS API documentation</a>. </p>','So you want the details, huh? Have a look at the Alchemy CMS API documentation. ',NULL,4,1,'2014-06-16 11:11:56','2016-11-18 15:01:19'),
	(66,'<ul>\r\n<li>magic labs* Blog: <a class=\"external\" href=\"http://blog.magiclabs.de/en/recap-of-the-first-alchemy-cms-user-group-berlin-2014\" target=\"_blank\" data-link-target=\"blank\">Recap of the first Alchemy CMS User Group in Berlin, June 2014</a> (with slides)</li>\r\n<li>Slideshare: <a title=\"Alchemy CMS: First User Group (Berlin)\" href=\"https://de.slideshare.net/moritzs/alchemy-cms-first-user-group-berlin\" target=\"_blank\">First Alchemy CMS User Group (June 2014)</a> <iframe style=\"border: 1px solid #CCC; border-width: 1px 1px 0; margin-bottom: 5px; max-width: 100%;\" src=\"http://www.slideshare.net/slideshow/embed_code/35850595\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" width=\"427\" height=\"356\"> </iframe></li>\r\n</ul>','\r\nmagic labs* Blog: Recap of the first Alchemy CMS User Group in Berlin, June 2014 (with slides)\r\nSlideshare: First Alchemy CMS User Group (June 2014)  \r\n',NULL,4,4,'2014-06-16 11:15:33','2014-06-16 12:17:52'),
	(68,'<p><strong><span style=\"text-decoration: underline;\">Chats</span></strong></p>\r\n<p>We have a Slack channel, where you can get help from the community.</p>\r\n<p>Please join at <a class=\"external\" href=\"http://slack.alchemy-cms.com/\" target=\"_blank\" data-link-target=\"blank\">http://slack.alchemy-cms.com/</a></p>\r\n<p><strong><span style=\"text-decoration: underline;\">Google user group</span></strong></p>\r\n<p>Our growing community discusses new features, wishes, opinions, bugs, or tests on our Google <a class=\"external\" title=\"Join the discussion in the Alchemy CMS user group.\" href=\"https://groups.google.com/group/alchemy-cms/\" target=\"_blank\" data-link-target=\"blank\">user group</a>.</p>\r\n<p>Do you have questions about using Alchemy CMS? Do you have problems installing the software? What ever, don\'t hesitate, join our community and ask your question. You are welcome!</p>\r\n<p><strong><span style=\"text-decoration: underline;\">Stack Overflow</span></strong></p>\r\n<p>If you need help from the community Stackoverflow is always a good resource. Please use the <code>alchemy-cms</code> tag, so we get notified about new questions and can try to help you quick.</p>','Chats\r\nWe have a Slack channel, where you can get help from the community.\r\nPlease join at http://slack.alchemy-cms.com/\r\nGoogle user group\r\nOur growing community discusses new features, wishes, opinions, bugs, or tests on our Google user group.\r\nDo you have questions about using Alchemy CMS? Do you have problems installing the software? What ever, don\'t hesitate, join our community and ask your question. You are welcome!\r\nStack Overflow\r\nIf you need help from the community Stackoverflow is always a good resource. Please use the alchemy-cms tag, so we get notified about new questions and can try to help you quick.',1,1,1,'2014-06-30 21:01:09','2016-11-18 14:57:21'),
	(69,'<p>If you can\'t wait for the kind community to offer their precious time, you can always get professional help and support from the Alchemy and Rails experts at magic labs*. Don\'t hesitate to contact us. We love to help.</p>','If you can\'t wait for the kind community to offer their precious time, you can always get professional help and support from the Alchemy and Rails experts at magic labs*. Don\'t hesitate to contact us. We love to help.',NULL,1,1,'2014-06-30 21:01:22','2014-10-23 14:40:24'),
	(70,'<ul>\r\n<li>Rails Basics</li>\r\n<li>Alchemy Basics</li>\r\n<li>Work on your project</li>\r\n<li>Five attendees</li>\r\n</ul>','\r\nRails Basics\r\nAlchemy Basics\r\nWork on your project\r\nFive attendees\r\n',NULL,1,4,'2014-06-30 21:01:40','2014-07-01 05:51:52'),
	(71,'<ul>\r\n<li>Development support in your sprint</li>\r\n<li>Customization</li>\r\n<li>Remote pairing</li>\r\n<li>Code reviews</li>\r\n<li>Custom module development</li>\r\n<li>Error catching and analysis</li>\r\n</ul>','\r\nDevelopment support in your sprint\r\nCustomization\r\nRemote pairing\r\nCode reviews\r\nCustom module development\r\nError catching and analysis\r\n',NULL,1,4,'2014-06-30 21:01:52','2014-07-01 05:52:23'),
	(72,'<ul>\r\n<li>Error analysis</li>\r\n<li>Software updates</li>\r\n</ul>','\r\nError analysis\r\nSoftware updates\r\n',NULL,1,4,'2014-06-30 21:02:02','2014-07-01 05:52:06'),
	(73,'<p>Thank you very much for your order. We will be looking into it and get back to you very soon!</p>','Thank you very much for your order. We will be looking into it and get back to you very soon!',NULL,4,4,'2014-07-01 05:47:03','2014-07-01 05:47:53'),
	(74,'<p>We will contact you as soon as possible and discuss your project. If you have any questions, please <a class=\"external\" title=\"Get in touch\" href=\"http://magiclabs.de/en/contact\" target=\"_blank\" data-link-target=\"blank\">contact us</a> immediately!</p>','We will contact you as soon as possible and discuss your project. If you have any questions, please contact us immediately!',NULL,4,4,'2014-07-01 05:48:02','2014-07-01 05:49:40'),
	(75,'<p>Unfortunately we did not get a \'green light\' from PayPal and your request was aborted. Please <a class=\"external\" title=\"Get in touch\" href=\"http://magiclabs.de/en/contact\" target=\"_blank\" data-link-target=\"blank\">get in touch</a> with us to get this issue resolved!</p>','Unfortunately we did not get a \'green light\' from PayPal and your request was aborted. Please get in touch with us to get this issue resolved!',NULL,4,4,'2014-07-01 05:50:05','2014-07-01 05:51:16'),
	(76,'<h3>The People Love Alchemy CMS!</h3>\r\n<p>Alchemy CMS empowers lots of people to have their website managed with ease and fun every day.</p>','The People Love Alchemy CMS!\r\nAlchemy CMS empowers lots of people to have their website managed with ease and fun every day.',NULL,1,1,'2014-09-03 12:41:35','2014-11-27 10:58:31'),
	(77,'<p>We have a <a class=\"external\" title=\"Join us on Slack!\" href=\"http://slack.alchemy-cms.com\" target=\"_blank\" data-link-target=\"blank\">Slack channel</a> that you can use to ask questions or just to meet the people behind Alchemy.</p>','We have a Slack channel that you can use to ask questions or just to meet the people behind Alchemy.',NULL,1,1,'2015-03-17 13:44:53','2016-11-18 15:02:43'),
	(78,'<p>Sounds interesting? Get informed about new features and services around Alchemy.</p>','Sounds interesting? Get informed about new features and services around Alchemy.',NULL,1,1,'2015-09-24 20:16:14','2015-09-24 20:17:45'),
	(79,'<p>Like what you see? Subscribe to hear about new features and services around Alchemy.</p>','Like what you see? Subscribe to hear about new features and services around Alchemy.',NULL,1,1,'2015-09-24 20:27:06','2015-09-24 20:28:13'),
	(80,'<p>Get informed about new features and services around Alchemy.</p>','Get informed about new features and services around Alchemy.',NULL,1,1,'2015-09-24 20:28:54','2015-09-24 20:30:02'),
	(81,'<p>Stay informed about new features and upcoming services around Alchemy.</p>','Stay informed about new features and upcoming services around Alchemy.',NULL,1,1,'2015-09-24 20:31:08','2015-09-24 20:34:14'),
	(82,'<p>Get informed about the latest features and upcoming services all around Alchemy.</p>','Get informed about the latest features and upcoming services all around Alchemy.',NULL,1,1,'2015-09-24 20:55:37','2015-09-24 20:56:07');

/*!40000 ALTER TABLE `alchemy_essence_richtexts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_essence_selects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_essence_selects`;

CREATE TABLE `alchemy_essence_selects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_essence_selects_on_value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_essence_selects` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_selects` DISABLE KEYS */;

INSERT INTO `alchemy_essence_selects` (`id`, `value`, `created_at`, `updated_at`, `creator_id`, `updater_id`)
VALUES
	(1,'PayPal','2014-06-30 21:01:40','2014-07-01 05:51:52',1,4),
	(2,'support/payment-successful','2014-06-30 21:01:40','2015-09-24 16:19:43',1,4),
	(3,'support/payment-aborted','2014-06-30 21:01:40','2015-09-24 16:19:44',1,4),
	(4,'PayPal','2014-06-30 21:01:52','2014-07-01 05:45:37',1,4),
	(5,'support/payment-successful','2014-06-30 21:01:52','2015-09-24 16:20:07',1,4),
	(6,'support/payment-aborted','2014-06-30 21:01:52','2015-09-24 16:20:07',1,4),
	(7,'','2014-06-30 21:02:02','2014-07-01 05:52:06',1,4),
	(8,'support','2014-06-30 21:02:02','2015-09-24 16:20:24',1,4),
	(9,'support','2014-06-30 21:02:02','2015-09-24 16:20:24',1,4);

/*!40000 ALTER TABLE `alchemy_essence_selects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_essence_texts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_essence_texts`;

CREATE TABLE `alchemy_essence_texts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text,
  `link` varchar(255) DEFAULT NULL,
  `link_title` varchar(255) DEFAULT NULL,
  `link_class_name` varchar(255) DEFAULT NULL,
  `public` tinyint(1) DEFAULT '0',
  `link_target` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_essence_texts` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_texts` DISABLE KEYS */;

INSERT INTO `alchemy_essence_texts` (`id`, `body`, `link`, `link_title`, `link_class_name`, `public`, `link_target`, `creator_id`, `updater_id`, `created_at`, `updated_at`)
VALUES
	(4,'This User Interface',NULL,NULL,NULL,0,NULL,1,1,'2011-09-28 11:04:20','2014-09-02 19:55:37'),
	(5,'Your users will love',NULL,NULL,NULL,0,NULL,1,1,'2011-09-28 11:04:20','2014-09-02 19:55:38'),
	(34,'Many CMS often work a certain way:',NULL,NULL,NULL,1,NULL,2,1,'2011-10-08 23:42:13','2011-11-11 14:03:32'),
	(35,'Features',NULL,NULL,NULL,1,NULL,2,1,'2011-10-08 23:47:02','2011-11-11 14:03:11'),
	(37,'We think this is completely wrong!',NULL,NULL,NULL,1,NULL,2,1,'2011-10-08 23:54:06','2014-03-23 20:06:10'),
	(38,'Alchemy is different!',NULL,NULL,NULL,1,NULL,2,2,'2011-10-08 23:55:17','2011-10-08 23:55:20'),
	(41,'',NULL,NULL,NULL,1,NULL,2,1,'2011-10-09 00:09:52','2011-11-10 22:07:17'),
	(60,'Try it out now!',NULL,NULL,NULL,1,NULL,2,1,'2011-10-09 01:42:12','2014-03-05 23:19:16'),
	(64,'ra-4e67a8ae020971a8',NULL,NULL,NULL,1,NULL,2,1,'2011-10-11 17:16:41','2011-11-10 22:06:16'),
	(65,'',NULL,NULL,NULL,1,NULL,2,1,'2011-10-11 17:20:28','2011-11-01 17:43:20'),
	(76,'The CMS they need',NULL,NULL,NULL,0,NULL,2,1,'2011-10-28 21:34:55','2014-09-03 19:27:41'),
	(77,'Build your customer',NULL,NULL,NULL,0,NULL,2,1,'2011-10-28 21:34:55','2014-09-03 19:27:41'),
	(83,'Tour',NULL,NULL,NULL,1,NULL,2,2,'2011-11-09 15:16:28','2011-11-09 15:16:41'),
	(87,'Image Processing',NULL,NULL,NULL,0,NULL,1,1,'2011-11-10 21:43:13','2012-10-29 20:04:08'),
	(88,'Build in',NULL,NULL,NULL,0,NULL,1,1,'2011-11-10 21:43:13','2014-09-03 19:26:41'),
	(92,'Handling large image galleries is fun again',NULL,NULL,NULL,1,NULL,1,1,'2011-11-10 22:47:12','2011-11-10 22:51:20'),
	(93,'Image Processing build right in',NULL,NULL,NULL,1,NULL,1,1,'2011-11-10 22:47:42','2011-12-21 08:49:51'),
	(94,'A userinterface you will love',NULL,NULL,NULL,1,NULL,1,1,'2011-11-10 22:48:32','2011-12-08 12:15:04'),
	(98,'Development',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 14:40:01','2013-02-19 15:42:58'),
	(99,'Custom',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 14:40:01','2013-02-19 15:42:58'),
	(102,'Training',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 15:41:26','2013-02-19 15:43:08'),
	(103,'User',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 15:41:26','2013-02-19 15:43:08'),
	(104,'Agreements',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 15:41:53','2013-02-19 15:43:30'),
	(105,'Service',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 15:41:53','2013-02-19 15:43:30'),
	(110,'Content Elements',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 15:54:37','2013-02-19 16:07:24'),
	(111,'Customizable',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 15:54:37','2013-02-19 16:07:24'),
	(112,'Live Preview',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 15:55:23','2013-02-19 15:56:00'),
	(113,'Build In',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 15:55:23','2013-02-19 15:56:00'),
	(114,'Image Processing',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 15:56:15','2013-02-19 15:56:58'),
	(115,'Powerful',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 15:56:15','2013-02-19 15:56:58'),
	(116,'Multiple Sites',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 16:00:47','2013-02-19 16:01:33'),
	(117,'Manage',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 16:00:47','2013-02-19 16:01:09'),
	(118,'Multilingual',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 16:04:20','2013-02-19 16:05:36'),
	(119,'Make Your Site',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 16:04:20','2013-02-19 16:05:52'),
	(120,'Yourself',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 16:15:20','2013-02-19 16:16:33'),
	(121,'Try it',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 16:15:20','2013-02-19 16:16:28'),
	(122,'Multisite Management',NULL,NULL,NULL,0,NULL,1,1,'2013-02-19 16:34:11','2013-02-19 16:34:18'),
	(123,'Alchemy is a powerful, userfriendly and flexible Open Source Rails CMS.',NULL,NULL,NULL,1,NULL,1,1,'2013-02-20 01:19:28','2013-02-20 09:19:02'),
	(124,'Help & Support',NULL,NULL,NULL,1,NULL,1,1,'2013-02-20 01:20:16','2013-02-20 01:20:16'),
	(125,'Online Demo',NULL,NULL,NULL,1,NULL,1,1,'2013-02-20 01:21:05','2013-02-20 01:22:29'),
	(126,'Spread the love',NULL,NULL,NULL,0,NULL,1,1,'2013-02-20 10:09:54','2013-02-20 10:10:04'),
	(127,'About',NULL,NULL,NULL,0,NULL,1,1,'2013-02-20 10:10:08','2013-02-20 10:10:26'),
	(128,'Links',NULL,NULL,NULL,0,NULL,1,1,'2013-02-20 10:10:34','2013-02-20 10:10:39'),
	(129,'Resources for Alchemy CMS',NULL,NULL,NULL,0,NULL,4,4,'2014-06-16 11:05:50','2014-06-16 11:06:08'),
	(130,'Guides',NULL,NULL,NULL,0,NULL,4,4,'2014-06-16 11:06:23','2014-06-16 11:06:27'),
	(134,'API Documentation',NULL,NULL,NULL,0,NULL,4,4,'2014-06-16 11:11:44','2014-06-16 11:11:49'),
	(135,'End user manual',NULL,NULL,NULL,0,NULL,4,4,'2014-06-16 11:14:34','2014-06-16 11:14:43'),
	(137,'Interesting Links',NULL,NULL,NULL,0,NULL,4,4,'2014-06-16 11:15:33','2014-06-16 12:16:21'),
	(139,'Professional Help, Support & Consulting',NULL,NULL,NULL,0,NULL,1,1,'2014-06-30 21:01:16','2014-06-30 21:01:16'),
	(140,'Agency Workshop',NULL,NULL,NULL,0,NULL,1,4,'2014-06-30 21:01:40','2014-07-01 05:51:52'),
	(141,'3',NULL,NULL,NULL,0,NULL,1,4,'2014-06-30 21:01:40','2014-07-01 05:51:52'),
	(142,'1',NULL,NULL,NULL,0,NULL,1,4,'2014-06-30 21:01:40','2014-07-01 05:51:52'),
	(143,'1040',NULL,NULL,NULL,0,NULL,1,4,'2014-06-30 21:01:40','2014-07-01 05:51:52'),
	(144,'Individual Support',NULL,NULL,NULL,0,NULL,1,4,'2014-06-30 21:01:52','2014-07-01 05:45:37'),
	(145,'3',NULL,NULL,NULL,0,NULL,1,4,'2014-06-30 21:01:52','2014-07-01 05:45:37'),
	(146,'1',NULL,NULL,NULL,0,NULL,1,4,'2014-06-30 21:01:52','2014-07-01 05:45:37'),
	(147,'1040',NULL,NULL,NULL,0,NULL,1,4,'2014-06-30 21:01:52','2014-07-01 05:45:38'),
	(148,'SLA, monthly',NULL,NULL,NULL,0,NULL,1,4,'2014-06-30 21:02:02','2014-07-01 05:52:06'),
	(149,'3',NULL,NULL,NULL,0,NULL,1,4,'2014-06-30 21:02:02','2014-07-01 05:52:06'),
	(150,'1',NULL,NULL,NULL,0,NULL,1,4,'2014-06-30 21:02:02','2014-07-01 05:52:07'),
	(151,'1040',NULL,NULL,NULL,0,NULL,1,4,'2014-06-30 21:02:02','2014-07-01 05:52:07'),
	(152,'Payment successful!',NULL,NULL,NULL,0,NULL,4,4,'2014-07-01 05:46:27','2014-07-01 05:46:41'),
	(154,'Next steps',NULL,NULL,NULL,0,NULL,4,4,'2014-07-01 05:47:07','2014-07-01 05:47:13'),
	(155,'There was an error processing your request',NULL,NULL,NULL,0,NULL,4,4,'2014-07-01 05:50:01','2014-07-01 05:50:16'),
	(156,'Showcases',NULL,NULL,NULL,0,NULL,1,1,'2014-09-03 12:41:26','2014-09-03 12:41:31'),
	(157,'Help from the Community',NULL,NULL,NULL,0,NULL,1,1,'2014-10-23 14:37:42','2014-10-23 14:37:57'),
	(158,'Community Chat',NULL,NULL,NULL,0,NULL,1,1,'2015-03-17 13:44:27','2015-03-17 13:44:47'),
	(159,'Keep in touch',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:16:14','2015-09-24 20:17:44'),
	(160,'Email Address',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:16:14','2015-09-24 20:16:14'),
	(161,'Subscribe',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:16:14','2015-09-24 20:16:14'),
	(162,'Stay informed',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:27:06','2015-09-24 20:28:13'),
	(163,'Email Address',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:27:06','2015-09-24 20:27:06'),
	(164,'Subscribe',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:27:06','2015-09-24 20:27:06'),
	(165,'The latest news',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:28:54','2015-09-24 20:30:02'),
	(166,'Email Address',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:28:54','2015-09-24 20:28:54'),
	(167,'Subscribe',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:28:54','2015-09-24 20:28:54'),
	(168,'Get the latest news',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:31:07','2015-09-24 20:33:47'),
	(169,'Email Address',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:31:08','2015-09-24 20:31:08'),
	(170,'Subscribe',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:31:08','2015-09-24 20:31:08'),
	(171,'Newsletter',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:55:37','2015-09-24 20:56:07'),
	(172,'Email Address',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:55:37','2015-09-24 20:55:37'),
	(173,'Subscribe',NULL,NULL,NULL,0,NULL,1,1,'2015-09-24 20:55:38','2015-09-24 20:55:38');

/*!40000 ALTER TABLE `alchemy_essence_texts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_essence_videos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_essence_videos`;

CREATE TABLE `alchemy_essence_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_id` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `allow_fullscreen` tinyint(1) DEFAULT '1',
  `auto_play` tinyint(1) DEFAULT '0',
  `show_navigation` tinyint(1) DEFAULT '1',
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table alchemy_folded_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_folded_pages`;

CREATE TABLE `alchemy_folded_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `folded` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_folded_pages` WRITE;
/*!40000 ALTER TABLE `alchemy_folded_pages` DISABLE KEYS */;

INSERT INTO `alchemy_folded_pages` (`id`, `page_id`, `user_id`, `folded`)
VALUES
	(1,35,1,0);

/*!40000 ALTER TABLE `alchemy_folded_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_languages`;

CREATE TABLE `alchemy_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `language_code` varchar(255) DEFAULT NULL,
  `frontpage_name` varchar(255) DEFAULT NULL,
  `page_layout` varchar(255) DEFAULT 'intro',
  `public` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `default` tinyint(1) DEFAULT '0',
  `country_code` varchar(255) NOT NULL DEFAULT '',
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_languages_on_language_code` (`language_code`),
  KEY `index_alchemy_languages_on_language_code_and_country_code` (`language_code`,`country_code`),
  KEY `index_alchemy_languages_on_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_languages` WRITE;
/*!40000 ALTER TABLE `alchemy_languages` DISABLE KEYS */;

INSERT INTO `alchemy_languages` (`id`, `name`, `language_code`, `frontpage_name`, `page_layout`, `public`, `created_at`, `updated_at`, `creator_id`, `updater_id`, `default`, `country_code`, `site_id`)
VALUES
	(2,'English','en','Intro','intro',1,'2011-09-28 09:07:43','2013-05-14 09:37:32',1,1,1,'',1);

/*!40000 ALTER TABLE `alchemy_languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_legacy_page_urls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_legacy_page_urls`;

CREATE TABLE `alchemy_legacy_page_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urlname` varchar(255) NOT NULL,
  `page_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_legacy_page_urls_on_urlname` (`urlname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_legacy_page_urls` WRITE;
/*!40000 ALTER TABLE `alchemy_legacy_page_urls` DISABLE KEYS */;

INSERT INTO `alchemy_legacy_page_urls` (`id`, `urlname`, `page_id`, `created_at`, `updated_at`)
VALUES
	(1,'help',35,'2013-02-19 16:12:39','2013-02-19 16:12:39'),
	(2,'payment-successful',50,'2014-08-30 23:17:47','2014-08-30 23:17:47'),
	(3,'payment-aborted',51,'2014-08-30 23:17:47','2014-08-30 23:17:47'),
	(4,'layoutroot-for-english/showcases',53,'2014-09-03 12:41:18','2014-09-03 12:41:18');

/*!40000 ALTER TABLE `alchemy_legacy_page_urls` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_pages`;

CREATE TABLE `alchemy_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `urlname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `language_code` varchar(255) DEFAULT NULL,
  `language_root` tinyint(1) DEFAULT NULL,
  `page_layout` varchar(255) DEFAULT NULL,
  `meta_keywords` text,
  `meta_description` text,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `public` tinyint(1) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `locked_by` int(11) DEFAULT NULL,
  `restricted` tinyint(1) DEFAULT '0',
  `robot_index` tinyint(1) DEFAULT '1',
  `robot_follow` tinyint(1) DEFAULT '1',
  `sitemap` tinyint(1) DEFAULT '1',
  `layoutpage` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pages_on_parent_id_and_lft` (`parent_id`,`lft`),
  KEY `index_pages_on_language_id` (`language_id`),
  KEY `index_pages_on_urlname` (`urlname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_pages` WRITE;
/*!40000 ALTER TABLE `alchemy_pages` DISABLE KEYS */;

INSERT INTO `alchemy_pages` (`id`, `name`, `urlname`, `title`, `language_code`, `language_root`, `page_layout`, `meta_keywords`, `meta_description`, `lft`, `rgt`, `parent_id`, `depth`, `visible`, `public`, `locked`, `locked_by`, `restricted`, `robot_index`, `robot_follow`, `sitemap`, `layoutpage`, `created_at`, `updated_at`, `creator_id`, `updater_id`, `language_id`, `published_at`)
VALUES
	(1,'Root',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,28,NULL,NULL,0,0,0,NULL,0,1,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,'Intro','intro','Intro','en',1,'intro',NULL,NULL,2,21,1,1,0,0,0,NULL,0,1,1,1,0,'2011-09-28 09:08:00','2016-11-18 08:12:02',1,1,2,NULL),
	(4,'About','about','About','en',NULL,'two_columns','ruby, rails, cms, about, alchemy cms','About the Ruby On Rails based Alchemy CMS',3,4,3,2,0,1,0,NULL,0,1,1,1,0,'2011-09-28 09:08:51','2016-11-18 08:12:02',1,1,2,'2016-11-18 15:04:40'),
	(15,'Demo','demo','Demo','en',NULL,'two_columns','ruby, rails, cms, demo, alchemy cms','Demo for the Ruby On Rails based Alchemy CMS',9,10,3,2,1,1,0,NULL,0,1,1,1,0,'2011-10-08 23:39:50','2016-11-18 08:12:02',2,1,2,'2016-11-18 15:04:40'),
	(17,'Layoutroot for English','layoutroot-for-english','Layoutroot for English','en',NULL,NULL,NULL,NULL,22,27,1,1,0,0,0,NULL,0,1,1,1,1,'2011-10-09 00:09:20','2014-09-03 13:02:21',2,2,2,NULL),
	(18,'Footer','footer','Footer','en',NULL,'footer',NULL,NULL,23,24,17,2,0,0,0,NULL,0,1,1,1,1,'2011-10-09 00:09:28','2016-11-18 08:12:02',2,1,2,NULL),
	(35,'Support','support','Support','en',NULL,'standard','ruby, rails, cms, support, help, consulting, alchemy cms','Help and Support for the Ruby On Rails based Alchemy CMS',15,20,3,2,1,1,0,NULL,0,1,1,1,0,'2011-10-25 10:10:43','2016-11-18 14:57:21',2,1,2,'2016-11-18 15:04:40'),
	(37,'Tour','tour','Tour','en',NULL,'standard','ruby, rails, cms, tour, features, alchemy cms','Feature tour through the Ruby On Rails based Alchemy CMS',5,6,3,2,1,1,0,NULL,0,1,1,1,0,'2011-11-09 15:10:05','2016-11-18 08:12:02',2,1,2,'2016-11-18 15:04:40'),
	(49,'Resources','resources','Resources','en',NULL,'two_columns','','',11,12,3,2,1,1,0,NULL,0,1,1,1,0,'2014-06-16 10:55:23','2016-11-18 15:03:07',4,1,2,'2016-11-18 15:04:40'),
	(50,'Payment successful','support/payment-successful','Payment successful','en',NULL,'standard','','',16,17,35,3,0,1,0,NULL,0,0,1,1,0,'2014-07-01 05:46:15','2016-11-18 08:12:02',4,1,2,'2016-11-18 15:04:40'),
	(51,'Payment aborted','support/payment-aborted','Payment aborted','en',NULL,'standard','','',18,19,35,3,0,1,0,NULL,0,0,1,1,0,'2014-07-01 05:49:55','2016-11-18 08:12:02',4,1,2,'2016-11-18 15:04:40'),
	(52,'Extensions','/extensions','','en',NULL,'external',NULL,NULL,13,14,3,2,1,0,0,NULL,0,1,1,1,0,'2014-08-29 10:33:58','2016-11-18 08:12:02',1,1,2,NULL),
	(53,'Showcases','showcases','Showcases','en',NULL,'showcases',NULL,NULL,25,26,17,2,0,0,0,NULL,0,1,1,1,1,'2014-09-03 12:41:18','2016-11-18 08:12:02',1,1,2,NULL),
	(54,'Showcases','/showcases','','en',NULL,'external','','',7,8,3,2,1,0,0,NULL,0,1,1,1,0,'2014-09-03 13:02:21','2016-11-18 08:12:02',1,1,2,NULL);

/*!40000 ALTER TABLE `alchemy_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_pictures
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_pictures`;

CREATE TABLE `alchemy_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_file_width` int(11) DEFAULT NULL,
  `image_file_height` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `upload_hash` varchar(255) DEFAULT NULL,
  `cached_tag_list` varchar(255) DEFAULT NULL,
  `image_file_uid` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_pictures` WRITE;
/*!40000 ALTER TABLE `alchemy_pictures` DISABLE KEYS */;

INSERT INTO `alchemy_pictures` (`id`, `name`, `image_file_name`, `image_file_width`, `image_file_height`, `created_at`, `updated_at`, `creator_id`, `updater_id`, `upload_hash`, `cached_tag_list`, `image_file_uid`, `image_file_size`)
VALUES
	(54,'tour edit user','Bildschirmfoto 2011-11-10 um 23.24.53.png',1000,637,'2011-11-10 22:28:52','2013-02-19 15:28:40',1,1,NULL,'tour','2011/11/10/54.png',99653),
	(56,'tour upload','Bildschirmfoto 2011-11-10 um 23.25.21.png',1000,637,'2011-11-10 22:32:24','2013-02-19 15:28:40',1,1,NULL,'tour','2011/11/10/56.png',214313),
	(57,'tour page ordering','Bildschirmfoto 2011-11-10 um 23.25.36.png',1000,637,'2011-11-10 22:33:06','2013-02-19 15:28:40',1,1,NULL,'tour','2011/11/10/57.png',95921),
	(58,'tour page properties','Bildschirmfoto 2011-11-10 um 23.25.43.png',1000,637,'2011-11-10 22:33:37','2013-02-19 15:28:40',1,1,NULL,'tour','2011/11/10/58.png',123470),
	(59,'tour new page','Bildschirmfoto 2011-11-10 um 23.25.51.png',1000,637,'2011-11-10 22:35:26','2013-02-19 15:28:41',1,1,NULL,'tour','2011/11/10/59.png',101962),
	(60,'tour link overlay','Bildschirmfoto 2011-11-10 um 23.26.11.png',1000,637,'2011-11-10 22:35:44','2013-02-19 15:28:41',1,1,NULL,'tour','2011/11/10/60.png',212986),
	(63,'tour fullscreen edit','Bildschirmfoto 2011-11-10 um 23.26.53.png',1000,637,'2011-11-10 22:36:29','2013-02-19 15:28:40',1,1,NULL,'tour','2011/11/10/63.png',400871),
	(64,'tour page properties 2','Bildschirmfoto 2011-11-10 um 23.27.03.png',1000,637,'2011-11-10 22:36:52','2013-02-19 15:28:40',1,1,NULL,'tour','2011/11/10/64.png',292102),
	(65,'tour new element','Bildschirmfoto 2011-11-10 um 23.27.13.png',1000,637,'2011-11-10 22:37:08','2013-02-19 15:28:39',1,1,NULL,'tour','2011/11/10/65.png',322422),
	(66,'tour paste from clipboard','Bildschirmfoto 2011-11-10 um 23.27.21.png',1000,637,'2011-11-10 22:37:27','2013-02-19 15:28:41',1,1,NULL,'tour','2011/11/10/66.png',323808),
	(67,'tour image upload 2','Bildschirmfoto 2011-11-10 um 23.33.05.png',1000,637,'2011-11-10 22:37:53','2013-02-19 15:28:40',1,1,NULL,'tour','2011/11/10/67.png',239592),
	(72,'tour image upload','Bildschirmfoto 2011-12-20 um 23.10.39.png',1000,592,'2011-12-21 08:39:33','2013-02-19 15:28:41',NULL,1,NULL,'tour','2011/12/21/72.png',215686),
	(73,'Bildschirmfoto 2013-02-19 um 15.43.32','Bildschirmfoto 2013-02-19 um 15.43.32.png',1000,636,'2013-02-19 14:50:03','2013-02-19 14:50:47',1,1,'1165212045908141300','support','2013/02/19/15_50_02_812_Bildschirmfoto_2013_02_19_um_15.43.32.png',183423),
	(74,'Bildschirmfoto 2013-02-19 um 15.43.22','Bildschirmfoto 2013-02-19 um 15.43.22.png',1000,636,'2013-02-19 14:50:03','2013-02-19 14:50:49',1,1,'1165212045908141300','support','2013/02/19/15_50_02_827_Bildschirmfoto_2013_02_19_um_15.43.22.png',297515),
	(75,'Bildschirmfoto 2013-02-19 um 15.46.15','Bildschirmfoto 2013-02-19 um 15.46.15.png',1000,636,'2013-02-19 14:50:03','2013-02-19 14:50:51',1,1,'1165212045908141300','support','2013/02/19/15_50_03_746_Bildschirmfoto_2013_02_19_um_15.46.15.png',523100),
	(78,'Bildschirmfoto 2013-02-19 um 16.59.24','Bildschirmfoto 2013-02-19 um 16.59.24.png',1000,653,'2013-02-19 16:00:16','2013-02-19 16:00:27',1,1,'1652855639586918100','tour','2013/02/19/17_00_16_181_Bildschirmfoto_2013_02_19_um_16.59.24.png',72274),
	(79,'Bildschirmfoto 2013-02-19 um 16.59.34','Bildschirmfoto 2013-02-19 um 16.59.34.png',1000,653,'2013-02-19 16:00:16','2013-02-19 16:00:27',1,1,'1652855639586918100','tour','2013/02/19/17_00_16_393_Bildschirmfoto_2013_02_19_um_16.59.34.png',91643),
	(80,'Bildschirmfoto 2013-02-19 um 17.02.18','Bildschirmfoto 2013-02-19 um 17.02.18.png',1000,633,'2013-02-19 16:02:34','2013-02-19 16:02:34',1,1,'2542164866427686400',NULL,'2013/02/19/17_02_34_373_Bildschirmfoto_2013_02_19_um_17.02.18.png',223157),
	(81,'Bildschirmfoto 2013-02-19 um 17.15.56','Bildschirmfoto 2013-02-19 um 17.15.56.png',1000,653,'2013-02-19 16:16:11','2013-02-19 16:16:11',1,1,'-249012212902086880',NULL,'2013/02/19/17_16_11_854_Bildschirmfoto_2013_02_19_um_17.15.56.png',458851),
	(82,'Bildschirmfoto 2013-02-19 um 17.27.51','Bildschirmfoto 2013-02-19 um 17.27.51.png',1000,653,'2013-02-19 16:28:07','2013-02-19 16:28:07',1,1,'-2521768961598131700',NULL,'2013/02/19/17_28_07_707_Bildschirmfoto_2013_02_19_um_17.27.51.png',310743),
	(83,'Bildschirmfoto 2013-02-19 um 17.32.27','Bildschirmfoto 2013-02-19 um 17.32.27.png',1000,801,'2013-02-19 16:32:43','2013-02-19 16:32:43',1,1,'3825093656709831700',NULL,'2013/02/19/17_32_43_111_Bildschirmfoto_2013_02_19_um_17.32.27.png',255992),
	(84,'Alchemy CMS - About 2014-09-02 21-54-17 2014-09-02 21-54-35','Alchemy CMS - About 2014-09-02 21-54-17 2014-09-02 21-54-35.jpg',1440,874,'2014-09-03 19:18:41','2014-09-03 19:18:41',1,1,'3908877712763258000',NULL,'2014/09/03/1s3y10359_Alchemy_CMS_About_2014_09_02_21_54_17_2014_09_02_21_54_35.jpg',829318),
	(85,'Alchemy CMS - About 2014-09-03 21-21-10 2014-09-03 21-21-41','Alchemy CMS - About 2014-09-03 21-21-10 2014-09-03 21-21-41.jpg',1440,860,'2014-09-03 19:21:44','2014-09-03 19:21:44',1,1,'4313923338864701400',NULL,'2014/09/03/76sxbocdmn_Alchemy_CMS_About_2014_09_03_21_21_10_2014_09_03_21_21_41.jpg',672135),
	(86,'Alchemy CMS - About 2014-09-03 21-24-40 2014-09-03 21-25-05','Alchemy CMS - About 2014-09-03 21-24-40 2014-09-03 21-25-05.jpg',1440,860,'2014-09-03 19:25:08','2014-09-03 19:25:08',1,1,'-1048320072755968000',NULL,'2014/09/03/5hv05hegix_Alchemy_CMS_About_2014_09_03_21_24_40_2014_09_03_21_25_05.jpg',560715);

/*!40000 ALTER TABLE `alchemy_pictures` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_sites`;

CREATE TABLE `alchemy_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `public` tinyint(1) DEFAULT '0',
  `aliases` text,
  `redirect_to_primary_host` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_sites_on_host` (`host`),
  KEY `alchemy_sites_public_hosts_idx` (`host`,`public`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_sites` WRITE;
/*!40000 ALTER TABLE `alchemy_sites` DISABLE KEYS */;

INSERT INTO `alchemy_sites` (`id`, `host`, `name`, `created_at`, `updated_at`, `public`, `aliases`, `redirect_to_primary_host`)
VALUES
	(1,'alchemy-cms.com','','2013-01-25 23:16:38','2013-01-25 23:17:24',1,'',0);

/*!40000 ALTER TABLE `alchemy_sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table alchemy_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alchemy_users`;

CREATE TABLE `alchemy_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `alchemy_roles` varchar(255) DEFAULT 'member',
  `language` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(128) NOT NULL DEFAULT '',
  `password_salt` varchar(128) NOT NULL DEFAULT '',
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_alchemy_users_on_email` (`email`),
  UNIQUE KEY `index_alchemy_users_on_login` (`login`),
  UNIQUE KEY `index_alchemy_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_alchemy_users_on_alchemy_roles` (`alchemy_roles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alchemy_users` WRITE;
/*!40000 ALTER TABLE `alchemy_users` DISABLE KEYS */;

INSERT INTO `alchemy_users` (`id`, `firstname`, `lastname`, `login`, `email`, `gender`, `alchemy_roles`, `language`, `encrypted_password`, `password_salt`, `sign_in_count`, `failed_attempts`, `last_request_at`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `creator_id`, `updater_id`, `reset_password_token`, `reset_password_sent_at`)
VALUES
	(1,'','','admin','admin@example.com','male',' admin','en','952f1f809d5c8106ce816d8e96504e855638ab97e10a1db7af81cc41b78536ec4dd82ee904aa7afdd8a298af5d6a74987b0a1e5412395c4c22cc4af60bb3464b','b5rzKzebzfnWDedHzrTg',151,0,'2016-11-18 15:07:04','2016-11-18 08:15:05','2016-11-17 16:52:52','127.0.0.1','127.0.0.1','2011-09-28 07:48:03','2016-11-18 08:15:05',NULL,1,'UQcwnxzRDTuqJ3dstp48','2015-03-17 22:03:11');

/*!40000 ALTER TABLE `alchemy_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `extensions`;

CREATE TABLE `extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` text,
  `maintainer` varchar(255) DEFAULT NULL,
  `keywords` text,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `public` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_extensions_on_maintainer` (`maintainer`),
  KEY `index_extensions_on_public` (`public`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `extensions` WRITE;
/*!40000 ALTER TABLE `extensions` DISABLE KEYS */;

INSERT INTO `extensions` (`id`, `name`, `url`, `description`, `maintainer`, `keywords`, `creator_id`, `updater_id`, `created_at`, `updated_at`, `public`)
VALUES
	(1,'Alchemy Devise','https://github.com/magiclabs/alchemy-devise','## Devise based authentication for Alchemy 3.0\r\n\r\n[![Build Status](https://secure.travis-ci.org/AlchemyCMS/alchemy-devise.png?branch=master)](http://travis-ci.org/AlchemyCMS/alchemy-devise) [![Coverage Status](https://coveralls.io/repos/AlchemyCMS/alchemy-devise/badge.png?branch=master)](https://coveralls.io/r/AlchemyCMS/alchemy-devise?branch=master) [![Code Climate](https://codeclimate.com/github/AlchemyCMS/alchemy-devise.png)](https://codeclimate.com/github/AlchemyCMS/alchemy-devise)\r\n\r\nAlchemy 3.0 has dropped the authentication from its core. So now it is possibly to bring your own authentication and use it to authorize users in Alchemy.\r\n\r\nIn order to bring the authentication from Alchemy back into your app (For instance, because you don\'t have your own user authorization), you can use this gem.\r\n\r\nLicense\r\n-------\r\n\r\nBSD: <https://github.com/magiclabs/alchemy-devise/LICENSE>','magic labs*',NULL,NULL,NULL,'2014-08-29 10:17:18','2015-01-08 08:32:06',1),
	(2,'Alchemy Spree','https://github.com/magiclabs/alchemy_spree','# Alchemy CMS Spree Extension\r\n\r\nThe World\'s Most Flexible E-Commerce Platform meets The World\'s Most Flexible Content Management System!\r\n\r\nThis gem is a [Alchemy CMS](https://github.com/magiclabs/alchemy_cms) and [Spree](https://github.com/spree/spree) connector.\r\n\r\n### For now it does this:\r\n\r\n1. It provides an Alchemy module that displays Spree admin in an iframe inside Alchemy admin.\r\n2. It gives you new Essences for Alchemy called EssenceSpreeProduct and EssenceSpreeTaxon that you can use to place a Spree product and Taxon on your pages.\r\n3. Shares admin session between Alchemy and Spree.\r\n\r\n### Compatibility\r\n\r\n## Spree\r\n\r\nThis version runs with Spreecommerce 2.1 and above.\r\n\r\n## Alchemy\r\n\r\nThis version runs with Alchemy 3.0','magic labs*',NULL,NULL,NULL,'2014-08-29 10:18:24','2014-09-02 15:26:28',1),
	(3,'Rich Media Essences','https://github.com/magiclabs/alchemy-richmedia-essences','# Alchemy CMS Richmedia Essences\r\n\r\nAdds EssenceAudio, EssenceFlash and EssenceVideo essences to your Alchemy CMS powered site.\r\n\r\nThis version is compatible with Alchemy version 3.0 and above only.\r\n\r\nFor Alchemy v2.7.0 please use version 0.2.0.\r\n\r\nFor Alchemy v2.6.0 and below please use version 0.1.0.','magic labs*',NULL,NULL,NULL,'2014-08-29 10:29:27','2014-09-02 15:26:38',1),
	(4,'User Manual','https://github.com/magiclabs/alchemy-usermanual','## On-site user manual for Alchemy CMS\r\n\r\n[![Build Status](https://secure.travis-ci.org/magiclabs/alchemy-usermanual.png)](http://travis-ci.org/magiclabs/alchemy-usermanual) [![Coverage Status](https://coveralls.io/repos/magiclabs/alchemy-usermanual/badge.png)](https://coveralls.io/r/magiclabs/alchemy-usermanual) [![Code Climate](https://codeclimate.com/github/magiclabs/alchemy-usermanual.png)](https://codeclimate.com/github/magiclabs/alchemy-usermanual)\r\n\r\nThe version 1.x is used to work with [Alchemy CMS 3.x](https://github.com/magiclabs/alchemy_cms/tree/master)\r\n\r\nThe alchemy-usermanual gem reads your `page_layouts.yml` and `elements.yml` and wraps all the interesting stuff into a module rendered in the admin-frontend of your Alchemy CMS driven application.\r\n\r\nUsers that are logged in to Alchemy can read through the self-explaining website configuration.\r\n','magic labs*',NULL,NULL,NULL,'2014-08-29 10:30:37','2014-09-02 15:26:42',1),
	(5,'Image Optimizer','https://github.com/magiclabs/alchemy-image_optim','# Alchemy::ImageOptim\r\n[![Build Status](https://travis-ci.org/magiclabs/alchemy-image_optim.png?branch=master)](https://travis-ci.org/magiclabs/alchemy-image_optim) [![Coverage Status](https://coveralls.io/repos/magiclabs/alchemy-image_optim/badge.png)](https://coveralls.io/r/magiclabs/alchemy-image_optim)\r\n\r\nThis gem is an extension of the Alchemy CMS engine.\r\n\r\nIt optimizes the file size of the master image files uploaded to Alchemy by using the `image_optim` gem.\r\n\r\n## How does it work\r\n\r\nAfter assigning an image to an `Alchemy::Picture` model (i.e. after uploading a new image) that image will be processed with lossless image optimization tools: PNGOUT, AdvPNG, Pngcrush, OptiPNG, JpegOptim, jpegrescan, jpegtran, and Gifsicle.','magic labs*',NULL,NULL,NULL,'2014-08-29 10:31:58','2014-09-02 15:26:32',1),
	(6,'Alchemy Ferret','https://github.com/magiclabs/alchemy-ferret','# Alchemy CMS 3.0 Ferret Search\r\n\r\nThis gem provides the Ferret full text search, that was extracted from Alchemy 3.0','magic labs*',NULL,NULL,NULL,'2014-08-29 10:33:04','2014-09-02 15:26:14',1),
	(7,'Alchemy OAuth','https://github.com/magiclabs/alchemy-oauth','# alchemy-oauth\r\n\r\n[![Build Status](https://travis-ci.org/magiclabs/alchemy-oauth.png?branch=master)](https://travis-ci.org/magiclabs/alchemy-oauth)\r\n\r\nOAuth 2.0 provider that integrates with [Alchemy](https://github.com/magiclabs/alchemy_cms) and provides a user\'s details via JSON once they logged in.','magic labs*',NULL,NULL,NULL,'2014-08-29 13:54:15','2014-09-02 15:26:24',1),
	(8,'Alchemy LocationEssence','https://github.com/mamhoff/alchemy-location_essences','# Alchemy LocationEssence\r\n\r\nProvides a location essence as an Alchemy module. I can geocode Adresses, but you can also modify the location after geocoding. It uses leaflet.js and OpenStreetmap (but can technically be used with every map engine leaflet.js supports).','Martin Meyerhoff',NULL,NULL,NULL,'2014-09-01 07:34:36','2014-09-02 15:26:17',1),
	(15,'Alchemy Angular','https://github.com/magiclabs/alchemy-angular','Provides Rails generators and Angular controllers, services and directives for seamless integration of [Alchemy CMS](http://alchemy-cms.com) within your AngularJS powered one page frontend app.','magic labs*',NULL,NULL,NULL,'2014-10-31 10:01:53','2014-10-31 10:17:53',1),
	(17,'Spree Alchemy','https://github.com/tesserakt/spree_alchemy','Integrates Alchemy into Spreecommerce and uses the Spree authenticated User to manage content in Alchemy. ','tesserakt',NULL,NULL,NULL,'2014-12-06 13:12:38','2014-12-06 13:13:59',1),
	(18,'Tag Gallery Essence','https://github.com/belka-studio/alchemy_tag_gallery_essence','# Alchemy CMS TagGallery Essence\r\n\r\nAdds EssenceTagGallery essence to your Alchemy CMS powered site.\r\n\r\nThis version is compatible with Alchemy version 3.0 and above only.','belka-studio',NULL,NULL,NULL,'2014-12-25 10:59:03','2015-01-08 08:27:53',1);

/*!40000 ALTER TABLE `extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20100607143125'),
	('20100607144254'),
	('20100607145256'),
	('20100607145719'),
	('20100607150611'),
	('20100607150812'),
	('20100607153647'),
	('20100607161345'),
	('20100607162339'),
	('20100607193638'),
	('20100607193646'),
	('20100607193653'),
	('20100609111653'),
	('20100609111809'),
	('20100609111821'),
	('20100609111837'),
	('20100616150753'),
	('20100812085225'),
	('20100909140701'),
	('20101109150312'),
	('20101109151812'),
	('20101216151419'),
	('20101216155216'),
	('20101216173323'),
	('20101218130049'),
	('20110115123343'),
	('20110224105120'),
	('20110228182659'),
	('20110414163140'),
	('20110511100516'),
	('20110529130429'),
	('20110529130500'),
	('20110530102804'),
	('20110707190728'),
	('20110711142057'),
	('20110919110451'),
	('20111122144301'),
	('20121024204507'),
	('20121024204508'),
	('20121024204509'),
	('20121024204510'),
	('20121024204511'),
	('20121024204512'),
	('20121024204513'),
	('20121024204514'),
	('20121029202636'),
	('20130125225326'),
	('20130125225327'),
	('20130125225328'),
	('20130125225329'),
	('20130125225330'),
	('20130125225331'),
	('20130125225332'),
	('20130514093731'),
	('20130514093732'),
	('20130514093733'),
	('20131003204416'),
	('20140828192220'),
	('20140829193952'),
	('20140829193953'),
	('20140829194046'),
	('20140829194047'),
	('20140829194048'),
	('20140829194049'),
	('20140829194050'),
	('20140829194051'),
	('20140830091427'),
	('20140902144525'),
	('20140902144534'),
	('20140903131954');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table showcases
# ------------------------------------------------------------

DROP TABLE IF EXISTS `showcases`;

CREATE TABLE `showcases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `screenshot_uid` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `public` tinyint(1) DEFAULT '0',
  `creator_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_showcases_on_public` (`public`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `showcases` WRITE;
/*!40000 ALTER TABLE `showcases` DISABLE KEYS */;

INSERT INTO `showcases` (`id`, `title`, `url`, `creator`, `screenshot_uid`, `creator_id`, `updater_id`, `created_at`, `updated_at`, `public`, `creator_url`)
VALUES
	(1,'Argo Personal','http://www.argo-personal.de','magic labs*','2014/08/31/7dmb2098r8_Bewerber_2014_08_31_01_19_43_2014_08_31_01_19_57.jpg',NULL,NULL,'2014-08-30 23:20:07','2014-09-03 13:46:40',1,'https://magiclabs.de/en'),
	(2,'YFU','http://yfu.de','magic labs*','2014/08/31/75sg75j8at_Sch_leraustausch_weltweit_Austauschjahr_in_ber_40_L_ndern_2014_08_31_01_22_18_2014_08_31_01_22_30.jpg',NULL,NULL,'2014-08-30 23:22:44','2014-09-03 13:46:43',1,'https://magiclabs.de/en'),
	(4,'Klaus Merz','http://www.klausmerz.com','magic labs*','2015/02/20/5xdv1jrm2i_klaus_merz_photography_Startseite_2015_02_20_14_49_40.png',NULL,NULL,'2014-08-30 23:26:17','2015-02-20 14:06:30',1,'https://magiclabs.de/en'),
	(5,'magic • support','https://www.magicsupport.de/startseite','magic labs*','2014/08/31/1j9ienc3ah_magic_support_Webhosting_Ruby_on_Rails_2014_08_31_01_28_12_2014_08_31_01_28_18.jpg',NULL,NULL,'2014-08-30 23:28:25','2014-09-03 13:47:03',1,'https://magiclabs.de/en'),
	(6,'Wer liefert was?','http://unternehmen.wlw.de','magic labs*','2014/08/31/3awhnghkji_Unternehmen_2014_08_31_01_29_44_2014_08_31_01_29_46.jpg',NULL,NULL,'2014-08-30 23:29:52','2014-09-03 13:47:09',1,'https://magiclabs.de/en'),
	(7,'VPI','https://www.vpihamburg.de/home','magic labs*','2014/08/31/6veiz5bo87__Home_2014_08_31_01_31_36_2014_08_31_01_31_46.jpg',NULL,NULL,'2014-08-30 23:32:11','2014-09-03 13:46:36',1,'https://magiclabs.de/en'),
	(8,'magic labs*','http://magiclabs.de/en/home','magic labs*','2014/08/31/1j6fuqr5au__Web_Technology_2014_08_31_01_36_53_2014_08_31_01_37_00.jpg',NULL,NULL,'2014-08-30 23:37:16','2014-09-03 13:47:12',1,'https://magiclabs.de/en'),
	(9,'HD Cotterell','http://www.cotterell.de/en/index','magic labs*','2014/08/31/2xaav1ahja_H.D._CotterellImpressions_of_cocoa_2014_08_31_01_44_54_2014_08_31_01_45_14.jpg',NULL,NULL,'2014-08-30 23:46:13','2014-09-23 08:25:41',1,'https://magiclabs.de/en'),
	(10,'ALOHA','https://aloha.com/home','Railsdog','2014/08/31/5dvn81hjpb_ALOHA.com_Live_your_healthiest_happiest_life._2014_08_31_01_47_15_2014_08_31_01_47_44.jpg',NULL,NULL,'2014-08-30 23:47:57','2014-09-03 19:34:57',1,'http://railsdog.com'),
	(13,'SmartGift','http://www.smartgiftit.com','Railsdog','2014/09/03/1r3s7z2qkz_SmartGift_Better_Online_Gifting_2014_09_03_12_40_47_2014_09_03_12_41_17.jpg',NULL,NULL,'2014-09-03 10:41:36','2014-09-03 13:46:09',1,'http://railsdog.com'),
	(14,'Antstrans','https://www.antstrans.at','LcX.at','2014/09/07/5gmomd32us_Screen_Shot_2014_09_07_at_22.01.52_.png',NULL,NULL,'2014-09-07 20:02:16','2014-09-08 07:49:15',1,'http://lcx.at/'),
	(15,'Werkstadt Kulturverein Berlin','http://www.werkstadt-berlin.com','Bitekollektiv','2014/09/19/4rol63qriw_Home_2014_09_19_17_26_35_2014_09_19_17_26_48.jpg',NULL,NULL,'2014-09-13 09:12:46','2014-09-19 15:26:57',1,'http://www.bitekollektiv.com'),
	(16,'Central Music Ltd., Hong Kong','http://www.centralmusic.com.hk','','2014/09/19/4gijqxgduu_music_central',NULL,NULL,'2014-09-18 11:33:05','2014-09-19 15:25:31',1,''),
	(17,'Dentalvolumen','http://www.wonderweblabs.com/alchemy-cms','wonderweblabs','2014/09/23/3fe4j4chfj_DVT_Kurse_f_r_Zahnmediziner_2014_09_23_10_24_25_2014_09_23_10_24_37.jpg',NULL,NULL,'2014-09-22 08:13:18','2014-09-23 08:24:45',1,'http://www.wonderweblabs.com'),
	(18,'Vayner-mebel','http://vayner-mebel.ru/','Belka Studio','2014/11/12/9rzsrq062o_vayner.png',NULL,NULL,'2014-11-12 09:22:54','2014-11-12 10:49:13',1,'http://belka-studio.ru/'),
	(19,'VRG','http://v-rg.ru/','Belka Studio','2014/11/12/7a14ydhk86_vrg.png',NULL,NULL,'2014-11-12 09:25:10','2014-11-12 10:49:17',1,'http://belka-studio.ru/'),
	(20,'HiveHome (by British Gas)','https://www.hivehome.com','Railsdog','2014/11/18/7okhv6pmdy_Saving_Energy_Money_2014_11_18_10_03_39.jpg',NULL,NULL,'2014-11-18 09:04:38','2014-11-18 09:05:16',1,'http://railsdog.com/'),
	(21,'Shwoodshop','https://shwoodshop.com','Thomas Mulloy','2014/12/12/9dx7dppbhs_Shwood_The_Original_Wooden_Eyewear_Home.png',NULL,NULL,'2014-12-12 22:19:34','2014-12-14 01:58:02',1,'https://github.com/twmulloy'),
	(22,'Oesterlen Services for Youth','https://www.oesterlen.org/','Liquifusion Studios','2015/07/24/gp4ttea72_oesterlen_screenshot_full.jpg',NULL,NULL,'2015-07-24 21:14:47','2015-09-01 12:44:21',1,'http://www.liquifusion.com/'),
	(23,'99designs','https://99designs.com','99designs','2015/08/10/5ly510v3uw_99designs_alchemy_promo_page.png',NULL,NULL,'2015-08-10 13:14:04','2015-09-01 12:46:45',1,''),
	(25,'StartWien - learn German in Vienna','http://www.startwien.at','LcX.at','2015/10/01/805weq6ofm_Screen_Shot_2015_10_01_at_19.08.16_.png',NULL,NULL,'2015-10-01 17:09:57','2015-10-13 21:41:13',1,'https://lcx.wien/'),
	(26,'Venus B&B','http://venusbnb.ro','Cezar Halmagean','2015/12/01/97c540xwow_VenusB_B.png',NULL,NULL,'2015-12-01 09:32:31','2015-12-07 08:18:43',1,'http://mixandgo.com'),
	(27,'MusicMagpie','http://store.musicmagpie.co.uk/','Martin Tomov (Boomer Digital)','2015/12/07/61ltnwhvt_Home_musicMagpie_Store_2015_12_07_09_15_57.png',NULL,NULL,'2015-12-01 13:22:36','2016-02-04 22:02:34',1,'http://www.boomer.digital'),
	(28,'Arai Helmets','https://www.araiamericas.com/','Boomer Digital','2015/12/20/43js5cig9d_Arai_Helmets_Homepage.png',NULL,NULL,'2015-12-20 11:34:53','2016-02-04 22:02:07',1,'http://www.boomer.digital'),
	(29,'bitspire - sparking digital experiences','https://bitspire.de','bitspire','2016/02/26/2pg0u206q7_bitspire_Sparking_Digital_Experiences_2016_02_26_10_51_37.png',NULL,NULL,'2016-02-26 09:52:08','2016-03-11 16:57:03',1,'https://bitspire.de'),
	(30,'betahaus hamburg','http://hamburg.betahaus.de','42&Sohn','2016/07/19/3tuyrk2f41_betahaus_screenshot.png',NULL,NULL,'2016-07-19 16:17:40','2016-09-13 16:59:21',1,'http://42sohn.de'),
	(31,'Paper Culture','https://www.paperculture.com','Paper Culture','2016/08/17/3s0m762m0m_Screen_Shot_2016_08_17_at_8.26.20_AM.png',NULL,NULL,'2016-08-17 15:29:09','2016-09-13 17:00:14',1,''),
	(32,'SahliGrafik GmbH','https://sahligrafik.ch/','SahliGrafik GmbH','2016/09/01/v6xe7xg19_Bildschirmfoto_2016_09_01_um_08.56.32.png',NULL,NULL,'2016-09-01 06:57:52','2016-09-13 16:57:02',1,'https://sahligrafik.ch/');

/*!40000 ALTER TABLE `showcases` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taggings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taggings`;

CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggings_idx` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;

INSERT INTO `taggings` (`id`, `tag_id`, `taggable_id`, `taggable_type`, `tagger_id`, `tagger_type`, `context`, `created_at`)
VALUES
	(1,1,54,'Alchemy::Picture',NULL,NULL,'tags','2012-10-29 20:00:27'),
	(3,1,56,'Alchemy::Picture',NULL,NULL,'tags','2012-10-29 20:00:27'),
	(4,1,57,'Alchemy::Picture',NULL,NULL,'tags','2012-10-29 20:00:27'),
	(5,1,58,'Alchemy::Picture',NULL,NULL,'tags','2012-10-29 20:00:27'),
	(6,1,59,'Alchemy::Picture',NULL,NULL,'tags','2012-10-29 20:00:27'),
	(7,1,60,'Alchemy::Picture',NULL,NULL,'tags','2012-10-29 20:00:27'),
	(10,1,63,'Alchemy::Picture',NULL,NULL,'tags','2012-10-29 20:00:27'),
	(11,1,64,'Alchemy::Picture',NULL,NULL,'tags','2012-10-29 20:00:27'),
	(12,1,65,'Alchemy::Picture',NULL,NULL,'tags','2012-10-29 20:00:27'),
	(13,1,66,'Alchemy::Picture',NULL,NULL,'tags','2012-10-29 20:00:27'),
	(14,1,67,'Alchemy::Picture',NULL,NULL,'tags','2012-10-29 20:00:27'),
	(15,1,72,'Alchemy::Picture',NULL,NULL,'tags','2012-10-29 20:00:27'),
	(59,3,73,'Alchemy::Picture',NULL,NULL,'tags','2013-02-19 14:50:47'),
	(60,3,74,'Alchemy::Picture',NULL,NULL,'tags','2013-02-19 14:50:49'),
	(61,3,75,'Alchemy::Picture',NULL,NULL,'tags','2013-02-19 14:50:51'),
	(62,1,78,'Alchemy::Picture',NULL,NULL,'tags','2013-02-19 16:00:27'),
	(63,1,79,'Alchemy::Picture',NULL,NULL,'tags','2013-02-19 16:00:27'),
	(64,4,1,'Extension',NULL,NULL,'keywords','2014-08-29 10:17:18'),
	(65,5,1,'Extension',NULL,NULL,'keywords','2014-08-29 10:17:18'),
	(66,6,1,'Extension',NULL,NULL,'keywords','2014-08-29 10:17:18'),
	(67,7,2,'Extension',NULL,NULL,'keywords','2014-08-29 10:18:24'),
	(68,8,2,'Extension',NULL,NULL,'keywords','2014-08-29 10:18:24'),
	(69,9,2,'Extension',NULL,NULL,'keywords','2014-08-29 10:18:24'),
	(70,10,2,'Extension',NULL,NULL,'keywords','2014-08-29 10:18:24'),
	(71,11,3,'Extension',NULL,NULL,'keywords','2014-08-29 10:29:27'),
	(72,12,3,'Extension',NULL,NULL,'keywords','2014-08-29 10:29:27'),
	(73,13,3,'Extension',NULL,NULL,'keywords','2014-08-29 10:29:27'),
	(74,14,3,'Extension',NULL,NULL,'keywords','2014-08-29 10:29:27'),
	(75,15,4,'Extension',NULL,NULL,'keywords','2014-08-29 10:30:37'),
	(76,16,5,'Extension',NULL,NULL,'keywords','2014-08-29 10:31:58'),
	(77,17,5,'Extension',NULL,NULL,'keywords','2014-08-29 10:31:58'),
	(78,18,6,'Extension',NULL,NULL,'keywords','2014-08-29 10:33:04'),
	(79,19,6,'Extension',NULL,NULL,'keywords','2014-08-29 10:33:04'),
	(80,20,7,'Extension',NULL,NULL,'keywords','2014-08-29 13:54:15'),
	(81,4,7,'Extension',NULL,NULL,'keywords','2014-08-29 13:54:15'),
	(82,21,8,'Extension',NULL,NULL,'keywords','2014-09-01 07:34:37'),
	(83,22,8,'Extension',NULL,NULL,'keywords','2014-09-01 07:34:37'),
	(85,24,8,'Extension',NULL,NULL,'keywords','2014-09-01 07:34:37'),
	(92,14,8,'Extension',NULL,NULL,'keywords','2014-09-01 09:41:06'),
	(93,7,10,'Showcase',NULL,NULL,'keywords','2014-09-03 13:44:34'),
	(94,7,13,'Showcase',NULL,NULL,'keywords','2014-09-03 13:46:09'),
	(95,29,7,'Showcase',NULL,NULL,'keywords','2014-09-03 13:46:36'),
	(96,30,4,'Showcase',NULL,NULL,'keywords','2014-09-03 13:46:58'),
	(97,8,10,'Showcase',NULL,NULL,'keywords','2014-09-03 19:34:57'),
	(98,31,10,'Showcase',NULL,NULL,'keywords','2014-09-03 19:34:57'),
	(99,32,10,'Showcase',NULL,NULL,'keywords','2014-09-03 19:34:57'),
	(100,33,14,'Showcase',NULL,NULL,'keywords','2014-09-07 20:02:16'),
	(101,34,14,'Showcase',NULL,NULL,'keywords','2014-09-07 20:02:16'),
	(102,35,15,'Showcase',NULL,NULL,'keywords','2014-09-13 09:12:47'),
	(103,36,15,'Showcase',NULL,NULL,'keywords','2014-09-13 09:12:47'),
	(104,37,15,'Showcase',NULL,NULL,'keywords','2014-09-13 09:12:47'),
	(105,38,15,'Showcase',NULL,NULL,'keywords','2014-09-13 09:12:47'),
	(106,39,17,'Showcase',NULL,NULL,'keywords','2014-09-22 08:13:18'),
	(107,40,17,'Showcase',NULL,NULL,'keywords','2014-09-22 08:13:19'),
	(108,41,15,'Extension',NULL,NULL,'keywords','2014-10-31 10:02:16'),
	(109,42,15,'Extension',NULL,NULL,'keywords','2014-10-31 10:02:16'),
	(110,43,18,'Showcase',NULL,NULL,'keywords','2014-11-12 09:22:57'),
	(111,44,18,'Showcase',NULL,NULL,'keywords','2014-11-12 09:22:58'),
	(112,7,19,'Showcase',NULL,NULL,'keywords','2014-11-12 09:25:10'),
	(113,43,19,'Showcase',NULL,NULL,'keywords','2014-11-12 09:25:10'),
	(114,44,19,'Showcase',NULL,NULL,'keywords','2014-11-12 09:25:10'),
	(116,7,20,'Showcase',NULL,NULL,'keywords','2014-11-18 09:04:39'),
	(117,46,20,'Showcase',NULL,NULL,'keywords','2014-11-18 09:04:39'),
	(118,47,20,'Showcase',NULL,NULL,'keywords','2014-11-18 09:04:39'),
	(119,7,17,'Extension',NULL,NULL,'keywords','2014-12-06 13:12:39'),
	(120,8,17,'Extension',NULL,NULL,'keywords','2014-12-06 13:12:40'),
	(121,7,21,'Showcase',NULL,NULL,'keywords','2014-12-12 22:19:36'),
	(122,44,21,'Showcase',NULL,NULL,'keywords','2014-12-12 22:19:38'),
	(123,48,21,'Showcase',NULL,NULL,'keywords','2014-12-12 22:19:38'),
	(124,14,18,'Extension',NULL,NULL,'keywords','2014-12-25 10:59:05'),
	(125,16,18,'Extension',NULL,NULL,'keywords','2014-12-25 10:59:05'),
	(126,50,22,'Showcase',NULL,NULL,'keywords','2015-07-24 21:14:52'),
	(127,51,22,'Showcase',NULL,NULL,'keywords','2015-07-24 21:14:53'),
	(129,53,23,'Showcase',NULL,NULL,'keywords','2015-08-10 13:14:06'),
	(130,54,23,'Showcase',NULL,NULL,'keywords','2015-08-10 13:14:08'),
	(131,55,23,'Showcase',NULL,NULL,'keywords','2015-08-10 13:14:08'),
	(135,58,25,'Showcase',NULL,NULL,'keywords','2015-10-01 17:09:59'),
	(136,59,25,'Showcase',NULL,NULL,'keywords','2015-10-01 17:10:01'),
	(137,60,25,'Showcase',NULL,NULL,'keywords','2015-10-01 17:10:01'),
	(138,61,26,'Showcase',NULL,NULL,'keywords','2015-12-01 09:32:34'),
	(139,62,26,'Showcase',NULL,NULL,'keywords','2015-12-01 09:32:36'),
	(141,63,27,'Showcase',NULL,NULL,'keywords','2015-12-07 08:16:57'),
	(142,7,28,'Showcase',NULL,NULL,'keywords','2015-12-20 11:34:55'),
	(143,8,28,'Showcase',NULL,NULL,'keywords','2015-12-20 11:34:55'),
	(146,8,31,'Showcase',NULL,NULL,'keywords','2016-08-17 15:29:09'),
	(147,66,31,'Showcase',NULL,NULL,'keywords','2016-08-17 15:29:09'),
	(148,44,31,'Showcase',NULL,NULL,'keywords','2016-08-17 15:29:09'),
	(149,48,31,'Showcase',NULL,NULL,'keywords','2016-08-17 15:29:09'),
	(150,67,32,'Showcase',NULL,NULL,'keywords','2016-09-01 06:57:52'),
	(151,68,32,'Showcase',NULL,NULL,'keywords','2016-09-01 06:57:52');

/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `taggings_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `name`, `taggings_count`)
VALUES
	(1,'tour',14),
	(2,'showcase',0),
	(3,'support',3),
	(4,'authentication',2),
	(5,'devise',1),
	(6,'users',1),
	(7,'spree',8),
	(8,'ecommerce',5),
	(9,'shop',1),
	(10,'cart',1),
	(11,'flash',1),
	(12,'video',1),
	(13,'audio',1),
	(14,'essence',3),
	(15,'manual',1),
	(16,'images',2),
	(17,'optimizing',1),
	(18,'search',1),
	(19,'ferret',1),
	(20,'oauth',1),
	(21,'maps',1),
	(22,'locations',1),
	(24,'geolocation',1),
	(29,'filemaker',1),
	(30,'photographer',1),
	(31,'health',1),
	(32,'lifestyle',1),
	(33,'umzug',1),
	(34,'moving company',1),
	(35,'culture',1),
	(36,'events',1),
	(37,'exhibitions',1),
	(38,'art',1),
	(39,'Zahnarzt',1),
	(40,'Lernportal',1),
	(41,'angularjs',1),
	(42,'onepager',1),
	(43,'blog',2),
	(44,'business',4),
	(46,'large scale',1),
	(47,'automated home',1),
	(48,'responsive',2),
	(50,'non-profit',1),
	(51,'healthcare',1),
	(53,'logo design',1),
	(54,'graphic design',1),
	(55,'landing pages',1),
	(57,'E-Commerce',0),
	(58,'startwien',1),
	(59,'gov',1),
	(60,'multilingual',1),
	(61,'hotel',1),
	(62,'b&b',1),
	(63,'ecommerce spree',1),
	(66,'stationery',1),
	(67,'Digital Agency',1),
	(68,'Branded Interaction Design',1);

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
