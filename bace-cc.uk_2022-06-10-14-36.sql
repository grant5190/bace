# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.30)
# Database: bace-cc.uk
# Generation Time: 2022-06-10 13:36:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ft_assigned_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_assigned_roles`;

CREATE TABLE `ft_assigned_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_assigned_roles` WRITE;
/*!40000 ALTER TABLE `ft_assigned_roles` DISABLE KEYS */;

INSERT INTO `ft_assigned_roles` (`id`, `user_id`, `role_id`)
VALUES
	(1,1,1);

/*!40000 ALTER TABLE `ft_assigned_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_assigned_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_assigned_sites`;

CREATE TABLE `ft_assigned_sites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table ft_blocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_blocks`;

CREATE TABLE `ft_blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_blocks` WRITE;
/*!40000 ALTER TABLE `ft_blocks` DISABLE KEYS */;

INSERT INTO `ft_blocks` (`id`, `node_id`, `name`, `content`, `image`, `title`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(119,18,'gallery','<p>@gallery(\"approach,grid\")</p>',0,'','2017-07-21 09:56:48','2017-07-21 09:56:48',NULL),
	(120,17,'gallery','<p>@gallery(\"approach,grid\")</p>',0,'','2017-07-21 10:01:40','2017-07-21 10:01:40',NULL),
	(121,19,'gallery','<p>@gallery(\"home,grid\")</p>',0,'','2017-07-21 10:01:53','2017-07-21 10:01:53',NULL),
	(165,12,'extra','',0,'','2017-08-14 10:46:18','2017-08-14 10:46:18',NULL),
	(167,14,'extra','',0,'','2017-08-14 10:46:38','2017-08-14 10:46:38',NULL),
	(219,10,'colone','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, seddiam nonummy nibh euismod tincidunt.</p>\n<p>Dolore magna aliquam erat volutpat. Ut wisi enim ad minimveniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Ut wisi enim ad minim Ut wisi enim.</p>',0,'','2017-09-05 11:45:32','2017-09-05 11:45:32',NULL),
	(220,10,'quote','',0,'','2017-09-05 11:45:32','2017-09-05 11:45:32',NULL),
	(221,11,'colone','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, seddiam nonummy nibh euismod tincidunt.</p>\n<p>Dolore magna aliquam erat volutpat. Ut wisi enim ad minimveniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Ut wisi enim ad minim Ut wisi enim.</p>',0,'','2017-09-05 11:48:53','2017-09-05 11:48:53',NULL),
	(222,11,'quote','',0,'','2017-09-05 11:48:53','2017-09-05 11:48:53',NULL),
	(226,5,'colone','',0,'','2017-09-05 14:34:35','2017-09-05 14:34:35',NULL),
	(227,5,'footer',NULL,0,'','2017-09-05 14:34:35','2017-09-05 14:34:35',NULL),
	(246,15,'extra','',0,'','2017-09-07 10:20:10','2017-09-07 10:20:10',NULL),
	(289,7,'colone','<p>Helen has considerable experience in commercial and project management roles with a proven track record of providing trustworthy guidance at all stages of the project life cycle from feasibility through to completion, in a broad range of sectors including residential (new builds; complex office-to-residential conversions; feasibility studies and social housing) as well as supermarket developments and extensions, and commercial office projects.</p>',0,'','2017-10-20 11:16:56','2017-10-20 11:16:56',NULL),
	(290,7,'quote','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, seddiam nonummy nibh euismod tincidunt.</p>\n<p>Dolore magna aliquam erat volutpat. Ut wisi enim ad minimveniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Ut wisi enim ad minim Ut wisi enim.</p>',0,'','2017-10-20 11:16:56','2017-10-20 11:16:56',NULL),
	(368,24,'extra','',0,'','2017-11-29 23:06:02','2017-11-29 23:06:02',NULL),
	(371,36,'extra','',0,'','2017-12-07 11:37:41','2017-12-07 11:37:41',NULL),
	(374,27,'extra','',0,'','2017-12-07 12:02:37','2017-12-07 12:02:37',NULL),
	(378,6,'extra','',0,'','2017-12-07 12:07:50','2017-12-07 12:07:50',NULL),
	(431,13,'extra','',0,'','2017-12-08 16:45:42','2017-12-08 16:45:42',NULL),
	(432,40,'gallery','<p>@gallery(\"bulletin3,grid\")</p>',0,'','2019-03-06 09:07:07','2019-03-06 09:07:07',NULL),
	(435,25,'extra','',0,'','2019-03-13 11:09:17','2019-03-13 11:09:17',NULL),
	(497,44,'colone','<h5>Requirements:</h5>\n<ul><li>3 years experience in suitable area.</li>\n<li>Ability to work remotely</li>\n<li>Ability to travel for work</li>\n</ul>\n\n<h5>Salary:</h5>\n<p>Competative</p>\n<h5>Start Date:</h5>\n<p>14 April 2019</p>',0,'','2019-05-02 23:38:49','2019-05-02 23:38:49',NULL),
	(498,44,'footer','',0,'','2019-05-02 23:38:49','2019-05-02 23:38:49',NULL),
	(499,44,'extra','',0,'','2019-05-02 23:38:49','2019-05-02 23:38:49',NULL),
	(503,43,'colone','<h5>Requirements:</h5>\n<ul><li>A construction related degree</li>\n<li>Experience within a PQS environment</li>\n<li>Experience of independently running projects from inception to completion</li>\n<li>Team Management Skills</li>\n<li>Employers Agent Experience</li>\n<li>Extensive Cost Plan Experience</li>\n<li>RICS Chartered or Working Towards RICS Chartership</li>\n</ul>\n\n<h5>Salary:</h5>\n<p>Competitive based on experience</p>\n<h5>Start Date:</h5>\n<p>ASAP</p>',0,'','2019-05-03 10:08:34','2019-05-03 10:08:34',NULL),
	(504,43,'footer','',0,'','2019-05-03 10:08:34','2019-05-03 10:08:34',NULL),
	(505,43,'extra','',0,'','2019-05-03 10:08:34','2019-05-03 10:08:34',NULL),
	(510,16,'gallery','',0,'','2019-09-12 07:58:46','2019-09-12 07:58:46',NULL),
	(583,50,'colone','',0,'','2019-11-07 14:21:35','2019-11-07 14:21:35',NULL),
	(584,50,'quote','',0,'','2019-11-07 14:21:35','2019-11-07 14:21:35',NULL),
	(585,50,'extra','',0,'','2019-11-07 14:21:35','2019-11-07 14:21:35',NULL),
	(670,22,'colone','<p>Our extensive knowledge and experience in Contract Administration enables us to offer this role as part of our service, either on a stand-alone basis or incorporated in conjunction with our other services.</p>\n<p>Our Contract Administration services include</p>\n<ul><li>Administrating change control procedures.</li>\n<li>Issuing contract instructions such as variations, or relating to provisional sums, prime cost sums or making good defects.</li>\n<li>Chairing construction progress meetings.</li>\n<li>Preparing and issuing periodic reports on programme, cost and risk</li>\n<li>Co-ordinating and instructing site inspectors.</li>\n<li>Considering claims and advising on contractual entitlements.</li>\n<li>Agreeing commissioning and testing procedures.</li>\n<li>Agreeing defects reporting procedures.</li>\n<li>Issuing certificates of practical completion and interim certificates.</li>\n<li>Collating and issuing schedules of defects.</li>\n<li>Issuing the certificate of making good defects.</li>\n<li>Issuing the final certificate.</li>\n</ul>',0,'','2019-11-25 12:45:25','2019-11-25 12:45:25',NULL),
	(671,22,'footer','',0,'','2019-11-25 12:45:25','2019-11-25 12:45:25',NULL),
	(672,22,'extra','',0,'','2019-11-25 12:45:25','2019-11-25 12:45:25',NULL),
	(690,39,'gallery','<p>@gallery(\"bulletin2,grid\")</p>',0,'','2019-11-25 13:49:36','2019-11-25 13:49:36',NULL),
	(696,41,'gallery','<p><img src=\"/image/bace/dsc01819-39819-67349.jpg/600\" alt=\"null\" /></p>\n<p><img src=\"/image/bace/a-dsc01870-99660-93810.jpg/600\" alt=\"null\" /></p>',0,'','2019-11-25 13:56:51','2019-11-25 13:56:51',NULL),
	(697,38,'gallery','<p>@gallery(\"bulletin1,grid\")</p>',0,'','2019-11-25 13:57:35','2019-11-25 13:57:35',NULL),
	(701,51,'gallery','<p><img src=\"/image/bace/baceprincegatesquare-77624.jpg/600\" alt=\"null\" /></p>\n<p><img src=\"/image/bace/a-img-0562-96418-26645.jpg/600\" alt=\"null\" /></p>',0,'','2019-11-25 15:41:22','2019-11-25 15:41:22',NULL),
	(709,52,'gallery','<p><img src=\"/image/bace/file1-5-82042.jpeg/600\" alt=\"null\" /></p>',150,'','2019-12-03 09:34:43','2019-12-03 09:34:43',NULL),
	(717,49,'colone','',0,'','2019-12-18 07:02:57','2019-12-18 07:02:57',NULL),
	(718,49,'quote','',0,'','2019-12-18 07:02:57','2019-12-18 07:02:57',NULL),
	(719,49,'extra','',0,'','2019-12-18 07:02:57','2019-12-18 07:02:57',NULL),
	(720,45,'colone','',0,'','2019-12-18 07:03:20','2019-12-18 07:03:20',NULL),
	(721,45,'quote','',0,'','2019-12-18 07:03:20','2019-12-18 07:03:20',NULL),
	(722,45,'extra','',0,'','2019-12-18 07:03:20','2019-12-18 07:03:20',NULL),
	(723,46,'colone','',0,'','2019-12-18 07:03:35','2019-12-18 07:03:35',NULL),
	(724,46,'quote','',0,'','2019-12-18 07:03:35','2019-12-18 07:03:35',NULL),
	(725,46,'extra','',0,'','2019-12-18 07:03:35','2019-12-18 07:03:35',NULL),
	(726,48,'colone','',0,'','2019-12-18 07:03:48','2019-12-18 07:03:48',NULL),
	(727,48,'quote','',0,'','2019-12-18 07:03:48','2019-12-18 07:03:48',NULL),
	(728,48,'extra','',0,'','2019-12-18 07:03:48','2019-12-18 07:03:48',NULL),
	(738,4,'colone','<ul><li>Residential</li>\n<li>Commercial</li>\n<li>Education</li>\n<li>Healthcare</li>\n<li>Hotel &amp; Leisure</li>\n<li>Retail</li>\n<li>Automotive</li>\n<li>Cost Management</li>\n<li>Development Management</li>\n<li>Project Monitoring</li>\n<li>New Build</li>\n<li>Refurbishment</li>\n</ul>',0,'Services & Experiences','2019-12-18 17:17:46','2019-12-18 17:17:46',NULL),
	(739,4,'footer','<p>Our growing team of like-minded professionals tailor their experience and skills to meet client needs on a diverse range of projects. The BACE team has extensive expertise in both public and private sector development projects, of all sizes, with particular emphasis on;</p>\n<hr />\n<ul>\n<li>Residential</li>\n<li>Commercial</li>\n<li>Education</li>\n<li>Healthcare</li>\n<li>Hotel &amp; Leisure</li>\n<li>Retail</li>\n<li>Automotive</li>\n<li>New Build</li>\n<li>Refurbishment</li>\n</ul>',135,'Footer','2019-12-18 17:17:46','2019-12-18 17:17:46',NULL),
	(740,4,'extra','',0,'','2019-12-18 17:17:46','2019-12-18 17:17:46',NULL),
	(747,21,'colone','<p>Our services include:</p>\n<ul><li>Extensive due diligence process in assessing the viability of the proposed scheme “stress testing of appraisals”.</li>\n<li>Compilation and management of development constraints to mitigate third party risk</li>\n<li>Preparation of the design brief, budget and project programme</li>\n<li>Preparation of scope of services and appointment of the design team</li>\n<li>Co-ordination of key stakeholder engagement </li>\n<li>Co-ordination of the professional team during design development through to planning and project closeout</li>\n<li>Advising and management on the procurement strategy and securing building contractor(s)</li>\n<li>Liaison with client solicitors re contract amendments, warranties and appointments</li>\n<li>Management of the construction and delivery phase (full Cost Management and Contract Administration/Employer’s Agent services)</li>\n<li>Liaison with Developer’s marketing team as appropriate </li>\n<li>Liaison with Developer’s funders as appropriate</li>\n</ul>',0,'','2020-01-01 13:59:51','2020-01-01 13:59:51',NULL),
	(748,21,'footer','',0,'','2020-01-01 13:59:51','2020-01-01 13:59:51',NULL),
	(749,21,'extra','',0,'','2020-01-01 13:59:51','2020-01-01 13:59:51',NULL),
	(750,20,'colone','<p>Being involved from the start of the project enables us to manage this process and provide a solid budget that meets the client’s requirements which is both achievable and deliverable.  We understand that every Client and project is different and by understanding the goals our reports are tailored to meet the specific requirements of the client brief that has real benefits to them when reporting to their clients, funders and stakeholders.</p>\n<ul>\n<li>Cost estimating from initial feasibility to detailed design</li>\n<li>Cost benchmarking against similar projects and industry cost data bases</li>\n<li>Value Engineering and value management</li>\n<li>Risk Management</li>\n<li>Procurement advice</li>\n<li>Tendering Procedures and Contractual arrangements</li>\n<li>Completion of Contract documentation</li>\n<li>Post Contact cost reporting and management</li>\n<li>Interim valuations and certificates</li>\n<li>Cost auditing and assurance</li>\n<li>Final Account negotiations and agreement</li>\n<li>Cashflow forecasts and analysis</li>\n<li>Whole life costing</li>\n</ul>',0,'','2020-01-03 13:49:54','2020-01-03 13:49:54',NULL),
	(751,20,'footer','',0,'','2020-01-03 13:49:54','2020-01-03 13:49:54',NULL),
	(752,20,'extra','',0,'','2020-01-03 13:49:54','2020-01-03 13:49:54',NULL),
	(753,23,'colone','<p>Pre-commencement</p>\n<ul><li>Carry out due diligence process to assess the viability of the scheme</li>\n<li>Carry out an audit to confirm if all matters are in order prior to allowing the scheme to progress towards being funded.</li>\n<li>Produce a pre-commencement tracker highlighting outstanding information</li>\n<li>Issue Initial Report with recommendations to the funder in order to allow a reasoned judgement to be made for the purposes of approving the proposed loan arrangement.</li>\n</ul>\n\n<p>Construction</p>\n<ul><li>Provide monthly or periodic report addressing key issues as deemed necessary (covering items such as projected Final Costs, commenting on project progress as regards both time and cost, comparing actual to budget, detailing the reasons for any variances and making appropriate recommendations in respect of our findings).</li>\n<li>Brief funder monthly on progress and expenditure throughout the construction phase including completion and handover procedures of the finished development.</li>\n</ul>',0,'','2020-01-03 13:50:10','2020-01-03 13:50:10',NULL),
	(754,23,'footer','',0,'','2020-01-03 13:50:10','2020-01-03 13:50:10',NULL),
	(755,23,'extra','',0,'','2020-01-03 13:50:10','2020-01-03 13:50:10',NULL),
	(756,1,'extra','<p>We specialise in Cost Management, Development Management, Contract Administration and Project Monitoring; priding ourselves on being balanced, adaptable, committed and effective in all we do.</p>',56,'','2020-02-20 10:39:33','2020-02-20 10:39:33',NULL),
	(757,37,'copy','<h4>Contact us to find out how BACE can provide you with a comprehensive and collaborative service which adds value and expertise and ensures a successful delivery of every project.</h4>',0,'','2020-02-20 10:46:52','2020-02-20 10:46:52',NULL),
	(770,53,'colone','',0,'','2020-02-20 10:57:06','2020-02-20 10:57:06',NULL),
	(771,53,'footer','',0,'','2020-02-20 10:57:06','2020-02-20 10:57:06',NULL),
	(772,53,'extra','',0,'','2020-02-20 10:57:06','2020-02-20 10:57:06',NULL),
	(779,2,'colone','',0,'','2021-10-22 11:29:22','2021-10-22 11:29:22',NULL),
	(780,2,'quote','<h4>The perfect partner to ensure a successful delivery on our projects</h4>',0,'Steve Dodd','2021-10-22 11:29:22','2021-10-22 11:29:22',NULL),
	(781,2,'extra','',132,'','2021-10-22 11:29:22','2021-10-22 11:29:22',NULL),
	(782,42,'colone','',0,'Current Vacancies','2021-10-22 11:30:23','2021-10-22 11:30:23',NULL),
	(783,42,'footer','',0,'','2021-10-22 11:30:23','2021-10-22 11:30:23',NULL),
	(784,42,'extra','',0,'','2021-10-22 11:30:23','2021-10-22 11:30:23',NULL),
	(833,54,'colone','',0,'','2022-01-10 09:36:00','2022-01-10 09:36:00',NULL),
	(834,54,'quote','',0,'','2022-01-10 09:36:00','2022-01-10 09:36:00',NULL),
	(835,54,'extra','',0,'','2022-01-10 09:36:00','2022-01-10 09:36:00',NULL),
	(836,8,'colone','',0,'','2022-01-10 09:36:15','2022-01-10 09:36:15',NULL),
	(837,8,'quote','',0,'','2022-01-10 09:36:15','2022-01-10 09:36:15',NULL),
	(838,8,'extra','',0,'','2022-01-10 09:36:15','2022-01-10 09:36:15',NULL),
	(839,9,'colone','',0,'','2022-01-10 09:36:37','2022-01-10 09:36:37',NULL),
	(840,9,'quote','',0,'','2022-01-10 09:36:37','2022-01-10 09:36:37',NULL),
	(841,9,'extra','',0,'','2022-01-10 09:36:37','2022-01-10 09:36:37',NULL),
	(854,47,'colone','',0,'','2022-01-10 09:38:11','2022-01-10 09:38:11',NULL),
	(855,47,'quote','',0,'','2022-01-10 09:38:11','2022-01-10 09:38:11',NULL),
	(856,47,'extra','',0,'','2022-01-10 09:38:11','2022-01-10 09:38:11',NULL),
	(860,55,'gallery','',0,'','2022-02-22 22:06:35','2022-02-22 22:06:35',NULL),
	(867,56,'gallery','<p><img src=\"/image/bace/screen-shot-2022-02-21-at-12-65092.png/600\" alt=\"null\" /></p>',172,'','2022-02-22 22:15:30','2022-02-22 22:15:30',NULL),
	(869,57,'gallery','',173,'','2022-02-22 22:21:17','2022-02-22 22:21:17',NULL),
	(871,58,'gallery','<p><img src=\"/image/bace/ben-allan-biec4yk2mta-unsplash-50125.jpg/600\" alt=\"null\" /></p>',0,'','2022-02-22 22:27:47','2022-02-22 22:27:47',NULL);

/*!40000 ALTER TABLE `ft_blocks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_failedlogins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_failedlogins`;

CREATE TABLE `ft_failedlogins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_logins` int(11) NOT NULL,
  `locked_out` smallint(6) NOT NULL,
  `expire_time` datetime NOT NULL,
  `last_attempt` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_failedlogins` WRITE;
/*!40000 ALTER TABLE `ft_failedlogins` DISABLE KEYS */;

INSERT INTO `ft_failedlogins` (`id`, `ip`, `failed_logins`, `locked_out`, `expire_time`, `last_attempt`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(2,'51.179.181.162',19,1,'2017-10-04 08:41:57','2017-10-04 08:36:57','2017-07-14 08:51:03','2017-10-04 08:36:57',NULL),
	(3,'81.159.45.246',4,0,'2017-07-17 11:55:24','2017-07-17 11:50:24','2017-07-14 14:59:29','2017-07-17 11:50:24',NULL),
	(4,'151.228.21.99',5,1,'2017-08-04 06:07:54','2017-08-04 06:02:54','2017-07-20 21:34:58','2017-08-04 06:02:54',NULL),
	(5,'86.188.6.127',1,0,'2017-07-27 13:57:18','2017-07-27 13:52:18','2017-07-27 13:52:18','2017-07-27 13:52:18',NULL),
	(6,'86.185.116.252',3,0,'2017-08-16 13:41:39','2017-08-16 13:36:39','2017-08-16 13:19:39','2017-08-16 13:36:39',NULL),
	(7,'176.27.146.142',5,1,'2017-09-10 20:46:46','2017-09-10 20:41:46','2017-09-05 07:16:17','2017-09-10 20:41:46',NULL),
	(8,'81.159.45.117',4,0,'2017-09-05 14:50:09','2017-09-05 14:45:09','2017-09-05 14:25:36','2017-09-05 14:45:09',NULL),
	(9,'86.179.243.145',1,0,'2017-09-07 10:23:46','2017-09-07 10:18:46','2017-09-07 10:18:46','2017-09-07 10:18:46',NULL),
	(10,'81.159.46.23',1,0,'2017-10-11 12:39:12','2017-10-11 12:34:12','2017-10-11 12:34:12','2017-10-11 12:34:12',NULL),
	(11,'151.224.36.247',5,1,'2017-11-03 07:19:39','2017-11-03 07:14:39','2017-10-11 19:34:17','2017-11-03 07:14:39',NULL),
	(12,'86.189.160.238',2,0,'2017-11-20 13:31:46','2017-11-20 13:26:46','2017-11-20 13:26:42','2017-11-20 13:26:46',NULL),
	(13,'81.159.45.59',1,0,'2017-11-23 14:59:55','2017-11-23 14:54:55','2017-11-23 14:54:55','2017-11-23 14:54:55',NULL),
	(14,'151.231.33.22',1,0,'2017-11-24 07:17:36','2017-11-24 07:12:36','2017-11-24 07:12:36','2017-11-24 07:12:36',NULL),
	(15,'82.40.138.249',36,1,'2020-02-20 10:44:16','2020-02-20 10:39:16','2017-12-08 09:32:51','2020-02-20 10:39:16',NULL),
	(16,'212.140.138.217',2,0,'2019-05-07 11:03:51','2019-05-07 10:58:51','2019-05-07 10:58:42','2019-05-07 10:58:51',NULL),
	(17,'188.29.165.166',6,1,'2019-11-07 15:16:58','2019-11-07 15:11:58','2019-11-07 11:48:01','2019-11-07 15:11:58',NULL),
	(18,'92.40.168.108',2,0,'2019-11-11 12:11:26','2019-11-11 12:06:26','2019-11-11 12:06:21','2019-11-11 12:06:26',NULL),
	(19,'92.40.169.104',7,1,'2019-11-11 13:47:38','2019-11-11 13:42:38','2019-11-11 13:41:36','2019-11-11 13:42:38',NULL),
	(20,'86.186.118.174',2,0,'2019-11-11 15:57:32','2019-11-11 15:52:32','2019-11-11 15:52:28','2019-11-11 15:52:32',NULL),
	(21,'188.29.165.113',3,0,'2019-11-12 11:12:34','2019-11-12 11:07:34','2019-11-12 11:07:22','2019-11-12 11:07:34',NULL),
	(22,'188.29.165.239',2,0,'2019-11-25 12:46:31','2019-11-25 12:41:31','2019-11-25 12:41:26','2019-11-25 12:41:31',NULL),
	(23,'188.29.165.108',4,0,'2019-11-25 15:32:04','2019-11-25 15:27:04','2019-11-25 15:26:49','2019-11-25 15:27:04',NULL),
	(24,'81.159.46.62',1,0,'2019-12-18 10:51:34','2019-12-18 10:46:34','2019-12-18 10:46:34','2019-12-18 10:46:34',NULL),
	(25,'82.37.200.56',13,1,'2021-08-24 09:00:41','2021-08-24 08:55:41','2021-08-10 09:05:54','2021-08-24 08:55:41',NULL),
	(26,'5.188.62.214',70,1,'2022-01-07 17:12:25','2022-01-07 17:07:25','2021-11-12 06:07:17','2022-01-07 17:07:25',NULL),
	(27,'5.188.62.140',26,1,'2022-01-14 01:05:59','2022-01-14 01:00:59','2021-11-22 21:44:08','2022-01-14 01:00:59',NULL),
	(28,'80.195.169.75',1,0,'2022-01-10 09:21:37','2022-01-10 09:16:37','2022-01-10 09:16:37','2022-01-10 09:16:37',NULL);

/*!40000 ALTER TABLE `ft_failedlogins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_fields`;

CREATE TABLE `ft_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `auto_complete` int(11) NOT NULL DEFAULT '0',
  `auto_focus` int(11) NOT NULL DEFAULT '0',
  `checked` int(11) NOT NULL DEFAULT '0',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `min` int(11) NOT NULL DEFAULT '0',
  `multiple` int(11) NOT NULL DEFAULT '0',
  `step` int(11) NOT NULL DEFAULT '0',
  `regex_pattern` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `readonly` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `required` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json` text COLLATE utf8mb4_unicode_ci,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_fields` WRITE;
/*!40000 ALTER TABLE `ft_fields` DISABLE KEYS */;

INSERT INTO `ft_fields` (`id`, `type_id`, `auto_complete`, `auto_focus`, `checked`, `disabled`, `max`, `min`, `multiple`, `step`, `regex_pattern`, `placeholder`, `readonly`, `required`, `name`, `type`, `json`, `class`, `values`, `label`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,3,0,0,0,0,0,0,0,0,'0',NULL,'0','0','theme','select',NULL,NULL,'light:Light,dark:Dark','Theme','2017-07-14 08:54:21','2017-07-14 08:54:21',NULL),
	(2,3,0,0,0,0,0,0,0,0,'0',NULL,'0','0','page-tag','text',NULL,NULL,NULL,'Page Tag','2017-07-14 09:01:39','2017-07-14 09:01:39',NULL),
	(3,3,0,0,0,0,0,0,0,0,'0',NULL,'0','0','position','text',NULL,NULL,NULL,'Position','2017-07-14 10:00:08','2017-07-14 10:00:08',NULL),
	(4,1,0,0,0,0,0,0,0,0,'0',NULL,'0','0','theme','select',NULL,NULL,'light:Light,dark:Dark','Theme','2017-07-14 08:54:21','2017-07-14 08:54:21',NULL),
	(5,1,0,0,0,0,0,0,0,0,'0',NULL,'0','0','page-tag','text',NULL,NULL,NULL,'Page Tag','2017-07-14 09:01:39','2017-07-14 09:01:39',NULL),
	(6,1,0,0,0,0,0,0,0,0,'0',NULL,'0','0','link','text',NULL,NULL,NULL,'Link','2017-07-14 10:40:22','2017-07-14 10:40:22',NULL),
	(7,2,0,0,0,0,0,0,0,0,'0',NULL,'0','0','page-tag','text',NULL,NULL,NULL,'Page Tag','2017-07-14 09:01:39','2017-07-14 09:01:39',NULL),
	(8,2,0,0,0,0,0,0,0,0,'0',NULL,'0','0','theme','select',NULL,NULL,'light:Light,dark:Dark','Theme','2017-07-14 08:54:21','2017-07-14 08:54:21',NULL),
	(11,1,0,0,0,0,0,0,0,0,'0',NULL,'0','0','gallery','text',NULL,NULL,NULL,'Gallery','2017-07-21 00:14:39','2017-07-21 00:14:39',NULL),
	(12,4,0,0,0,0,0,0,0,0,'0',NULL,'0','0','subtitle','text',NULL,NULL,NULL,'Sub Title','2017-12-08 12:56:26','2017-12-08 12:56:26',NULL);

/*!40000 ALTER TABLE `ft_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_folders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_folders`;

CREATE TABLE `ft_folders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_folders` WRITE;
/*!40000 ALTER TABLE `ft_folders` DISABLE KEYS */;

INSERT INTO `ft_folders` (`id`, `user_id`, `site_id`, `title`, `tag`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,0,1,'Placeholder','placeholder','2017-07-14 09:04:52','2017-07-14 09:04:52',NULL),
	(2,0,1,'People','people','2017-07-14 10:23:09','2017-07-14 10:23:09',NULL),
	(3,0,1,'Approach','approach','2017-07-14 11:15:52','2017-07-14 11:15:52',NULL),
	(4,0,1,'Home','home','2017-07-14 11:21:51','2017-07-14 11:21:51',NULL),
	(5,0,1,'Experience','experience','2017-09-25 09:20:52','2017-09-25 09:20:52',NULL),
	(6,0,1,'Colour Swap','colour-swap','2017-11-03 07:15:04','2017-11-03 07:15:04',NULL),
	(7,0,1,'Bulletin1','bulletin1','2017-12-08 09:28:34','2017-12-08 09:30:34',NULL),
	(8,0,1,'Bulletin2','bulletin2','2017-12-08 10:17:35','2017-12-08 10:17:35',NULL),
	(9,0,1,'bulletin3','bulletin3','2019-03-06 09:05:15','2019-03-06 09:05:15',NULL),
	(10,0,1,'bulletintest','bulletintest','2019-03-13 11:16:16','2019-03-13 11:16:16',NULL),
	(11,0,1,'Cost Management','cost-management','2019-12-31 17:28:34','2019-12-31 17:28:34',NULL),
	(12,0,1,'Development Management','development-management','2020-01-01 13:41:40','2020-01-01 13:41:40',NULL),
	(13,0,1,'Contract Administration','contract-administration','2020-01-01 13:46:38','2020-01-01 13:46:38',NULL),
	(14,0,1,'Project Monitoring','project-monitoring','2020-01-01 13:49:21','2020-01-01 13:49:21',NULL);

/*!40000 ALTER TABLE `ft_folders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_media`;

CREATE TABLE `ft_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ft_media_filename_index` (`filename`),
  KEY `ft_media_external_index` (`external`),
  KEY `ft_media_thumb_index` (`thumb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_media` WRITE;
/*!40000 ALTER TABLE `ft_media` DISABLE KEYS */;

INSERT INTO `ft_media` (`id`, `site_id`, `filename`, `extension`, `path`, `external`, `thumb`, `original`, `title`, `mime`, `type`, `height`, `width`, `parent`, `version`, `order`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,'bace-people-inner-alt-85014.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bace-people-inner-alt-85014.jpg','/image/bace/bace-people-inner-alt-85014.jpg','/image/bace/bace-people-inner-alt-85014.jpg/200x200','bace-people-inner-alt',NULL,'image/jpeg','image',1477,2000,0,1,0,'2017-07-14 09:06:48','2022-02-21 12:06:43',NULL),
	(2,1,'people-banner-23692.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/people-banner-23692.jpg','/image/bace/people-banner-23692.jpg','/image/bace/people-banner-23692.jpg/200x200','people-banner',NULL,'image/jpeg','image',1176,2000,0,1,0,'2017-07-14 10:26:00','2017-07-14 10:29:27','2017-07-14 10:29:27'),
	(3,1,'helen-97788.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/helen-97788.jpg','/image/bace/helen-97788.jpg','/image/bace/helen-97788.jpg/200x200','helen',NULL,'image/jpeg','image',2000,2000,0,1,0,'2017-07-14 10:30:34','2017-07-14 10:37:09','2017-07-14 10:37:09'),
	(4,1,'bace-profile-22079.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bace-profile-22079.jpg','/image/bace/bace-profile-22079.jpg','/image/bace/bace-profile-22079.jpg/200x200','bace-profile',NULL,'image/jpeg','image',2000,2000,0,1,0,'2017-07-14 10:46:14','2022-02-21 12:06:43',NULL),
	(5,1,'bace-profile2-81485.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bace-profile2-81485.jpg','/image/bace/bace-profile2-81485.jpg','/image/bace/bace-profile2-81485.jpg/200x200','bace-profile2',NULL,'image/jpeg','image',2000,2000,0,1,0,'2017-07-14 10:46:15','2022-02-21 12:06:43',NULL),
	(6,1,'helen-65248.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/helen-65248.jpg','/image/bace/helen-65248.jpg','/image/bace/helen-65248.jpg/200x200','helen',NULL,'image/jpeg','image',2000,2000,0,1,0,'2017-07-14 10:46:17','2022-02-21 12:06:43',NULL),
	(7,1,'lee-50513.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/lee-50513.jpg','/image/bace/lee-50513.jpg','/image/bace/lee-50513.jpg/200x200','lee',NULL,'image/jpeg','image',2000,2000,0,1,0,'2017-07-14 10:46:18','2022-02-21 12:06:43',NULL),
	(8,1,'people-banner-31077.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/people-banner-31077.jpg','/image/bace/people-banner-31077.jpg','/image/bace/people-banner-31077.jpg/200x200','people-banner',NULL,'image/jpeg','image',1176,2000,0,1,0,'2017-07-14 10:46:25','2017-07-14 11:51:21','2017-07-14 11:51:21'),
	(9,1,'simon-50224.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/simon-50224.jpg','/image/bace/simon-50224.jpg','/image/bace/simon-50224.jpg/200x200','simon',NULL,'image/jpeg','image',2000,2000,0,1,0,'2017-07-14 10:46:27','2022-02-21 12:06:43',NULL),
	(10,1,'approach-top-banner-95308.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/approach-top-banner-95308.jpg','/image/bace/approach-top-banner-95308.jpg','/image/bace/approach-top-banner-95308.jpg/200x200','approach-top-banner',NULL,'image/jpeg','image',1176,2000,0,1,0,'2017-07-14 11:16:31','2017-07-14 12:10:45','2017-07-14 12:10:45'),
	(11,1,'approach-bottom-banner-52694.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/approach-bottom-banner-52694.jpg','/image/bace/approach-bottom-banner-52694.jpg','/image/bace/approach-bottom-banner-52694.jpg/200x200','approach-bottom-banner',NULL,'image/jpeg','image',1176,2000,0,1,0,'2017-07-14 11:16:37','2022-02-21 12:06:43',NULL),
	(12,1,'home-people-banner-69430.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/home-people-banner-69430.jpg','/image/bace/home-people-banner-69430.jpg','/image/bace/home-people-banner-69430.jpg/200x200','home-people-banner',NULL,'image/jpeg','image',824,2000,0,1,0,'2017-07-14 11:21:50','2017-07-14 11:22:56','2017-07-14 11:22:56'),
	(13,1,'home-people-banner-41292.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/home-people-banner-41292.jpg','/image/bace/home-people-banner-41292.jpg','/image/bace/home-people-banner-41292.jpg/200x200','home-people-banner',NULL,'image/jpeg','image',824,2000,0,1,0,'2017-07-14 11:32:28','2022-02-21 12:06:43',NULL),
	(14,1,'people-banner-85306.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/people-banner-85306.jpg','/image/bace/people-banner-85306.jpg','/image/bace/people-banner-85306.jpg/200x200','people-banner',NULL,'image/jpeg','image',1176,2000,0,1,0,'2017-07-14 11:51:46','2022-02-21 12:06:43',NULL),
	(15,1,'approach-top-banner-44839.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/approach-top-banner-44839.jpg','/image/bace/approach-top-banner-44839.jpg','/image/bace/approach-top-banner-44839.jpg/200x200','approach-top-banner',NULL,'image/jpeg','image',1176,2000,0,1,0,'2017-07-14 12:11:14','2022-02-21 12:06:43',NULL),
	(16,1,'home-experience-banner-50644.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/home-experience-banner-50644.jpg','/image/bace/home-experience-banner-50644.jpg','/image/bace/home-experience-banner-50644.jpg/200x200','home-experience-banner',NULL,'image/jpeg','image',824,2000,0,1,0,'2017-07-14 12:21:17','2022-02-21 12:06:43',NULL),
	(17,1,'approach-bottom-banner-48263.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/approach-bottom-banner-48263.jpg','/image/bace/approach-bottom-banner-48263.jpg','/image/bace/approach-bottom-banner-48263.jpg/200x200','approach-bottom-banner',NULL,'image/jpeg','image',1176,2000,0,1,0,'2017-07-14 15:00:08','2022-02-21 12:06:43',NULL),
	(18,1,'home-people-banner2-13399.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/home-people-banner2-13399.jpg','/image/bace/home-people-banner2-13399.jpg','/image/bace/home-people-banner2-13399.jpg/200x200','home-people-banner2',NULL,'image/jpeg','image',824,2000,0,1,0,'2017-07-14 15:23:43','2022-02-21 12:06:43',NULL),
	(19,1,'helen-ward-52017.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/helen-ward-52017.jpg','/image/bace/helen-ward-52017.jpg','/image/bace/helen-ward-52017.jpg/200x200','helen-ward',NULL,'image/jpeg','image',1600,2000,0,1,0,'2017-09-05 07:28:07','2022-02-21 12:06:43',NULL),
	(20,1,'lee-haden-68229.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/lee-haden-68229.jpg','/image/bace/lee-haden-68229.jpg','/image/bace/lee-haden-68229.jpg/200x200','lee-haden',NULL,'image/jpeg','image',2000,1625,0,1,0,'2017-09-05 07:28:08','2022-02-21 12:06:43',NULL),
	(21,1,'simon-janes-46118.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/simon-janes-46118.jpg','/image/bace/simon-janes-46118.jpg','/image/bace/simon-janes-46118.jpg/200x200','simon-janes',NULL,'image/jpeg','image',2000,1625,0,1,0,'2017-09-05 07:28:08','2022-02-21 12:06:43',NULL),
	(22,1,'cate-mcgee-38152.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/cate-mcgee-38152.jpg','/image/bace/cate-mcgee-38152.jpg','/image/bace/cate-mcgee-38152.jpg/200x200','cate-mcgee',NULL,'image/jpeg','image',1600,2000,0,1,0,'2017-09-05 11:45:09','2022-02-21 12:06:43',NULL),
	(23,1,'lloyd-95093.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/lloyd-95093.jpg','/image/bace/lloyd-95093.jpg','/image/bace/lloyd-95093.jpg/200x200','lloyd',NULL,'image/jpeg','image',2000,1625,0,1,0,'2017-09-05 11:48:37','2022-02-21 12:06:43',NULL),
	(24,1,'screen-shot-2017-04-28-at-10-90362.png','png','/srv/www/bace-cc.uk/storage/uploads/bace/screen-shot-2017-04-28-at-10-90362.png','/image/bace/screen-shot-2017-04-28-at-10-90362.png','/image/bace/screen-shot-2017-04-28-at-10-90362.png/200x200','screen-shot-2017-04-28-at-10',NULL,'image/png','image',1115,2000,0,1,0,'2017-09-11 08:59:02','2022-02-21 12:06:43',NULL),
	(25,1,'press-shop-lead-bw-59776.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/press-shop-lead-bw-59776.jpg','/image/bace/press-shop-lead-bw-59776.jpg','/image/bace/press-shop-lead-bw-59776.jpg/200x200','press-shop-lead-bw',NULL,'image/jpeg','image',1407,2000,0,1,0,'2017-09-11 09:30:21','2022-02-21 12:06:43',NULL),
	(26,1,'automotive-21957.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/automotive-21957.jpg','/image/bace/automotive-21957.jpg','/image/bace/automotive-21957.jpg/200x200','automotive',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 09:21:10','2017-09-25 09:24:54','2017-09-25 09:24:54'),
	(27,1,'commercial-77604.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/commercial-77604.jpg','/image/bace/commercial-77604.jpg','/image/bace/commercial-77604.jpg/200x200','commercial',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 09:21:13','2017-09-25 11:06:06','2017-09-25 11:06:06'),
	(28,1,'healthcare-50920.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/healthcare-50920.jpg','/image/bace/healthcare-50920.jpg','/image/bace/healthcare-50920.jpg/200x200','healthcare',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 09:21:17','2022-02-21 12:06:43',NULL),
	(29,1,'hotels-76589.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/hotels-76589.jpg','/image/bace/hotels-76589.jpg','/image/bace/hotels-76589.jpg/200x200','hotels',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 09:31:11','2022-02-21 12:06:43',NULL),
	(30,1,'refurbishment-25560.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/refurbishment-25560.jpg','/image/bace/refurbishment-25560.jpg','/image/bace/refurbishment-25560.jpg/200x200','refurbishment',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 09:31:15','2017-09-25 11:31:29','2017-09-25 11:31:29'),
	(31,1,'retail-30806.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/retail-30806.jpg','/image/bace/retail-30806.jpg','/image/bace/retail-30806.jpg/200x200','retail',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 09:31:18','2022-02-21 12:06:43',NULL),
	(32,1,'new-build-44934.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/new-build-44934.jpg','/image/bace/new-build-44934.jpg','/image/bace/new-build-44934.jpg/200x200','new-build',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 09:36:14','2022-02-21 12:06:43',NULL),
	(33,1,'residential-41521.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/residential-41521.jpg','/image/bace/residential-41521.jpg','/image/bace/residential-41521.jpg/200x200','residential',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 10:02:09','2022-02-21 12:06:43',NULL),
	(34,1,'project-management-49671.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/project-management-49671.jpg','/image/bace/project-management-49671.jpg','/image/bace/project-management-49671.jpg/200x200','project-management',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 10:04:22','2017-09-25 11:54:05','2017-09-25 11:54:05'),
	(35,1,'education-25142.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/education-25142.jpg','/image/bace/education-25142.jpg','/image/bace/education-25142.jpg/200x200','education',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 10:41:23','2022-02-21 12:06:43',NULL),
	(36,1,'cost-managment-31660.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/cost-managment-31660.jpg','/image/bace/cost-managment-31660.jpg','/image/bace/cost-managment-31660.jpg/200x200','cost-managment',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 10:50:18','2022-02-21 12:06:43',NULL),
	(37,1,'experience-header-61510.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/experience-header-61510.jpg','/image/bace/experience-header-61510.jpg','/image/bace/experience-header-61510.jpg/200x200','experience-header',NULL,'image/jpeg','image',1200,2000,0,1,0,'2017-09-25 10:52:29','2022-02-21 12:06:43',NULL),
	(38,1,'automative-12003.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/automative-12003.jpg','/image/bace/automative-12003.jpg','/image/bace/automative-12003.jpg/200x200','automative',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 11:01:07','2022-02-21 12:06:43',NULL),
	(39,1,'commercial-68058.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/commercial-68058.jpg','/image/bace/commercial-68058.jpg','/image/bace/commercial-68058.jpg/200x200','commercial',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 11:06:14','2017-09-25 11:06:52','2017-09-25 11:06:52'),
	(40,1,'commercial-53180.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/commercial-53180.jpg','/image/bace/commercial-53180.jpg','/image/bace/commercial-53180.jpg/200x200','commercial',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 11:09:43','2017-09-25 11:16:48','2017-09-25 11:16:48'),
	(41,1,'development-management-38773.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/development-management-38773.jpg','/image/bace/development-management-38773.jpg','/image/bace/development-management-38773.jpg/200x200','development-management',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 11:13:04','2017-09-25 11:14:47','2017-09-25 11:14:47'),
	(42,1,'development-management-43608.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/development-management-43608.jpg','/image/bace/development-management-43608.jpg','/image/bace/development-management-43608.jpg/200x200','development-management',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 11:14:53','2022-02-21 12:06:43',NULL),
	(43,1,'commercial-46670.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/commercial-46670.jpg','/image/bace/commercial-46670.jpg','/image/bace/commercial-46670.jpg/200x200','commercial',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 11:16:53','2017-09-25 11:18:07','2017-09-25 11:18:07'),
	(44,1,'commercial-25884.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/commercial-25884.jpg','/image/bace/commercial-25884.jpg','/image/bace/commercial-25884.jpg/200x200','commercial',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 11:18:12','2022-02-21 12:06:43',NULL),
	(45,1,'refurbishment-26726.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/refurbishment-26726.jpg','/image/bace/refurbishment-26726.jpg','/image/bace/refurbishment-26726.jpg/200x200','refurbishment',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 11:31:35','2022-02-21 12:06:43',NULL),
	(46,1,'project-management-17271.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/project-management-17271.jpg','/image/bace/project-management-17271.jpg','/image/bace/project-management-17271.jpg/200x200','project-management',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-09-25 11:54:10','2022-02-21 12:06:43',NULL),
	(47,1,'st-pauls-54680.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/st-pauls-54680.jpg','/image/bace/st-pauls-54680.jpg','/image/bace/st-pauls-54680.jpg/200x200','st-pauls',NULL,'image/jpeg','image',1042,2000,0,1,0,'2017-10-11 12:40:33','2017-10-11 12:40:52','2017-10-11 12:40:52'),
	(48,1,'st-pauls-38796.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/st-pauls-38796.jpg','/image/bace/st-pauls-38796.jpg','/image/bace/st-pauls-38796.jpg/200x200','st-pauls',NULL,'image/jpeg','image',1042,2000,0,1,0,'2017-10-11 12:41:16','2022-02-21 12:06:43',NULL),
	(49,1,'construction-31549.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/construction-31549.jpg','/image/bace/construction-31549.jpg','/image/bace/construction-31549.jpg/200x200','construction',NULL,'image/jpeg','image',1042,2000,0,1,0,'2017-10-11 12:53:43','2022-02-21 12:06:43',NULL),
	(50,1,'construction-2-17227.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/construction-2-17227.jpg','/image/bace/construction-2-17227.jpg','/image/bace/construction-2-17227.jpg/200x200','construction-2',NULL,'image/jpeg','image',1042,2000,0,1,0,'2017-10-11 12:53:47','2022-02-21 12:06:43',NULL),
	(51,1,'helen-for-web-49133.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/helen-for-web-49133.jpg','/image/bace/helen-for-web-49133.jpg','/image/bace/helen-for-web-49133.jpg/200x200','helen-for-web',NULL,'image/jpeg','image',1600,2000,0,1,0,'2017-10-20 11:13:55','2022-02-21 12:06:43',NULL),
	(52,1,'lee-for-web-75711.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/lee-for-web-75711.jpg','/image/bace/lee-for-web-75711.jpg','/image/bace/lee-for-web-75711.jpg/200x200','lee-for-web',NULL,'image/jpeg','image',2000,1625,0,1,0,'2017-10-20 11:13:56','2017-10-20 11:18:56','2017-10-20 11:18:56'),
	(53,1,'simon-for-web-42229.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/simon-for-web-42229.jpg','/image/bace/simon-for-web-42229.jpg','/image/bace/simon-for-web-42229.jpg/200x200','simon-for-web',NULL,'image/jpeg','image',2000,1625,0,1,0,'2017-10-20 11:13:58','2022-02-21 12:06:43',NULL),
	(54,1,'lee-for-web-65511.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/lee-for-web-65511.jpg','/image/bace/lee-for-web-65511.jpg','/image/bace/lee-for-web-65511.jpg/200x200','lee-for-web',NULL,'image/jpeg','image',2000,1625,0,1,0,'2017-10-20 11:19:00','2022-02-21 12:06:43',NULL),
	(55,1,'bace-office-48-for-web-banner-63914.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bace-office-48-for-web-banner-63914.jpg','/image/bace/bace-office-48-for-web-banner-63914.jpg','/image/bace/bace-office-48-for-web-banner-63914.jpg/200x200','bace-office-48-for-web-banner',NULL,'image/jpeg','image',1200,2000,0,1,0,'2017-10-20 12:25:27','2022-02-21 12:06:43',NULL),
	(56,1,'new-home-banner-1-64051.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/new-home-banner-1-64051.jpg','/image/bace/new-home-banner-1-64051.jpg','/image/bace/new-home-banner-1-64051.jpg/200x200','new-home-banner-1',NULL,'image/jpeg','image',1042,2000,0,1,0,'2017-11-02 12:40:26','2022-02-21 12:06:43',NULL),
	(57,1,'approach-bottom-banner-bw-34937.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/approach-bottom-banner-bw-34937.jpg','/image/bace/approach-bottom-banner-bw-34937.jpg','/image/bace/approach-bottom-banner-bw-34937.jpg/200x200','approach-bottom-banner-bw',NULL,'image/jpeg','image',1176,2000,0,1,0,'2017-11-03 07:15:14','2022-02-21 12:06:43',NULL),
	(58,1,'approach-bottom-banner-full-34428.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/approach-bottom-banner-full-34428.jpg','/image/bace/approach-bottom-banner-full-34428.jpg','/image/bace/approach-bottom-banner-full-34428.jpg/200x200','approach-bottom-banner-full',NULL,'image/jpeg','image',1176,2000,0,1,0,'2017-11-03 07:15:15','2022-02-21 12:06:43',NULL),
	(59,1,'experiance-banner-bw-45748.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/experiance-banner-bw-45748.jpg','/image/bace/experiance-banner-bw-45748.jpg','/image/bace/experiance-banner-bw-45748.jpg/200x200','experiance-banner-bw',NULL,'image/jpeg','image',1176,2000,0,1,0,'2017-11-03 08:42:32','2022-02-21 12:06:43',NULL),
	(60,1,'experiance-banner-full-72132.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/experiance-banner-full-72132.jpg','/image/bace/experiance-banner-full-72132.jpg','/image/bace/experiance-banner-full-72132.jpg/200x200','experiance-banner-full',NULL,'image/jpeg','image',1176,2000,0,1,0,'2017-11-03 08:42:33','2022-02-21 12:06:43',NULL),
	(61,1,'homepeoplebw-90682.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/homepeoplebw-90682.jpg','/image/bace/homepeoplebw-90682.jpg','/image/bace/homepeoplebw-90682.jpg/200x200','homepeoplebw',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 13:33:57','2017-11-23 16:37:07','2017-11-23 16:37:07'),
	(62,1,'homepeoplergb-67499.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/homepeoplergb-67499.jpg','/image/bace/homepeoplergb-67499.jpg','/image/bace/homepeoplergb-67499.jpg/200x200','homepeoplergb',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 13:34:02','2017-11-23 16:37:07','2017-11-23 16:37:07'),
	(63,1,'homebulletin2bw-25052.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/homebulletin2bw-25052.jpg','/image/bace/homebulletin2bw-25052.jpg','/image/bace/homebulletin2bw-25052.jpg/200x200','homebulletin2bw',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 14:10:05','2017-11-23 14:59:31','2017-11-23 14:59:31'),
	(64,1,'homebulletin2rgb-66190.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/homebulletin2rgb-66190.jpg','/image/bace/homebulletin2rgb-66190.jpg','/image/bace/homebulletin2rgb-66190.jpg/200x200','homebulletin2rgb',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 14:10:13','2017-11-23 14:59:31','2017-11-23 14:59:31'),
	(65,1,'expertisebottombw-51810.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/expertisebottombw-51810.jpg','/image/bace/expertisebottombw-51810.jpg','/image/bace/expertisebottombw-51810.jpg/200x200','expertisebottombw',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 15:01:33','2017-11-23 16:37:07','2017-11-23 16:37:07'),
	(66,1,'expertisebottomrgb-57721.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/expertisebottomrgb-57721.jpg','/image/bace/expertisebottomrgb-57721.jpg','/image/bace/expertisebottomrgb-57721.jpg/200x200','expertisebottomrgb',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 15:01:41','2017-11-23 16:37:07','2017-11-23 16:37:07'),
	(67,1,'peoplebw-2-23972.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/peoplebw-2-23972.jpg','/image/bace/peoplebw-2-23972.jpg','/image/bace/peoplebw-2-23972.jpg/200x200','peoplebw-2',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 15:01:46','2017-11-23 15:06:43','2017-11-23 15:06:43'),
	(68,1,'peoplergb-2-19577.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/peoplergb-2-19577.jpg','/image/bace/peoplergb-2-19577.jpg','/image/bace/peoplergb-2-19577.jpg/200x200','peoplergb-2',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 15:01:58','2017-11-23 15:06:43','2017-11-23 15:06:43'),
	(69,1,'peoplebw-67162.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/peoplebw-67162.jpg','/image/bace/peoplebw-67162.jpg','/image/bace/peoplebw-67162.jpg/200x200','peoplebw',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 15:07:34','2017-11-23 15:39:46','2017-11-23 15:39:46'),
	(70,1,'peoplergb-2-48566.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/peoplergb-2-48566.jpg','/image/bace/peoplergb-2-48566.jpg','/image/bace/peoplergb-2-48566.jpg/200x200','peoplergb-2',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 15:07:40','2017-11-23 15:39:46','2017-11-23 15:39:46'),
	(71,1,'homebulletin2bw-2-52159.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/homebulletin2bw-2-52159.jpg','/image/bace/homebulletin2bw-2-52159.jpg','/image/bace/homebulletin2bw-2-52159.jpg/200x200','homebulletin2bw-2',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 15:37:42','2017-11-23 16:37:07','2017-11-23 16:37:07'),
	(72,1,'homebulletin2rgb-2-93273.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/homebulletin2rgb-2-93273.jpg','/image/bace/homebulletin2rgb-2-93273.jpg','/image/bace/homebulletin2rgb-2-93273.jpg/200x200','homebulletin2rgb-2',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 15:37:57','2017-11-23 16:37:07','2017-11-23 16:37:07'),
	(73,1,'peoplebw-2-15192.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/peoplebw-2-15192.jpg','/image/bace/peoplebw-2-15192.jpg','/image/bace/peoplebw-2-15192.jpg/200x200','peoplebw-2',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 15:40:10','2017-11-23 15:42:16','2017-11-23 15:42:16'),
	(74,1,'peoplergb-2-89817.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/peoplergb-2-89817.jpg','/image/bace/peoplergb-2-89817.jpg','/image/bace/peoplergb-2-89817.jpg/200x200','peoplergb-2',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 15:40:18','2017-11-23 15:42:16','2017-11-23 15:42:16'),
	(75,1,'peoplebw-99360.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/peoplebw-99360.jpg','/image/bace/peoplebw-99360.jpg','/image/bace/peoplebw-99360.jpg/200x200','peoplebw',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 15:42:32','2017-11-23 16:37:07','2017-11-23 16:37:07'),
	(76,1,'peoplergb-2-70345.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/peoplergb-2-70345.jpg','/image/bace/peoplergb-2-70345.jpg','/image/bace/peoplergb-2-70345.jpg/200x200','peoplergb-2',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 15:42:39','2017-11-23 16:37:07','2017-11-23 16:37:07'),
	(77,1,'baceexpertisepage-26185.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/baceexpertisepage-26185.jpg','/image/bace/baceexpertisepage-26185.jpg','/image/bace/baceexpertisepage-26185.jpg/200x200','baceexpertisepage',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 16:43:32','2022-02-21 12:06:43',NULL),
	(78,1,'bacehomepage-bulletin-82661.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bacehomepage-bulletin-82661.jpg','/image/bace/bacehomepage-bulletin-82661.jpg','/image/bace/bacehomepage-bulletin-82661.jpg/200x200','bacehomepage-bulletin',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 16:43:42','2022-02-21 12:06:43',NULL),
	(79,1,'bacehomepeoplepage-85625.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bacehomepeoplepage-85625.jpg','/image/bace/bacehomepeoplepage-85625.jpg','/image/bace/bacehomepeoplepage-85625.jpg/200x200','bacehomepeoplepage',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 16:43:50','2022-02-21 12:06:43',NULL),
	(80,1,'bacepeoplepage-26282.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bacepeoplepage-26282.jpg','/image/bace/bacepeoplepage-26282.jpg','/image/bace/bacepeoplepage-26282.jpg/200x200','bacepeoplepage',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 16:44:02','2022-02-21 12:06:43',NULL),
	(81,1,'baceexperiencepage-40315.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/baceexperiencepage-40315.jpg','/image/bace/baceexperiencepage-40315.jpg','/image/bace/baceexperiencepage-40315.jpg/200x200','baceexperiencepage',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 17:01:01','2022-02-21 12:06:43',NULL),
	(82,1,'bacepeoplepagetop-28308.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bacepeoplepagetop-28308.jpg','/image/bace/bacepeoplepagetop-28308.jpg','/image/bace/bacepeoplepagetop-28308.jpg/200x200','bacepeoplepagetop',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-23 17:01:13','2022-02-21 12:06:43',NULL),
	(83,1,'baceexpertisepagetop-86607.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/baceexpertisepagetop-86607.jpg','/image/bace/baceexpertisepagetop-86607.jpg','/image/bace/baceexpertisepagetop-86607.jpg/200x200','baceexpertisepagetop',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-24 09:14:57','2022-02-21 12:06:43',NULL),
	(84,1,'baceexpertisepagetop3-80313.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/baceexpertisepagetop3-80313.jpg','/image/bace/baceexpertisepagetop3-80313.jpg','/image/bace/baceexpertisepagetop3-80313.jpg/200x200','baceexpertisepagetop3',NULL,'image/jpeg','image',1180,2000,0,1,0,'2017-11-24 09:46:25','2022-02-21 12:06:43',NULL),
	(85,1,'refurbishment2-85076.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/refurbishment2-85076.jpg','/image/bace/refurbishment2-85076.jpg','/image/bace/refurbishment2-85076.jpg/200x200','refurbishment2',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-11-24 12:41:03','2022-02-21 12:06:43',NULL),
	(86,1,'refurbishment-64136.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/refurbishment-64136.jpg','/image/bace/refurbishment-64136.jpg','/image/bace/refurbishment-64136.jpg/200x200','refurbishment',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-12-07 10:50:19','2022-02-21 12:06:43',NULL),
	(87,1,'refurbishment-90141.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/refurbishment-90141.jpg','/image/bace/refurbishment-90141.jpg','/image/bace/refurbishment-90141.jpg/200x200','refurbishment',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-12-07 11:37:10','2022-02-21 12:06:43',NULL),
	(88,1,'residential-11250.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/residential-11250.jpg','/image/bace/residential-11250.jpg','/image/bace/residential-11250.jpg/200x200','residential',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-12-07 11:39:03','2022-02-21 12:06:43',NULL),
	(89,1,'education-2-26349.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/education-2-26349.jpg','/image/bace/education-2-26349.jpg','/image/bace/education-2-26349.jpg/200x200','education-2',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-12-07 11:59:18','2022-02-21 12:06:43',NULL),
	(90,1,'education-2-84366.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/education-2-84366.jpg','/image/bace/education-2-84366.jpg','/image/bace/education-2-84366.jpg/200x200','education-2',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-12-07 12:02:18','2022-02-21 12:06:43',NULL),
	(91,1,'residential2-32340.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/residential2-32340.jpg','/image/bace/residential2-32340.jpg','/image/bace/residential2-32340.jpg/200x200','residential2',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-12-07 12:05:13','2022-02-21 12:06:43',NULL),
	(92,1,'residential2-86918.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/residential2-86918.jpg','/image/bace/residential2-86918.jpg','/image/bace/residential2-86918.jpg/200x200','residential2',NULL,'image/jpeg','image',1357,2000,0,1,0,'2017-12-07 12:06:32','2022-02-21 12:06:43',NULL),
	(93,1,'bace-new-office-81462.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bace-new-office-81462.jpg','/image/bace/bace-new-office-81462.jpg','/image/bace/bace-new-office-81462.jpg/200x200','bace-new-office',NULL,'image/jpeg','image',1333,2000,0,1,0,'2017-12-08 09:27:05','2022-02-21 12:06:43',NULL),
	(94,1,'bace-colour-14-24063.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/bace-colour-14-24063.jpg','/image/bace/bace-colour-14-24063.jpg','/image/bace/bace-colour-14-24063.jpg/200x200','bace-colour-14',NULL,'image/jpeg','image',1335,2000,0,1,1,'2017-12-08 09:48:10','2017-12-08 16:57:45','2017-12-08 16:57:45'),
	(95,1,'bace-blog-new-site-18498.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/bace-blog-new-site-18498.jpg','/image/bace/bace-blog-new-site-18498.jpg','/image/bace/bace-blog-new-site-18498.jpg/200x200','bace-blog-new-site',NULL,'image/jpeg','image',1333,2000,0,1,0,'2017-12-08 10:17:49','2017-12-08 10:20:36','2017-12-08 10:20:36'),
	(96,1,'bace-blog-new-site-20922.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/bace-blog-new-site-20922.jpg','/image/bace/bace-blog-new-site-20922.jpg','/image/bace/bace-blog-new-site-20922.jpg/200x200','bace-blog-new-site',NULL,'image/jpeg','image',1360,2000,0,1,0,'2017-12-08 10:20:51','2017-12-08 10:22:33','2017-12-08 10:22:33'),
	(97,1,'bace-blog-new-site-2-14069.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/bace-blog-new-site-2-14069.jpg','/image/bace/bace-blog-new-site-2-14069.jpg','/image/bace/bace-blog-new-site-2-14069.jpg/200x200','bace-blog-new-site-2',NULL,'image/jpeg','image',1360,2000,0,1,0,'2017-12-08 10:22:29','2017-12-08 12:43:32','2017-12-08 12:43:32'),
	(98,1,'bace-blog-57319.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bace-blog-57319.jpg','/image/bace/bace-blog-57319.jpg','/image/bace/bace-blog-57319.jpg/200x200','bace-blog',NULL,'image/jpeg','image',1360,2000,0,1,1,'2017-12-08 12:43:24','2022-02-21 12:06:43',NULL),
	(99,1,'bace-blog-laptop-14009.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bace-blog-laptop-14009.jpg','/image/bace/bace-blog-laptop-14009.jpg','/image/bace/bace-blog-laptop-14009.jpg/200x200','bace-blog-laptop',NULL,'image/jpeg','image',1360,2000,0,1,0,'2017-12-08 12:43:27','2022-02-21 12:06:43',NULL),
	(100,1,'bace-colour-12retouch-87805.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/bace-colour-12retouch-87805.jpg','/image/bace/bace-colour-12retouch-87805.jpg','/image/bace/bace-colour-12retouch-87805.jpg/200x200','bace-colour-12retouch',NULL,'image/jpeg','image',1173,2000,0,1,1,'2017-12-08 16:57:39','2017-12-08 17:17:53','2017-12-08 17:17:53'),
	(101,1,'folium-45285.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/folium-45285.jpg','/image/bace/folium-45285.jpg','/image/bace/folium-45285.jpg/200x200','folium',NULL,'image/jpeg','image',1173,2000,0,1,1,'2017-12-08 17:17:33','2022-02-21 12:06:43',NULL),
	(102,1,'bace-office-11-clean-14491.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bace-office-11-clean-14491.jpg','/image/bace/bace-office-11-clean-14491.jpg','/image/bace/bace-office-11-clean-14491.jpg/200x200','bace-office-11-clean',NULL,'image/jpeg','image',1264,2000,0,1,0,'2019-03-06 09:05:41','2022-02-21 12:06:43',NULL),
	(103,1,'bace-office-11-clean-49074.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bace-office-11-clean-49074.jpg','/image/bace/bace-office-11-clean-49074.jpg','/image/bace/bace-office-11-clean-49074.jpg/200x200','bace-office-11-clean',NULL,'image/jpeg','image',1264,2000,0,1,0,'2019-03-13 11:16:40','2022-02-21 12:06:43',NULL),
	(104,1,'ren-ran-104026-97875.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/ren-ran-104026-97875.jpg','/image/bace/ren-ran-104026-97875.jpg','/image/bace/ren-ran-104026-97875.jpg/200x200','ren-ran-104026',NULL,'image/jpeg','image',1333,2000,0,1,0,'2019-03-13 11:16:48','2022-02-21 12:06:43',NULL),
	(105,1,'careers-banner-40282.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/careers-banner-40282.jpg','/image/bace/careers-banner-40282.jpg','/image/bace/careers-banner-40282.jpg/200x200','careers-banner',NULL,'image/jpeg','image',1125,2000,0,1,0,'2019-05-02 22:10:06','2022-02-21 12:06:43',NULL),
	(106,1,'bacepeopletop-55436.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bacepeopletop-55436.jpg','/image/bace/bacepeopletop-55436.jpg','/image/bace/bacepeopletop-55436.jpg/200x200','bacepeopletop',NULL,'image/jpeg','image',1180,2000,0,1,0,'2019-11-07 13:40:21','2022-02-21 12:06:43',NULL),
	(107,1,'lloydbw-57861.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/lloydbw-57861.jpg','/image/bace/lloydbw-57861.jpg','/image/bace/lloydbw-57861.jpg/200x200','lloydbw',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 13:40:22','2019-11-07 14:18:42','2019-11-07 14:18:42'),
	(108,1,'lloydrgb-72376.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/lloydrgb-72376.jpg','/image/bace/lloydrgb-72376.jpg','/image/bace/lloydrgb-72376.jpg/200x200','lloydrgb',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 13:40:23','2019-11-07 14:18:42','2019-11-07 14:18:42'),
	(109,1,'simonjanesbw-30906.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/simonjanesbw-30906.jpg','/image/bace/simonjanesbw-30906.jpg','/image/bace/simonjanesbw-30906.jpg/200x200','simonjanesbw',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 13:40:23','2019-11-07 14:18:42','2019-11-07 14:18:42'),
	(110,1,'simonjanesrgb-88828.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/simonjanesrgb-88828.jpg','/image/bace/simonjanesrgb-88828.jpg','/image/bace/simonjanesrgb-88828.jpg/200x200','simonjanesrgb',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 13:40:24','2019-11-07 14:18:42','2019-11-07 14:18:42'),
	(111,1,'stephbw-84670.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/stephbw-84670.jpg','/image/bace/stephbw-84670.jpg','/image/bace/stephbw-84670.jpg/200x200','stephbw',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 13:40:25','2019-11-07 14:18:42','2019-11-07 14:18:42'),
	(112,1,'stephrgb-58855.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/stephrgb-58855.jpg','/image/bace/stephrgb-58855.jpg','/image/bace/stephrgb-58855.jpg/200x200','stephrgb',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 13:40:26','2019-11-07 14:18:42','2019-11-07 14:18:42'),
	(113,1,'bacepeopletop-89514.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/bacepeopletop-89514.jpg','/image/bace/bacepeopletop-89514.jpg','/image/bace/bacepeopletop-89514.jpg/200x200','bacepeopletop',NULL,'image/jpeg','image',1180,2000,0,1,0,'2019-11-07 14:18:52','2019-11-07 14:18:59','2019-11-07 14:18:59'),
	(114,1,'davidplattbw-46049.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/davidplattbw-46049.jpg','/image/bace/davidplattbw-46049.jpg','/image/bace/davidplattbw-46049.jpg/200x200','davidplattbw',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:19','2022-02-21 12:06:43',NULL),
	(115,1,'davidplattrgb-14939.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/davidplattrgb-14939.jpg','/image/bace/davidplattrgb-14939.jpg','/image/bace/davidplattrgb-14939.jpg/200x200','davidplattrgb',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:19','2022-02-21 12:06:43',NULL),
	(116,1,'gregorybw-55309.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/gregorybw-55309.jpg','/image/bace/gregorybw-55309.jpg','/image/bace/gregorybw-55309.jpg/200x200','gregorybw',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:20','2022-02-21 12:06:43',NULL),
	(117,1,'katiebw-90064.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/katiebw-90064.jpg','/image/bace/katiebw-90064.jpg','/image/bace/katiebw-90064.jpg/200x200','katiebw',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:21','2022-02-21 12:06:43',NULL),
	(118,1,'katiergb-73232.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/katiergb-73232.jpg','/image/bace/katiergb-73232.jpg','/image/bace/katiergb-73232.jpg/200x200','katiergb',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:22','2022-02-21 12:06:43',NULL),
	(119,1,'leehadenbw-47680.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/leehadenbw-47680.jpg','/image/bace/leehadenbw-47680.jpg','/image/bace/leehadenbw-47680.jpg/200x200','leehadenbw',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:24','2022-02-21 12:06:43',NULL),
	(120,1,'leehadenrgb-65621.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/leehadenrgb-65621.jpg','/image/bace/leehadenrgb-65621.jpg','/image/bace/leehadenrgb-65621.jpg/200x200','leehadenrgb',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:25','2022-02-21 12:06:43',NULL),
	(121,1,'lloydbw-90602.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/lloydbw-90602.jpg','/image/bace/lloydbw-90602.jpg','/image/bace/lloydbw-90602.jpg/200x200','lloydbw',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:26','2022-02-21 12:06:42',NULL),
	(122,1,'lloydrgb-49787.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/lloydrgb-49787.jpg','/image/bace/lloydrgb-49787.jpg','/image/bace/lloydrgb-49787.jpg/200x200','lloydrgb',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:27','2022-02-21 12:06:42',NULL),
	(123,1,'michaelbw-20247.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/michaelbw-20247.jpg','/image/bace/michaelbw-20247.jpg','/image/bace/michaelbw-20247.jpg/200x200','michaelbw',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:28','2022-02-21 12:06:42',NULL),
	(124,1,'michaelrgb-52152.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/michaelrgb-52152.jpg','/image/bace/michaelrgb-52152.jpg','/image/bace/michaelrgb-52152.jpg/200x200','michaelrgb',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:29','2022-02-21 12:06:42',NULL),
	(125,1,'simonjanesbw-22145.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/simonjanesbw-22145.jpg','/image/bace/simonjanesbw-22145.jpg','/image/bace/simonjanesbw-22145.jpg/200x200','simonjanesbw',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:30','2022-02-21 12:06:42',NULL),
	(126,1,'simonjanesrgb-78241.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/simonjanesrgb-78241.jpg','/image/bace/simonjanesrgb-78241.jpg','/image/bace/simonjanesrgb-78241.jpg/200x200','simonjanesrgb',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:31','2022-02-21 12:06:42',NULL),
	(127,1,'stephbw-40339.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/stephbw-40339.jpg','/image/bace/stephbw-40339.jpg','/image/bace/stephbw-40339.jpg/200x200','stephbw',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:31','2022-02-21 12:06:42',NULL),
	(128,1,'stephrgb-83275.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/stephrgb-83275.jpg','/image/bace/stephrgb-83275.jpg','/image/bace/stephrgb-83275.jpg/200x200','stephrgb',NULL,'image/jpeg','image',2000,1594,0,1,0,'2019-11-07 14:19:32','2022-02-21 12:06:42',NULL),
	(129,1,'baceservices-56301.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/baceservices-56301.jpg','/image/bace/baceservices-56301.jpg','/image/bace/baceservices-56301.jpg/200x200','baceservices',NULL,'image/jpeg','image',1180,2000,0,1,0,'2019-11-07 15:12:20','2022-02-21 12:06:42',NULL),
	(130,1,'baceother4-83446.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/baceother4-83446.jpg','/image/bace/baceother4-83446.jpg','/image/bace/baceother4-83446.jpg/200x200','baceother4',NULL,'image/jpeg','image',1180,2000,0,1,0,'2019-11-07 15:14:03','2022-02-21 12:06:42',NULL),
	(131,1,'baceother2-73322.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/baceother2-73322.jpg','/image/bace/baceother2-73322.jpg','/image/bace/baceother2-73322.jpg/200x200','baceother2',NULL,'image/jpeg','image',1180,2000,0,1,0,'2019-11-07 15:16:21','2022-02-21 12:06:42',NULL),
	(132,1,'baceother3-46346.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/baceother3-46346.jpg','/image/bace/baceother3-46346.jpg','/image/bace/baceother3-46346.jpg/200x200','baceother3',NULL,'image/jpeg','image',1180,2000,0,1,0,'2019-11-07 15:18:42','2022-02-21 12:06:42',NULL),
	(133,1,'bacecareers-65362.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bacecareers-65362.jpg','/image/bace/bacecareers-65362.jpg','/image/bace/bacecareers-65362.jpg/200x200','bacecareers',NULL,'image/jpeg','image',1180,2000,0,1,0,'2019-11-07 15:50:48','2022-02-21 12:06:42',NULL),
	(134,1,'baceservicestop-23321.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/baceservicestop-23321.jpg','/image/bace/baceservicestop-23321.jpg','/image/bace/baceservicestop-23321.jpg/200x200','baceservicestop',NULL,'image/jpeg','image',1180,2000,0,1,0,'2019-11-07 15:51:57','2022-02-21 12:06:42',NULL),
	(135,1,'baceservicebottom-61417.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/baceservicebottom-61417.jpg','/image/bace/baceservicebottom-61417.jpg','/image/bace/baceservicebottom-61417.jpg/200x200','baceservicebottom',NULL,'image/jpeg','image',1180,2000,0,1,0,'2019-11-07 15:52:52','2022-02-21 12:06:42',NULL),
	(136,1,'bacecontacttop2-55975.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bacecontacttop2-55975.jpg','/image/bace/bacecontacttop2-55975.jpg','/image/bace/bacecontacttop2-55975.jpg/200x200','bacecontacttop2',NULL,'image/jpeg','image',1180,2000,0,1,0,'2019-11-07 15:54:31','2022-02-21 12:06:42',NULL),
	(137,1,'bacepeoplepagealt-67590.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/bacepeoplepagealt-67590.jpg','/image/bace/bacepeoplepagealt-67590.jpg','/image/bace/bacepeoplepagealt-67590.jpg/200x200','bacepeoplepagealt',NULL,'image/jpeg','image',1180,2000,0,1,0,'2019-11-11 15:52:54','2022-02-21 12:06:42',NULL),
	(138,1,'contract-admin-72920.jpg','jpg','/srv/www/bace.papercode.co.uk/storage/uploads/bace/contract-admin-72920.jpg','/image/bace/contract-admin-72920.jpg','/image/bace/contract-admin-72920.jpg/200x200','contract-admin',NULL,'image/jpeg','image',1238,2000,0,1,0,'2019-11-25 12:42:00','2019-11-25 12:42:07','2019-11-25 12:42:07'),
	(139,1,'contract-admin-68359.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/contract-admin-68359.jpg','/image/bace/contract-admin-68359.jpg','/image/bace/contract-admin-68359.jpg/200x200','contract-admin',NULL,'image/jpeg','image',1238,2000,0,1,0,'2019-11-25 12:44:14','2022-02-21 12:06:42',NULL),
	(140,1,'cost-management-63874.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/cost-management-63874.jpg','/image/bace/cost-management-63874.jpg','/image/bace/cost-management-63874.jpg/200x200','cost-management',NULL,'image/jpeg','image',1238,2000,0,1,0,'2019-11-25 12:44:15','2022-02-21 12:06:42',NULL),
	(141,1,'project-monitoring-73413.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/project-monitoring-73413.jpg','/image/bace/project-monitoring-73413.jpg','/image/bace/project-monitoring-73413.jpg/200x200','project-monitoring',NULL,'image/jpeg','image',1238,2000,0,1,0,'2019-11-25 12:44:16','2022-02-21 12:06:42',NULL),
	(142,1,'panel-cost-management-44425.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/panel-cost-management-44425.jpg','/image/bace/panel-cost-management-44425.jpg','/image/bace/panel-cost-management-44425.jpg/200x200','panel-cost-management',NULL,'image/jpeg','image',1358,2000,0,1,0,'2019-11-25 12:50:04','2022-02-21 12:06:42',NULL),
	(143,1,'panel-project-monitoring-25959.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/panel-project-monitoring-25959.jpg','/image/bace/panel-project-monitoring-25959.jpg','/image/bace/panel-project-monitoring-25959.jpg/200x200','panel-project-monitoring',NULL,'image/jpeg','image',1357,2000,0,1,0,'2019-11-25 12:50:06','2022-02-21 12:06:42',NULL),
	(144,1,'a-img-0562-96418-26645.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/a-img-0562-96418-26645.jpg','/image/bace/a-img-0562-96418-26645.jpg','/image/bace/a-img-0562-96418-26645.jpg/200x200','a-img-0562-96418',NULL,'image/jpeg','image',2000,2000,0,1,0,'2019-11-25 13:51:39','2022-02-21 12:06:42',NULL),
	(145,1,'a-img-0690-29793-48677.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/a-img-0690-29793-48677.jpg','/image/bace/a-img-0690-29793-48677.jpg','/image/bace/a-img-0690-29793-48677.jpg/200x200','a-img-0690-29793',NULL,'image/jpeg','image',2000,2000,0,1,0,'2019-11-25 13:51:40','2022-02-21 12:06:42',NULL),
	(146,1,'a-dsc01870-99660-93810.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/a-dsc01870-99660-93810.jpg','/image/bace/a-dsc01870-99660-93810.jpg','/image/bace/a-dsc01870-99660-93810.jpg/200x200','a-dsc01870-99660',NULL,'image/jpeg','image',2000,2000,0,1,0,'2019-11-25 13:53:46','2022-02-21 12:06:42',NULL),
	(147,1,'dsc01819-39819-67349.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/dsc01819-39819-67349.jpg','/image/bace/dsc01819-39819-67349.jpg','/image/bace/dsc01819-39819-67349.jpg/200x200','dsc01819-39819',NULL,'image/jpeg','image',1327,2000,0,1,0,'2019-11-25 13:53:47','2022-02-21 12:06:42',NULL),
	(148,1,'baceprincesgate-55989.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/baceprincesgate-55989.jpg','/image/bace/baceprincesgate-55989.jpg','/image/bace/baceprincesgate-55989.jpg/200x200','baceprincesgate',NULL,'image/jpeg','image',889,2000,0,1,0,'2019-11-25 15:34:15','2022-02-21 12:06:42',NULL),
	(149,1,'baceprincegatesquare-77624.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/baceprincegatesquare-77624.jpg','/image/bace/baceprincegatesquare-77624.jpg','/image/bace/baceprincegatesquare-77624.jpg/200x200','baceprincegatesquare',NULL,'image/jpeg','image',2000,2000,0,1,0,'2019-11-25 15:40:22','2022-02-21 12:06:42',NULL),
	(150,1,'file1-5-82042.jpeg','jpeg','/srv/www/bace-cc.uk/storage/uploads/bace/file1-5-82042.jpeg','/image/bace/file1-5-82042.jpeg','/image/bace/file1-5-82042.jpeg/200x200','file1-5',NULL,'image/jpeg','image',1500,2000,0,1,0,'2019-12-03 09:29:05','2022-02-21 12:06:42',NULL),
	(151,1,'crops-0000-layer-3-16337.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/crops-0000-layer-3-16337.jpg','/image/bace/crops-0000-layer-3-16337.jpg','/image/bace/crops-0000-layer-3-16337.jpg/200x200','crops-0000-layer-3',NULL,'image/jpeg','image',1357,2000,0,1,0,'2019-12-31 17:29:00','2022-02-21 12:06:42',NULL),
	(152,1,'crops-0001-layer-2-92213.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/crops-0001-layer-2-92213.jpg','/image/bace/crops-0001-layer-2-92213.jpg','/image/bace/crops-0001-layer-2-92213.jpg/200x200','crops-0001-layer-2',NULL,'image/jpeg','image',1357,2000,0,1,0,'2019-12-31 17:29:01','2022-02-21 12:06:42',NULL),
	(153,1,'crops-0002-layer-1-97158.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/crops-0002-layer-1-97158.jpg','/image/bace/crops-0002-layer-1-97158.jpg','/image/bace/crops-0002-layer-1-97158.jpg/200x200','crops-0002-layer-1',NULL,'image/jpeg','image',1357,2000,0,1,0,'2019-12-31 17:29:01','2022-02-21 12:06:42',NULL),
	(154,1,'crops-0000-layer-3-64468.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/crops-0000-layer-3-64468.jpg','/image/bace/crops-0000-layer-3-64468.jpg','/image/bace/crops-0000-layer-3-64468.jpg/200x200','crops-0000-layer-3',NULL,'image/jpeg','image',1357,2000,0,1,0,'2020-01-01 13:42:59','2022-02-21 12:06:42',NULL),
	(155,1,'crops-0001-layer-2-79723.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/crops-0001-layer-2-79723.jpg','/image/bace/crops-0001-layer-2-79723.jpg','/image/bace/crops-0001-layer-2-79723.jpg/200x200','crops-0001-layer-2',NULL,'image/jpeg','image',1357,2000,0,1,0,'2020-01-01 13:43:00','2022-02-21 12:06:42',NULL),
	(156,1,'crops-0002-layer-1-40907.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/crops-0002-layer-1-40907.jpg','/image/bace/crops-0002-layer-1-40907.jpg','/image/bace/crops-0002-layer-1-40907.jpg/200x200','crops-0002-layer-1',NULL,'image/jpeg','image',1357,2000,0,1,0,'2020-01-01 13:43:00','2022-02-21 12:06:42',NULL),
	(157,1,'crops-0000-layer-3-23470.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/crops-0000-layer-3-23470.jpg','/image/bace/crops-0000-layer-3-23470.jpg','/image/bace/crops-0000-layer-3-23470.jpg/200x200','crops-0000-layer-3',NULL,'image/jpeg','image',1357,2000,0,1,0,'2020-01-01 13:46:53','2022-02-21 12:06:42',NULL),
	(158,1,'crops-0001-layer-2-27494.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/crops-0001-layer-2-27494.jpg','/image/bace/crops-0001-layer-2-27494.jpg','/image/bace/crops-0001-layer-2-27494.jpg/200x200','crops-0001-layer-2',NULL,'image/jpeg','image',1357,2000,0,1,0,'2020-01-01 13:46:54','2022-02-21 12:06:42',NULL),
	(159,1,'crops-0002-layer-1-69692.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/crops-0002-layer-1-69692.jpg','/image/bace/crops-0002-layer-1-69692.jpg','/image/bace/crops-0002-layer-1-69692.jpg/200x200','crops-0002-layer-1',NULL,'image/jpeg','image',1357,2000,0,1,0,'2020-01-01 13:46:55','2022-02-21 12:06:42',NULL),
	(160,1,'crops-0000-layer-3-77585.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/crops-0000-layer-3-77585.jpg','/image/bace/crops-0000-layer-3-77585.jpg','/image/bace/crops-0000-layer-3-77585.jpg/200x200','crops-0000-layer-3',NULL,'image/jpeg','image',1357,2000,0,1,0,'2020-01-01 13:49:40','2022-02-21 12:06:42',NULL),
	(161,1,'crops-0001-layer-2-70010.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/crops-0001-layer-2-70010.jpg','/image/bace/crops-0001-layer-2-70010.jpg','/image/bace/crops-0001-layer-2-70010.jpg/200x200','crops-0001-layer-2',NULL,'image/jpeg','image',1357,2000,0,1,0,'2020-01-01 13:49:41','2022-02-21 12:06:42',NULL),
	(162,1,'crops-0002-layer-1-18658.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/crops-0002-layer-1-18658.jpg','/image/bace/crops-0002-layer-1-18658.jpg','/image/bace/crops-0002-layer-1-18658.jpg/200x200','crops-0002-layer-1',NULL,'image/jpeg','image',1357,2000,0,1,0,'2020-01-01 13:49:42','2022-02-21 12:06:42',NULL),
	(163,1,'dev-managment-86574.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/dev-managment-86574.jpg','/image/bace/dev-managment-86574.jpg','/image/bace/dev-managment-86574.jpg/200x200','dev-managment',NULL,'image/jpeg','image',1125,2000,0,1,0,'2020-01-01 13:59:23','2022-02-21 12:06:42',NULL),
	(164,1,'dji-0974-63095.JPG','JPG','/srv/www/bace-cc.uk/storage/uploads/bace/dji-0974-63095.JPG','/image/bace/dji-0974-63095.JPG','/image/bace/dji-0974-63095.JPG/200x200','dji-0974',NULL,'image/jpeg','image',1499,2000,0,1,0,'2021-08-11 13:06:46','2022-02-21 12:06:42',NULL),
	(165,1,'cgi-render-rugeley-22728.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/cgi-render-rugeley-22728.jpg','/image/bace/cgi-render-rugeley-22728.jpg','/image/bace/cgi-render-rugeley-22728.jpg/200x200','cgi-render-rugeley',NULL,'image/jpeg','image',1600,2000,0,1,0,'2021-08-11 13:06:46','2022-02-21 12:06:42',NULL),
	(166,1,'0036-leasowes-front-12475.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/0036-leasowes-front-12475.jpg','/image/bace/0036-leasowes-front-12475.jpg','/image/bace/0036-leasowes-front-12475.jpg/200x200','0036-leasowes-front',NULL,'image/jpeg','image',1125,2000,0,1,0,'2021-08-11 13:09:14','2022-02-21 12:06:42',NULL),
	(167,1,'0036-leasowes-kitchen-22869.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/0036-leasowes-kitchen-22869.jpg','/image/bace/0036-leasowes-kitchen-22869.jpg','/image/bace/0036-leasowes-kitchen-22869.jpg/200x200','0036-leasowes-kitchen',NULL,'image/jpeg','image',1125,2000,0,1,0,'2021-08-11 13:09:15','2022-02-21 12:06:42',NULL),
	(168,1,'0036-leasowes-living-room-86908.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/0036-leasowes-living-room-86908.jpg','/image/bace/0036-leasowes-living-room-86908.jpg','/image/bace/0036-leasowes-living-room-86908.jpg/200x200','0036-leasowes-living-room',NULL,'image/jpeg','image',1125,2000,0,1,0,'2021-08-11 13:09:15','2022-02-21 12:06:42',NULL),
	(169,1,'simonjanesbw-22145-copy-19811.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/simonjanesbw-22145-copy-19811.jpg','/image/bace/simonjanesbw-22145-copy-19811.jpg','/image/bace/simonjanesbw-22145-copy-19811.jpg/200x200','simonjanesbw-22145-copy',NULL,'image/jpeg','image',2000,1594,0,1,0,'2021-10-26 09:39:51','2022-02-21 12:06:42',NULL),
	(170,1,'simonjanes-01-web-14799.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/simonjanes-01-web-14799.jpg','/image/bace/simonjanes-01-web-14799.jpg','/image/bace/simonjanes-01-web-14799.jpg/200x200','simonjanes-01-web',NULL,'image/jpeg','image',2000,1594,0,1,0,'2022-01-10 09:24:29','2022-01-10 09:24:29',NULL),
	(171,1,'download-34915.png','png','/srv/www/bace-cc.uk/storage/uploads/bace/download-34915.png','/image/bace/download-34915.png','/image/bace/download-34915.png/200x200','download',NULL,'image/png','image',2000,2000,0,1,0,'2022-02-22 22:04:41','2022-02-22 22:04:41',NULL),
	(172,1,'screen-shot-2022-02-21-at-12-65092.png','png','/srv/www/bace-cc.uk/storage/uploads/bace/screen-shot-2022-02-21-at-12-65092.png','/image/bace/screen-shot-2022-02-21-at-12-65092.png','/image/bace/screen-shot-2022-02-21-at-12-65092.png/200x200','screen-shot-2022-02-21-at-12',NULL,'image/png','image',1034,2000,0,1,0,'2022-02-22 22:11:43','2022-02-22 22:11:43',NULL),
	(173,1,'ben-allan-biec4yk2mta-unsplash-32015.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/ben-allan-biec4yk2mta-unsplash-32015.jpg','/image/bace/ben-allan-biec4yk2mta-unsplash-32015.jpg','/image/bace/ben-allan-biec4yk2mta-unsplash-32015.jpg/200x200','ben-allan-biec4yk2mta-unsplash',NULL,'image/jpeg','image',1333,2000,0,1,0,'2022-02-22 22:19:16','2022-02-22 22:19:16',NULL),
	(174,1,'ben-allan-biec4yk2mta-unsplash-50125.jpg','jpg','/srv/www/bace-cc.uk/storage/uploads/bace/ben-allan-biec4yk2mta-unsplash-50125.jpg','/image/bace/ben-allan-biec4yk2mta-unsplash-50125.jpg','/image/bace/ben-allan-biec4yk2mta-unsplash-50125.jpg/200x200','ben-allan-biec4yk2mta-unsplash',NULL,'image/jpeg','image',1333,2000,0,1,0,'2022-02-22 22:24:05','2022-02-22 22:24:05',NULL);

/*!40000 ALTER TABLE `ft_media` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_media_folders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_media_folders`;

CREATE TABLE `ft_media_folders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` int(10) unsigned NOT NULL,
  `folders_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_media_folders` WRITE;
/*!40000 ALTER TABLE `ft_media_folders` DISABLE KEYS */;

INSERT INTO `ft_media_folders` (`id`, `media_id`, `folders_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,1,NULL,NULL,NULL),
	(2,3,2,NULL,NULL,NULL),
	(3,4,2,NULL,NULL,NULL),
	(4,5,2,NULL,NULL,NULL),
	(5,6,2,NULL,NULL,NULL),
	(6,7,2,NULL,NULL,NULL),
	(7,8,2,NULL,NULL,NULL),
	(8,9,2,NULL,NULL,NULL),
	(9,10,3,NULL,NULL,NULL),
	(10,11,3,NULL,NULL,NULL),
	(11,12,4,NULL,NULL,NULL),
	(12,13,4,NULL,NULL,NULL),
	(13,14,2,NULL,NULL,NULL),
	(14,15,3,NULL,NULL,NULL),
	(15,16,4,NULL,NULL,NULL),
	(16,17,3,NULL,NULL,NULL),
	(17,18,4,NULL,NULL,NULL),
	(18,19,2,NULL,NULL,NULL),
	(19,20,2,NULL,NULL,NULL),
	(20,21,2,NULL,NULL,NULL),
	(21,22,2,NULL,NULL,NULL),
	(22,23,2,NULL,NULL,NULL),
	(23,26,5,NULL,NULL,NULL),
	(24,27,5,NULL,NULL,NULL),
	(25,28,5,NULL,NULL,NULL),
	(26,29,5,NULL,NULL,NULL),
	(27,30,5,NULL,NULL,NULL),
	(28,31,5,NULL,NULL,NULL),
	(29,32,5,NULL,NULL,NULL),
	(30,33,5,NULL,NULL,NULL),
	(31,34,5,NULL,NULL,NULL),
	(32,35,5,NULL,NULL,NULL),
	(33,36,5,NULL,NULL,NULL),
	(34,38,5,NULL,NULL,NULL),
	(35,39,5,NULL,NULL,NULL),
	(36,40,5,NULL,NULL,NULL),
	(37,41,5,NULL,NULL,NULL),
	(38,42,5,NULL,NULL,NULL),
	(39,43,5,NULL,NULL,NULL),
	(40,44,5,NULL,NULL,NULL),
	(41,45,5,NULL,NULL,NULL),
	(42,46,5,NULL,NULL,NULL),
	(43,57,6,NULL,NULL,NULL),
	(44,58,6,NULL,NULL,NULL),
	(45,59,6,NULL,NULL,NULL),
	(46,60,6,NULL,NULL,NULL),
	(47,93,7,NULL,NULL,NULL),
	(48,94,7,NULL,NULL,NULL),
	(49,95,8,NULL,NULL,NULL),
	(50,96,8,NULL,NULL,NULL),
	(51,97,8,NULL,NULL,NULL),
	(52,98,8,NULL,NULL,NULL),
	(53,99,8,NULL,NULL,NULL),
	(54,100,7,NULL,NULL,NULL),
	(55,101,7,NULL,NULL,NULL),
	(56,102,9,NULL,NULL,NULL),
	(57,103,10,NULL,NULL,NULL),
	(58,104,10,NULL,NULL,NULL),
	(59,151,11,NULL,NULL,NULL),
	(60,152,11,NULL,NULL,NULL),
	(61,153,11,NULL,NULL,NULL),
	(62,154,12,NULL,NULL,NULL),
	(63,155,12,NULL,NULL,NULL),
	(64,156,12,NULL,NULL,NULL),
	(65,157,13,NULL,NULL,NULL),
	(66,158,13,NULL,NULL,NULL),
	(67,159,13,NULL,NULL,NULL),
	(68,160,14,NULL,NULL,NULL),
	(69,161,14,NULL,NULL,NULL),
	(70,162,14,NULL,NULL,NULL);

/*!40000 ALTER TABLE `ft_media_folders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_node
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_node`;

CREATE TABLE `ft_node` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `area_fk` int(10) unsigned NOT NULL,
  `locked` tinyint(4) DEFAULT NULL,
  `area` tinyint(4) NOT NULL,
  `parent` tinyint(4) NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '99',
  `exclude` tinyint(4) NOT NULL,
  `publish` tinyint(4) NOT NULL,
  `soft_publish` tinyint(4) NOT NULL,
  `homepage` tinyint(4) NOT NULL DEFAULT '0',
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dscpn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `redirect` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_on` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ft_node_dscpn_index` (`dscpn`),
  KEY `ft_node_keywords_index` (`keywords`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_node` WRITE;
/*!40000 ALTER TABLE `ft_node` DISABLE KEYS */;

INSERT INTO `ft_node` (`id`, `site_id`, `type_id`, `author_id`, `area_fk`, `locked`, `area`, `parent`, `order`, `exclude`, `publish`, `soft_publish`, `homepage`, `tag`, `url_slug`, `title`, `dscpn`, `keywords`, `body`, `image`, `redirect`, `meta_title`, `publish_on`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,1,1,0,0,1,0,0,0,1,0,1,'home','/home','Home','homepage','home','<h3>BACE are a forward-thinking, relationship-centric, construction consultancy. We are experienced ‘make-it-happeners’ who draw upon our diverse professional skills and expertise to support clients in achieving their commercial objectives.</h3>','48',NULL,'Homepage','2017-06-04 20:05:00',NULL,'2022-02-22 22:06:48',NULL),
	(2,1,3,1,0,NULL,1,0,1,0,1,0,0,'people','/people','People','People','','<h4>Collaborative, highly experienced and committed to BACE’s successful and positive team culture, Simon and Lee focus the wider team on delivering excellent service, through a bespoke and personal approach, which has enabled BACE to build a reputation for becoming a valued part of their clients’ teams; totally committed to the success of each project.</h4>','130',NULL,'','2017-06-27 09:35:00','2017-06-27 09:35:01','2022-02-22 22:06:48',NULL),
	(3,1,3,1,0,NULL,1,0,5,0,1,0,0,'people-alt','/people-alt','People alt','People alt','','<p>People alt</p>','0',NULL,'','2017-06-27 10:51:19','2017-06-27 10:51:19','2017-07-14 10:09:28','2017-07-14 10:09:28'),
	(4,1,8,1,0,NULL,1,0,2,0,1,0,0,'services','/services','Services','Approach','','<h4>Established in 2004, BACE are regulated by the RICS.  The team works nationwide offering the capability of a much larger firm with the personal approach and commitment of a small team that is focused on delivering real results for clients.</h4>','134',NULL,'','2017-06-27 11:16:00','2017-06-27 11:16:04','2022-02-22 22:06:48',NULL),
	(6,1,2,1,4,NULL,0,4,4,0,0,0,0,'experience','/experience','Experience','Experience','','<h4>Our growing team of like-minded professionals tailor their experience and skills to meet client needs on a diverse range of projects. The BACE team has extensive expertise in both public and private sector development projects, of all sizes, with particular emphasis on residential, education, health, retail and leisure, commercial and infrastructure schemes.</h4>','79',NULL,'','2017-07-14 08:55:00','2017-07-14 08:55:37','2019-11-11 13:30:57',NULL),
	(7,1,3,1,2,NULL,0,2,1,0,0,0,0,'helen-ward','/people/helen-ward','Helen Ward','Helen Ward','','<p>Personable, practical and a team player, with the desire to get things done efficiently with minimal fuss, Helen Ward is a chartered surveyor with more than 18 years’ experience in the construction industry.</p>','51',NULL,'','2017-07-14 10:01:00','2017-07-14 10:01:04','2019-11-07 13:40:41','2019-11-07 13:40:41'),
	(8,1,3,1,2,NULL,0,2,0,0,1,0,0,'simon-janes','/people/simon-janes','Simon Janes','Simon Janes','','<p class=\"p1\">Dependable, balanced and with an eye for detail, Simon Janes has more than 35 years of experience in all aspects of Development Management, Project Management, Employer’s Agent, Cost Management and Fund Monitoring Services, working on a wide range of residential, retail, care home, automotive, leisure and education development projects.</p>\n<p class=\"p1\">Simon has built a reputation as a trusted advisor to his many, long-term clients, delivering impeccable advice throughout the lifecycle of projects - becoming an integral part of client business teams and acting as the ‘eyes and ears’ of developers, equity funders and banks to support the commercial success of every development he is involved with.</p>','125',NULL,'','2017-07-14 10:01:00','2017-07-14 10:01:24','2022-01-10 09:36:15',NULL),
	(9,1,3,1,2,NULL,0,2,2,0,1,0,0,'lee-haden','/people/lee-haden','Lee Haden','Lee Haden','','<p class=\"p1\">Team-spirited, friendly and highly experienced chartered surveyor Lee Haden has built a 20 year career working for both large and small corporate practices, on a variety of demanding projects in a diverse range of sectors including higher education, health and care homes, automotive, residential, hotels and hostels, pharmaceutical and retail.</p>\n<p class=\"p1\">Lee has expertise in both the private and public sectors, successfully delivering Project Management, Employer’s Agent and Quantity Surveying services. His understanding of the building process and procurement strategies along with being able to utilise best practices from the various sectors Lee has worked within, provide Clients with experience, effectiveness and trust to deliver results.</p>','119',NULL,'','2017-07-14 10:01:00','2017-07-14 10:01:40','2022-01-10 09:36:37',NULL),
	(10,1,3,1,2,NULL,0,2,3,0,0,0,0,'name-five','/people/name-five','Cate McGee','Name Five','','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, seddiam nonummy nibh euismod tincidunt.</p>\n<p>dolore magna aliquam erat volutpat. Ut wisi enim ad minimveniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Ut wisi enim ad minim Ut wisi enim.</p>','22',NULL,'','2017-07-14 10:02:00','2017-07-14 10:02:06','2019-11-07 13:32:56','2019-11-07 13:32:56'),
	(11,1,3,1,2,NULL,0,2,4,0,0,0,0,'name-six','/people/name-six','Lloyd ?','Name Six','','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, seddiam nonummy nibh euismod tincidunt.</p>\n<p>dolore magna aliquam erat volutpat. Ut wisi enim ad minimveniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Ut wisi enim ad minim Ut wisi enim.</p>','23',NULL,'','2017-07-14 10:02:00','2017-07-14 10:02:22','2019-11-07 13:32:56','2019-11-07 13:32:56'),
	(12,1,1,1,1,NULL,0,1,99,0,1,0,0,'approach','/home/approach','Approach','Approach','','<p>Approach</p>','0','/approach','','2017-07-14 10:29:00','2017-07-14 10:29:35','2017-09-05 15:02:51','2017-09-05 15:02:51'),
	(13,1,1,1,1,NULL,0,1,1,0,0,0,0,'people','/home/people','People','People','','<p>People</p>','80','/people','','2017-07-14 10:37:00','2017-07-14 10:37:18','2019-09-12 07:48:12',NULL),
	(14,1,1,1,1,NULL,0,1,0,0,0,0,0,'expertise','/home/expertise','Expertise','Expertise','','<p>Expertise</p>','0','/expertise','','2017-07-14 10:38:00','2017-07-14 10:38:02','2019-09-12 07:48:10',NULL),
	(15,1,1,1,1,NULL,0,1,2,0,0,0,0,'experience','/home/experience','Experience','Experience','','<p>Experience</p>','0','/experience','','2017-07-14 10:39:00','2017-07-14 10:39:26','2019-09-12 07:48:13',NULL),
	(16,1,4,1,0,NULL,1,0,3,0,1,0,0,'news','/news','News','Bulletin','','<p>News</p>','0',NULL,'','2017-07-21 05:50:00','2017-07-21 05:50:07','2022-02-22 22:06:48',NULL),
	(17,1,4,1,16,NULL,0,16,2,0,0,0,0,'consults-on-new-city-development','/bulletin/consults-on-new-city-development','Consults on new city development','Consults on new city development','','<p>Property development is inherently risky. With over 40 years’between them; Andrew and Richard interrogate projects from an early stage ensure client’s requirements are met with good design. We find it critical for architects and designers to appreciate the available budget and timescale, and we help them to work within constraints without diluting either enthusiasm or design.</p>\n<p>We find it critical for architects and designers to appreciate the available budget and timescale, and we help them to work within constraints without diluting either enthusiasm or design.</p>','0',NULL,'','2017-07-13 00:00:00','2017-07-21 06:12:05','2019-03-06 09:06:37','2019-03-06 09:06:37'),
	(18,1,4,1,16,NULL,0,16,3,0,0,0,0,'welcomes-new-team-members','/bulletin/welcomes-new-team-members','Welcomes new team members','Welcomes new team members','','<p>Property development is inherently risky. With over 40 years’ between them; Andrew and Richard interrogate projects from an early stage to ensure client’s requirements are met with good design. We find it critical for architects and designers to appreciate the available budget and timescale, and we help them to work within constraints without diluting either enthusiasm or design.</p>\n<p>Property development is inherently risky. With over 40 years’ between them; Andrew and Richard interrogate projects from an early stage to ensure client’s requirements are met with good design. We find it critical for architects and designers to appreciate the available budget and timescale, and we help them to work within constraints without diluting either enthusiasm or design.</p>','0',NULL,'','2017-07-13 00:00:00','2017-07-21 06:22:37','2019-03-06 09:06:37','2019-03-06 09:06:37'),
	(19,1,4,1,16,NULL,0,16,4,0,0,0,0,'welcomes-new-team-members-again','/bulletin/welcomes-new-team-members-again','Welcomes new team members again','Welcomes new team members again','','<p>Property development is inherently risky. With over 40 years’ between them; Andrew and Richard interrogate projects from an early stage to ensure client’s requirements are met with good design.</p>\n<p>We find it critical for architects and designers to appreciate the available budget and timescale, and we help them to work within constraints without diluting either enthusiasm or design.</p>','0',NULL,'','2017-07-05 00:58:00','2017-07-21 09:46:09','2019-03-06 09:06:37','2019-03-06 09:06:37'),
	(20,1,8,1,4,NULL,0,4,0,0,1,0,0,'cost-management','/services/cost-management','Cost Management','Cost Management','','<p>BACE have built their whole philosophy on the need to provide solid management and cost advice to clients and other professional consultants throughout all stages of a commission to ensure that projects are delivered both on time and budget.  Our cost management processes enable us to manage the budget requirements and anticipated costs from inception to completion through cost control procedures geared to proactively “manage” not just reactively record or monitor costs ultimately to maximise the return on investment for our clients. </p>\n<p>We operate a proven, well managed process which calls for continuously checking procedures, ensuring that all elements of works are captured correctly from the budgeting phase, to completion of the project with each stage of the process identifying cost risk items that need to be addressed prior to the next one starting.</p>','77',NULL,'','2017-08-03 21:10:00','2017-08-03 21:10:04','2020-01-01 13:53:45',NULL),
	(21,1,8,1,4,NULL,0,4,1,0,1,0,0,'development-management','/services/development-management','Development Management','Development Management','','<p>BACE work in collaboration with Developers to provide a project management “plus” service which is individually tailored to meet the Client’s specific business needs.   We work with a wide variety of Developers, from experienced with established in-house teams to individuals embarking on their first development within the residential and commercial sector.  We focus on increasing return and reducing risk and have been instrumental in assisting Clients in increasing their GDV and reducing construction costs through various methods including repeat negotiation and the use of modern methods of construction.</p>\n<p>Our Development Management service is a cross fertilisation of our expertise in Cost Management, Contract Administration and Project Monitoring which enables us, through our vast experience and established processes, to provide a skilled oversite of all phases of the development process, from initial appraisals to project closeout.</p>','163',NULL,'','2017-08-03 21:21:00','2017-08-03 21:21:34','2020-01-01 13:59:51',NULL),
	(22,1,8,1,4,NULL,0,4,2,0,1,0,0,'contract-administration','/services/contract-administration','Contract Administration','Contract Administration','','<p>At BACE we believe that effective Contract Administration is the key to the successful completion of projects.</p>\n<p>Our role is significant for the delivery of the project as we are the interface between you the Client and the Contractor. Either as Contract Administrator or Employer’s Agent, we’re able to consistently interpret contracts, advise on your contractual entitlements and manage contract obligations and procedures, issuing the relevant certificates, instructions and notices stipulated within the contract.</p>\n<p>We pride ourselves on the ability to build good team relationships, but understand that from time to time differences of opinion do arise on construction projects. Our attitude is to mitigate escalation of disputes by continuous communication and proactive early engagement to find the resolution.</p>\n<p>We manage various forms of construction contracts with balance, integrity and transparency and our approach encompasses the traditional skills of the Quantity Surveyor with the hands-on tactic that lies behind all our services.</p>','139',NULL,'','2017-08-03 21:21:00','2017-08-03 21:21:54','2019-11-25 12:45:25',NULL),
	(23,1,8,1,4,NULL,0,4,3,0,1,0,0,'project-monitoring','/services/project-monitoring','Project Monitoring','Project Monitoring','','<p>BACE Project Monitoring provides specialist services to banks and other funding institutions that are in the business of lending funds to developers for the purpose of procuring development projects.</p>\n<p>Debt funding of this nature has inherent risks, as a result it is essential that funders receive sound, dependable professional advice throughout the development process in order to manage those risks.</p>\n<p>BACE pride ourselves in possessing all the necessary expertise to cover the relevant aspects of any development project from inception to completion and in use.</p>\n<p>We whole heartedly believe that the core Project and Cost Management techniques and processes we regularly utilise to deliver schemes, are inherently transferable and relevant to the Project Monitoring function.</p>\n<p>The scope of our services can generally be categorised into two distinct phases. The first covering pre-commencement ‘Due diligence’ and the second, the construction phase.</p>','79',NULL,'','2017-08-03 21:22:00','2017-08-03 21:22:08','2020-01-01 13:54:28',NULL),
	(24,1,1,1,1,NULL,0,1,99,0,0,0,0,'bulletin','/home/bulletin','Bulletin','Bulletin','','<p>Bulletin</p>','78','/bulletin','','2017-09-05 15:29:00','2017-09-05 15:24:31','2019-09-12 07:48:14',NULL),
	(25,1,2,1,4,NULL,0,6,99,0,1,0,0,'residential','/experience/residential','Residential','Residential','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tristique vitae libero vel ullamcorper. Maecenas vitae mi aliquet, consectetur nisl vel, rhoncus dui. </p>\n<p>Duis libero est, congue sit amet neque sit amet, gravida rutrum eros. Sed eget nunc a ipsum tempor tempor.</p>','92',NULL,'','2017-09-10 20:46:00','2017-09-10 20:46:13','2019-11-07 12:05:28',NULL),
	(26,1,2,1,4,NULL,0,6,99,0,1,0,0,'commercial','/experience/commercial','Commercial','Commercial','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tristique vitae libero vel ullamcorper. Maecenas vitae mi aliquet, consectetur nisl vel, rhoncus dui. </p>\n<p>Duis libero est, congue sit amet neque sit amet, gravida rutrum eros. Sed eget nunc a ipsum tempor tempor.</p>','44',NULL,'','2017-09-10 20:46:00','2017-09-10 20:46:43','2019-11-07 12:05:28',NULL),
	(27,1,2,1,4,NULL,0,6,99,0,1,0,0,'education','/experience/education','Education','Education','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tristique vitae libero vel ullamcorper. Maecenas vitae mi aliquet, consectetur nisl vel, rhoncus dui. </p>\n<p>Duis libero est, congue sit amet neque sit amet, gravida rutrum eros. Sed eget nunc a ipsum tempor tempor.</p>','90',NULL,'','2017-09-10 20:46:00','2017-09-10 20:46:57','2019-11-07 12:05:28',NULL),
	(28,1,2,1,4,NULL,0,6,99,0,1,0,0,'healthcare','/experience/healthcare','Healthcare','Healthcare','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tristique vitae libero vel ullamcorper. Maecenas vitae mi aliquet, consectetur nisl vel, rhoncus dui. </p>\n<p>Duis libero est, congue sit amet neque sit amet, gravida rutrum eros. Sed eget nunc a ipsum tempor tempor.</p>','28',NULL,'','2017-09-10 20:47:00','2017-09-10 20:47:08','2019-11-07 12:05:28',NULL),
	(29,1,2,1,4,NULL,0,6,99,0,1,0,0,'hotel-leisure','/experience/hotel-leisure','Hotel & Leisure','Hotel & Leisure','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tristique vitae libero vel ullamcorper. Maecenas vitae mi aliquet, consectetur nisl vel, rhoncus dui. </p>\n<p>Duis libero est, congue sit amet neque sit amet, gravida rutrum eros. Sed eget nunc a ipsum tempor tempor.</p>','29',NULL,'','2017-09-10 20:47:00','2017-09-10 20:47:19','2019-11-07 12:05:28',NULL),
	(30,1,2,1,4,NULL,0,6,99,0,1,0,0,'retail','/experience/retail','Retail','Retail','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tristique vitae libero vel ullamcorper. Maecenas vitae mi aliquet, consectetur nisl vel, rhoncus dui. </p>\n<p>Duis libero est, congue sit amet neque sit amet, gravida rutrum eros. Sed eget nunc a ipsum tempor tempor.</p>','31',NULL,'','2017-09-10 20:47:00','2017-09-10 20:47:30','2019-11-07 12:05:28',NULL),
	(31,1,2,1,4,NULL,0,6,99,0,1,0,0,'automative','/experience/automative','Automotive','Automative','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tristique vitae libero vel ullamcorper. Maecenas vitae mi aliquet, consectetur nisl vel, rhoncus dui. </p>\n<p>Duis libero est, congue sit amet neque sit amet, gravida rutrum eros. Sed eget nunc a ipsum tempor tempor.</p>','38',NULL,'','2017-09-10 20:47:00','2017-09-10 20:47:47','2019-11-07 12:05:28',NULL),
	(32,1,2,1,4,NULL,0,6,99,0,1,0,0,'cost-management','/experience/cost-management','Cost Management','Cost Management','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tristique vitae libero vel ullamcorper. Maecenas vitae mi aliquet, consectetur nisl vel, rhoncus dui. </p>\n<p>Duis libero est, congue sit amet neque sit amet, gravida rutrum eros. Sed eget nunc a ipsum tempor tempor.</p>','36',NULL,'','2017-09-10 20:48:00','2017-09-10 20:48:01','2019-11-07 12:05:28',NULL),
	(33,1,2,1,4,NULL,0,6,99,0,1,0,0,'development-management','/experience/development-management','Development Management','Development Management','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tristique vitae libero vel ullamcorper. Maecenas vitae mi aliquet, consectetur nisl vel, rhoncus dui. </p>\n<p>Duis libero est, congue sit amet neque sit amet, gravida rutrum eros. Sed eget nunc a ipsum tempor tempor.</p>','42',NULL,'','2017-09-10 20:48:00','2017-09-10 20:48:34','2019-11-07 12:05:28',NULL),
	(34,1,2,1,4,NULL,0,6,99,0,1,0,0,'project-management','/experience/project-management','Project Monitoring','Project Management','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tristique vitae libero vel ullamcorper. Maecenas vitae mi aliquet, consectetur nisl vel, rhoncus dui. </p>\n<p>Duis libero est, congue sit amet neque sit amet, gravida rutrum eros. Sed eget nunc a ipsum tempor tempor.</p>','46',NULL,'','2017-09-10 20:48:00','2017-09-10 20:48:47','2019-11-07 12:05:28',NULL),
	(35,1,2,1,4,NULL,0,6,99,0,1,0,0,'new-build','/experience/new-build','New Build','New Build','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tristique vitae libero vel ullamcorper. Maecenas vitae mi aliquet, consectetur nisl vel, rhoncus dui. </p>\n<p>Duis libero est, congue sit amet neque sit amet, gravida rutrum eros. Sed eget nunc a ipsum tempor tempor.</p>','32',NULL,'','2017-09-10 20:48:00','2017-09-10 20:48:58','2019-11-07 12:05:28',NULL),
	(36,1,2,1,4,NULL,0,6,99,0,1,0,0,'refurbishment','/experience/refurbishment','Refurbishment','Refurbishment','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tristique vitae libero vel ullamcorper. Maecenas vitae mi aliquet, consectetur nisl vel, rhoncus dui. </p>\n<p>Duis libero est, congue sit amet neque sit amet, gravida rutrum eros. Sed eget nunc a ipsum tempor tempor.</p>','87',NULL,'','2017-09-10 20:49:00','2017-09-10 20:49:15','2019-11-07 12:05:28',NULL),
	(37,1,6,1,0,NULL,1,0,5,0,1,0,0,'contact','/contact','Contact','Contact','','<h5>BACE Construction Consultants</h5>\n<h5>The Folium, Studio 101,<br />5-8 Caroline Street,<br />Jewellery Quarter,<br />Birmingham, B3 1TW</h5>\n<h5>T—+44 (0)121 200 1200<br />E—<a href=\"mailto:info@bace%E2%80%93cc.uk\">info@bace–cc.uk</a></h5>','136',NULL,'','2017-11-20 13:27:00','2017-11-20 13:27:28','2022-02-22 22:06:48',NULL),
	(38,1,4,1,16,NULL,0,16,0,0,1,0,0,'bace-launches-new-website-voicing-with-exciting-office-move','/news/bace-launches-new-website-voicing-with-exciting-office-move','We have moved','BACE launches new website, voicing with exciting office move!','','<p>We are now located in Office 101 in newly renovated The Folium off St Paul’s Square, Jewellery Quarter which is a fitting edition to the recently transformed Caroline Street. The new BACE headquarters is a vibrant and inviting open plan work space with break out areas allowing the team to work collaboratively and efficiently. Please feel free to pop in for a coffee!</p>','93',NULL,'','2017-12-08 09:25:00','2017-12-08 09:25:57','2022-02-22 23:13:01',NULL),
	(39,1,4,1,16,NULL,0,16,1,0,1,0,0,'bace-goes-online','/news/bace-goes-online','New website launched - bace-cc.uk','BACE goes online','','<p>We are delighted to announce the launch of our new website, <br />www.bace-cc.uk. The site demonstrates our experience, capabilities and commitment. It will also showcase the work we do for a diverse range of clients and sectors - the perfect vehicle for getting to know us a little better.<br /> <br />BACE would like to say thanks to our neighbours at Z3 Design Studio for their direction, support and understanding! Thanks all, great work.</p>\n<p>(www.designbyz3.com)</p>','99',NULL,'','2017-12-08 09:20:00','2017-12-08 09:50:35','2022-02-22 23:13:01',NULL),
	(40,1,4,1,16,NULL,0,16,99,0,1,0,0,'this-is-a-test','/bulletin/this-is-a-test','This is a test','This is a test','','<p>We are now located in Office 101 in newly renovated The Folium off St Paul’s Square, Jewellery Quarter which is a fitting edition to the recently transformed Caroline Street. The new BACE headquarters is a vibrant and inviting open plan work space with break out areas allowing the team to work collaboratively and efficiently. Please feel free to pop in for a coffee!</p>','0',NULL,'','2019-03-06 09:07:07','2019-03-06 09:07:07','2019-03-06 09:07:31','2019-03-06 09:07:31'),
	(41,1,4,1,16,NULL,0,16,2,0,1,0,0,'alban-house','/news/alban-house','Alban House','Test','','<p>Works continue to progress at our Alban House, Hereford project located in High Town, Hereford. The front 10nr apartments off High Town are now focused around the internal fit out. The striking of the scaffolding has begun, revealing the beautiful restored historic façade retained from the fire damaged site. Works have also commenced to the apartment at the rear of the site with the substructure and frame now complete. Works are on programme and on budget, scheduled to complete in December 2019.</p>','146',NULL,'','2019-08-06 15:00:00','2019-03-13 11:15:00','2022-02-22 23:13:01',NULL),
	(42,1,7,1,0,NULL,1,0,4,0,1,0,0,'careers','/careers','Careers','Careers','','<h4>We are always looking to connect with like-minded people! Follow us on LinkedIn to keep up-to-date with BACE and be the first to know about future vacancies.</h4>','136',NULL,'','2019-05-02 22:02:00','2019-05-02 22:02:08','2022-02-22 22:06:48',NULL),
	(43,1,7,1,42,NULL,0,42,99,0,1,0,0,'account-handler','/careers/account-handler','Senior Quantity Surveyor','Account Handler','','<p>We are looking for a Senior Quantity Surveyor / Employers Agent to join our team in Birmingham. The successful professional will be part of an exciting, growing young team who are involved in a wide range of interesting, challenging projects and will be working on a range of construction sector projects including Residential, Local Authority, Education and care home developments both new Build and Refurbishment up to £30m BACE are an equal opportunities employer and welcome applications from all. If you want to be a part of our dynamic and friendly company then in the first instance please send your CV and a small example of portfolio work to <a href=\"mailto:info@bace-cc.uk\" target=\"_blank\" rel=\"noreferrer noopener\"><strong>info@bace-cc.uk</strong></a></p>','0',NULL,'','2019-05-02 22:43:00','2019-05-02 22:43:18','2019-05-03 10:08:34',NULL),
	(44,1,7,1,42,NULL,0,42,99,0,0,0,0,'junior-consultant','/careers/junior-consultant','Junior Consultant','Junior Consultant','','<p>Current VancanciesLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore.</p>','0',NULL,'','2019-05-02 22:44:00','2019-05-02 22:44:29','2019-05-03 10:03:49',NULL),
	(45,1,3,1,2,NULL,0,2,99,0,0,0,0,'michael-edmond','/people/michael-edmond','Michael Edmond','Michael Edmond','','<p>Michael Edmond</p>','123',NULL,'','2019-11-07 13:47:00','2019-11-07 13:47:06','2021-10-22 11:26:20',NULL),
	(46,1,3,1,2,NULL,0,2,99,0,0,0,0,'katie-pearson','/people/katie-pearson','Katie Pearson','Katie Pearson','','<p>Katie Pearson</p>','117',NULL,'','2019-11-07 13:47:00','2019-11-07 13:47:25','2021-08-10 09:19:37',NULL),
	(47,1,3,1,2,NULL,0,2,3,0,1,0,0,'david-platt','/people/david-platt','David Platt','David Platt','','<p class=\"p1\">A well-organised Project Management professional with an attention to detail, able to prioritise, communicate and manage at all levels, focusing on client satisfaction and providing solutions for complex projects.An Associate Director at BACE with 10+ years’ Project Management experience who has successfully managed projects with both cross sector consultancy and client-side experience.</p>\n<p class=\"p1\">David has multi-disciplined experience carrying out roles including Project Management, Programme Management, Construction Management, Employer’s Agent / Contract Administration and Fund Monitoring. David’s knowledge and skillset as a Project Manager has come from experience of dealing with many different clients in varied sectors on a wealth of new build and refurbishment projects.</p>','114',NULL,'','2019-11-07 13:47:00','2019-11-07 13:47:46','2022-01-10 09:35:18',NULL),
	(48,1,3,1,2,NULL,0,2,99,0,0,0,0,'steph-brown','/people/steph-brown','Steph Brown','Steph Brown','','<p>Steph Brown</p>','127',NULL,'','2019-11-07 13:48:00','2019-11-07 13:48:07','2021-08-10 09:19:38',NULL),
	(49,1,3,1,2,NULL,0,2,99,0,0,0,0,'lloyd-pearson','/people/lloyd-pearson','Lloyd Pearson','Lloyd Pearson','','<p>Lloyd Pearson</p>','121',NULL,'','2019-11-07 14:01:00','2019-11-07 13:48:54','2021-08-10 09:19:21',NULL),
	(50,1,3,1,2,NULL,0,2,99,0,0,0,0,'gregory-kirby','/people/gregory-kirby','Gregory Kirby','Gregory Kirby','','<p>Gregory Kirby</p>','116',NULL,'','2019-11-07 14:21:35','2019-11-07 14:21:35','2019-12-18 10:47:35',NULL),
	(51,1,4,1,16,NULL,0,16,3,0,1,0,0,'princes-gate-homer-road-solihull','/news/princes-gate-homer-road-solihull','Princes Gate: Homer Road, Solihull','Princes Gate: Homer Road, Solihull','','<p>Works have completed on Phase 1 following Practical completion of Consort House, which was a conversion from office to 30 nr. apartments which included forming a penthouse at roof level.</p>\n<p>Phase 2 is the conversion of Royal and Regent House, converting from offices to form 70 new apartments over two storeys. Works, which are due to complete 20<sup>th</sup> December 2019 are progressing well with the majority of the rooms to ground and first floor boarded and closed. Main Contractor is focusing labour on the second floor to catch up. Challenges on this project have involved new flat roof installations throughout both buildings, with existing pitched tiled structures being stripped, felted and battened and relaying of existing tiles.</p>','148',NULL,'','2019-08-15 15:00:00','2019-11-11 13:04:51','2022-02-22 23:13:01',NULL),
	(52,1,4,1,16,NULL,0,16,4,0,1,0,0,'moseley-st-digbeth','/news/moseley-st-digbeth','Moseley St. Digbeth','Moseley St. Digbeth','','<p>Works continue to progress at the Moseley Gardens project for Prosperity Developments located on Moseley Street, Digbeth.</p>\n<p> BACE Construction Consultants are carrying out the Employer’s Agent &amp; Cost Management roles on the project working closely with the Client Team, Prosperity Developments and their development partners F3Group and the Design and Build Contractor J A Ball Limited.</p>\n<p> The development in the heart of Digbeth, comprises of 67 one and two bedroom apartments over six floors, with the project scheduled to complete in November 2020.</p>\n<p> Works commenced on site in July 2019 with groundworks currently progressing well.</p>','150',NULL,'','2019-12-03 09:28:00','2019-12-03 09:28:11','2022-02-22 23:13:01',NULL),
	(53,1,2,1,0,NULL,1,0,6,0,1,0,0,'privacy-policy','/privacy-policy','Privacy Policy','Privacy Policy','','<p>This privacy policy sets out how we use and protect any information that you give us when you use this website. We are committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this website, you can be assured that it will only be used in accordance with this privacy statement. We may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes.</p>\n<h4>What we collect.</h4>\n<p>We may collect the following information:</p>\n<p>name and job title<br />contact information including email address<br />demographic information such as postcode, preferences and interests<br />other information relevant to customer surveys and/or offers<br />What we do with the information we gather<br />We require this information to understand your needs and provide you with a better service, and in particular for the following reasons:</p>\n<h4>Internal record keeping.</h4>\n<p>We may use the information to improve our products and services.<br />We may periodically send promotional emails about new products, special offers or other information which we think you may find interesting using the email address which you have provided.<br />Security “BACE use the principal of ‘Legitimate Interest’ as the lawful basis for collecting and processing incoming personal data and subsequent ongoing communication.</p>\n<p>Article 6(1)(f) of the General Data Protection Regulation (GDPR) says that we can process your data where it “is necessary for the purposes of the legitimate interests pursued by [us] or by a third party, except where such interests are overridden by the interests or fundamental rights or freedoms of [you] which require protection of personal data.”</p>\n<p>We honestly believe the data we hold on you and communication help us to offer you a more tailored, efficient service, so you get the very best possible service from us.</p>\n<p>However, you do have the right to object to us processing your personal data on this basis. If you would like to do so, please email info@bace–cc.uk\n</p>\n\n<h4>Links to other websites</h4>\n<p>Our website may contain links to other websites of interest. However, once you have used these links to leave our site, you should note that we do not have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the website in question.</p>\n<h4>Controlling your personal information.</h4>\n<p>We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.</p>\n<p>We will not sell, distribute or lease your personal information to third parties unless we have your permission or are required by law to do so. We may use your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this to happen.</p>\n<p>You may request details of personal information which we hold about you under the Data Protection Act 1998. A small fee will be payable. If you would like a copy of the information held on you please write to us at the address found on our ‘contact us’ page.</p>\n<p>If you believe that any information we are holding on you is incorrect or incomplete, please write to or email us as soon as possible. We will promptly correct any information found to be incorrect.</p>','0',NULL,'','2020-02-20 10:57:06','2020-02-20 10:50:51','2022-02-22 22:06:48',NULL),
	(54,1,3,1,2,NULL,0,2,99,0,1,0,0,'john-pizzey','/people/john-pizzey','John Pizzey','John Pizzey','','<p class=\"p1\">A Chartered Quantity Surveying professional with 30+ years experience on a multitude of new build &amp; refurbishment projects in a variety of sectors for both public and private clients.An integral part of the team with a forensic attention to detail.</p>','170',NULL,'','2021-10-22 11:26:00','2021-10-22 11:26:47','2022-01-10 09:36:00',NULL),
	(55,1,4,1,16,NULL,0,16,99,0,0,0,0,'test-article','/news/test-article','Test Article','Test Article','','<p>Lorem ipsum dolor sit amet. Non ipsa quis est animi consequatur vel dolor ratione qui natus galisum et corporis soluta et repudiandae soluta. Sit fugiat voluptatibus et sint quibusdam eos necessitatibus voluptate non odit sint ut internos dolorum quo totam reprehenderit. Nemo totam eos culpa similique ut commodi impedit et saepe veniam. Aut consequatur laboriosam ad adipisci unde ex mollitia et dicta iure qui nihil asperiores et asperiores dignissimos.Lorem ipsum dolor sit amet. Non ipsa quis est animi consequatur vel dolor ratione qui natus galisum et corporis soluta et repudiandae soluta. Sit fugiat voluptatibus et sint quibusdam eos necessitatibus voluptate non odit sint ut internos dolorum quo totam reprehenderit. Nemo totam eos culpa similique ut commodi impedit et saepe veniam. Aut consequatur laboriosam ad adipisci unde ex mollitia et dicta iure qui nihil asperiores et asperiores dignissimos.</p>','0',NULL,'','2022-02-21 11:41:00','2022-02-21 11:41:46','2022-02-22 22:16:09','2022-02-22 22:16:09'),
	(56,1,4,1,16,NULL,0,16,99,0,1,0,0,'test-article-1','/news/test-article-1','Test Article','Test Article','','<p>Lorem ipsum dolor sit amet. Qui dolor voluptate eos consectetur placeat ex omnis nulla est rerum dolore in harum enim. Quo voluptatem aliquam et nobis rerum ut totam nihil!</p>\n<p>Aut fuga repudiandae aut tempora molestiae quo blanditiis facere ut libero asperiores eos eaque dignissimos est autem error. Ut eveniet dolor aut repellat consequatur eos corporis impedit ut nihil voluptate aut consequuntur quia aut dolores natus ea enim commodi. Ut consequatur distinctio ut ratione quaerat in similique sint sed quae harum ad voluptas dolorem non dignissimos fugiat aut sunt sunt. Ut molestiae culpa qui ratione corporis a galisum aliquid et reprehenderit harum.</p>','172',NULL,'','2022-02-22 22:15:30','2022-02-22 22:13:04','2022-02-22 22:16:14','2022-02-22 22:16:14'),
	(57,1,4,1,16,NULL,0,16,99,0,1,0,0,'test-article','/news/test-article','Test Article','Test Article','','<p>Lorem ipsum dolor sit amet. Qui dolor voluptate eos consectetur placeat ex omnis nulla est rerum dolore in harum enim. Quo voluptatem aliquam et nobis rerum ut totam nihil!</p>\n<p>Aut fuga repudiandae aut tempora molestiae quo blanditiis facere ut libero asperiores eos eaque dignissimos est autem error. Ut eveniet dolor aut repellat consequatur eos corporis impedit ut nihil voluptate aut consequuntur quia aut dolores natus ea enim commodi. Ut consequatur distinctio ut ratione quaerat in similique sint sed quae harum ad voluptas dolorem non dignissimos fugiat aut sunt sunt. Ut molestiae culpa qui ratione corporis a galisum aliquid et reprehenderit harum.</p>','173',NULL,'','2022-02-22 22:21:17','2022-02-22 22:21:13','2022-02-22 22:22:08','2022-02-22 22:22:08'),
	(58,1,4,1,16,NULL,0,16,5,0,0,0,0,'test-article','/news/test-article','Test Article','Test Article','','<p>Lorem ipsum dolor sit amet. Qui dolor voluptate eos consectetur placeat ex omnis nulla est rerum dolore in harum enim. Quo voluptatem aliquam et nobis rerum ut totam nihil!</p>\n<p>Aut fuga repudiandae aut tempora molestiae quo blanditiis facere ut libero asperiores eos eaque dignissimos est autem error. Ut eveniet dolor aut repellat consequatur eos corporis impedit ut nihil voluptate aut consequuntur quia aut dolores natus ea enim commodi. Ut consequatur distinctio ut ratione quaerat in similique sint sed quae harum ad voluptas dolorem non dignissimos fugiat aut sunt sunt. Ut molestiae culpa qui ratione corporis a galisum aliquid et reprehenderit harum.</p>','174',NULL,'','2022-02-22 22:27:47','2022-02-22 22:26:58','2022-02-22 23:13:01',NULL);

/*!40000 ALTER TABLE `ft_node` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_node_errors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_node_errors`;

CREATE TABLE `ft_node_errors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `error` int(11) NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table ft_node_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_node_roles`;

CREATE TABLE `ft_node_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `can_edit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table ft_node_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_node_tags`;

CREATE TABLE `ft_node_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table ft_password_reminders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_password_reminders`;

CREATE TABLE `ft_password_reminders` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table ft_permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_permission_role`;

CREATE TABLE `ft_permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_permission_role` WRITE;
/*!40000 ALTER TABLE `ft_permission_role` DISABLE KEYS */;

INSERT INTO `ft_permission_role` (`id`, `permission_id`, `role_id`)
VALUES
	(1,1,1),
	(2,2,1),
	(3,2,2),
	(4,3,2),
	(5,4,2),
	(6,5,2),
	(7,6,2),
	(8,7,2),
	(9,8,2),
	(10,9,2),
	(11,10,2),
	(12,11,2),
	(13,12,2),
	(14,13,2);

/*!40000 ALTER TABLE `ft_permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_permissions`;

CREATE TABLE `ft_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `deleteable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_permissions` WRITE;
/*!40000 ALTER TABLE `ft_permissions` DISABLE KEYS */;

INSERT INTO `ft_permissions` (`id`, `name`, `display_name`, `usable`, `deleteable`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'manage_all','Manage Everything','0','0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL),
	(2,'can_administer_website','Can login into the admin system on the website','1','0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL),
	(3,'can_manage_users','Can Manage Users','1','0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL),
	(4,'can_manage_content','Can Manage Content','1','0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL),
	(5,'can_manage_nodes','Can Manage nodes','1','0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL),
	(6,'advanced_user','Advanced User','1','0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL),
	(7,'can_manage_snippets','Can Manage Snippets','1','0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL),
	(8,'can_manage_media','Can Manage Media','1','0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL),
	(9,'can_publish','Can Publish','1','0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL),
	(10,'can_delete','Can Delete','1','0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL),
	(11,'can_manage_tags','Can Manage Tags','1','0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL),
	(12,'can_manage_plugins','Can Manage Plugins','1','0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL),
	(13,'can_manage_sites','Can Manage Sites','1','0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL);

/*!40000 ALTER TABLE `ft_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_roles`;

CREATE TABLE `ft_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `usable` int(11) NOT NULL DEFAULT '1',
  `deleteable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ft_roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_roles` WRITE;
/*!40000 ALTER TABLE `ft_roles` DISABLE KEYS */;

INSERT INTO `ft_roles` (`id`, `site_id`, `parent_id`, `name`, `usable`, `deleteable`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,0,0,'Superadmin',1,'0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL),
	(2,1,0,'admin',1,'0','2017-06-04 20:05:29','2017-06-04 20:05:29',NULL);

/*!40000 ALTER TABLE `ft_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_site
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_site`;

CREATE TABLE `ft_site` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dscpn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ft_site_domain_unique` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_site` WRITE;
/*!40000 ALTER TABLE `ft_site` DISABLE KEYS */;

INSERT INTO `ft_site` (`id`, `domain`, `title`, `dscpn`, `keywords`, `theme`, `company`, `person`, `email`, `street`, `town`, `postcode`, `tel`, `region`, `tag`, `key`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'bace-cc.uk','bace','bace','bace','bace','bace','bace','info@bace-cc.uk','bace','bace','bace','bace','bace','bace','bace','2017-06-04 20:06:26','2017-06-04 20:06:26',NULL);

/*!40000 ALTER TABLE `ft_site` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_snippet_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_snippet_groups`;

CREATE TABLE `ft_snippet_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dscpn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_snippet_groups` WRITE;
/*!40000 ALTER TABLE `ft_snippet_groups` DISABLE KEYS */;

INSERT INTO `ft_snippet_groups` (`id`, `site_id`, `tag`, `title`, `dscpn`, `publish`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,'homepageslides','Homepage Slides','Homepage Slides',0,'2019-11-11 14:31:03','2019-11-11 14:31:03',NULL),
	(2,1,'cost-management-projects','Cost Management Projects','Cost Management Projects',0,'2019-12-18 07:33:24','2019-12-18 07:33:24',NULL),
	(3,1,'development-management-projects','Development Management Projects','Development Management Projects',0,'2019-12-18 07:35:47','2019-12-18 07:35:47',NULL),
	(4,1,'contract-administration-projects','Contract Administration Projects','Contract Administration Projects',0,'2019-12-18 07:37:20','2019-12-18 07:37:20',NULL),
	(5,1,'project-monitoring-projects','Project Monitoring Projects','Project Monitoring Projects',0,'2019-12-18 07:38:43','2019-12-18 07:38:43',NULL);

/*!40000 ALTER TABLE `ft_snippet_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_snippets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_snippets`;

CREATE TABLE `ft_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `link_type` int(10) unsigned DEFAULT NULL,
  `link_internal` int(10) unsigned DEFAULT NULL,
  `link_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) DEFAULT '0',
  `publish` tinyint(4) DEFAULT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_snippets` WRITE;
/*!40000 ALTER TABLE `ft_snippets` DISABLE KEYS */;

INSERT INTO `ft_snippets` (`id`, `site_id`, `group_id`, `author_id`, `link_type`, `link_internal`, `link_external`, `order`, `publish`, `tag`, `title`, `body`, `image`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,1,1,0,NULL,NULL,0,1,'forward-thinking','Forward Thinking','<h3>Forward Thinking</h3>',NULL,'2019-11-11 14:31:33','2019-11-11 14:31:33',NULL),
	(2,1,1,1,0,NULL,NULL,0,1,'relationship-centric','Relationship Centric','<h3>Relationship&nbsp;Centric</h3>',NULL,'2019-11-11 14:32:38','2019-11-11 14:32:38',NULL),
	(3,1,1,1,0,NULL,NULL,0,1,'individually-tailored','Individually Tailored','<p>Individually Tailored</p>',NULL,'2019-11-11 14:34:41','2019-11-11 14:34:41',NULL),
	(4,1,1,1,0,NULL,NULL,0,1,'we-are-bace-we-are-progressive','We are BACE','<p>We are BACE</p>',NULL,'2019-11-11 15:55:28','2019-11-25 13:01:07',NULL),
	(5,1,2,1,0,NULL,NULL,0,0,'caring-kindergartens','Caring Kindergartens','<p>The project comprised the construction of a new 120nr place children&rsquo;s nursery being constructed in Brooklands, Milton Keynes.&nbsp; A two-storey building comprising of baby and toddler nursery teaching rooms, staff offices &amp; facilities and external works which is now complete.</p>','153','2019-12-18 07:34:47','2021-08-10 09:36:01',NULL),
	(6,1,2,1,0,NULL,NULL,0,1,'tbq','Trent Bridge Quays','<p>The &pound;18 million redevelopment of the existing site at Trent Bridge Quays consists of 75rn apartments over 5 blocks and 20 townhouses with associated external works.</p>','151','2019-12-18 07:35:04','2020-02-20 10:40:19',NULL),
	(7,1,2,1,0,NULL,NULL,0,0,'olympic-cinema','Olympic Cinema','<p>DESCRIPTION TO FOLLOW</p>','152','2019-12-18 07:35:23','2021-08-10 09:36:45',NULL),
	(8,1,3,1,0,NULL,NULL,0,1,'alban-house-hereford','Alban House, Hereford','<p>Mixed use development comprising 17nr apartments, 1 cottage and 2 commercial units, with associated external works to courtyard. Works involved renovation of the existing listed building. &nbsp;Contract sum &pound;3.4m.</p>','154','2019-12-18 07:36:13','2020-01-01 13:45:09',NULL),
	(9,1,3,1,0,NULL,NULL,0,1,'moseley-st','Moseley Street','<p>The new build development in Digbeth, Birmingham includes 67nr apartments and associated external works in a confined site. Value &pound;8m.</p>','156','2019-12-18 07:36:33','2020-02-20 10:40:55',NULL),
	(10,1,3,1,0,NULL,NULL,0,1,'tennant-street','Tennant Street','<p>This new build development in Tennant Street, Birmingham comprises of 40nr apartments over 6 floors and undercroft car park. Value &pound;4.5m.</p>','155','2019-12-18 07:36:51','2020-01-01 13:45:37',NULL),
	(11,1,4,1,0,NULL,NULL,0,1,'derngate-lofts','Derngate Lofts','<p>The development consists of 57nr 1 and 2 bed apartments in the centre of Northampton with basement car park. Value &pound;4m.</p>','159','2019-12-18 07:37:39','2020-01-01 13:48:24',NULL),
	(12,1,4,1,0,NULL,NULL,0,0,'education','Education','<p>The team have worked with several higher education institutions and private schools nationwide, values ranging from 500k to 50 million.</p>','158','2019-12-18 07:38:08','2021-08-10 09:41:52',NULL),
	(13,1,4,1,0,NULL,NULL,0,1,'caring-kindergartens','Caring Kindergartens','<p>The project comprised the construction of a new 120nr place children&rsquo;s nursery being constructed in Brooklands, Milton Keynes.&nbsp; A two-storey building comprising of baby and toddler nursery teaching rooms, staff offices &amp; facilities and external works which is now complete.</p>','157','2019-12-18 07:38:28','2020-01-01 13:48:47',NULL),
	(14,1,5,1,0,NULL,NULL,0,1,'sister-dora-care-home','Sister Dora Care Home','<p>The project comprises the construction of a 73nr bed new nursing home at Sister Dora to residential apartments at Sister Dora Care Home, Cannock Chase, Brockton Road, Stafford. Value &pound;8.5m.</p>','162','2019-12-18 07:39:15','2020-01-01 13:50:07',NULL),
	(15,1,5,1,0,NULL,NULL,0,1,'chad-varah','Chad Varah','<p>The extension /refurbishment project forming 12 No. luxury apartments at Chad Varah, Lincoln.&nbsp; Value &pound;3.2m.</p>','160','2019-12-18 07:39:46','2020-01-01 13:50:17',NULL),
	(16,1,5,1,0,NULL,NULL,0,1,'tabley-street','Tabley Street','<p>A new build development of 56nr apartments, together with associated parking and external works.</p>','161','2019-12-18 07:40:05','2020-01-01 13:50:29',NULL),
	(17,1,2,1,0,NULL,NULL,0,1,'wv-living','WV Living','<p>Development of three individual sites for a midlands Local Authority&rsquo;s wholly owned housing development company, providing a total of 49 new homes in a mixture of 2, 3 and 4 bedroomed properties.</p>','166','2021-08-10 09:36:30','2021-08-11 13:09:27',NULL),
	(18,1,2,1,0,NULL,NULL,0,1,'rugeley','Rugeley','<p>Supported Living projects in Rugeley, Stafford, Kidderminster and Chelmsford for a private developer. Works are due to complete on the first project at the end of October 2021, the developments being in a mixture of refurbished and extended properties ranging from 15 to 42 en-suited apartments.</p>','165','2021-08-10 09:37:06','2021-08-11 13:07:59',NULL),
	(19,1,4,1,0,NULL,NULL,0,1,'homelands','Homelands','<p>New build development of 10 retail units in 3 separate blocks for a private developer. I block rented by supermarket chain the remaining units by small individual retailers and office users. Completed 2021.</p>','164','2021-08-10 09:42:04','2021-08-11 13:07:00',NULL);

/*!40000 ALTER TABLE `ft_snippets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_tags`;

CREATE TABLE `ft_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table ft_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_type`;

CREATE TABLE `ft_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `outputs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `order_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_type` tinyint(1) DEFAULT '0',
  `nesting` tinyint(1) NOT NULL DEFAULT '0',
  `children` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` tinyint(1) NOT NULL DEFAULT '0',
  `date` tinyint(1) NOT NULL DEFAULT '0',
  `today_future` tinyint(1) NOT NULL DEFAULT '0',
  `today_past` tinyint(1) NOT NULL DEFAULT '0',
  `pagination` tinyint(1) NOT NULL DEFAULT '0',
  `pagination_limit` int(11) DEFAULT '0',
  `access` tinyint(1) NOT NULL DEFAULT '0',
  `rss` tinyint(1) NOT NULL DEFAULT '0',
  `live` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_type` WRITE;
/*!40000 ALTER TABLE `ft_type` DISABLE KEYS */;

INSERT INTO `ft_type` (`id`, `title`, `outputs`, `layout`, `blocks`, `order_by`, `default_type`, `nesting`, `children`, `ordering`, `date`, `today_future`, `today_past`, `pagination`, `pagination_limit`, `access`, `rss`, `live`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Home','display','home','extra',NULL,0,1,1,1,0,0,0,0,10,0,0,0,NULL,'2017-08-04 06:03:18',NULL),
	(2,'Page','display','page','colone:footer:extra',NULL,0,1,1,1,0,0,0,0,10,0,0,0,NULL,'2017-11-23 15:05:26',NULL),
	(3,'People','display','people','colone:quote:extra','order:asc',0,1,1,1,0,0,0,0,NULL,0,0,NULL,'2017-06-27 10:50:25','2017-11-03 08:43:17',NULL),
	(4,'Bulletin','list:display','bulletin','gallery','publish_on:desc',0,0,0,1,1,0,0,1,5,0,0,NULL,'2017-07-21 05:49:16','2017-07-21 10:31:11',NULL),
	(5,'Experience','list:display','experience','extra',NULL,0,1,1,1,0,0,0,0,NULL,0,0,NULL,'2017-09-10 20:42:43','2017-11-03 08:42:52',NULL),
	(6,'Contact','display','contact','copy',NULL,0,0,0,0,0,0,0,0,NULL,0,0,NULL,'2017-11-20 13:27:12','2019-11-07 15:33:17',NULL),
	(7,'Careers','display','careers','colone:footer:extra',NULL,0,1,1,1,1,0,0,0,NULL,0,0,NULL,'2019-05-02 21:57:08','2019-05-02 22:02:54',NULL),
	(8,'Services','list:display','services','colone:footer:extra',NULL,0,1,1,1,0,0,0,0,NULL,0,0,NULL,'2019-11-11 13:43:36','2019-11-11 13:47:19',NULL);

/*!40000 ALTER TABLE `ft_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_users`;

CREATE TABLE `ft_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ft_users_username_unique` (`username`),
  UNIQUE KEY `ft_users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_users` WRITE;
/*!40000 ALTER TABLE `ft_users` DISABLE KEYS */;

INSERT INTO `ft_users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `remember_token`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'superadmin','$2y$10$5qDUSY8zNCdDkOMPEAYype9XX5tSFd7p5Bq7z3UcCj6fCDkZ.Xgv6','superadmin@admin.com','matt','tullett','WPoT9GchHs0D9wedpwxULKVMil1cq3ejANaeLJeZorPaEOU3bruEuhBjfAZF','2017-06-04 20:05:49','2017-06-04 20:05:49',NULL);

/*!40000 ALTER TABLE `ft_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ft_values
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ft_values`;

CREATE TABLE `ft_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` blob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ft_values` WRITE;
/*!40000 ALTER TABLE `ft_values` DISABLE KEYS */;

INSERT INTO `ft_values` (`id`, `node_id`, `field_id`, `value`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(304,12,4,X'6461726B','2017-08-14 10:46:18','2017-08-14 10:46:18',NULL),
	(305,12,5,X'414441505441424C45','2017-08-14 10:46:18','2017-08-14 10:46:18',NULL),
	(306,12,6,X'2F617070726F616368','2017-08-14 10:46:18','2017-08-14 10:46:18',NULL),
	(307,12,10,X'74657874','2017-08-14 10:46:18','2017-08-14 10:46:18',NULL),
	(308,12,11,NULL,'2017-08-14 10:46:18','2017-08-14 10:46:18',NULL),
	(314,14,4,X'6C69676874','2017-08-14 10:46:38','2017-08-14 10:46:38',NULL),
	(315,14,5,X'436F6D6D6974746564','2017-08-14 10:46:38','2017-08-14 10:46:38',NULL),
	(316,14,6,X'2F657870657274697365','2017-08-14 10:46:38','2017-08-14 10:46:38',NULL),
	(317,14,10,NULL,'2017-08-14 10:46:38','2017-08-14 10:46:38',NULL),
	(318,14,11,NULL,'2017-08-14 10:46:38','2017-08-14 10:46:38',NULL),
	(386,10,1,NULL,'2017-09-05 11:45:32','2017-09-05 11:45:32',NULL),
	(387,10,2,NULL,'2017-09-05 11:45:32','2017-09-05 11:45:32',NULL),
	(388,10,3,X'4469726563746F72','2017-09-05 11:45:32','2017-09-05 11:45:32',NULL),
	(389,11,1,NULL,'2017-09-05 11:48:53','2017-09-05 11:48:53',NULL),
	(390,11,2,NULL,'2017-09-05 11:48:53','2017-09-05 11:48:53',NULL),
	(391,11,3,X'4469726563746F72','2017-09-05 11:48:53','2017-09-05 11:48:53',NULL),
	(407,5,7,NULL,'2017-09-05 14:34:35','2017-09-05 14:34:35',NULL),
	(408,5,8,NULL,'2017-09-05 14:34:35','2017-09-05 14:34:35',NULL),
	(459,15,4,X'6461726B','2017-09-07 10:20:10','2017-09-07 10:20:10',NULL),
	(460,15,5,X'456666656374697665','2017-09-07 10:20:10','2017-09-07 10:20:10',NULL),
	(461,15,6,X'2F657870657269656E6365','2017-09-07 10:20:10','2017-09-07 10:20:10',NULL),
	(462,15,11,NULL,'2017-09-07 10:20:10','2017-09-07 10:20:10',NULL),
	(532,7,1,NULL,'2017-10-20 11:16:56','2017-10-20 11:16:56',NULL),
	(533,7,2,NULL,'2017-10-20 11:16:56','2017-10-20 11:16:56',NULL),
	(534,7,3,X'4469726563746F72','2017-10-20 11:16:56','2017-10-20 11:16:56',NULL),
	(638,24,4,X'6461726B','2017-11-29 23:06:02','2017-11-29 23:06:02',NULL),
	(639,24,5,X'436F6E6E6563746564','2017-11-29 23:06:02','2017-11-29 23:06:02',NULL),
	(640,24,6,X'2F62756C6C6574696E','2017-11-29 23:06:02','2017-11-29 23:06:02',NULL),
	(641,24,11,NULL,'2017-11-29 23:06:02','2017-11-29 23:06:02',NULL),
	(648,13,4,X'6461726B','2017-12-08 16:45:42','2017-12-08 16:45:42',NULL),
	(649,13,5,X'42414C414E434544','2017-12-08 16:45:42','2017-12-08 16:45:42',NULL),
	(650,13,6,X'2F70656F706C65','2017-12-08 16:45:42','2017-12-08 16:45:42',NULL),
	(651,13,11,NULL,'2017-12-08 16:45:42','2017-12-08 16:45:42',NULL),
	(652,40,12,X'424143452042554C4C4554494E2054455354','2019-03-06 09:07:07','2019-03-06 09:07:07',NULL),
	(669,16,12,NULL,'2019-09-12 07:58:46','2019-09-12 07:58:46',NULL),
	(751,50,1,NULL,'2019-11-07 14:21:35','2019-11-07 14:21:35',NULL),
	(752,50,2,NULL,'2019-11-07 14:21:35','2019-11-07 14:21:35',NULL),
	(753,50,3,X'4A6F62205469746C65','2019-11-07 14:21:35','2019-11-07 14:21:35',NULL),
	(783,39,12,X'42414345204F6E6C696E65E28094','2019-11-25 13:49:36','2019-11-25 13:49:36',NULL),
	(789,41,12,X'42756C6C6574696E2054657374','2019-11-25 13:56:51','2019-11-25 13:56:51',NULL),
	(790,38,12,X'424143452052656C6F636174696F6EE28094','2019-11-25 13:57:35','2019-11-25 13:57:35',NULL),
	(793,51,12,NULL,'2019-11-25 15:41:22','2019-11-25 15:41:22',NULL),
	(801,52,12,NULL,'2019-12-03 09:34:43','2019-12-03 09:34:43',NULL),
	(808,49,1,NULL,'2019-12-18 07:02:57','2019-12-18 07:02:57',NULL),
	(809,49,2,NULL,'2019-12-18 07:02:57','2019-12-18 07:02:57',NULL),
	(810,49,3,X'436F7374204D616E61676572','2019-12-18 07:02:57','2019-12-18 07:02:57',NULL),
	(811,45,1,NULL,'2019-12-18 07:03:20','2019-12-18 07:03:20',NULL),
	(812,45,2,NULL,'2019-12-18 07:03:20','2019-12-18 07:03:20',NULL),
	(813,45,3,X'436F7374204D616E61676572','2019-12-18 07:03:20','2019-12-18 07:03:20',NULL),
	(814,46,1,NULL,'2019-12-18 07:03:35','2019-12-18 07:03:35',NULL),
	(815,46,2,NULL,'2019-12-18 07:03:35','2019-12-18 07:03:35',NULL),
	(816,46,3,X'547261696E656520436F7374204D616E61676572','2019-12-18 07:03:35','2019-12-18 07:03:35',NULL),
	(817,48,1,NULL,'2019-12-18 07:03:49','2019-12-18 07:03:49',NULL),
	(818,48,2,NULL,'2019-12-18 07:03:49','2019-12-18 07:03:49',NULL),
	(819,48,3,X'5072616374696365204D616E61676572','2019-12-18 07:03:49','2019-12-18 07:03:49',NULL),
	(820,1,4,NULL,'2020-02-20 10:39:33','2020-02-20 10:39:33',NULL),
	(821,1,5,NULL,'2020-02-20 10:39:33','2020-02-20 10:39:33',NULL),
	(822,1,6,NULL,'2020-02-20 10:39:33','2020-02-20 10:39:33',NULL),
	(823,1,11,NULL,'2020-02-20 10:39:33','2020-02-20 10:39:33',NULL),
	(832,53,7,NULL,'2020-02-20 10:57:06','2020-02-20 10:57:06',NULL),
	(833,53,8,NULL,'2020-02-20 10:57:06','2020-02-20 10:57:06',NULL),
	(840,2,1,X'6C69676874','2021-10-22 11:29:22','2021-10-22 11:29:22',NULL),
	(841,2,2,X'42616C616E636564','2021-10-22 11:29:22','2021-10-22 11:29:22',NULL),
	(842,2,3,NULL,'2021-10-22 11:29:22','2021-10-22 11:29:22',NULL),
	(891,54,1,NULL,'2022-01-10 09:36:00','2022-01-10 09:36:00',NULL),
	(892,54,2,X'4173736F6369617465204469726563746F72','2022-01-10 09:36:00','2022-01-10 09:36:00',NULL),
	(893,54,3,X'4173736F6369617465204469726563746F72','2022-01-10 09:36:00','2022-01-10 09:36:00',NULL),
	(894,8,1,NULL,'2022-01-10 09:36:15','2022-01-10 09:36:15',NULL),
	(895,8,2,NULL,'2022-01-10 09:36:15','2022-01-10 09:36:15',NULL),
	(896,8,3,X'4D616E6167696E67204469726563746F72','2022-01-10 09:36:15','2022-01-10 09:36:15',NULL),
	(897,9,1,NULL,'2022-01-10 09:36:37','2022-01-10 09:36:37',NULL),
	(898,9,2,NULL,'2022-01-10 09:36:37','2022-01-10 09:36:37',NULL),
	(899,9,3,X'4469726563746F72','2022-01-10 09:36:37','2022-01-10 09:36:37',NULL),
	(912,47,1,NULL,'2022-01-10 09:38:11','2022-01-10 09:38:11',NULL),
	(913,47,2,NULL,'2022-01-10 09:38:11','2022-01-10 09:38:11',NULL),
	(914,47,3,X'4173736F6369617465204469726563746F72','2022-01-10 09:38:11','2022-01-10 09:38:11',NULL),
	(918,55,12,NULL,'2022-02-22 22:06:35','2022-02-22 22:06:35',NULL),
	(925,56,12,NULL,'2022-02-22 22:15:30','2022-02-22 22:15:30',NULL),
	(927,57,12,NULL,'2022-02-22 22:21:17','2022-02-22 22:21:17',NULL),
	(929,58,12,NULL,'2022-02-22 22:27:47','2022-02-22 22:27:47',NULL);

/*!40000 ALTER TABLE `ft_values` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
