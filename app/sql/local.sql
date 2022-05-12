-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-04-28 09:00:35','2022-04-28 09:00:35','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_em_price_options`
--

DROP TABLE IF EXISTS `wp_em_price_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_em_price_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `price` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `special_price` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `is_default` tinyint(2) NOT NULL DEFAULT '0',
  `is_event_price` tinyint(2) NOT NULL DEFAULT '0',
  `icon` longtext COLLATE utf8mb4_unicode_520_ci,
  `priority` int(11) DEFAULT NULL,
  `capacity_progress_bar` tinyint(2) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `variation_color` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `seat_data` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_em_price_options`
--

LOCK TABLES `wp_em_price_options` WRITE;
/*!40000 ALTER TABLE `wp_em_price_options` DISABLE KEYS */;
INSERT INTO `wp_em_price_options` VALUES (1,50,'Default Price','Default Price','0000-00-00 00:00:00','0000-00-00 00:00:00','0','',0,1,1,'',1,0,1,'2022-05-06 07:59:42',NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_em_price_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_icons`
--

DROP TABLE IF EXISTS `wp_gmp_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_icons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `width` mediumint(5) NOT NULL DEFAULT '0',
  `height` mediumint(5) NOT NULL DEFAULT '0',
  `path` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_def` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_icons`
--

LOCK TABLES `wp_gmp_icons` WRITE;
/*!40000 ALTER TABLE `wp_gmp_icons` DISABLE KEYS */;
INSERT INTO `wp_gmp_icons` VALUES (1,'marker','blue,white,star,pin',32,44,'bblue.png',1);
INSERT INTO `wp_gmp_icons` VALUES (2,'marker','green,white,star,pin',32,44,'bgreen.png',1);
INSERT INTO `wp_gmp_icons` VALUES (3,'marker','purple,white,star,pin',32,44,'purple.png',1);
INSERT INTO `wp_gmp_icons` VALUES (4,'marker','blue,white,star,pin',32,44,'bred.png',1);
INSERT INTO `wp_gmp_icons` VALUES (5,'marker','blue,pin',24,38,'blue.png',1);
INSERT INTO `wp_gmp_icons` VALUES (6,'marker','gray,pin',20,33,'gray.png',1);
INSERT INTO `wp_gmp_icons` VALUES (7,'marker','green,pin',20,34,'green.png',1);
INSERT INTO `wp_gmp_icons` VALUES (8,'marker','pin,yellow',20,33,'orange.png',1);
INSERT INTO `wp_gmp_icons` VALUES (9,'marker','pin,red',20,31,'red.png',1);
INSERT INTO `wp_gmp_icons` VALUES (10,'flag','gray',32,30,'flag_black.png',1);
INSERT INTO `wp_gmp_icons` VALUES (11,'flag','blue',32,30,'flag_blue.png',1);
INSERT INTO `wp_gmp_icons` VALUES (12,'flag','green',32,30,'flag_green.png',1);
INSERT INTO `wp_gmp_icons` VALUES (13,'flag','orange',32,30,'flag_orange.png',1);
INSERT INTO `wp_gmp_icons` VALUES (14,'flag','purple',32,30,'flag_purple.png',1);
INSERT INTO `wp_gmp_icons` VALUES (15,'flag','red',32,30,'flag_red.png',1);
INSERT INTO `wp_gmp_icons` VALUES (16,'marker','pin,cycle,blue',26,36,'blue_circle.png',1);
INSERT INTO `wp_gmp_icons` VALUES (17,'marker','white,blue,pin',26,36,'blue_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (18,'marker','blue,pin',26,36,'blue_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (19,'pin','green,marker,cycle',26,36,'green_circle.png',1);
INSERT INTO `wp_gmp_icons` VALUES (20,'pin','green,cycle',26,36,'green_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (21,'pin','green',26,36,'green_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (22,'pin','orange,cycle',26,36,'orange_circle.png',1);
INSERT INTO `wp_gmp_icons` VALUES (23,'pin','orange,cycle',26,36,'orange_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (24,'pin','orange',26,36,'orange_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (25,'pin','purple,cycle',26,36,'purple_circle.png',1);
INSERT INTO `wp_gmp_icons` VALUES (26,'pin','purple,cycle',26,36,'purple_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (27,'pin','purple',26,36,'purple_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (28,'pin','red,cycle',26,36,'red_circle.png',1);
INSERT INTO `wp_gmp_icons` VALUES (29,'pin','red,cycle',26,36,'red_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (30,'pin','red',26,36,'red_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (31,'star','black,dark,pin',32,41,'star_pin_black.png',1);
INSERT INTO `wp_gmp_icons` VALUES (32,'star','blue,pin',32,41,'star_pin_blue.png',1);
INSERT INTO `wp_gmp_icons` VALUES (33,'star','green,pin',32,41,'star_pin_green.png',1);
INSERT INTO `wp_gmp_icons` VALUES (34,'star','orange,pin',32,41,'star_pin_orange.png',1);
INSERT INTO `wp_gmp_icons` VALUES (35,'star','purple',32,41,'star_pin_purple.png',1);
INSERT INTO `wp_gmp_icons` VALUES (36,'star','red,pin',32,41,'star_pin_red.png',1);
INSERT INTO `wp_gmp_icons` VALUES (37,'pin','gray,white,cycle',26,36,'white_circlepng.png',1);
INSERT INTO `wp_gmp_icons` VALUES (38,'pin','gray,white,cycle',26,36,'white_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (39,'pin','white,gray',26,36,'white_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (40,'pin','yellow,cycle',26,36,'yellow_circlepng.png',1);
INSERT INTO `wp_gmp_icons` VALUES (41,'pin','yellow,cycle',26,36,'yellow_orifice.png',1);
INSERT INTO `wp_gmp_icons` VALUES (42,'pin','yellow',26,36,'yellow_std.png',1);
INSERT INTO `wp_gmp_icons` VALUES (43,'marker','red',20,34,'marker.png',1);
INSERT INTO `wp_gmp_icons` VALUES (44,'marker','blue',22,32,'marker_blue.png',1);
INSERT INTO `wp_gmp_icons` VALUES (45,'marker','red,letter',20,34,'markerA.png',1);
INSERT INTO `wp_gmp_icons` VALUES (46,'marker','orange',20,34,'marker_orange.png',1);
INSERT INTO `wp_gmp_icons` VALUES (47,'marker','green',20,34,'marker_green.png',1);
/*!40000 ALTER TABLE `wp_gmp_icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_maps`
--

DROP TABLE IF EXISTS `wp_gmp_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `params` text,
  `html_options` text NOT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_maps`
--

LOCK TABLES `wp_gmp_maps` WRITE;
/*!40000 ALTER TABLE `wp_gmp_maps` DISABLE KEYS */;
INSERT INTO `wp_gmp_maps` VALUES (1,'test',NULL,'a:54:{s:11:\"width_units\";s:1:\"%\";s:16:\"membershipEnable\";s:1:\"0\";s:26:\"adapt_map_to_screen_height\";s:1:\"1\";s:9:\"selectors\";a:2:{s:14:\"content_before\";s:0:\"\";s:13:\"content_after\";s:0:\"\";}s:4:\"type\";N;s:8:\"map_type\";s:7:\"ROADMAP\";s:16:\"map_display_mode\";N;s:10:\"map_center\";a:3:{s:7:\"address\";s:7:\"Estonia\";s:7:\"coord_x\";s:17:\"58.23233589815876\";s:7:\"coord_y\";s:18:\"22.536175872779534\";}s:8:\"language\";N;s:11:\"enable_zoom\";N;s:17:\"enable_mouse_zoom\";N;s:16:\"mouse_wheel_zoom\";s:1:\"1\";s:9:\"zoom_type\";s:10:\"zoom_level\";s:4:\"zoom\";s:2:\"14\";s:11:\"zoom_mobile\";s:1:\"8\";s:8:\"zoom_min\";s:1:\"1\";s:8:\"zoom_max\";s:2:\"21\";s:12:\"type_control\";s:4:\"none\";s:12:\"zoom_control\";s:7:\"DEFAULT\";s:14:\"dbl_click_zoom\";s:1:\"1\";s:19:\"street_view_control\";s:1:\"0\";s:11:\"pan_control\";N;s:16:\"overview_control\";N;s:9:\"draggable\";s:1:\"1\";s:15:\"map_stylization\";s:10:\"Blue water\";s:18:\"marker_title_color\";s:7:\"#005f90\";s:17:\"marker_title_size\";s:2:\"19\";s:23:\"marker_title_size_units\";s:2:\"px\";s:16:\"marker_desc_size\";s:2:\"13\";s:22:\"marker_desc_size_units\";s:2:\"px\";s:19:\"hide_marker_tooltip\";s:0:\"\";s:28:\"center_on_cur_marker_infownd\";s:1:\"1\";s:19:\"marker_infownd_type\";s:0:\"\";s:29:\"marker_infownd_hide_close_btn\";s:1:\"1\";s:20:\"marker_infownd_width\";s:3:\"200\";s:26:\"marker_infownd_width_units\";s:4:\"auto\";s:21:\"marker_infownd_height\";s:3:\"100\";s:27:\"marker_infownd_height_units\";s:4:\"auto\";s:23:\"marker_infownd_bg_color\";s:7:\"#f5f5ff\";s:16:\"marker_clasterer\";s:15:\"MarkerClusterer\";s:21:\"marker_clasterer_icon\";s:80:\"http://pilots.local/wp-content/plugins/google-maps-easy/modules//gmap/img/m1.png\";s:27:\"marker_clasterer_icon_width\";s:2:\"53\";s:28:\"marker_clasterer_icon_height\";s:2:\"52\";s:26:\"marker_clasterer_grid_size\";s:2:\"60\";s:19:\"marker_filter_color\";s:8:\"#f1f1f1;\";s:26:\"marker_filter_button_title\";s:10:\"Select all\";s:30:\"marker_filter_show_all_parents\";s:0:\"\";s:17:\"markers_list_type\";s:0:\"\";s:17:\"markers_list_loop\";s:0:\"\";s:18:\"markers_list_color\";s:7:\"#55BA68\";s:21:\"markers_list_autoplay\";a:4:{s:6:\"enable\";s:0:\"\";s:5:\"steps\";s:1:\"1\";s:4:\"idle\";s:4:\"3000\";s:8:\"duration\";s:3:\"160\";}s:29:\"markers_list_hide_empty_block\";s:0:\"\";s:21:\"markers_list_collapse\";a:1:{s:6:\"mobile\";s:0:\"\";}s:9:\"is_static\";s:0:\"\";}','a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"250\";}','2022-05-10 19:06:59');
/*!40000 ALTER TABLE `wp_gmp_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_marker_groups`
--

DROP TABLE IF EXISTS `wp_gmp_marker_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_marker_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `parent` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_marker_groups`
--

LOCK TABLES `wp_gmp_marker_groups` WRITE;
/*!40000 ALTER TABLE `wp_gmp_marker_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gmp_marker_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_marker_groups_relation`
--

DROP TABLE IF EXISTS `wp_gmp_marker_groups_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_marker_groups_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marker_id` int(11) NOT NULL,
  `groups_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_marker_groups_relation`
--

LOCK TABLES `wp_gmp_marker_groups_relation` WRITE;
/*!40000 ALTER TABLE `wp_gmp_marker_groups_relation` DISABLE KEYS */;
INSERT INTO `wp_gmp_marker_groups_relation` VALUES (3,1,0);
/*!40000 ALTER TABLE `wp_gmp_marker_groups_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_markers`
--

DROP TABLE IF EXISTS `wp_gmp_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `coord_x` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coord_y` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` int(11) DEFAULT NULL,
  `map_id` int(11) DEFAULT NULL,
  `marker_group_id` int(11) DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `animation` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort_order` smallint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_markers`
--

LOCK TABLES `wp_gmp_markers` WRITE;
/*!40000 ALTER TABLE `wp_gmp_markers` DISABLE KEYS */;
INSERT INTO `wp_gmp_markers` VALUES (1,'EEKE - Kuressaare lennujaam','<p><a href=\"http://www.ilmateenistus.ee/?ide=19,394,416,421&amp;jaam=50\" target=\"_blank\" rel=\"noopener\">EMHI ilmaprognoos</a></p>','58.232286721345','22.507813887499',44,0,0,'Kuressaare lennujaam',NULL,'2022-05-10 19:06:09','a:4:{s:11:\"marker_link\";s:1:\"1\";s:15:\"marker_link_src\";s:36:\"http://www.kuressaare-airport.ee/ilm\";s:19:\"marker_link_new_wnd\";s:1:\"1\";s:23:\"description_mouse_hover\";s:1:\"1\";}',1,NULL);
/*!40000 ALTER TABLE `wp_gmp_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_membership_presets`
--

DROP TABLE IF EXISTS `wp_gmp_membership_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_membership_presets` (
  `maps_id` int(11) NOT NULL,
  `allow_use` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`maps_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_membership_presets`
--

LOCK TABLES `wp_gmp_membership_presets` WRITE;
/*!40000 ALTER TABLE `wp_gmp_membership_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gmp_membership_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_modules`
--

DROP TABLE IF EXISTS `wp_gmp_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `type_id` smallint(3) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_520_ci,
  `has_tab` tinyint(1) NOT NULL DEFAULT '0',
  `label` varchar(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `ex_plug_dir` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_modules`
--

LOCK TABLES `wp_gmp_modules` WRITE;
/*!40000 ALTER TABLE `wp_gmp_modules` DISABLE KEYS */;
INSERT INTO `wp_gmp_modules` VALUES (1,'adminmenu',1,1,'',0,'Admin Menu','',NULL);
INSERT INTO `wp_gmp_modules` VALUES (2,'options',1,1,'',1,'Options','',NULL);
INSERT INTO `wp_gmp_modules` VALUES (3,'user',1,1,'',1,'Users','',NULL);
INSERT INTO `wp_gmp_modules` VALUES (4,'templates',1,1,'',1,'Templates for Plugin','',NULL);
INSERT INTO `wp_gmp_modules` VALUES (5,'shortcodes',1,6,'',0,'Shortcodes','Shortcodes data',NULL);
INSERT INTO `wp_gmp_modules` VALUES (6,'gmap',1,1,'',1,'Gmap','Gmap',NULL);
INSERT INTO `wp_gmp_modules` VALUES (7,'marker',1,1,'',0,'Markers','Maps Markers',NULL);
INSERT INTO `wp_gmp_modules` VALUES (8,'marker_groups',1,1,'',0,'Marker Groups','Marker Groups',NULL);
INSERT INTO `wp_gmp_modules` VALUES (9,'supsystic_promo',1,1,'',0,'Promo','Promo',NULL);
INSERT INTO `wp_gmp_modules` VALUES (10,'icons',1,1,'',1,'Marker Icons','Marker Icons',NULL);
INSERT INTO `wp_gmp_modules` VALUES (11,'mail',1,1,'',1,'mail','mail',NULL);
INSERT INTO `wp_gmp_modules` VALUES (12,'membership',1,1,'',1,'membership','membership',NULL);
/*!40000 ALTER TABLE `wp_gmp_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_modules_type`
--

DROP TABLE IF EXISTS `wp_gmp_modules_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_modules_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_modules_type`
--

LOCK TABLES `wp_gmp_modules_type` WRITE;
/*!40000 ALTER TABLE `wp_gmp_modules_type` DISABLE KEYS */;
INSERT INTO `wp_gmp_modules_type` VALUES (1,'system');
INSERT INTO `wp_gmp_modules_type` VALUES (4,'widget');
INSERT INTO `wp_gmp_modules_type` VALUES (6,'addons');
INSERT INTO `wp_gmp_modules_type` VALUES (7,'template');
/*!40000 ALTER TABLE `wp_gmp_modules_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_options`
--

DROP TABLE IF EXISTS `wp_gmp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value` text,
  `label` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `htmltype_id` smallint(2) NOT NULL DEFAULT '1',
  `params` text,
  `cat_id` mediumint(3) DEFAULT '0',
  `sort_order` mediumint(3) DEFAULT '0',
  `value_type` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_options`
--

LOCK TABLES `wp_gmp_options` WRITE;
/*!40000 ALTER TABLE `wp_gmp_options` DISABLE KEYS */;
INSERT INTO `wp_gmp_options` VALUES (1,'save_statistic','0','Send statistic',NULL,1,NULL,0,0,NULL);
INSERT INTO `wp_gmp_options` VALUES (2,'infowindow_size','a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";}','Info Window Size',NULL,1,NULL,0,0,NULL);
/*!40000 ALTER TABLE `wp_gmp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_options_categories`
--

DROP TABLE IF EXISTS `wp_gmp_options_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_options_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_options_categories`
--

LOCK TABLES `wp_gmp_options_categories` WRITE;
/*!40000 ALTER TABLE `wp_gmp_options_categories` DISABLE KEYS */;
INSERT INTO `wp_gmp_options_categories` VALUES (1,'General');
INSERT INTO `wp_gmp_options_categories` VALUES (2,'Template');
INSERT INTO `wp_gmp_options_categories` VALUES (3,'Subscribe');
INSERT INTO `wp_gmp_options_categories` VALUES (4,'Social');
/*!40000 ALTER TABLE `wp_gmp_options_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gmp_usage_stat`
--

DROP TABLE IF EXISTS `wp_gmp_usage_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_gmp_usage_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `visits` int(11) NOT NULL DEFAULT '0',
  `spent_time` int(11) NOT NULL DEFAULT '0',
  `modify_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gmp_usage_stat`
--

LOCK TABLES `wp_gmp_usage_stat` WRITE;
/*!40000 ALTER TABLE `wp_gmp_usage_stat` DISABLE KEYS */;
INSERT INTO `wp_gmp_usage_stat` VALUES (1,'installed',1,0,'2022-05-10 18:53:47');
/*!40000 ALTER TABLE `wp_gmp_usage_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mec_attendees`
--

DROP TABLE IF EXISTS `wp_mec_attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_mec_attendees` (
  `attendee_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `occurrence` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_520_ci,
  `count` int(11) DEFAULT '1',
  `verification` int(1) DEFAULT '0',
  `confirmation` int(1) DEFAULT '0',
  PRIMARY KEY (`attendee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mec_attendees`
--

LOCK TABLES `wp_mec_attendees` WRITE;
/*!40000 ALTER TABLE `wp_mec_attendees` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mec_attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mec_bookings`
--

DROP TABLE IF EXISTS `wp_mec_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_mec_bookings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `transaction_id` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `event_id` int(10) unsigned NOT NULL,
  `ticket_ids` varchar(655) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'pending',
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `verified` tinyint(4) NOT NULL DEFAULT '0',
  `all_occurrences` tinyint(4) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`,`ticket_ids`,`status`,`confirmed`,`verified`,`date`),
  KEY `booking_id` (`booking_id`),
  KEY `timestamp` (`timestamp`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mec_bookings`
--

LOCK TABLES `wp_mec_bookings` WRITE;
/*!40000 ALTER TABLE `wp_mec_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mec_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mec_dates`
--

DROP TABLE IF EXISTS `wp_mec_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_mec_dates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) NOT NULL,
  `dstart` date NOT NULL,
  `dend` date NOT NULL,
  `tstart` int(11) unsigned NOT NULL DEFAULT '0',
  `tend` int(11) unsigned NOT NULL DEFAULT '0',
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `public` int(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `tstart` (`tstart`),
  KEY `tend` (`tend`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mec_dates`
--

LOCK TABLES `wp_mec_dates` WRITE;
/*!40000 ALTER TABLE `wp_mec_dates` DISABLE KEYS */;
INSERT INTO `wp_mec_dates` VALUES (197,60,'2022-06-24','2022-06-24',1656028860,1656115140,'publish',1);
INSERT INTO `wp_mec_dates` VALUES (198,53,'2022-05-20','2022-05-20',1653069600,1653082200,'publish',1);
/*!40000 ALTER TABLE `wp_mec_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mec_events`
--

DROP TABLE IF EXISTS `wp_mec_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_mec_events` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `post_id` int(10) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `repeat` tinyint(4) NOT NULL DEFAULT '0',
  `rinterval` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `year` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `month` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `day` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `week` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `weekday` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `weekdays` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `days` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `not_in_days` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time_start` int(10) NOT NULL DEFAULT '0',
  `time_end` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID` (`id`),
  UNIQUE KEY `post_id` (`post_id`),
  KEY `start` (`start`,`end`,`repeat`,`rinterval`,`year`,`month`,`day`,`week`,`weekday`,`weekdays`,`time_start`,`time_end`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mec_events`
--

LOCK TABLES `wp_mec_events` WRITE;
/*!40000 ALTER TABLE `wp_mec_events` DISABLE KEYS */;
INSERT INTO `wp_mec_events` VALUES (1,53,'2022-05-20','0000-00-00',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',64800,77400);
INSERT INTO `wp_mec_events` VALUES (2,60,'2022-06-24','2022-06-24',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',28800,64800);
/*!40000 ALTER TABLE `wp_mec_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mec_occurrences`
--

DROP TABLE IF EXISTS `wp_mec_occurrences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_mec_occurrences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `occurrence` int(10) unsigned NOT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `occurrence` (`occurrence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mec_occurrences`
--

LOCK TABLES `wp_mec_occurrences` WRITE;
/*!40000 ALTER TABLE `wp_mec_occurrences` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mec_occurrences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mec_users`
--

DROP TABLE IF EXISTS `wp_mec_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_mec_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(127) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `reg` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mec_users`
--

LOCK TABLES `wp_mec_users` WRITE;
/*!40000 ALTER TABLE `wp_mec_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mec_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1729 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://pilots.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://pilots.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Eesti Erapilootide Liit','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','EEL','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','truumeedia@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','d.m.Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','H:i','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:300:{s:46:\"um-download/([^/]+)/([^/]+)/([^/]+)/([^/]+)/?$\";s:111:\"index.php?um_action=download&um_form=$matches[1]&um_field=$matches[2]&um_user=$matches[3]&um_verify=$matches[4]\";s:15:\"user/([^/]+)/?$\";s:40:\"index.php?page_id=89&um_user=$matches[1]\";s:17:\"account/([^/]+)?$\";s:39:\"index.php?page_id=94&um_tab=$matches[1]\";s:13:\"(?:events)/?$\";s:49:\"index.php?post_type=mec-events&MecDisplay=default\";s:38:\"(?:events)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=mec-events&feed=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:30:\"index.php?post_type=mec-events\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=mec-events&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=mec-events&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=mec-events&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/verify(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&verify=$matches[3]\";s:32:\"category/(.+?)/cancel(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&cancel=$matches[3]\";s:40:\"category/(.+?)/gateway-cancel(/(.*))?/?$\";s:62:\"index.php?category_name=$matches[1]&gateway-cancel=$matches[3]\";s:40:\"category/(.+?)/gateway-return(/(.*))?/?$\";s:62:\"index.php?category_name=$matches[1]&gateway-return=$matches[3]\";s:32:\"category/(.+?)/um-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&um-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/um-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&um-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"um_form/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"um_form/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"um_form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"um_form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"um_form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"um_form/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"um_form/([^/]+)/embed/?$\";s:40:\"index.php?um_form=$matches[1]&embed=true\";s:28:\"um_form/([^/]+)/trackback/?$\";s:34:\"index.php?um_form=$matches[1]&tb=1\";s:36:\"um_form/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?um_form=$matches[1]&paged=$matches[2]\";s:43:\"um_form/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?um_form=$matches[1]&cpage=$matches[2]\";s:33:\"um_form/([^/]+)/verify(/(.*))?/?$\";s:48:\"index.php?um_form=$matches[1]&verify=$matches[3]\";s:33:\"um_form/([^/]+)/cancel(/(.*))?/?$\";s:48:\"index.php?um_form=$matches[1]&cancel=$matches[3]\";s:41:\"um_form/([^/]+)/gateway-cancel(/(.*))?/?$\";s:56:\"index.php?um_form=$matches[1]&gateway-cancel=$matches[3]\";s:41:\"um_form/([^/]+)/gateway-return(/(.*))?/?$\";s:56:\"index.php?um_form=$matches[1]&gateway-return=$matches[3]\";s:33:\"um_form/([^/]+)/um-api(/(.*))?/?$\";s:48:\"index.php?um_form=$matches[1]&um-api=$matches[3]\";s:39:\"um_form/[^/]+/([^/]+)/verify(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&verify=$matches[3]\";s:50:\"um_form/[^/]+/attachment/([^/]+)/verify(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&verify=$matches[3]\";s:39:\"um_form/[^/]+/([^/]+)/cancel(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&cancel=$matches[3]\";s:50:\"um_form/[^/]+/attachment/([^/]+)/cancel(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&cancel=$matches[3]\";s:47:\"um_form/[^/]+/([^/]+)/gateway-cancel(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-cancel=$matches[3]\";s:58:\"um_form/[^/]+/attachment/([^/]+)/gateway-cancel(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-cancel=$matches[3]\";s:47:\"um_form/[^/]+/([^/]+)/gateway-return(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-return=$matches[3]\";s:58:\"um_form/[^/]+/attachment/([^/]+)/gateway-return(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-return=$matches[3]\";s:39:\"um_form/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:50:\"um_form/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:32:\"um_form/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?um_form=$matches[1]&page=$matches[2]\";s:24:\"um_form/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"um_form/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"um_form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"um_form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"um_form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"um_form/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"um_directory/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"um_directory/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"um_directory/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"um_directory/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"um_directory/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"um_directory/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"um_directory/([^/]+)/embed/?$\";s:45:\"index.php?um_directory=$matches[1]&embed=true\";s:33:\"um_directory/([^/]+)/trackback/?$\";s:39:\"index.php?um_directory=$matches[1]&tb=1\";s:41:\"um_directory/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?um_directory=$matches[1]&paged=$matches[2]\";s:48:\"um_directory/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?um_directory=$matches[1]&cpage=$matches[2]\";s:38:\"um_directory/([^/]+)/verify(/(.*))?/?$\";s:53:\"index.php?um_directory=$matches[1]&verify=$matches[3]\";s:38:\"um_directory/([^/]+)/cancel(/(.*))?/?$\";s:53:\"index.php?um_directory=$matches[1]&cancel=$matches[3]\";s:46:\"um_directory/([^/]+)/gateway-cancel(/(.*))?/?$\";s:61:\"index.php?um_directory=$matches[1]&gateway-cancel=$matches[3]\";s:46:\"um_directory/([^/]+)/gateway-return(/(.*))?/?$\";s:61:\"index.php?um_directory=$matches[1]&gateway-return=$matches[3]\";s:38:\"um_directory/([^/]+)/um-api(/(.*))?/?$\";s:53:\"index.php?um_directory=$matches[1]&um-api=$matches[3]\";s:44:\"um_directory/[^/]+/([^/]+)/verify(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&verify=$matches[3]\";s:55:\"um_directory/[^/]+/attachment/([^/]+)/verify(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&verify=$matches[3]\";s:44:\"um_directory/[^/]+/([^/]+)/cancel(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&cancel=$matches[3]\";s:55:\"um_directory/[^/]+/attachment/([^/]+)/cancel(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&cancel=$matches[3]\";s:52:\"um_directory/[^/]+/([^/]+)/gateway-cancel(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-cancel=$matches[3]\";s:63:\"um_directory/[^/]+/attachment/([^/]+)/gateway-cancel(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-cancel=$matches[3]\";s:52:\"um_directory/[^/]+/([^/]+)/gateway-return(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-return=$matches[3]\";s:63:\"um_directory/[^/]+/attachment/([^/]+)/gateway-return(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-return=$matches[3]\";s:44:\"um_directory/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:55:\"um_directory/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:37:\"um_directory/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?um_directory=$matches[1]&page=$matches[2]\";s:29:\"um_directory/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"um_directory/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"um_directory/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"um_directory/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"um_directory/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"um_directory/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:43:\"index.php?mec-events=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:37:\"index.php?mec-events=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?mec-events=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?mec-events=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?mec-events=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?mec-events=$matches[1]&cpage=$matches[2]\";s:32:\"events/([^/]+)/verify(/(.*))?/?$\";s:51:\"index.php?mec-events=$matches[1]&verify=$matches[3]\";s:32:\"events/([^/]+)/cancel(/(.*))?/?$\";s:51:\"index.php?mec-events=$matches[1]&cancel=$matches[3]\";s:40:\"events/([^/]+)/gateway-cancel(/(.*))?/?$\";s:59:\"index.php?mec-events=$matches[1]&gateway-cancel=$matches[3]\";s:40:\"events/([^/]+)/gateway-return(/(.*))?/?$\";s:59:\"index.php?mec-events=$matches[1]&gateway-return=$matches[3]\";s:32:\"events/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?mec-events=$matches[1]&um-api=$matches[3]\";s:38:\"events/[^/]+/([^/]+)/verify(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&verify=$matches[3]\";s:49:\"events/[^/]+/attachment/([^/]+)/verify(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&verify=$matches[3]\";s:38:\"events/[^/]+/([^/]+)/cancel(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&cancel=$matches[3]\";s:49:\"events/[^/]+/attachment/([^/]+)/cancel(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&cancel=$matches[3]\";s:46:\"events/[^/]+/([^/]+)/gateway-cancel(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-cancel=$matches[3]\";s:57:\"events/[^/]+/attachment/([^/]+)/gateway-cancel(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-cancel=$matches[3]\";s:46:\"events/[^/]+/([^/]+)/gateway-return(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-return=$matches[3]\";s:57:\"events/[^/]+/attachment/([^/]+)/gateway-return(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-return=$matches[3]\";s:38:\"events/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:49:\"events/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?mec-events=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"mec-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?mec_category=$matches[1]&feed=$matches[2]\";s:48:\"mec-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?mec_category=$matches[1]&feed=$matches[2]\";s:29:\"mec-category/([^/]+)/embed/?$\";s:45:\"index.php?mec_category=$matches[1]&embed=true\";s:41:\"mec-category/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?mec_category=$matches[1]&paged=$matches[2]\";s:23:\"mec-category/([^/]+)/?$\";s:34:\"index.php?mec_category=$matches[1]\";s:41:\"mec_calendars/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"mec_calendars/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"mec_calendars/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"mec_calendars/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"mec_calendars/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"mec_calendars/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"mec_calendars/([^/]+)/embed/?$\";s:46:\"index.php?mec_calendars=$matches[1]&embed=true\";s:34:\"mec_calendars/([^/]+)/trackback/?$\";s:40:\"index.php?mec_calendars=$matches[1]&tb=1\";s:42:\"mec_calendars/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?mec_calendars=$matches[1]&paged=$matches[2]\";s:49:\"mec_calendars/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?mec_calendars=$matches[1]&cpage=$matches[2]\";s:39:\"mec_calendars/([^/]+)/verify(/(.*))?/?$\";s:54:\"index.php?mec_calendars=$matches[1]&verify=$matches[3]\";s:39:\"mec_calendars/([^/]+)/cancel(/(.*))?/?$\";s:54:\"index.php?mec_calendars=$matches[1]&cancel=$matches[3]\";s:47:\"mec_calendars/([^/]+)/gateway-cancel(/(.*))?/?$\";s:62:\"index.php?mec_calendars=$matches[1]&gateway-cancel=$matches[3]\";s:47:\"mec_calendars/([^/]+)/gateway-return(/(.*))?/?$\";s:62:\"index.php?mec_calendars=$matches[1]&gateway-return=$matches[3]\";s:39:\"mec_calendars/([^/]+)/um-api(/(.*))?/?$\";s:54:\"index.php?mec_calendars=$matches[1]&um-api=$matches[3]\";s:45:\"mec_calendars/[^/]+/([^/]+)/verify(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&verify=$matches[3]\";s:56:\"mec_calendars/[^/]+/attachment/([^/]+)/verify(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&verify=$matches[3]\";s:45:\"mec_calendars/[^/]+/([^/]+)/cancel(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&cancel=$matches[3]\";s:56:\"mec_calendars/[^/]+/attachment/([^/]+)/cancel(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&cancel=$matches[3]\";s:53:\"mec_calendars/[^/]+/([^/]+)/gateway-cancel(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-cancel=$matches[3]\";s:64:\"mec_calendars/[^/]+/attachment/([^/]+)/gateway-cancel(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-cancel=$matches[3]\";s:53:\"mec_calendars/[^/]+/([^/]+)/gateway-return(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-return=$matches[3]\";s:64:\"mec_calendars/[^/]+/attachment/([^/]+)/gateway-return(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-return=$matches[3]\";s:45:\"mec_calendars/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:56:\"mec_calendars/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:38:\"mec_calendars/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?mec_calendars=$matches[1]&page=$matches[2]\";s:30:\"mec_calendars/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"mec_calendars/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"mec_calendars/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"mec_calendars/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"mec_calendars/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"mec_calendars/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"events-label/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?mec_label=$matches[1]&feed=$matches[2]\";s:48:\"events-label/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?mec_label=$matches[1]&feed=$matches[2]\";s:29:\"events-label/([^/]+)/embed/?$\";s:42:\"index.php?mec_label=$matches[1]&embed=true\";s:41:\"events-label/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?mec_label=$matches[1]&paged=$matches[2]\";s:23:\"events-label/([^/]+)/?$\";s:31:\"index.php?mec_label=$matches[1]\";s:56:\"events-location/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?mec_location=$matches[1]&feed=$matches[2]\";s:51:\"events-location/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?mec_location=$matches[1]&feed=$matches[2]\";s:32:\"events-location/([^/]+)/embed/?$\";s:45:\"index.php?mec_location=$matches[1]&embed=true\";s:44:\"events-location/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?mec_location=$matches[1]&paged=$matches[2]\";s:26:\"events-location/([^/]+)/?$\";s:34:\"index.php?mec_location=$matches[1]\";s:57:\"events-organizer/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?mec_organizer=$matches[1]&feed=$matches[2]\";s:52:\"events-organizer/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?mec_organizer=$matches[1]&feed=$matches[2]\";s:33:\"events-organizer/([^/]+)/embed/?$\";s:46:\"index.php?mec_organizer=$matches[1]&embed=true\";s:45:\"events-organizer/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?mec_organizer=$matches[1]&paged=$matches[2]\";s:27:\"events-organizer/([^/]+)/?$\";s:35:\"index.php?mec_organizer=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:17:\"um-api(/(.*))?/?$\";s:29:\"index.php?&um-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/um-api(/(.*))?/?$\";s:29:\"index.php?&um-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/um-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&um-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/um-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&um-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/verify(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&verify=$matches[5]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/cancel(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cancel=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/gateway-cancel(/(.*))?/?$\";s:90:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&gateway-cancel=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/gateway-return(/(.*))?/?$\";s:90:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&gateway-return=$matches[5]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/um-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&um-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/um-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&um-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/verify(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&verify=$matches[3]\";s:28:\"([0-9]{4})/cancel(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&cancel=$matches[3]\";s:36:\"([0-9]{4})/gateway-cancel(/(.*))?/?$\";s:53:\"index.php?year=$matches[1]&gateway-cancel=$matches[3]\";s:36:\"([0-9]{4})/gateway-return(/(.*))?/?$\";s:53:\"index.php?year=$matches[1]&gateway-return=$matches[3]\";s:28:\"([0-9]{4})/um-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&um-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/um-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&um-api=$matches[3]\";s:31:\".?.+?/([^/]+)/verify(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&verify=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/verify(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&verify=$matches[3]\";s:31:\".?.+?/([^/]+)/cancel(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&cancel=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/cancel(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&cancel=$matches[3]\";s:39:\".?.+?/([^/]+)/gateway-cancel(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-cancel=$matches[3]\";s:50:\".?.+?/attachment/([^/]+)/gateway-cancel(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-cancel=$matches[3]\";s:39:\".?.+?/([^/]+)/gateway-return(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-return=$matches[3]\";s:50:\".?.+?/attachment/([^/]+)/gateway-return(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-return=$matches[3]\";s:31:\".?.+?/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/verify(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&verify=$matches[3]\";s:25:\"([^/]+)/cancel(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&cancel=$matches[3]\";s:33:\"([^/]+)/gateway-cancel(/(.*))?/?$\";s:53:\"index.php?name=$matches[1]&gateway-cancel=$matches[3]\";s:33:\"([^/]+)/gateway-return(/(.*))?/?$\";s:53:\"index.php?name=$matches[1]&gateway-return=$matches[3]\";s:25:\"([^/]+)/um-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&um-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/verify(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&verify=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/verify(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&verify=$matches[3]\";s:31:\"[^/]+/([^/]+)/cancel(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&cancel=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/cancel(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&cancel=$matches[3]\";s:39:\"[^/]+/([^/]+)/gateway-cancel(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-cancel=$matches[3]\";s:50:\"[^/]+/attachment/([^/]+)/gateway-cancel(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-cancel=$matches[3]\";s:39:\"[^/]+/([^/]+)/gateway-return(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-return=$matches[3]\";s:50:\"[^/]+/attachment/([^/]+)/gateway-return(/(.*))?/?$\";s:59:\"index.php?attachment=$matches[1]&gateway-return=$matches[3]\";s:31:\"[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:6:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:31:\"cookie-notice/cookie-notice.php\";i:2;s:33:\"instagram-feed/instagram-feed.php\";i:3;s:59:\"modern-events-calendar-lite/modern-events-calendar-lite.php\";i:4;s:34:\"ultimate-maps-by-supsystic/ums.php\";i:5;s:35:\"ultimate-member/ultimate-member.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','test-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','test-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','51917','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:4:{s:59:\"modern-events-calendar-lite/modern-events-calendar-lite.php\";a:2:{i:0;s:11:\"MEC_factory\";i:1;s:9:\"uninstall\";}s:33:\"instagram-feed/instagram-feed.php\";s:22:\"sb_instagram_uninstall\";s:34:\"ultimate-maps-by-supsystic/ums.php\";a:2:{i:0;s:8:\"utilsUms\";i:1;s:12:\"deletePlugin\";}s:24:\"google-maps-easy/gmp.php\";a:2:{i:0;s:8:\"utilsGmp\";i:1;s:12:\"deletePlugin\";}}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','Europe/Tallinn','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','7','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','17','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1666688434','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','51917','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:69:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"mec_bookings\";b:1;s:15:\"mec_add_booking\";b:1;s:11:\"mec_coupons\";b:1;s:10:\"mec_report\";b:1;s:17:\"mec_import_export\";b:1;s:12:\"mec_settings\";b:1;s:14:\"mec_shortcodes\";b:1;s:29:\"manage_instagram_feed_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:7:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:8;a:1:{s:7:\"content\";s:312:\"<!-- wp:image {\"id\":21,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-full is-style-rounded\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:7:\"block-8\";}s:9:\"sidebar-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:17:{i:1652281236;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1652281336;a:1:{s:26:\"um_hourly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1652281988;a:1:{s:13:\"mec_scheduler\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1652302836;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1652308339;a:2:{s:21:\"sb_instagram_cron_job\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:23:\"sb_instagram_twicedaily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1652308401;a:1:{s:15:\"sbi_feed_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1652313736;a:2:{s:25:\"um_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"um_twicedaily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1652343188;a:1:{s:17:\"mec_syncScheduler\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1652346036;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1652352250;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1652352252;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1652364877;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1652432436;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1652663947;a:1:{s:23:\"sbi_usage_tracking_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1652832136;a:1:{s:26:\"um_weekly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1653296400;a:2:{s:29:\"sb_instagram_feed_issue_email\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"sbiweekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:23:\"sbi_notification_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"sbiweekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','jHI9aIxPQ)kL3ecEI9lj${{J,(C ]9|vE}4<WX.9yKQDxbAV_q%q<$d*[?cL1C?3','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','!_xlQGl3+AyI&2K!N{k%Y(c.^ &Prjrxd*lynm|N?VMxk:aE0}e9^-x/HqAH4/M$','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwentytwo','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1651142661;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (126,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (134,'auth_key','ZR+M3+xDnn6.;L$Qdl<m(8SCr[2JiH#3rem1x[@ZHBf_3DX4dH~p]e?N`ZgCBBBJ','no');
INSERT INTO `wp_options` VALUES (135,'auth_salt','hlA;,GE%i06uCl4GN~?~1g`3,a>z^$M{:$tE-rGQ2%CMjrm)Qa<e}.9~C]]n-y:6','no');
INSERT INTO `wp_options` VALUES (136,'logged_in_key','KOao0pF;f5d2Sq0*V{td.?nyU<)s.Wzp)*WRQ(b?{hm0c[7:j(m%Jk059?^ CZwe','no');
INSERT INTO `wp_options` VALUES (137,'logged_in_salt','<G[MR>z}VwK.u[Uw}iq&%h*?QuL1G,x?h3f6p?cZY2X^d-sibXrcQJ&$iQpj#|hm','no');
INSERT INTO `wp_options` VALUES (145,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (158,'current_theme','Test','yes');
INSERT INTO `wp_options` VALUES (159,'theme_mods_test-theme','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:16;}','yes');
INSERT INTO `wp_options` VALUES (160,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (163,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (202,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (203,'new_admin_email','truumeedia@gmail.com','yes');
INSERT INTO `wp_options` VALUES (223,'recovery_mode_email_last_sent','1651154208','yes');
INSERT INTO `wp_options` VALUES (224,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (291,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (292,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (297,'site_logo','16','yes');
INSERT INTO `wp_options` VALUES (315,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":4,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (748,'em_global_settings','a:25:{s:15:\"performers_page\";i:41;s:11:\"venues_page\";i:42;s:11:\"events_page\";i:43;s:12:\"booking_page\";i:44;s:12:\"profile_page\";i:45;s:11:\"event_types\";i:46;s:17:\"event_submit_form\";i:47;s:20:\"booking_details_page\";s:2:\"48\";s:21:\"booking_pending_email\";s:8468:\"<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n    <tbody>\n        <tr>\n            <td align=\"center\" valign=\"top\">\n                <table style=\"background-color: #fdfdfd; border: 1px solid #dcdcdc; border-radius: 3px!important;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\n                    <tbody>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table style=\"background-color: #0087be;border-radius: 3px 3px 0 0!important; color: #ffffff; border-bottom: 0; font-weight: bold; line-height: 100%; vertical-align: middle; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"padding: 36px 48px; display: block;\">\n                                                <h1 style=\"color: #ffffff; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; font-size: 30px; font-weight: 300; line-height: 150%; margin: 0; text-align: left;\">Your Booking is Pending</h1> </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"background-color: #fdfdfd;\" valign=\"top\">\n                                                <table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"20\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td style=\"padding: 48px;\" valign=\"top\">\n                                                                <div style=\"color: #737373; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; font-size: 14px; line-height: 150%; text-align: left;\">\n                                                                    <h1 style=\"color: #0087be; display: block; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; font-size: 22px; font-weight: bold; line-height: 130%; margin: 16px 0 8px; text-align: center;\">Event Name</h1>\n                                                                    <h2 style=\"color:#557da1;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:18px;font-weight:normal;line-height:130%;margin:16px 0 8px;text-align:center; font-style: italic;\">Venue Name</h2>\n                                                                    <h2 style=\"color: #557da1; display: block; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; font-size: 18px; font-weight: normal; line-height: 130%; margin: 16px 0 8px; text-align: center; font-style: italic;\">Event Venue</h2>\n                                                                    <h2 style=\"color: #0087be; display: block; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; font-size: 18px; font-weight: bold; line-height: 130%; margin: 16px 0 8px; text-align: left;\">Booking #ID</h2>\n                                                                    <table style=\"width: 100%; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; color: #737373; border: 1px solid #e4e4e4;\" border=\"1\" cellspacing=\"0\" cellpadding=\"6\">\n                                                                        <thead>\n                                                                            <tr>\n                                                                                <th style=\"text-align: left; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" scope=\"col\">Ticket(s)</th>\n                                                                                <th style=\"text-align: left; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" scope=\"col\">Quantity</th>\n                                                                                <th style=\"text-align: left; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" scope=\"col\">Price</th>\n                                                                                <th style=\"text-align: left; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" scope=\"col\">Discount</th>\n                                                                            </tr>\n                                                                        </thead>\n                                                                        <tbody>\n                                                                            <tr>\n                                                                                <td style=\"text-align: left; vertical-align: middle; border: 1px solid #eee; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; word-wrap: break-word; color: #737373; padding: 12px;\">(Seat No.) <small></small></td>\n                                                                                <td style=\"text-align: left; vertical-align: middle; border: 1px solid #eee; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; color: #737373; padding: 12px;\">(Quantity)</td>\n                                                                                <td style=\"text-align: left; vertical-align: middle; border: 1px solid #eee; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; color: #737373; padding: 12px;\">$(Price)</td>\n                                                                                <td style=\"text-align: left; vertical-align: middle; border: 1px solid #eee; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; color: #737373; padding: 12px;\"> -$(Discount)</td>\n                                                                            </tr>\n                                                                        </tbody>\n                                                                        <tfoot>\n                                                                            <tr>\n                                                                                <th colspan=\"2\" style=\"text-align:left;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\">One-Time event Fee:</th>\n                                                                                <td style=\"text-align:left;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\"><span>$(Fixed Event Fee)</span>\n                                                                                </td>\n                                                                            </tr>\n                                                                            <tr>\n                                                                                <th style=\"text-align: left; border-top-width: 4px; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" colspan=\"2\">Subtotal:</th>\n                                                                                <td style=\"text-align: left; border-top-width: 4px; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\"><span>$(Subtotal)</span></td>\n                                                                            </tr>\n                                                                        </tfoot>\n                                                                    </table>\n                                                                </div>\n                                                            </td>\n                                                        </tr>\n                                                    </tbody>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n        </tr>\n    </tbody>\n</table>\";s:23:\"booking_confirmed_email\";s:8136:\"<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n    <tbody>\n        <tr>\n            <td align=\"center\" valign=\"top\">\n                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"background-color:#fdfdfd;border:1px solid #dcdcdc;border-radius:3px!important\">\n                    <tbody>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"background-color: #0087be;border-radius:3px 3px 0 0!important;color:#ffffff;border-bottom:0;font-weight:bold;line-height:100%;vertical-align:middle;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"padding:36px 48px;display:block\">\n                                                <h1 style=\"color:#ffffff;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:30px;font-weight:300;line-height:150%;margin:0;text-align:left\">Your Booking is Confirmed</h1>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\n                                    <tbody>\n                                        <tr>\n                                            <td valign=\"top\" style=\"background-color:#fdfdfd\">\n                                                <table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td valign=\"top\" style=\"padding:48px\">\n                                                                <div style=\"color:#737373;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:14px;line-height:150%;text-align:left\">\n                                                                    <h1 style=\"color:#0087be;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:22px;font-weight:bold;line-height:130%;margin:16px 0 8px;text-align:center;\">Event Name</h1>\n                                                                    <h2 style=\"color:#557da1;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:18px;font-weight:normal;line-height:130%;margin:16px 0 8px;text-align:center; font-style: italic;\">Venue Name</h2>\n                                                                    <h2 style=\"color:#557da1;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:18px;font-weight:normal;line-height:130%;margin:16px 0 8px;text-align:center; font-style: italic;\">Event Venue</h2>\n                                                                    <h2 style=\"color:#0087be;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:18px;font-weight:bold;line-height:130%;margin:16px 0 8px;text-align:left\">Booking ##ID</h2>\n                                                                    <table cellspacing=\"0\" cellpadding=\"6\" style=\"width:100%;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;color:#737373;border:1px solid #e4e4e4\" border=\"1\">\n                                                                        <thead>\n                                                                            <tr>\n                                                                                <th scope=\"col\" style=\"text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px\">Ticket(s)</th>\n                                                                                <th scope=\"col\" style=\"text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px\">Price</th>\n                                                                                <th scope=\"col\" style=\"text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px\">Quantity</th>\n                                                                                <th scope=\"col\" style=\"text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px\">Subtotal</th>\n                                                                            </tr>\n                                                                        </thead>\n                                                                        <tbody>\n                                                                            (order_item_data)\n                                                                        </tbody>\n                                                                        <tfoot>\n                                                                            <tr>\n                                                                                <th colspan=\"2\" style=\"text-align:left;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\">One-Time event Fee:</th>\n                                                                                <td colspan=\"2\" style=\"text-align:right;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\"><span>$(Fixed Event Fee)</span>\n                                                                                </td>\n                                                                            </tr>\n                                                                            <tr>\n                                                                                <th colspan=\"2\" style=\"text-align:left;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\">Discount:</th>\n                                                                                <td colspan=\"2\" style=\"text-align:right;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\"><span>-$(Discount)</span>\n                                                                                </td>\n                                                                            </tr>\n                                                                            <tr>\n                                                                                <th colspan=\"2\" style=\"text-align:left;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\">Order Total:</th>\n                                                                                <td colspan=\"2\" style=\"text-align:right;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\"><span>$(Order Total)</span>\n                                                                                </td>\n                                                                            </tr>\n                                                                        </tfoot>\n                                                                    </table>\n                                                                    {{gcal_link}}\n                                                                    {{iCal_link}}\n                                                                </div>\n                                                            </td>\n                                                        </tr>\n                                                    </tbody>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n        </tr>\n    </tbody>\n</table>\";s:25:\"booking_cancelation_email\";s:7341:\"<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n    <tbody>\n        <tr>\n            <td align=\"center\" valign=\"top\">\n                <table style=\"background-color: #fdfdfd; border: 1px solid #dcdcdc; border-radius: 3px!important;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\n                    <tbody>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table style=\"background-color: #0087be; border-radius: 3px 3px 0 0!important; color: #ffffff; border-bottom: 0; font-weight: bold; line-height: 100%; vertical-align: middle; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"padding: 36px 48px; display: block;\">\n                                                <h1 style=\"color: #ffffff; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; font-size: 30px; font-weight: 300; line-height: 150%; margin: 0; text-align: left;\">Booking Cancelled</h1> </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"background-color: #fdfdfd;\" valign=\"top\">\n                                                <table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"20\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td style=\"padding: 48px;\" valign=\"top\">\n                                                                <div style=\"color: #737373; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; font-size: 14px; line-height: 150%; text-align: left;\"> The Booking ##ID has been cancelled. The order was as follows:\n                                                                    <table style=\"width: 100%; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; color: #737373; border: 1px solid #e4e4e4;\" border=\"1\" cellspacing=\"0\" cellpadding=\"6\">\n                                                                        <thead>\n                                                                            <tr>\n                                                                                <th style=\"text-align: left; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" scope=\"col\">Event</th>\n                                                                                <th style=\"text-align: left; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" scope=\"col\">Quantity</th>\n                                                                                <th style=\"text-align: left; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" scope=\"col\">Price</th>\n                                                                                <th style=\"text-align: left; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" scope=\"col\">Discount</th>\n                                                                            </tr>\n                                                                        </thead>\n                                                                        <tbody>\n                                                                            <tr>\n                                                                                <td style=\"text-align: left; vertical-align: middle; border: 1px solid #eee; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; word-wrap: break-word; color: #737373; padding: 12px;\">Event Name <small></small></td>\n                                                                                <td style=\"text-align: left; vertical-align: middle; border: 1px solid #eee; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; color: #737373; padding: 12px;\">(Quantity)</td>\n                                                                                <td style=\"text-align: left; vertical-align: middle; border: 1px solid #eee; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; color: #737373; padding: 12px;\">$(Price)</td>\n                                                                                <td style=\"text-align: left; vertical-align: middle; border: 1px solid #eee; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; color: #737373; padding: 12px;\"> -$(Discount)</td>\n                                                                            </tr>\n                                                                        </tbody>\n                                                                        <tfoot>\n                                                                            <tr>\n                                                                                <th colspan=\"2\" style=\"text-align:left;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\">One-Time event Fee:</th>\n                                                                                <td style=\"text-align:left;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\"><span>$(Fixed Event Fee)</span>\n                                                                                </td>\n                                                                            </tr>\n                                                                            <tr>\n                                                                                <th style=\"text-align: left; border-top-width: 4px; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" colspan=\"2\">Subtotal:</th>\n                                                                                <td style=\"text-align: left; border-top-width: 4px; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\"><span>$(Subtotal)</span></td>\n                                                                            </tr>\n                                                                        </tfoot>\n                                                                    </table>\n                                                                </div>\n                                                            </td>\n                                                        </tr>\n                                                    </tbody>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n        </tr>\n    </tbody>\n</table>\";s:19:\"reset_password_mail\";s:4499:\"<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n    <tbody>\n        <tr>\n            <td align=\"center\" valign=\"top\">\n                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"background-color:#fdfdfd;border:1px solid #dcdcdc;border-radius:3px!important\">\n                    <tbody>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"background-color: #0087be;border-radius:3px 3px 0 0!important;color:#ffffff;border-bottom:0;font-weight:bold;line-height:100%;vertical-align:middle;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"padding:36px 48px;display:block\">\n                                                <h1 style=\"color:#ffffff;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:30px;font-weight:300;line-height:150%;margin:0;text-align:left\">New Password</h1> </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\n                                    <tbody>\n                                        <tr>\n                                            <td valign=\"top\" style=\"background-color:#fdfdfd\">\n                                                <table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td valign=\"top\" style=\"padding:48px\">\n                                                                <div style=\"color:#737373;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:14px;line-height:150%;text-align:left\">\n                                                                    <h1 style=\"color: #0087be;;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:18px;font-weight:normal;line-height:130%;margin:16px 0 8px;text-align:center; font-style: italic;\">Hello @username,</h1>\n                                                                    <!--<h1 style=\"color:#557da1;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:22px;font-weight:bold;line-height:130%;margin:16px 0 8px;text-align:center;\">Thank you for registering for the Event Name</h1>-->\n                                                                    <table cellspacing=\"0\" cellpadding=\"6\" style=\"width:100%;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;color:#737373;border:1px solid #e4e4e4\" border=\"1\">\n                                                                        <tr>\n                                                                            <th>Your New Password is : </th>\n                                                                            <td style=\"text-align:left;vertical-align:middle;border:1px solid #eee;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;word-wrap:break-word;color:#737373;padding:12px\">@password\n                                                                                <br><small></small></td>\n                                                                        <tr>\n                                                                    </table>\n                                                                </div>\n                                                            </td>\n                                                        </tr>\n                                                    </tbody>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n        </tr>\n    </tbody>\n</table>\";s:26:\"registration_email_content\";s:6054:\"<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n    <tbody>\n        <tr>\n            <td align=\"center\" valign=\"top\">\n                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"background-color:#fdfdfd;border:1px solid #dcdcdc;border-radius:3px!important\">\n                    <tbody>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"background-color: #0087be;border-radius:3px 3px 0 0!important;color:#ffffff;border-bottom:0;font-weight:bold;line-height:100%;vertical-align:middle;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"padding:36px 48px;display:block\">\n                                                <h1 style=\"color:#ffffff;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:30px;font-weight:300;line-height:150%;margin:0;text-align:left\">Registration Successful</h1> </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\n                                    <tbody>\n                                        <tr>\n                                            <td valign=\"top\" style=\"background-color:#fdfdfd\">\n                                                <table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td valign=\"top\" style=\"padding:48px\">\n                                                                <div style=\"color:#737373;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:14px;line-height:150%;text-align:left\">\n                                                                    <h1 style=\"color:#0087be;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:18px;font-weight:normal;line-height:130%;margin:16px 0 8px;text-align:center; font-style: italic;\">Hello @username,</h1>\n                                                                    <table cellspacing=\"0\" cellpadding=\"6\" style=\"width:100%;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;color:#737373;border:1px solid #e4e4e4\" border=\"1\">\n                                                                        <tr>\n                                                                            <th>User Name:</th>\n                                                                            <td style=\"text-align:left;vertical-align:middle;border:1px solid #eee;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;word-wrap:break-word;color:#737373;padding:12px\">@username\n                                                                                <br><small></small></td>\n                                                                        <tr>\n                                                                        <tr>\n                                                                            <th>First Name:</th>\n                                                                            <td style=\"text-align:left;vertical-align:middle;border:1px solid #eee;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;word-wrap:break-word;color:#737373;padding:12px\">@first_name\n                                                                                <br><small></small></td>\n                                                                        <tr>\n                                                                        <tr>\n                                                                            <th>Last Name:</th>\n                                                                            <td style=\"text-align:left;vertical-align:middle;border:1px solid #eee;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;word-wrap:break-word;color:#737373;padding:12px\">@last_name\n                                                                                <br><small></small></td>\n                                                                        <tr>\n                                                                        <tr>\n                                                                            <th>Phone:</th>\n                                                                            <td style=\"text-align:left;vertical-align:middle;border:1px solid #eee;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;word-wrap:break-word;color:#737373;padding:12px\">@phone\n                                                                                <br><small></small></td>\n                                                                        <tr>    \n                                                                    </table>\n                                                                </div>\n                                                            </td>\n                                                        </tr>\n                                                    </tbody>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n        </tr>\n    </tbody>\n</table>\";s:20:\"booking_refund_email\";s:8181:\"<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n    <tbody>\n        <tr>\n            <td align=\"center\" valign=\"top\">\n                <table style=\"background-color: #fdfdfd; border: 1px solid #dcdcdc; border-radius: 3px!important;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\n                    <tbody>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table style=\"background-color: #0087be; border-radius: 3px 3px 0 0!important; color: #ffffff; border-bottom: 0; font-weight: bold; line-height: 100%; vertical-align: middle; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"padding: 36px 48px; display: block;\">\n                                                <h1 style=\"color: #ffffff; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; font-size: 30px; font-weight: 300; line-height: 150%; margin: 0; text-align: left;\">Refund on Booking ##ID</h1> </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"background-color: #fdfdfd;\" valign=\"top\">\n                                                <table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"20\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td style=\"padding: 48px;\" valign=\"top\">\n                                                                <div style=\"color: #737373; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; font-size: 14px; line-height: 150%; text-align: left;\">\n                                                                    <h1 style=\"color: #0087be; display: block; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; font-size: 22px; font-weight: bold; line-height: 130%; margin: 16px 0 8px; text-align: center;\">Event Name</h1>\n                                                                    <h2 style=\"color:#557da1;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:18px;font-weight:normal;line-height:130%;margin:16px 0 8px;text-align:center; font-style: italic;\">Venue Name</h2>\n                                                                    <h2 style=\"color: #557da1; display: block; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; font-size: 18px; font-weight: normal; line-height: 130%; margin: 16px 0 8px; text-align: center; font-style: italic;\">Event Venue</h2>\n                                                                    <table style=\"width: 100%; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; color: #737373; border: 1px solid #e4e4e4;\" border=\"1\" cellspacing=\"0\" cellpadding=\"6\">\n                                                                        <thead>\n                                                                            <tr>\n                                                                                <th style=\"text-align: left; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" scope=\"col\">Ticket(s)</th>\n                                                                                <th style=\"text-align: left; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" scope=\"col\">Quantity</th>\n                                                                                <th style=\"text-align: left; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" scope=\"col\">Price</th>\n                                                                                <th style=\"text-align: left; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" scope=\"col\">Discount</th>\n                                                                            </tr>\n                                                                        </thead>\n                                                                        <tbody>\n                                                                            <tr>\n                                                                                <td style=\"text-align: left; vertical-align: middle; border: 1px solid #eee; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; word-wrap: break-word; color: #737373; padding: 12px;\">(Seat No.) <small></small></td>\n                                                                                <td style=\"text-align: left; vertical-align: middle; border: 1px solid #eee; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; color: #737373; padding: 12px;\">(Quantity)</td>\n                                                                                <td style=\"text-align: left; vertical-align: middle; border: 1px solid #eee; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; color: #737373; padding: 12px;\">$(Price)</td>\n                                                                                <td style=\"text-align: left; vertical-align: middle; border: 1px solid #eee; font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; color: #737373; padding: 12px;\"> -$(Discount)</td>\n                                                                            </tr>\n                                                                        </tbody>\n                                                                        <tfoot>\n                                                                            <tr>\n                                                                                <th colspan=\"2\" style=\"text-align:left;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\">One-Time event Fee:</th>\n                                                                                <td style=\"text-align:left;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\"><span>$(Fixed Event Fee)</span>\n                                                                                </td>\n                                                                            </tr>\n                                                                            <tr>\n                                                                                <th style=\"text-align: left; border-top-width: 4px; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\" colspan=\"2\">Subtotal:</th>\n                                                                                <td style=\"text-align: left; border-top-width: 4px; color: #737373; border: 1px solid #e4e4e4; padding: 12px;\"><span>$(Subtotal)</span></td>\n                                                                            </tr>\n                                                                        </tfoot>\n                                                                    </table>\n                                                                </div>\n                                                            </td>\n                                                        </tr>\n                                                    </tbody>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n        </tr>\n    </tbody>\n</table>\";s:21:\"event_submitted_email\";s:3826:\"<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n	<tbody>\n		<tr>\n			<td align=\"center\" valign=\"top\">\n				<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"background-color:#fdfdfd;border:1px solid #dcdcdc;border-radius:3px!important\">\n					<tbody>\n						<tr>\n							<td align=\"center\" valign=\"top\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"background-color: #0087be;border-radius:3px 3px 0 0!important;color:#ffffff;border-bottom:0;font-weight:bold;line-height:100%;vertical-align:middle;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif\">\n									<tbody>\n										<tr>\n											<td style=\"padding:36px 48px;display:block\">\n												<h1 style=\"color:#ffffff;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:30px;font-weight:300;line-height:150%;margin:0;text-align:left\">New Event Submitted</h1> </td>\n										</tr>\n									</tbody>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td align=\"center\" valign=\"top\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\n									<tbody>\n										<tr>\n											<td valign=\"top\" style=\"background-color:#fdfdfd\">\n												<table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\">\n													<tbody>\n														<tr>\n															<td valign=\"top\" style=\"padding:48px\">\n																<div style=\"color:#737373;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:14px;line-height:150%;text-align:left\">\n																	<p style=\"font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;\n                                                                              color: #737373;\">You have a new event submitted by @UserEmail.</p>\n                                                                    <p style=\"font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;\n                                                                              color: #737373;\">You can check and publish it from EventPrime in your WordPress Dashboard.</p>\n                                                                    <p style=\"font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;\n                                                                          color: #737373;\">Following are the submitted event\'s details...</p>\n																	<table cellspacing=\"0\" cellpadding=\"6\" style=\"width:100%;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;color:#737373;border:1px solid #e4e4e4\" border=\"1\">\n																		<tr>\n																			<th>Event Name</th>\n																			<td style=\"text-align:left;vertical-align:middle;border:1px solid #eee;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;word-wrap:break-word;color:#737373;padding:12px\">@EventName<small></small></td>\n																		</tr>\n																		<tr>\n																			<th>Start Date</th>\n																			<td style=\"text-align:left;vertical-align:middle;border:1px solid #eee;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;word-wrap:break-word;color:#737373;padding:12px\">@EventStartDate<small></small></td>\n																		</tr>\n																		<tr>\n																			<th>End Date</th>\n																			<td style=\"text-align:left;vertical-align:middle;border:1px solid #eee;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;word-wrap:break-word;color:#737373;padding:12px\">@EventEndDate<small></small></td>\n																		</tr>\n																	</table>\n																</div>\n															</td>\n														</tr>\n													</tbody>\n												</table>\n											</td>\n										</tr>\n									</tbody>\n								</table>\n							</td>\n						</tr>\n					</tbody>\n				</table>\n			</td>\n		</tr>\n	</tbody>\n</table>\";s:20:\"event_approved_email\";s:2575:\"<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n	<tbody>\n		<tr>\n			<td align=\"center\" valign=\"top\">\n				<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"background-color:#fdfdfd;border:1px solid #dcdcdc;border-radius:3px!important\">\n					<tbody>\n						<tr>\n							<td align=\"center\" valign=\"top\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"background-color: #0087be;border-radius:3px 3px 0 0!important;color:#ffffff;border-bottom:0;font-weight:bold;line-height:100%;vertical-align:middle;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif\">\n									<tbody>\n										<tr>\n											<td style=\"padding:36px 48px;display:block\">\n												<h1 style=\"color:#ffffff;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:30px;font-weight:300;line-height:150%;margin:0;text-align:left\">Event Published</h1></td>\n										</tr>\n									</tbody>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td align=\"center\" valign=\"top\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\n									<tbody>\n										<tr>\n											<td valign=\"top\" style=\"background-color:#fdfdfd\">\n												<table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\">\n													<tbody>\n														<tr>\n															<td valign=\"top\" style=\"padding:48px\">\n																<div style=\"color:#737373;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:14px;line-height:150%;text-align:left\">\n																	<h1 style=\"color:#0087be;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:18px;font-weight:normal;line-height:130%;margin:16px 0 8px;text-align:center; font-style: italic;\">Hello @UserName,</h1>\n																	<p style=\"font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;\n																			  color: #737373;\">Your event: <span style=\"color:#0087be;font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif\">@EventName</span> has been published on <span style=\"color:#0087be;font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif\">@SiteURL</span>. You can visit it here: <span style=\"color:#0087be;font-family: \'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif\">@EventLink</span></p>\n																</div>\n															</td>\n														</tr>\n													</tbody>\n												</table>\n											</td>\n										</tr>\n									</tbody>\n								</table>\n							</td>\n						</tr>\n					</tbody>\n				</table>\n			</td>\n		</tr>\n	</tbody>\n</table>\";s:17:\"payment_test_mode\";i:1;s:8:\"currency\";s:3:\"USD\";s:10:\"event_tour\";i:0;s:21:\"is_visit_welcome_page\";i:0;s:26:\"dashboard_hide_past_events\";i:0;s:22:\"disable_filter_options\";i:0;s:16:\"event_organizers\";s:2:\"49\";s:28:\"show_qr_code_on_single_event\";i:1;s:22:\"show_qr_code_on_ticket\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (749,'emagic_db_version','2.4.3','yes');
INSERT INTO `wp_options` VALUES (751,'recently_activated','a:2:{s:24:\"google-maps-easy/gmp.php\";i:1652210664;s:52:\"eventprime-event-calendar-management/event-magic.php\";i:1651824964;}','yes');
INSERT INTO `wp_options` VALUES (752,'widget_eventm_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (753,'widget_eventm_venue_map','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (754,'widget_eventm_slider','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (755,'widget_eventm_event_countdown','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (758,'em_event_type_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (763,'mec_table_version_wp_mec_attendees','1.1.0','yes');
INSERT INTO `wp_options` VALUES (764,'mec_core_db','6.5.5','yes');
INSERT INTO `wp_options` VALUES (766,'mec_options','a:6:{s:8:\"settings\";a:143:{s:24:\"multiple_day_show_method\";s:18:\"first_day_listgrid\";s:18:\"google_maps_status\";i:1;s:20:\"export_module_status\";i:1;s:2:\"sn\";a:7:{s:9:\"googlecal\";i:1;s:4:\"ical\";i:1;s:8:\"facebook\";i:1;s:5:\"gplus\";i:1;s:7:\"twitter\";i:1;s:8:\"linkedin\";i:1;s:5:\"email\";i:1;}s:16:\"countdown_status\";s:1:\"1\";s:21:\"social_network_status\";i:1;s:20:\"default_skin_archive\";s:11:\"yearly_view\";s:16:\"hide_time_method\";s:5:\"plus2\";s:24:\"remove_data_on_uninstall\";s:1:\"0\";s:11:\"date_suffix\";s:1:\"0\";s:6:\"schema\";s:1:\"1\";s:8:\"weekdays\";a:5:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";}s:8:\"weekends\";a:2:{i:0;s:1:\"6\";i:1;s:1:\"7\";}s:17:\"datepicker_format\";s:14:\"dd.mm.yy&d.m.Y\";s:13:\"midnight_hour\";s:1:\"0\";s:14:\"event_as_popup\";s:1:\"1\";s:11:\"sh_as_popup\";s:1:\"1\";s:21:\"include_image_in_feed\";s:1:\"0\";s:30:\"fallback_featured_image_status\";s:1:\"1\";s:10:\"tag_method\";s:8:\"post_tag\";s:9:\"ical_feed\";s:1:\"0\";s:19:\"booking_sender_name\";s:23:\"Eesti Erapilootide Liit\";s:20:\"booking_sender_email\";s:0:\"\";s:25:\"booking_recipients_method\";s:3:\"BCC\";s:13:\"archive_title\";s:20:\"Möödunud üritused\";s:17:\"archive_title_tag\";s:2:\"h1\";s:14:\"custom_archive\";s:0:\"\";s:25:\"monthly_view_archive_skin\";s:7:\"classic\";s:22:\"timetable_archive_skin\";s:6:\"modern\";s:17:\"list_archive_skin\";s:7:\"classic\";s:17:\"grid_archive_skin\";s:7:\"classic\";s:21:\"default_skin_category\";s:4:\"list\";s:23:\"custom_archive_category\";s:0:\"\";s:26:\"monthly_view_category_skin\";s:7:\"classic\";s:23:\"timetable_category_skin\";s:6:\"modern\";s:18:\"list_category_skin\";s:6:\"modern\";s:18:\"grid_category_skin\";s:7:\"classic\";s:22:\"category_events_method\";s:1:\"1\";s:14:\"archive_status\";s:1:\"1\";s:4:\"slug\";s:6:\"events\";s:13:\"category_slug\";s:12:\"mec-category\";s:8:\"currency\";s:3:\"€\";s:16:\"currency_symptom\";s:0:\"\";s:13:\"currency_sign\";s:6:\"before\";s:18:\"thousand_separator\";s:1:\",\";s:17:\"decimal_separator\";s:1:\".\";s:17:\"currency_decimals\";s:1:\"2\";s:24:\"decimal_separator_status\";s:1:\"1\";s:24:\"assets_disable_stripe_js\";s:1:\"0\";s:22:\"assets_per_page_status\";s:1:\"0\";s:23:\"assets_in_footer_status\";s:1:\"0\";s:23:\"google_recaptcha_status\";s:1:\"0\";s:20:\"google_recaptcha_fes\";s:1:\"0\";s:24:\"google_recaptcha_sitekey\";s:0:\"\";s:26:\"google_recaptcha_secretkey\";s:0:\"\";s:11:\"time_format\";s:2:\"24\";s:13:\"fes_list_page\";s:0:\"\";s:13:\"fes_form_page\";s:0:\"\";s:20:\"fes_new_event_status\";s:0:\"\";s:24:\"fes_display_date_in_list\";s:1:\"1\";s:17:\"fes_thankyou_page\";s:0:\"\";s:21:\"fes_thankyou_page_url\";s:0:\"\";s:22:\"fes_thankyou_page_time\";s:4:\"2000\";s:17:\"fes_max_file_size\";s:4:\"5000\";s:16:\"fes_guest_status\";s:1:\"0\";s:20:\"fes_guest_name_email\";s:1:\"1\";s:23:\"fes_guest_user_creation\";s:1:\"0\";s:23:\"fes_section_data_fields\";s:1:\"1\";s:28:\"fes_section_countdown_method\";s:1:\"0\";s:23:\"fes_section_event_links\";s:1:\"1\";s:16:\"fes_section_cost\";s:1:\"0\";s:26:\"fes_section_featured_image\";s:1:\"0\";s:22:\"fes_section_categories\";s:1:\"0\";s:18:\"fes_section_labels\";s:1:\"0\";s:32:\"fes_section_shortcode_visibility\";s:1:\"1\";s:23:\"fes_section_event_color\";s:1:\"0\";s:16:\"fes_section_tags\";s:1:\"0\";s:20:\"fes_section_location\";s:1:\"1\";s:21:\"fes_section_organizer\";s:1:\"1\";s:22:\"fes_use_all_organizers\";s:1:\"1\";s:19:\"fes_section_speaker\";s:1:\"0\";s:27:\"fes_section_hourly_schedule\";s:1:\"1\";s:18:\"fes_section_schema\";s:1:\"0\";s:19:\"fes_section_excerpt\";s:1:\"0\";s:8:\"fes_note\";s:1:\"0\";s:19:\"fes_note_visibility\";s:6:\"always\";s:13:\"fes_agreement\";s:1:\"1\";s:21:\"fes_agreement_checked\";s:1:\"1\";s:18:\"fes_agreement_page\";s:0:\"\";s:17:\"fes_required_body\";s:1:\"1\";s:20:\"fes_required_excerpt\";s:1:\"0\";s:17:\"fes_required_cost\";s:1:\"0\";s:23:\"fes_required_event_link\";s:1:\"0\";s:27:\"fes_required_more_info_link\";s:1:\"0\";s:21:\"fes_required_category\";s:1:\"0\";s:18:\"fes_required_label\";s:1:\"0\";s:20:\"search_bar_ajax_mode\";s:1:\"0\";s:22:\"search_bar_modern_type\";s:1:\"1\";s:19:\"search_bar_category\";s:1:\"0\";s:19:\"search_bar_location\";s:1:\"0\";s:20:\"search_bar_organizer\";s:1:\"0\";s:14:\"search_bar_tag\";s:1:\"0\";s:16:\"search_bar_label\";s:1:\"0\";s:21:\"search_bar_text_field\";s:1:\"0\";s:19:\"single_date_format1\";s:5:\"d M Y\";s:18:\"single_date_method\";s:4:\"next\";s:19:\"single_single_style\";s:6:\"modern\";s:12:\"tz_per_event\";s:1:\"0\";s:9:\"gutenberg\";s:1:\"0\";s:11:\"breadcrumbs\";s:1:\"0\";s:20:\"breadcrumbs_category\";s:1:\"1\";s:21:\"organizer_description\";s:1:\"0\";s:20:\"location_description\";s:1:\"0\";s:16:\"single_cost_type\";s:7:\"numeric\";s:18:\"currency_per_event\";s:1:\"0\";s:22:\"featured_image_caption\";s:1:\"0\";s:22:\"public_download_module\";s:1:\"0\";s:14:\"sticky_sidebar\";s:1:\"0\";s:28:\"display_event_fields_backend\";s:1:\"1\";s:20:\"display_event_fields\";s:1:\"1\";s:14:\"countdown_list\";s:7:\"default\";s:36:\"countdown_disable_for_ongoing_events\";s:1:\"0\";s:16:\"exceptional_days\";s:1:\"0\";s:21:\"additional_organizers\";s:1:\"1\";s:34:\"addintional_organizers_description\";s:1:\"0\";s:20:\"additional_locations\";s:1:\"1\";s:33:\"addintional_locations_description\";s:1:\"0\";s:34:\"additional_locations_disable_title\";s:1:\"0\";s:14:\"related_events\";s:1:\"0\";s:31:\"related_events_basedon_category\";s:1:\"0\";s:32:\"related_events_basedon_organizer\";s:1:\"0\";s:31:\"related_events_basedon_location\";s:1:\"0\";s:28:\"related_events_basedon_label\";s:1:\"0\";s:26:\"related_events_basedon_tag\";s:1:\"0\";s:20:\"related_events_limit\";s:2:\"30\";s:31:\"related_events_display_expireds\";s:1:\"0\";s:20:\"next_previous_events\";s:1:\"0\";s:29:\"next_previous_events_category\";s:1:\"0\";s:30:\"next_previous_events_organizer\";s:1:\"0\";s:29:\"next_previous_events_location\";s:1:\"0\";s:26:\"next_previous_events_label\";s:1:\"0\";s:24:\"next_previous_events_tag\";s:1:\"0\";s:22:\"per_occurrences_status\";s:1:\"0\";}s:6:\"styles\";a:1:{s:3:\"CSS\";s:0:\"\";}s:8:\"gateways\";a:1:{i:1;a:1:{s:6:\"status\";i:1;}}s:13:\"notifications\";a:9:{s:20:\"booking_notification\";a:3:{s:7:\"subject\";s:25:\"Your booking is received.\";s:10:\"recipients\";s:0:\"\";s:7:\"content\";s:238:\"Hello %%name%%,\r\n\r\n                    Your booking is received. We will check and confirm your booking as soon as possible.\r\n                    Thanks for your patience.\r\n\r\n                    Regards,\r\n                    %%blog_name%%\";}s:18:\"email_verification\";a:3:{s:7:\"subject\";s:27:\"Please verify your booking.\";s:10:\"recipients\";s:0:\"\";s:7:\"content\";s:205:\"Hi %%name%%,\r\n\r\n                    Please verify your booking by clicking on following link:\r\n\r\n                    %%verification_link%%\r\n\r\n                    Regards,\r\n                    %%blog_name%%\";}s:20:\"booking_confirmation\";a:3:{s:7:\"subject\";s:26:\"Your booking is confirmed.\";s:10:\"recipients\";s:0:\"\";s:7:\"content\";s:295:\"Hi %%name%%,\r\n\r\n                    Your booking is confirmed. You should be available at %%book_date%% in %%event_location_address%%.\r\n\r\n                    You can contact to event organizer by calling %%event_organizer_tel%%.\r\n\r\n                    Regards,\r\n                    %%blog_name%%\";}s:25:\"cancellation_notification\";a:7:{s:6:\"status\";s:1:\"0\";s:7:\"subject\";s:25:\"Your booking is canceled.\";s:10:\"recipients\";s:0:\"\";s:13:\"send_to_admin\";s:1:\"1\";s:17:\"send_to_organizer\";s:1:\"0\";s:12:\"send_to_user\";s:1:\"0\";s:7:\"content\";s:187:\"Hi %%name%%,\r\n\r\n                    For your information, your booking for %%event_title%% at %%book_date%% is canceled.\r\n\r\n                    Regards,\r\n                    %%blog_name%%\";}s:18:\"admin_notification\";a:3:{s:7:\"subject\";s:26:\"A new booking is received.\";s:10:\"recipients\";s:0:\"\";s:7:\"content\";s:282:\"Dear Admin,\r\n\r\n                    A new booking is received. Please check and confirm it as soon as possible.\r\n\r\n                    %%admin_link%%\r\n                    \r\n                    %%attendees_full_info%%\r\n\r\n                    Regards,\r\n                    %%blog_name%%\";}s:9:\"new_event\";a:4:{s:6:\"status\";s:1:\"1\";s:7:\"subject\";s:21:\"A new event is added.\";s:10:\"recipients\";s:0:\"\";s:7:\"content\";s:322:\"Hello,\r\n\r\n                    A new event just added. The event title is %%event_title%% and its status is %%event_status%%.\r\n                    The new event may need to be published. Please use this link for managing your website events: %%admin_link%%\r\n\r\n                    Regards,\r\n                    %%blog_name%%\";}s:21:\"user_event_publishing\";a:4:{s:6:\"status\";s:1:\"1\";s:7:\"subject\";s:25:\"Your event gets published\";s:10:\"recipients\";s:0:\"\";s:7:\"content\";s:224:\"Hello %%name%%,\r\n\r\n                    Your event gets published. You can check it below:\r\n\r\n                    <a href=\"%%event_link%%\">%%event_title%%</a>\r\n\r\n                    Regards,\r\n                    %%blog_name%%\";}s:13:\"event_soldout\";a:6:{s:6:\"status\";s:1:\"0\";s:7:\"subject\";s:22:\"Your event is soldout!\";s:10:\"recipients\";s:0:\"\";s:13:\"send_to_admin\";s:1:\"1\";s:17:\"send_to_organizer\";s:1:\"1\";s:7:\"content\";s:188:\"Hi %%name%%,\r\n\r\n                    For your information, your %%event_title%% event at %%book_date%% is soldout.\r\n        \r\n                    Regards,\r\n                    %%blog_name%%\";}s:17:\"booking_rejection\";a:7:{s:6:\"status\";s:1:\"0\";s:7:\"subject\";s:26:\"Your booking got rejected!\";s:10:\"recipients\";s:0:\"\";s:13:\"send_to_admin\";s:1:\"0\";s:17:\"send_to_organizer\";s:1:\"1\";s:12:\"send_to_user\";s:1:\"1\";s:7:\"content\";s:195:\"Hi %%name%%,\r\n\r\n                    For your information, your booking for %%event_title%% at %%book_date%% is rejected.\r\n        \r\n                    Regards,\r\n                    %%blog_name%%\";}}s:12:\"event_fields\";a:2:{s:3:\":i:\";a:6:{s:9:\"mandatory\";s:1:\"0\";s:4:\"type\";s:1:\"p\";s:5:\"label\";s:0:\"\";s:6:\"editor\";s:1:\"0\";s:6:\"ignore\";s:1:\"0\";s:7:\"content\";s:0:\"\";}s:4:\":fi:\";a:1:{s:7:\"options\";a:1:{s:3:\":i:\";a:1:{s:5:\"label\";s:0:\"\";}}}}s:7:\"styling\";a:13:{s:5:\"color\";s:7:\"#005f90\";s:9:\"dark_mode\";s:1:\"0\";s:11:\"title_color\";s:0:\"\";s:17:\"title_color_hover\";s:0:\"\";s:13:\"content_color\";s:0:\"\";s:16:\"mec_h_fontfamily\";s:15:\"[Sofia,regular]\";s:16:\"mec_p_fontfamily\";s:15:\"[Sofia,regular]\";s:14:\"disable_gfonts\";s:1:\"0\";s:13:\"accessibility\";s:1:\"1\";s:22:\"container_normal_width\";s:0:\"\";s:21:\"container_large_width\";s:0:\"\";s:9:\"fes_color\";s:0:\"\";s:15:\"notification_bg\";s:0:\"\";}}','yes');
INSERT INTO `wp_options` VALUES (767,'mec_installed','1','yes');
INSERT INTO `wp_options` VALUES (768,'mec_version','6.5.5','yes');
INSERT INTO `wp_options` VALUES (769,'widget_mec_mec_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (770,'widget_mec_single_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (771,'mec_gfont','https://fonts.googleapis.com/css?family=Sofia%3Aregular%2C+%7CSofia%3Aregular%2C+&subset=latin%2Clatin-ext','yes');
INSERT INTO `wp_options` VALUES (772,'mec_dyncss','.mec-wrap, .mec-wrap div:not([class^=\"elementor-\"]), .lity-container, .mec-wrap h1, .mec-wrap h2, .mec-wrap h3, .mec-wrap h4, .mec-wrap h5, .mec-wrap h6, .entry-content .mec-wrap h1, .entry-content .mec-wrap h2, .entry-content .mec-wrap h3, .entry-content .mec-wrap h4, .entry-content .mec-wrap h5, .entry-content .mec-wrap h6, .mec-wrap .mec-totalcal-box input[type=\"submit\"], .mec-wrap .mec-totalcal-box .mec-totalcal-view span, .mec-agenda-event-title a, .lity-content .mec-events-meta-group-booking select, .lity-content .mec-book-ticket-variation h5, .lity-content .mec-events-meta-group-booking input[type=\"number\"], .lity-content .mec-events-meta-group-booking input[type=\"text\"], .lity-content .mec-events-meta-group-booking input[type=\"email\"],.mec-organizer-item a, .mec-single-event .mec-events-meta-group-booking ul.mec-book-tickets-container li.mec-book-ticket-container label { font-family: \"Montserrat\", -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, sans-serif;}.mec-event-content p, .mec-search-bar-result .mec-event-detail{ font-family: Roboto, sans-serif;} .mec-wrap .mec-totalcal-box input, .mec-wrap .mec-totalcal-box select, .mec-checkboxes-search .mec-searchbar-category-wrap, .mec-wrap .mec-totalcal-box .mec-totalcal-view span { font-family: \"Roboto\", Helvetica, Arial, sans-serif; }.mec-event-grid-modern .event-grid-modern-head .mec-event-day, .mec-event-list-minimal .mec-time-details, .mec-event-list-minimal .mec-event-detail, .mec-event-list-modern .mec-event-detail, .mec-event-grid-minimal .mec-time-details, .mec-event-grid-minimal .mec-event-detail, .mec-event-grid-simple .mec-event-detail, .mec-event-cover-modern .mec-event-place, .mec-event-cover-clean .mec-event-place, .mec-calendar .mec-event-article .mec-localtime-details div, .mec-calendar .mec-event-article .mec-event-detail, .mec-calendar.mec-calendar-daily .mec-calendar-d-top h2, .mec-calendar.mec-calendar-daily .mec-calendar-d-top h3, .mec-toggle-item-col .mec-event-day, .mec-weather-summary-temp { font-family: \"Roboto\", sans-serif; } .mec-fes-form, .mec-fes-list, .mec-fes-form input, .mec-event-date .mec-tooltip .box, .mec-event-status .mec-tooltip .box, .ui-datepicker.ui-widget, .mec-fes-form button[type=\"submit\"].mec-fes-sub-button, .mec-wrap .mec-timeline-events-container p, .mec-wrap .mec-timeline-events-container h4, .mec-wrap .mec-timeline-events-container div, .mec-wrap .mec-timeline-events-container a, .mec-wrap .mec-timeline-events-container span { font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, sans-serif !important; }.mec-hourly-schedule-speaker-name, .mec-events-meta-group-countdown .countdown-w span, .mec-single-event .mec-event-meta dt, .mec-hourly-schedule-speaker-job-title, .post-type-archive-mec-events h1, .mec-ticket-available-spots .mec-event-ticket-name, .tax-mec_category h1, .mec-wrap h1, .mec-wrap h2, .mec-wrap h3, .mec-wrap h4, .mec-wrap h5, .mec-wrap h6,.entry-content .mec-wrap h1, .entry-content .mec-wrap h2, .entry-content .mec-wrap h3,.entry-content  .mec-wrap h4, .entry-content .mec-wrap h5, .entry-content .mec-wrap h6{ font-family: \'Sofia\', Helvetica, Arial, sans-serif;}.mec-single-event .mec-event-meta .mec-events-event-cost, .mec-event-data-fields .mec-event-data-field-item .mec-event-data-field-value, .mec-event-data-fields .mec-event-data-field-item .mec-event-data-field-name, .mec-wrap .info-msg div, .mec-wrap .mec-error div, .mec-wrap .mec-success div, .mec-wrap .warning-msg div, .mec-breadcrumbs .mec-current, .mec-events-meta-group-tags, .mec-single-event .mec-events-meta-group-booking .mec-event-ticket-available, .mec-single-modern .mec-single-event-bar>div dd, .mec-single-event .mec-event-meta dd, .mec-single-event .mec-event-meta dd a, .mec-next-occ-booking span, .mec-hourly-schedule-speaker-description, .mec-single-event .mec-speakers-details ul li .mec-speaker-job-title, .mec-single-event .mec-speakers-details ul li .mec-speaker-name, .mec-event-data-field-items, .mec-load-more-button, .mec-events-meta-group-tags a, .mec-events-button, .mec-wrap abbr, .mec-event-schedule-content dl dt, .mec-breadcrumbs a, .mec-breadcrumbs span .mec-event-content p, .mec-wrap p { font-family: \'Sofia\',sans-serif; font-weight:300;}.mec-event-grid-minimal .mec-modal-booking-button:hover, .mec-events-timeline-wrap .mec-organizer-item a, .mec-events-timeline-wrap .mec-organizer-item:after, .mec-events-timeline-wrap .mec-shortcode-organizers i, .mec-timeline-event .mec-modal-booking-button, .mec-wrap .mec-map-lightbox-wp.mec-event-list-classic .mec-event-date, .mec-timetable-t2-col .mec-modal-booking-button:hover, .mec-event-container-classic .mec-modal-booking-button:hover, .mec-calendar-events-side .mec-modal-booking-button:hover, .mec-event-grid-yearly  .mec-modal-booking-button, .mec-events-agenda .mec-modal-booking-button, .mec-event-grid-simple .mec-modal-booking-button, .mec-event-list-minimal  .mec-modal-booking-button:hover, .mec-timeline-month-divider,  .mec-wrap.colorskin-custom .mec-totalcal-box .mec-totalcal-view span:hover,.mec-wrap.colorskin-custom .mec-calendar.mec-event-calendar-classic .mec-selected-day,.mec-wrap.colorskin-custom .mec-color, .mec-wrap.colorskin-custom .mec-event-sharing-wrap .mec-event-sharing > li:hover a, .mec-wrap.colorskin-custom .mec-color-hover:hover, .mec-wrap.colorskin-custom .mec-color-before *:before ,.mec-wrap.colorskin-custom .mec-widget .mec-event-grid-classic.owl-carousel .owl-nav i,.mec-wrap.colorskin-custom .mec-event-list-classic a.magicmore:hover,.mec-wrap.colorskin-custom .mec-event-grid-simple:hover .mec-event-title,.mec-wrap.colorskin-custom .mec-single-event .mec-event-meta dd.mec-events-event-categories:before,.mec-wrap.colorskin-custom .mec-single-event-date:before,.mec-wrap.colorskin-custom .mec-single-event-time:before,.mec-wrap.colorskin-custom .mec-events-meta-group.mec-events-meta-group-venue:before,.mec-wrap.colorskin-custom .mec-calendar .mec-calendar-side .mec-previous-month i,.mec-wrap.colorskin-custom .mec-calendar .mec-calendar-side .mec-next-month:hover,.mec-wrap.colorskin-custom .mec-calendar .mec-calendar-side .mec-previous-month:hover,.mec-wrap.colorskin-custom .mec-calendar .mec-calendar-side .mec-next-month:hover,.mec-wrap.colorskin-custom .mec-calendar.mec-event-calendar-classic dt.mec-selected-day:hover,.mec-wrap.colorskin-custom .mec-infowindow-wp h5 a:hover, .colorskin-custom .mec-events-meta-group-countdown .mec-end-counts h3,.mec-calendar .mec-calendar-side .mec-next-month i,.mec-wrap .mec-totalcal-box i,.mec-calendar .mec-event-article .mec-event-title a:hover,.mec-attendees-list-details .mec-attendee-profile-link a:hover,.mec-wrap.colorskin-custom .mec-next-event-details li i, .mec-next-event-details i:before, .mec-marker-infowindow-wp .mec-marker-infowindow-count, .mec-next-event-details a,.mec-wrap.colorskin-custom .mec-events-masonry-cats a.mec-masonry-cat-selected,.lity .mec-color,.lity .mec-color-before :before,.lity .mec-color-hover:hover,.lity .mec-wrap .mec-color,.lity .mec-wrap .mec-color-before :before,.lity .mec-wrap .mec-color-hover:hover,.leaflet-popup-content .mec-color,.leaflet-popup-content .mec-color-before :before,.leaflet-popup-content .mec-color-hover:hover,.leaflet-popup-content .mec-wrap .mec-color,.leaflet-popup-content .mec-wrap .mec-color-before :before,.leaflet-popup-content .mec-wrap .mec-color-hover:hover, .mec-calendar.mec-calendar-daily .mec-calendar-d-table .mec-daily-view-day.mec-daily-view-day-active.mec-color, .mec-map-boxshow div .mec-map-view-event-detail.mec-event-detail i,.mec-map-boxshow div .mec-map-view-event-detail.mec-event-detail:hover,.mec-map-boxshow .mec-color,.mec-map-boxshow .mec-color-before :before,.mec-map-boxshow .mec-color-hover:hover,.mec-map-boxshow .mec-wrap .mec-color,.mec-map-boxshow .mec-wrap .mec-color-before :before,.mec-map-boxshow .mec-wrap .mec-color-hover:hover, .mec-choosen-time-message, .mec-booking-calendar-month-navigation .mec-next-month:hover, .mec-booking-calendar-month-navigation .mec-previous-month:hover, .mec-yearly-view-wrap .mec-agenda-event-title a:hover, .mec-yearly-view-wrap .mec-yearly-title-sec .mec-next-year i, .mec-yearly-view-wrap .mec-yearly-title-sec .mec-previous-year i, .mec-yearly-view-wrap .mec-yearly-title-sec .mec-next-year:hover, .mec-yearly-view-wrap .mec-yearly-title-sec .mec-previous-year:hover, .mec-av-spot .mec-av-spot-head .mec-av-spot-box span, .mec-wrap.colorskin-custom .mec-calendar .mec-calendar-side .mec-previous-month:hover .mec-load-month-link, .mec-wrap.colorskin-custom .mec-calendar .mec-calendar-side .mec-next-month:hover .mec-load-month-link, .mec-yearly-view-wrap .mec-yearly-title-sec .mec-previous-year:hover .mec-load-month-link, .mec-yearly-view-wrap .mec-yearly-title-sec .mec-next-year:hover .mec-load-month-link, .mec-skin-list-events-container .mec-data-fields-tooltip .mec-data-fields-tooltip-box ul .mec-event-data-field-item a, .mec-booking-shortcode .mec-event-ticket-name, .mec-booking-shortcode .mec-event-ticket-price, .mec-booking-shortcode .mec-ticket-variation-name, .mec-booking-shortcode .mec-ticket-variation-price, .mec-booking-shortcode label, .mec-booking-shortcode .nice-select, .mec-booking-shortcode input, .mec-booking-shortcode span.mec-book-price-detail-description, .mec-booking-shortcode .mec-ticket-name, .mec-booking-shortcode label.wn-checkbox-label, .mec-wrap.mec-cart table tr td a {color: #005f90}.mec-skin-carousel-container .mec-event-footer-carousel-type3 .mec-modal-booking-button:hover, .mec-wrap.colorskin-custom .mec-event-sharing .mec-event-share:hover .event-sharing-icon,.mec-wrap.colorskin-custom .mec-event-grid-clean .mec-event-date,.mec-wrap.colorskin-custom .mec-event-list-modern .mec-event-sharing > li:hover a i,.mec-wrap.colorskin-custom .mec-event-list-modern .mec-event-sharing .mec-event-share:hover .mec-event-sharing-icon,.mec-wrap.colorskin-custom .mec-event-list-modern .mec-event-sharing li:hover a i,.mec-wrap.colorskin-custom .mec-calendar:not(.mec-event-calendar-classic) .mec-selected-day,.mec-wrap.colorskin-custom .mec-calendar .mec-selected-day:hover,.mec-wrap.colorskin-custom .mec-calendar .mec-calendar-row  dt.mec-has-event:hover,.mec-wrap.colorskin-custom .mec-calendar .mec-has-event:after, .mec-wrap.colorskin-custom .mec-bg-color, .mec-wrap.colorskin-custom .mec-bg-color-hover:hover, .colorskin-custom .mec-event-sharing-wrap:hover > li, .mec-wrap.colorskin-custom .mec-totalcal-box .mec-totalcal-view span.mec-totalcalview-selected,.mec-wrap .flip-clock-wrapper ul li a div div.inn,.mec-wrap .mec-totalcal-box .mec-totalcal-view span.mec-totalcalview-selected,.event-carousel-type1-head .mec-event-date-carousel,.mec-event-countdown-style3 .mec-event-date,#wrap .mec-wrap article.mec-event-countdown-style1,.mec-event-countdown-style1 .mec-event-countdown-part3 a.mec-event-button,.mec-wrap .mec-event-countdown-style2,.mec-map-get-direction-btn-cnt input[type=\"submit\"],.mec-booking button,span.mec-marker-wrap,.mec-wrap.colorskin-custom .mec-timeline-events-container .mec-timeline-event-date:before, .mec-has-event-for-booking.mec-active .mec-calendar-novel-selected-day, .mec-booking-tooltip.multiple-time .mec-booking-calendar-date.mec-active, .mec-booking-tooltip.multiple-time .mec-booking-calendar-date:hover, .mec-ongoing-normal-label, .mec-calendar .mec-has-event:after, .mec-event-list-modern .mec-event-sharing li:hover .telegram{background-color: #005f90;}.mec-booking-tooltip.multiple-time .mec-booking-calendar-date:hover, .mec-calendar-day.mec-active .mec-booking-tooltip.multiple-time .mec-booking-calendar-date.mec-active{ background-color: #005f90;}.mec-skin-carousel-container .mec-event-footer-carousel-type3 .mec-modal-booking-button:hover, .mec-timeline-month-divider, .mec-wrap.colorskin-custom .mec-single-event .mec-speakers-details ul li .mec-speaker-avatar a:hover img,.mec-wrap.colorskin-custom .mec-event-list-modern .mec-event-sharing > li:hover a i,.mec-wrap.colorskin-custom .mec-event-list-modern .mec-event-sharing .mec-event-share:hover .mec-event-sharing-icon,.mec-wrap.colorskin-custom .mec-event-list-standard .mec-month-divider span:before,.mec-wrap.colorskin-custom .mec-single-event .mec-social-single:before,.mec-wrap.colorskin-custom .mec-single-event .mec-frontbox-title:before,.mec-wrap.colorskin-custom .mec-calendar .mec-calendar-events-side .mec-table-side-day, .mec-wrap.colorskin-custom .mec-border-color, .mec-wrap.colorskin-custom .mec-border-color-hover:hover, .colorskin-custom .mec-single-event .mec-frontbox-title:before, .colorskin-custom .mec-single-event .mec-wrap-checkout h4:before, .colorskin-custom .mec-single-event .mec-events-meta-group-booking form > h4:before, .mec-wrap.colorskin-custom .mec-totalcal-box .mec-totalcal-view span.mec-totalcalview-selected,.mec-wrap .mec-totalcal-box .mec-totalcal-view span.mec-totalcalview-selected,.event-carousel-type1-head .mec-event-date-carousel:after,.mec-wrap.colorskin-custom .mec-events-masonry-cats a.mec-masonry-cat-selected, .mec-marker-infowindow-wp .mec-marker-infowindow-count, .mec-wrap.colorskin-custom .mec-events-masonry-cats a:hover, .mec-has-event-for-booking .mec-calendar-novel-selected-day, .mec-booking-tooltip.multiple-time .mec-booking-calendar-date.mec-active, .mec-booking-tooltip.multiple-time .mec-booking-calendar-date:hover, .mec-virtual-event-history h3:before, .mec-booking-tooltip.multiple-time .mec-booking-calendar-date:hover, .mec-calendar-day.mec-active .mec-booking-tooltip.multiple-time .mec-booking-calendar-date.mec-active, .mec-rsvp-form-box form > h4:before, .mec-wrap .mec-box-title::before, .mec-box-title::before  {border-color: #005f90;}.mec-wrap.colorskin-custom .mec-event-countdown-style3 .mec-event-date:after,.mec-wrap.colorskin-custom .mec-month-divider span:before, .mec-calendar.mec-event-container-simple dl dt.mec-selected-day, .mec-calendar.mec-event-container-simple dl dt.mec-selected-day:hover{border-bottom-color:#005f90;}.mec-wrap.colorskin-custom  article.mec-event-countdown-style1 .mec-event-countdown-part2:after{border-color: transparent transparent transparent #005f90;}.mec-wrap.colorskin-custom .mec-box-shadow-color { box-shadow: 0 4px 22px -7px #005f90;}.mec-events-timeline-wrap .mec-shortcode-organizers, .mec-timeline-event .mec-modal-booking-button, .mec-events-timeline-wrap:before, .mec-wrap.colorskin-custom .mec-timeline-event-local-time, .mec-wrap.colorskin-custom .mec-timeline-event-time ,.mec-wrap.colorskin-custom .mec-timeline-event-location,.mec-choosen-time-message { background: rgba(0,95,144,.11);}.mec-wrap.colorskin-custom .mec-timeline-events-container .mec-timeline-event-date:after{ background: rgba(0,95,144,.3);}.mec-booking-shortcode button { box-shadow: 0 2px 2px rgba(0 95 144 / 27%);}.mec-booking-shortcode button.mec-book-form-back-button{ background-color: rgba(0 95 144 / 40%);}.mec-events-meta-group-booking-shortcode{ background: rgba(0,95,144,.14);}.mec-booking-shortcode label.wn-checkbox-label, .mec-booking-shortcode .nice-select,.mec-booking-shortcode input, .mec-booking-shortcode .mec-book-form-gateway-label input[type=radio]:before, .mec-booking-shortcode input[type=radio]:checked:before, .mec-booking-shortcode ul.mec-book-price-details li, .mec-booking-shortcode ul.mec-book-price-details{ border-color: rgba(0 95 144 / 27%) !important;}.mec-booking-shortcode input::-webkit-input-placeholder,.mec-booking-shortcode textarea::-webkit-input-placeholder{color: #005f90}.mec-booking-shortcode input::-moz-placeholder,.mec-booking-shortcode textarea::-moz-placeholder{color: #005f90}.mec-booking-shortcode input:-ms-input-placeholder,.mec-booking-shortcode textarea:-ms-input-placeholder {color: #005f90}.mec-booking-shortcode input:-moz-placeholder,.mec-booking-shortcode textarea:-moz-placeholder {color: #005f90}.mec-booking-shortcode label.wn-checkbox-label:after, .mec-booking-shortcode label.wn-checkbox-label:before, .mec-booking-shortcode input[type=radio]:checked:after{background-color: #005f90}','yes');
INSERT INTO `wp_options` VALUES (775,'mec_category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (776,'mec_latest_event_datetime','20220506114344','no');
INSERT INTO `wp_options` VALUES (779,'_site_transient_timeout_browser_ef66d6fc580e3e199d7eaf03bfc19e21','1652429749','no');
INSERT INTO `wp_options` VALUES (780,'_site_transient_browser_ef66d6fc580e3e199d7eaf03bfc19e21','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"101.0.4951.54\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (781,'_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce','1652429749','no');
INSERT INTO `wp_options` VALUES (782,'_site_transient_php_check_12edeb5890095749089987982a1404ce','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (783,'mec_get_webnus_news_time','2022-05-10','yes');
INSERT INTO `wp_options` VALUES (784,'mec_get_webnus_news_html','O:8:\"stdClass\":5:{s:1:\"1\";O:8:\"stdClass\":3:{s:7:\"content\";s:131:\"E-commerce popularity is growing rapidly all around the world. It’s because maintaining an online store cost is up to 30%&hellip;\";s:5:\"title\";s:53:\"Why Do e-Sellers Migrate from Shopify to WooCommerce?\";s:4:\"link\";s:72:\"https://webnus.net/why-do-e-sellers-migrate-from-shopify-to-woocommerce/\";}s:1:\"2\";O:8:\"stdClass\":3:{s:7:\"content\";s:136:\"Link building is one of the most important aspects of search engine optimization. It helps you increase your website\'s authority&hellip;\";s:5:\"title\";s:63:\"What is Link Building and How a Link Building Service Can Help?\";s:4:\"link\";s:41:\"https://webnus.net/what-is-link-building/\";}s:1:\"3\";O:8:\"stdClass\":3:{s:7:\"content\";s:121:\"In the time of COVID-19, marketing has changed everything - from the way people work to how they communicate with&hellip;\";s:5:\"title\";s:42:\"Social Media Promotion on a Budget in 2022\";s:4:\"link\";s:54:\"https://webnus.net/social-media-promotion-on-a-budget/\";}s:1:\"4\";O:8:\"stdClass\":3:{s:7:\"content\";s:150:\"Google Shopping ads are one of the best approaches for expanding the WooCommerce product\'s visibility. Google displays all the product-related&hellip;\";s:5:\"title\";s:51:\"8 Best Free WooCommerce Google Product Feed Plugins\";s:4:\"link\";s:59:\"https://webnus.net/woocommerce-google-product-feed-plugins/\";}s:1:\"5\";O:8:\"stdClass\":3:{s:7:\"content\";s:134:\"Like many other business owners, you\'re always looking for ways to grow your company. You may have tried traditional marketing&hellip;\";s:5:\"title\";s:55:\"Modern Marketing Solutions Every Business Needs to Grow\";s:4:\"link\";s:75:\"https://webnus.net/modern-marketing-solutions-every-business-needs-to-grow/\";}}','yes');
INSERT INTO `wp_options` VALUES (815,'mec_saved_message_2_time','2022-05-09','yes');
INSERT INTO `wp_options` VALUES (816,'mec_custom_msg_2_html','<link rel = \"stylesheet\" type = \"text/css\" href = \"https://webnus.net/modern-events-calendar/addons-api/mec-extra-content/style2.css\" /><div class=\"mec-custom-msg-2-notification-set-box extra\"><div style=\"margin: 0\" class=\"w-row mec-custom-msg-notification-wrap\"><div class=\"w-col-sm-12\"><div class=\"w-clearfix w-box mec-cmsg-2-notification-box-wrap mec-new-addons-wrap\" style=\"margin-top:0;\"><div class=\"w-box-head\">Announcement<span><i class=\"mec-sl-close\"></i></span></div><div class=\"w-box-content\"><div class=\"mec-addons-notification-box-image\"> <img src=\"https://webnus.net/modern-events-calendar/addons-api/mec-extra-content/rsvp-events-addon-banner.png\" /></div><div class=\"mec-addons-notification-box-content mec-new-addons\"><div class=\"w-box-content\"><div class=\"mec-addons-notification-title\">RSVP Events Addon</div><p>This addon allows you to create RSVPs on your website and is compatible with all your events. You can cover all your RSVP needs using this addon. With RSVP Addon you can enable users to RSVP to events through their name and email, plus having other fields and determine how many spots are needed. You can create different forms for different situations and manage users from backend.</p><strong>Key Features:</strong><div class=\"mec-addons-key-features\"><ul><li>RSVP For A Whole Party</li><li>Change The RSVP</li><li>Guest List</li><li>RSVP Manager</li></ul></div><div style=\"clear:both\"></div><a href=\"https://webnus.net/modern-events-calendar/addons/rsvp-events/?ref=17\" target=\"_blank\">Read More</a></div></div></div></div></div></div></div>','yes');
INSERT INTO `wp_options` VALUES (817,'mec_custom_msg_2_display','1','yes');
INSERT INTO `wp_options` VALUES (818,'mec_custom_msg_2_display_option','1','yes');
INSERT INTO `wp_options` VALUES (819,'mec_custom_msg_2_close_option','open','yes');
INSERT INTO `wp_options` VALUES (820,'mec_saved_message_time','2022-05-09','yes');
INSERT INTO `wp_options` VALUES (821,'mec_custom_msg_html','<link rel = \"stylesheet\" type = \"text/css\" href = \"https://webnus.net/modern-events-calendar/addons-api/mec-extra-content/style2.css\" /><div class=\"mec-custom-msg-notification-set-box extra\"><div class=\"w-row mec-custom-msg-notification-wrap\"><div class=\"w-col-sm-12\"><div class=\"w-clearfix w-box mec-cmsg-notification-box-wrap mec-new-addons-wrap\" style=\"margin-top:0;\"><div class=\"w-box-head\">Announcement<span><i class=\"mec-sl-close\"></i></span></div><div class=\"w-box-content\"><div class=\"mec-addons-notification-box-image\"> <img src=\"https://webnus.net/modern-events-calendar/addons-api/mec-extra-content/buddyboss-addon-banner.png\" /></div><div class=\"mec-addons-notification-box-content mec-new-addons\"><div class=\"w-box-content\"><div class=\"mec-addons-notification-title\">BuddyBoss Integration Addon</div><p>This is an integration with BuddyBoss, to provide and help you with options to assign events to groups with each group being able to have its own events. Members of the group can submit events in post them into the groups which they are members of.</p><strong>Key Features:</strong><div class=\"mec-addons-key-features\"><ul><li>Create Event In Profile</li><li>Access To All Events</li><li>Setup Event For Groups</li><li>Manage Events For Groups</li><li>View All Reservations</li><li>Assign Events To Groups</li></ul></div><div style=\"clear:both\"></div><a href=\"https://webnus.net/modern-events-calendar/addons/buddyboss-integration/?ref=17\" target=\"_blank\">Read More</a></div></div></div></div></div></div></div>','yes');
INSERT INTO `wp_options` VALUES (822,'mec_custom_msg_display','2','yes');
INSERT INTO `wp_options` VALUES (823,'mec_custom_msg_display_option','2','yes');
INSERT INTO `wp_options` VALUES (824,'mec_custom_msg_close_option','open','yes');
INSERT INTO `wp_options` VALUES (1171,'sbi_statuses','a:6:{s:8:\"database\";a:1:{s:14:\"hashtag_column\";b:1;}s:13:\"first_install\";i:1652092340;s:4:\"gdpr\";a:1:{s:19:\"from_update_success\";b:1;}s:12:\"data_manager\";a:2:{s:9:\"last_used\";i:1652279038;s:14:\"num_db_updates\";i:31;}s:24:\"support_legacy_shortcode\";b:0;s:12:\"feed_locator\";a:2:{s:10:\"last_check\";i:1652185738;s:11:\"initialized\";i:1652092439;}}','yes');
INSERT INTO `wp_options` VALUES (1172,'sbi_usage_tracking','a:2:{s:7:\"enabled\";b:0;s:9:\"last_send\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (1173,'widget_instagram-feed-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1174,'sbi_usage_tracking_config','a:6:{s:3:\"day\";i:1;s:4:\"hour\";i:1;s:6:\"minute\";i:19;s:6:\"second\";i:7;s:6:\"offset\";i:91147;s:8:\"initsend\";i:1652663947;}','yes');
INSERT INTO `wp_options` VALUES (1175,'_transient_timeout_instagram_feed_rating_notice_waiting','1653301940','no');
INSERT INTO `wp_options` VALUES (1176,'_transient_instagram_feed_rating_notice_waiting','waiting','no');
INSERT INTO `wp_options` VALUES (1177,'sbi_rating_notice','pending','no');
INSERT INTO `wp_options` VALUES (1178,'sbi_db_version','2.1','yes');
INSERT INTO `wp_options` VALUES (1179,'sb_instagram_errors','a:9:{s:10:\"connection\";a:0:{}s:7:\"hashtag\";a:0:{}s:8:\"resizing\";a:0:{}s:15:\"database_create\";a:0:{}s:10:\"upload_dir\";a:0:{}s:8:\"accounts\";a:0:{}s:9:\"error_log\";a:0:{}s:10:\"action_log\";a:1:{i:0;s:41:\"05-09 10:32:20 - Retesting GDPR features.\";}s:7:\"revoked\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1180,'sb_instagram_settings','a:44:{s:15:\"sb_instagram_at\";s:0:\"\";s:20:\"sb_instagram_user_id\";s:0:\"\";s:30:\"sb_instagram_preserve_settings\";s:0:\"\";s:23:\"sb_instagram_ajax_theme\";b:0;s:27:\"sb_instagram_disable_resize\";b:0;s:23:\"sb_instagram_cache_time\";i:1;s:28:\"sb_instagram_cache_time_unit\";s:5:\"hours\";s:16:\"sbi_caching_type\";s:10:\"background\";s:23:\"sbi_cache_cron_interval\";s:7:\"12hours\";s:19:\"sbi_cache_cron_time\";s:1:\"1\";s:20:\"sbi_cache_cron_am_pm\";s:2:\"am\";s:18:\"sb_instagram_width\";s:3:\"100\";s:23:\"sb_instagram_width_unit\";s:1:\"%\";s:28:\"sb_instagram_feed_width_resp\";b:0;s:19:\"sb_instagram_height\";s:0:\"\";s:16:\"sb_instagram_num\";s:2:\"20\";s:24:\"sb_instagram_height_unit\";s:0:\"\";s:17:\"sb_instagram_cols\";s:1:\"4\";s:27:\"sb_instagram_disable_mobile\";b:0;s:26:\"sb_instagram_image_padding\";s:1:\"5\";s:31:\"sb_instagram_image_padding_unit\";s:2:\"px\";s:17:\"sb_instagram_sort\";s:4:\"none\";s:23:\"sb_instagram_background\";s:0:\"\";s:21:\"sb_instagram_show_btn\";b:1;s:27:\"sb_instagram_btn_background\";s:0:\"\";s:27:\"sb_instagram_btn_text_color\";s:0:\"\";s:21:\"sb_instagram_btn_text\";s:12:\"Load More...\";s:22:\"sb_instagram_image_res\";s:4:\"auto\";s:24:\"sb_instagram_show_header\";b:1;s:24:\"sb_instagram_header_size\";s:5:\"small\";s:25:\"sb_instagram_header_color\";s:0:\"\";s:28:\"sb_instagram_show_follow_btn\";b:1;s:33:\"sb_instagram_folow_btn_background\";s:0:\"\";s:34:\"sb_instagram_follow_btn_text_color\";s:0:\"\";s:28:\"sb_instagram_follow_btn_text\";s:19:\"Follow on Instagram\";s:23:\"sb_instagram_custom_css\";s:0:\"\";s:22:\"sb_instagram_custom_js\";s:0:\"\";s:17:\"sb_instagram_cron\";s:2:\"no\";s:19:\"sb_instagram_backup\";b:1;s:15:\"sb_ajax_initial\";b:0;s:24:\"enqueue_css_in_shortcode\";b:0;s:30:\"sb_instagram_disable_mob_swipe\";b:0;s:28:\"sb_instagram_disable_awesome\";b:0;s:18:\"connected_accounts\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (1181,'sbi_single_cache','iYbbaIjY1HrjK8KXgdB2jnNOTmlWSlIya285TVYzVGVZbnl6VnAyTmo5S3I4dnBwL25GVUpRPT0=','no');
INSERT INTO `wp_options` VALUES (1183,'sbi_notifications','a:4:{s:6:\"update\";i:1652206568;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (1184,'sbi_newuser_notifications','a:4:{s:6:\"update\";i:1652092342;s:4:\"feed\";a:2:{s:6:\"review\";a:6:{s:5:\"title\";s:22:\"Could you help us out?\";s:7:\"content\";s:273:\"It\'s great to see that you\'ve been using the <strong><span>{plugin}</span></strong> plugin for a while now. Hopefully you\'re happy with it!&nbsp; If so, would you consider leaving a positive review? It really helps to support the plugin and helps others to discover it too!\";s:2:\"id\";s:6:\"review\";s:5:\"image\";s:12:\"sbi-icon.png\";s:4:\"btns\";a:4:{s:7:\"primary\";a:4:{s:3:\"url\";s:12:\"{review-url}\";s:4:\"attr\";a:1:{i:0;s:11:\"targetblank\";}s:5:\"class\";s:31:\"sbi_notice_dismiss sbi_main_cta\";s:4:\"text\";s:18:\"Sure, I\'d love to!\";}s:7:\"dismiss\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:1:\"1\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:9:\"No thanks\";}s:8:\"complete\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:1:\"1\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:27:\"I\'ve already given a review\";}s:5:\"later\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:5:\"later\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:12:\"Ask Me Later\";}}s:4:\"wait\";s:2:\"14\";}s:8:\"discount\";a:8:{s:5:\"title\";s:28:\"Attention {platform} Lovers!\";s:7:\"content\";s:221:\"<strong><span>Exclusive offer!</span></strong> We don\'t run promotions very often, but for a limited time we\'re offering <strong><span>{amount} off</span></strong> our Pro version to all users of our free {plugin} plugin.\";s:2:\"id\";s:8:\"discount\";s:6:\"amount\";s:3:\"60%\";s:5:\"image\";s:12:\"sbi-icon.png\";s:13:\"image_overlay\";s:7:\"60% off\";s:4:\"btns\";a:2:{s:7:\"primary\";a:4:{s:3:\"url\";s:127:\"https://smashballoon.com/{slug}/?utm_campaign={campaign}&utm_source=notices&utm_medium=newuser&discount={lowerplatform}thankyou\";s:5:\"class\";s:32:\"sbi_notice_dismiss sbi_offer_btn\";s:4:\"text\";s:14:\"Get this offer\";s:4:\"attr\";a:1:{i:0;s:11:\"targetblank\";}}s:7:\"dismiss\";a:3:{s:3:\"url\";a:1:{s:31:\"sbi_ignore_new_user_sale_notice\";s:6:\"always\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:18:\"I\'m not interested\";}}s:4:\"wait\";s:2:\"30\";}}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (1186,'sbi_cron_report','a:1:{s:5:\"notes\";a:2:{s:8:\"time_ran\";s:19:\"2022-05-11 10:33:28\";s:20:\"num_found_transients\";i:0;}}','no');
INSERT INTO `wp_options` VALUES (1189,'cookie_notice_options','a:33:{s:6:\"app_id\";s:0:\"\";s:7:\"app_key\";s:0:\"\";s:12:\"message_text\";s:263:\"We use cookies to ensure that we give you the best experience on our website. If you continue to use this site we will assume that you are happy with it.\r\nMeie leht kasutab küpsiseid. Kui meie lehte kasutad, annad sellega oma nõusoleku küpsiste salvestamiseks.\";s:11:\"accept_text\";s:2:\"Ok\";s:12:\"see_more_opt\";a:5:{s:4:\"text\";s:14:\"Privacy policy\";s:9:\"link_type\";s:4:\"page\";s:2:\"id\";i:0;s:4:\"link\";s:0:\"\";s:4:\"sync\";b:0;}s:11:\"link_target\";s:6:\"_blank\";s:13:\"link_position\";s:6:\"banner\";s:11:\"refuse_text\";s:2:\"No\";s:19:\"revoke_message_text\";s:69:\"You can revoke your consent any time using the Revoke consent button.\";s:11:\"revoke_text\";s:14:\"Revoke consent\";s:18:\"revoke_cookies_opt\";s:9:\"automatic\";s:16:\"refuse_code_head\";s:0:\"\";s:11:\"refuse_code\";s:0:\"\";s:9:\"on_scroll\";b:1;s:16:\"on_scroll_offset\";i:100;s:8:\"on_click\";b:1;s:4:\"time\";s:5:\"month\";s:13:\"time_rejected\";s:5:\"month\";s:16:\"script_placement\";s:6:\"header\";s:8:\"position\";s:6:\"bottom\";s:11:\"hide_effect\";s:4:\"fade\";s:6:\"colors\";a:4:{s:4:\"text\";s:4:\"#fff\";s:6:\"button\";s:7:\"#55b8ec\";s:3:\"bar\";s:7:\"#005f90\";s:11:\"bar_opacity\";i:100;}s:9:\"css_class\";s:0:\"\";s:12:\"app_blocking\";b:0;s:11:\"hide_banner\";b:0;s:10:\"refuse_opt\";b:0;s:14:\"revoke_cookies\";b:0;s:11:\"redirection\";b:0;s:19:\"deactivation_delete\";b:0;s:8:\"see_more\";b:0;s:14:\"update_version\";i:6;s:13:\"update_notice\";b:0;s:9:\"translate\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1190,'cookie_notice_version','2.2.3','no');
INSERT INTO `wp_options` VALUES (1193,'cookie_notice_status','','yes');
INSERT INTO `wp_options` VALUES (1370,'wp_gmp_db_version','1.11.5','yes');
INSERT INTO `wp_options` VALUES (1371,'wp_gmp_db_installed','1','yes');
INSERT INTO `wp_options` VALUES (1372,'gmp_def_icons_installed','1','yes');
INSERT INTO `wp_options` VALUES (1373,'gmp_plugin_activation_errors','','yes');
INSERT INTO `wp_options` VALUES (1375,'gmp_opts_data','a:6:{s:10:\"api_domain\";a:1:{s:5:\"value\";s:0:\"\";}s:12:\"user_api_key\";a:1:{s:5:\"value\";s:0:\"\";}s:10:\"send_stats\";a:1:{s:5:\"value\";s:1:\"0\";}s:13:\"add_love_link\";a:1:{s:5:\"value\";s:1:\"0\";}s:12:\"access_roles\";a:1:{s:5:\"value\";s:13:\"administrator\";}s:11:\"start_usage\";a:2:{s:5:\"value\";i:1652208843;s:10:\"changed_on\";i:1652208843;}}','yes');
INSERT INTO `wp_options` VALUES (1377,'wp_ums_db_version','1.2.9','yes');
INSERT INTO `wp_options` VALUES (1378,'wp_ums_db_installed','1','yes');
INSERT INTO `wp_options` VALUES (1379,'ums_def_icons_installed','1','yes');
INSERT INTO `wp_options` VALUES (1380,'ums_plugin_activation_errors','','yes');
INSERT INTO `wp_options` VALUES (1381,'ums_opts_data','a:8:{s:10:\"def_engine\";a:1:{s:5:\"value\";s:7:\"leaflet\";}s:8:\"bing_key\";a:1:{s:5:\"value\";s:0:\"\";}s:12:\"rapidapi_key\";a:1:{s:5:\"value\";s:0:\"\";}s:10:\"mapbox_key\";a:1:{s:5:\"value\";s:0:\"\";}s:17:\"thunderforest_key\";a:1:{s:5:\"value\";s:0:\"\";}s:13:\"add_love_link\";a:1:{s:5:\"value\";s:1:\"0\";}s:12:\"access_roles\";a:2:{s:5:\"value\";a:1:{i:0;s:6:\"author\";}s:10:\"changed_on\";i:1652211815;}s:11:\"start_usage\";a:2:{s:5:\"value\";i:1652209888;s:10:\"changed_on\";i:1652209888;}}','yes');
INSERT INTO `wp_options` VALUES (1382,'ums_unique_stats','a:1:{i:0;s:21:\"need_google_maps.show\";}','yes');
INSERT INTO `wp_options` VALUES (1432,'um_last_version_upgrade','2.3.2','yes');
INSERT INTO `wp_options` VALUES (1433,'um_first_activation_date','1652215988','yes');
INSERT INTO `wp_options` VALUES (1434,'um_version','2.3.2','yes');
INSERT INTO `wp_options` VALUES (1435,'__ultimatemember_sitekey','pilots.local-gZZ2nrssMCEjGfxyD6qb','yes');
INSERT INTO `wp_options` VALUES (1436,'um_is_installed','1','yes');
INSERT INTO `wp_options` VALUES (1437,'um_core_forms','a:3:{s:8:\"register\";i:85;s:5:\"login\";i:86;s:7:\"profile\";i:87;}','yes');
INSERT INTO `wp_options` VALUES (1438,'um_core_directories','a:1:{s:7:\"members\";i:88;}','yes');
INSERT INTO `wp_options` VALUES (1439,'um_options','a:173:{s:30:\"restricted_access_post_metabox\";a:3:{s:4:\"post\";s:1:\"1\";s:4:\"page\";s:1:\"1\";s:10:\"mec-events\";s:1:\"1\";}s:31:\"disable_restriction_pre_queries\";i:0;s:19:\"uninstall_on_delete\";i:0;s:14:\"permalink_base\";s:7:\"user_id\";s:12:\"display_name\";s:9:\"full_name\";s:18:\"display_name_field\";s:0:\"\";s:15:\"author_redirect\";b:1;s:12:\"members_page\";b:1;s:13:\"use_gravatars\";b:0;s:37:\"use_um_gravatar_default_builtin_image\";s:7:\"default\";s:29:\"use_um_gravatar_default_image\";b:0;s:18:\"require_strongpass\";b:1;s:18:\"password_min_chars\";i:8;s:18:\"password_max_chars\";i:30;s:20:\"account_tab_password\";i:1;s:19:\"account_tab_privacy\";i:1;s:25:\"account_tab_notifications\";i:1;s:18:\"account_tab_delete\";i:1;s:19:\"delete_account_text\";s:151:\"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account enter your password below.\";s:36:\"delete_account_no_pass_required_text\";s:152:\"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account, click on the button below.\";s:12:\"account_name\";i:1;s:20:\"account_name_disable\";i:0;s:20:\"account_name_require\";i:1;s:13:\"account_email\";i:1;s:24:\"account_general_password\";i:0;s:25:\"account_hide_in_directory\";i:1;s:33:\"account_hide_in_directory_default\";s:2:\"No\";s:17:\"photo_thumb_sizes\";a:3:{i:0;i:40;i:1;i:80;i:2;i:190;}s:17:\"cover_thumb_sizes\";a:2:{i:0;i:300;i:1;i:600;}s:10:\"accessible\";i:0;s:15:\"access_redirect\";s:0:\"\";s:19:\"access_exclude_uris\";a:0:{}s:20:\"home_page_accessible\";b:1;s:24:\"category_page_accessible\";b:1;s:29:\"restricted_post_title_replace\";b:0;s:28:\"restricted_access_post_title\";s:8:\"Keeluala\";s:25:\"restricted_access_message\";s:55:\"<p>Selle lehe nägemiseks pead olema sisse logitud!</p>\";s:17:\"restricted_blocks\";b:0;s:13:\"enable_blocks\";i:0;s:24:\"restricted_block_message\";s:0:\"\";s:27:\"enable_reset_password_limit\";i:1;s:27:\"reset_password_limit_number\";i:3;s:14:\"blocked_emails\";s:0:\"\";s:13:\"blocked_words\";s:47:\"admin\r\nadministrator\r\nwebmaster\r\nsupport\r\nstaff\";s:14:\"default_avatar\";a:5:{s:2:\"id\";s:9:\"http://96\";s:5:\"width\";s:10:\"http://512\";s:6:\"height\";s:10:\"http://512\";s:9:\"thumbnail\";s:0:\"\";s:3:\"url\";s:75:\"http://pilots.local/wp-content/uploads/2022/05/14580310081598811066-512.png\";}s:13:\"default_cover\";a:5:{s:2:\"id\";s:9:\"http://97\";s:5:\"width\";s:11:\"http://1631\";s:6:\"height\";s:10:\"http://900\";s:9:\"thumbnail\";s:0:\"\";s:3:\"url\";s:63:\"http://pilots.local/wp-content/uploads/2022/05/Cessna-172n.jpeg\";}s:28:\"disable_profile_photo_upload\";b:0;s:21:\"profile_show_metaicon\";b:0;s:12:\"profile_menu\";b:1;s:24:\"profile_menu_default_tab\";s:4:\"main\";s:18:\"profile_menu_icons\";b:1;s:13:\"form_asterisk\";i:0;s:13:\"profile_title\";s:28:\"{display_name} | {site_name}\";s:12:\"profile_desc\";s:83:\"{display_name} is on {site_name}. Join {site_name} to view {display_name}\'s profile\";s:11:\"admin_email\";s:20:\"truumeedia@gmail.com\";s:9:\"mail_from\";s:23:\"Eesti Erapilootide Liit\";s:14:\"mail_from_addr\";s:20:\"truumeedia@gmail.com\";s:10:\"email_html\";i:1;s:25:\"image_orientation_by_exif\";i:0;s:17:\"image_compression\";i:60;s:15:\"image_max_width\";i:1000;s:15:\"cover_min_width\";i:1000;s:22:\"profile_photo_max_size\";i:999999999;s:20:\"cover_photo_max_size\";i:999999999;s:22:\"custom_roles_increment\";i:1;s:28:\"um_profile_object_cache_stop\";i:0;s:16:\"rest_api_version\";s:3:\"2.0\";s:26:\"member_directory_own_table\";i:0;s:21:\"profile_show_html_bio\";b:0;s:15:\"profile_noindex\";b:0;s:27:\"activation_link_expiry_time\";i:0;s:16:\"profile_tab_main\";b:1;s:24:\"profile_tab_main_privacy\";i:2;s:22:\"profile_tab_main_roles\";s:0:\"\";s:17:\"profile_tab_posts\";b:0;s:25:\"profile_tab_posts_privacy\";i:2;s:23:\"profile_tab_posts_roles\";s:0:\"\";s:20:\"profile_tab_comments\";b:0;s:28:\"profile_tab_comments_privacy\";i:0;s:26:\"profile_tab_comments_roles\";s:0:\"\";s:16:\"welcome_email_on\";s:1:\"1\";s:17:\"welcome_email_sub\";s:33:\"Tere tulemast {site_name} lehele!\";s:13:\"welcome_email\";s:365:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account is now active.<br /><br />To login please visit the following url:<br /><br />{login_url} <br /><br />Your account e-mail: {email} <br />Your account username: {username} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:18:\"checkmail_email_on\";s:1:\"1\";s:19:\"checkmail_email_sub\";s:25:\"Palun aktiveeri oma konto\";s:15:\"checkmail_email\";s:304:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! To activate your account, please click the link below to confirm your email address:<br /><br />{account_activation_link} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks, <br />{site_name}\";s:16:\"pending_email_on\";b:0;s:17:\"pending_email_sub\";s:30:\"[{site_name}] New user account\";s:13:\"pending_email\";s:309:\"Hi {display_name}, <br /><br />Thank you for signing up with {site_name}! Your account is currently being reviewed by a member of our team.<br /><br />Please allow us some time to process your request.<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"approved_email_on\";b:0;s:18:\"approved_email_sub\";s:41:\"Your account at {site_name} is now active\";s:14:\"approved_email\";s:438:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account has been approved and is now active.<br /><br />To login please visit the following url:<br /><br />{login_url}<br /><br />Your account e-mail: {email}<br />Your account username: {username}<br />Set your account password: {password_reset_link}<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"rejected_email_on\";b:0;s:18:\"rejected_email_sub\";s:30:\"Your account has been rejected\";s:14:\"rejected_email\";s:288:\"Hi {display_name},<br /><br />Thank you for applying for membership to {site_name}! We have reviewed your information and unfortunately we are unable to accept you as a member at this moment.<br /><br />Please feel free to apply again at a future date.<br /><br />Thanks,<br />{site_name}\";s:17:\"inactive_email_on\";b:1;s:18:\"inactive_email_sub\";s:33:\"Your account has been deactivated\";s:14:\"inactive_email\";s:250:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deactivated.<br /><br />If you would like your account to be reactivated please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"deletion_email_on\";b:1;s:18:\"deletion_email_sub\";s:29:\"Your account has been deleted\";s:14:\"deletion_email\";s:355:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deleted. All of your personal information has been permanently deleted and you will no longer be able to login to {site_name}.<br /><br />If your account has been deleted by accident please contact us at {admin_email} <br />Thanks,<br />{site_name}\";s:16:\"resetpw_email_on\";b:1;s:17:\"resetpw_email_sub\";s:19:\"Reset your password\";s:13:\"resetpw_email\";s:303:\"Hi {display_name},<br /><br />We received a request to reset the password for your account. If you made this request, click the link below to change your password:<br /><br />{password_reset_link}<br /><br />If you didn\'t make this request, you can ignore this email <br /><br />Thanks,<br />{site_name}\";s:18:\"changedpw_email_on\";b:1;s:19:\"changedpw_email_sub\";s:42:\"Your {site_name} password has been changed\";s:15:\"changedpw_email\";s:307:\"Hi {display_name},<br /><br />You recently changed the password associated with your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:23:\"changedaccount_email_on\";b:1;s:24:\"changedaccount_email_sub\";s:39:\"Your account at {site_name} was updated\";s:20:\"changedaccount_email\";s:278:\"Hi {display_name},<br /><br />You recently updated your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:24:\"notification_new_user_on\";b:1;s:25:\"notification_new_user_sub\";s:30:\"[{site_name}] New user account\";s:21:\"notification_new_user\";s:211:\"{display_name} has just created an account on {site_name}. To view their profile click here:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:22:\"notification_review_on\";b:0;s:23:\"notification_review_sub\";s:38:\"[{site_name}] New user awaiting review\";s:19:\"notification_review\";s:277:\"{display_name} has just applied for membership to {site_name} and is waiting to be reviewed.<br /><br />To review this member please click the following link:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:24:\"notification_deletion_on\";b:0;s:25:\"notification_deletion_sub\";s:29:\"[{site_name}] Account deleted\";s:21:\"notification_deletion\";s:58:\"{display_name} has just deleted their {site_name} account.\";s:9:\"core_user\";i:89;s:10:\"core_login\";i:90;s:13:\"core_register\";i:91;s:12:\"core_members\";i:72;s:11:\"core_logout\";i:93;s:12:\"core_account\";i:94;s:19:\"core_password-reset\";i:95;s:17:\"profile_show_name\";b:1;s:25:\"profile_show_social_links\";b:1;s:16:\"profile_show_bio\";b:1;s:20:\"profile_bio_maxchars\";i:360;s:19:\"profile_header_menu\";s:2:\"bc\";s:18:\"profile_empty_text\";b:0;s:22:\"profile_empty_text_emo\";b:1;s:12:\"profile_role\";a:0:{}s:16:\"profile_template\";s:7:\"profile\";s:17:\"profile_max_width\";s:6:\"1000px\";s:22:\"profile_area_max_width\";s:5:\"600px\";s:13:\"profile_align\";s:6:\"center\";s:13:\"profile_icons\";s:5:\"label\";s:28:\"profile_disable_photo_upload\";i:0;s:17:\"profile_photosize\";i:190;s:21:\"profile_cover_enabled\";b:1;s:17:\"profile_coversize\";i:300;s:19:\"profile_cover_ratio\";s:5:\"2.7:1\";s:19:\"profile_photocorner\";s:1:\"1\";s:17:\"profile_header_bg\";s:0:\"\";s:24:\"profile_primary_btn_word\";s:15:\"Uuenda profiili\";s:21:\"profile_secondary_btn\";b:1;s:26:\"profile_secondary_btn_word\";s:19:\"Tühista muudatused\";s:13:\"register_role\";s:1:\"0\";s:17:\"register_template\";s:8:\"register\";s:18:\"register_max_width\";s:5:\"450px\";s:14:\"register_align\";s:6:\"center\";s:14:\"register_icons\";s:5:\"label\";s:25:\"register_primary_btn_word\";s:11:\"Registreeri\";s:22:\"register_secondary_btn\";b:1;s:27:\"register_secondary_btn_word\";s:10:\"Logi sisse\";s:26:\"register_secondary_btn_url\";s:0:\"\";s:14:\"login_template\";s:5:\"login\";s:15:\"login_max_width\";s:5:\"450px\";s:11:\"login_align\";s:6:\"center\";s:11:\"login_icons\";s:5:\"label\";s:22:\"login_primary_btn_word\";s:10:\"Logi sisse\";s:22:\"login_forgot_pass_link\";b:1;s:21:\"login_show_rememberme\";b:1;s:19:\"login_secondary_btn\";b:0;s:24:\"login_secondary_btn_word\";s:8:\"Register\";s:23:\"login_secondary_btn_url\";s:0:\"\";s:18:\"directory_template\";s:7:\"members\";s:16:\"directory_header\";s:21:\"{total_users} Members\";s:23:\"directory_header_single\";s:20:\"{total_users} Member\";s:14:\"pages_settings\";s:1:\"1\";s:34:\"restricted_access_taxonomy_metabox\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (1440,'um_role_subscriber_meta','a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}','yes');
INSERT INTO `wp_options` VALUES (1441,'um_role_author_meta','a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}','yes');
INSERT INTO `wp_options` VALUES (1442,'um_role_contributor_meta','a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}','yes');
INSERT INTO `wp_options` VALUES (1443,'um_role_editor_meta','a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}','yes');
INSERT INTO `wp_options` VALUES (1444,'um_role_administrator_meta','a:14:{s:22:\"_um_can_access_wpadmin\";i:1;s:24:\"_um_can_not_see_adminbar\";i:0;s:21:\"_um_can_edit_everyone\";i:1;s:23:\"_um_can_delete_everyone\";i:1;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:20:\"_um_default_homepage\";i:1;s:15:\"_um_after_login\";s:14:\"redirect_admin\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:1;s:30:\"_um_can_access_private_profile\";i:1;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}','yes');
INSERT INTO `wp_options` VALUES (1445,'widget_um_search_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1504,'um_cache_userdata_1','a:110:{s:2:\"ID\";i:1;s:10:\"user_login\";s:10:\"truumeedia\";s:9:\"user_pass\";s:34:\"$P$BDL09b3pjPr4fklKydQsk9iOlD4L8B1\";s:13:\"user_nicename\";s:10:\"truumeedia\";s:10:\"user_email\";s:20:\"truumeedia@gmail.com\";s:8:\"user_url\";s:19:\"http://pilots.local\";s:15:\"user_registered\";s:19:\"2022-04-28 09:00:35\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:10:\"truumeedia\";s:13:\"administrator\";b:1;s:8:\"wp_roles\";s:13:\"administrator\";s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"mec_bookings\";b:1;s:15:\"mec_add_booking\";b:1;s:11:\"mec_coupons\";b:1;s:10:\"mec_report\";b:1;s:17:\"mec_import_export\";b:1;s:12:\"mec_settings\";b:1;s:14:\"mec_shortcodes\";b:1;s:29:\"manage_instagram_feed_options\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:10:\"truumeedia\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:18:\"show_welcome_panel\";s:1:\"1\";s:37:\"wp_dashboard_quick_press_last_post_id\";s:2:\"54\";s:19:\"user_last_view_date\";s:14:\"20220506111308\";s:26:\"user_last_view_date_events\";s:14:\"20220506114415\";s:6:\"mec_op\";s:6:\"a:0:{}\";s:14:\"account_status\";s:8:\"approved\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:35:\"um_user_profile_url_slug_user_login\";s:10:\"truumeedia\";s:14:\"_um_last_login\";s:10:\"1652227626\";s:32:\"um_user_profile_url_slug_user_id\";s:1:\"1\";s:19:\"account_status_name\";s:8:\"Approved\";s:4:\"role\";s:13:\"administrator\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:18:\"can_access_wpadmin\";i:1;s:20:\"can_not_see_adminbar\";i:0;s:17:\"can_edit_everyone\";i:1;s:19:\"can_delete_everyone\";i:1;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:16:\"default_homepage\";i:1;s:11:\"after_login\";s:14:\"redirect_admin\";s:12:\"after_logout\";s:13:\"redirect_home\";s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:1;s:26:\"can_access_private_profile\";i:1;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:1;}','no');
INSERT INTO `wp_options` VALUES (1530,'um_cache_userdata_2','a:54:{s:2:\"ID\";i:2;s:10:\"user_login\";s:14:\"karlmihkeltruu\";s:9:\"user_pass\";s:34:\"$P$BYRHo5TVlwDFDSdwlwqrA/jzyTn/4b1\";s:13:\"user_nicename\";s:14:\"karlmihkeltruu\";s:10:\"user_email\";s:21:\"karltruu8@hotmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2022-05-10 19:40:38\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:16:\"Karl-Mihkel Truu\";s:6:\"author\";b:1;s:8:\"wp_roles\";s:6:\"author\";s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:14:\"karlmihkeltruu\";s:10:\"first_name\";s:11:\"Karl-Mihkel\";s:9:\"last_name\";s:4:\"Truu\";s:11:\"description\";s:50:\"Ma jään pigem kahe kuni nelja rattaga maa peale.\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:14:\"account_status\";s:8:\"approved\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:35:\"um_user_profile_url_slug_user_login\";s:14:\"karlmihkeltruu\";s:14:\"_um_last_login\";s:10:\"1652227759\";s:32:\"um_user_profile_url_slug_user_id\";s:1:\"2\";s:19:\"account_status_name\";s:8:\"Approved\";s:4:\"role\";s:6:\"author\";s:5:\"roles\";a:1:{i:0;s:6:\"author\";}s:18:\"can_access_wpadmin\";i:0;s:20:\"can_not_see_adminbar\";i:1;s:17:\"can_edit_everyone\";i:0;s:19:\"can_delete_everyone\";i:0;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:11:\"after_login\";s:16:\"redirect_profile\";s:12:\"after_logout\";s:13:\"redirect_home\";s:16:\"default_homepage\";i:1;s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:0;s:26:\"can_access_private_profile\";i:0;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:0;}','no');
INSERT INTO `wp_options` VALUES (1685,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1652278468;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1686,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1652278469;s:7:\"checked\";a:4:{s:10:\"test-theme\";s:3:\"1.1\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1706,'_site_transient_timeout_popular_importers_89b4a5c0883b5ca7bb02be998d78dbcd','1652451143','no');
INSERT INTO `wp_options` VALUES (1707,'_site_transient_popular_importers_89b4a5c0883b5ca7bb02be998d78dbcd','a:2:{s:9:\"importers\";a:7:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1712,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1652289217','no');
INSERT INTO `wp_options` VALUES (1713,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:5497;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4789;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2756;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2626;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2029;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1876;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1874;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1561;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1542;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1520;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1516;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1506;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1487;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1369;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1318;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1314;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1252;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1169;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1144;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1104;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1010;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:963;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:956;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:934;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:896;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:850;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:843;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:840;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:838;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:823;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:794;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:777;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:773;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:754;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:753;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:733;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:728;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:723;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:705;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:695;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:695;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:673;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:671;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:671;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:667;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:665;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:655;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:624;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:615;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:609;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:601;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:599;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:594;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:584;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:580;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:574;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:572;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:572;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:568;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:564;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:556;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:549;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:536;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:530;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:528;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:526;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:521;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:513;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:506;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:506;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:505;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:494;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:494;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:494;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:492;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:485;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:460;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:456;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:454;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:451;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:444;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:438;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:431;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:421;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:417;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:415;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:412;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:408;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:405;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:394;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:394;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:393;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:393;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:390;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:385;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:384;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:378;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:376;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:372;}}','no');
INSERT INTO `wp_options` VALUES (1716,'_site_transient_timeout_theme_roots','1652280268','no');
INSERT INTO `wp_options` VALUES (1717,'_site_transient_theme_roots','a:4:{s:10:\"test-theme\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1718,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1652278476;s:8:\"response\";a:1:{s:59:\"modern-events-calendar-lite/modern-events-calendar-lite.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:41:\"w.org/plugins/modern-events-calendar-lite\";s:4:\"slug\";s:27:\"modern-events-calendar-lite\";s:6:\"plugin\";s:59:\"modern-events-calendar-lite/modern-events-calendar-lite.php\";s:11:\"new_version\";s:5:\"6.5.6\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/modern-events-calendar-lite/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/modern-events-calendar-lite.6.5.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:80:\"https://ps.w.org/modern-events-calendar-lite/assets/icon-256x256.png?rev=2573779\";s:2:\"1x\";s:72:\"https://ps.w.org/modern-events-calendar-lite/assets/icon.svg?rev=2573779\";s:3:\"svg\";s:72:\"https://ps.w.org/modern-events-calendar-lite/assets/icon.svg?rev=2573779\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/modern-events-calendar-lite/assets/banner-1544x500.png?rev=2573779\";s:2:\"1x\";s:82:\"https://ps.w.org/modern-events-calendar-lite/assets/banner-772x250.png?rev=2573779\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.0.0\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:13:\"cookie-notice\";s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"2.2.3\";s:7:\"updated\";s:19:\"2018-02-02 12:59:43\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/plugin/cookie-notice/2.2.3/et.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:5:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.59\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.59.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2693719\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2693719\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:31:\"cookie-notice/cookie-notice.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/cookie-notice\";s:4:\"slug\";s:13:\"cookie-notice\";s:6:\"plugin\";s:31:\"cookie-notice/cookie-notice.php\";s:11:\"new_version\";s:5:\"2.2.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/cookie-notice/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/cookie-notice.2.2.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/cookie-notice/assets/icon-256x256.png?rev=2466385\";s:2:\"1x\";s:66:\"https://ps.w.org/cookie-notice/assets/icon-128x128.png?rev=2466385\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/cookie-notice/assets/banner-772x250.png?rev=2466385\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.3\";}s:33:\"instagram-feed/instagram-feed.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/instagram-feed\";s:4:\"slug\";s:14:\"instagram-feed\";s:6:\"plugin\";s:33:\"instagram-feed/instagram-feed.php\";s:11:\"new_version\";s:5:\"6.0.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/instagram-feed/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/instagram-feed.6.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/instagram-feed/assets/icon-256x256.png?rev=2700807\";s:2:\"1x\";s:67:\"https://ps.w.org/instagram-feed/assets/icon-128x128.png?rev=2700807\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/instagram-feed/assets/banner-1544x500.png?rev=2679382\";s:2:\"1x\";s:69:\"https://ps.w.org/instagram-feed/assets/banner-772x250.png?rev=2679382\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";}s:34:\"ultimate-maps-by-supsystic/ums.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:40:\"w.org/plugins/ultimate-maps-by-supsystic\";s:4:\"slug\";s:26:\"ultimate-maps-by-supsystic\";s:6:\"plugin\";s:34:\"ultimate-maps-by-supsystic/ums.php\";s:11:\"new_version\";s:5:\"1.2.9\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/ultimate-maps-by-supsystic/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/ultimate-maps-by-supsystic.1.2.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/ultimate-maps-by-supsystic/assets/icon-256x256.jpg?rev=1964943\";s:2:\"1x\";s:79:\"https://ps.w.org/ultimate-maps-by-supsystic/assets/icon-128x128.jpg?rev=1964943\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/ultimate-maps-by-supsystic/assets/banner-772x250.jpg?rev=1964943\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";b:0;}s:35:\"ultimate-member/ultimate-member.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/ultimate-member\";s:4:\"slug\";s:15:\"ultimate-member\";s:6:\"plugin\";s:35:\"ultimate-member/ultimate-member.php\";s:11:\"new_version\";s:5:\"2.3.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/ultimate-member/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/ultimate-member.2.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-256x256.png?rev=2718101\";s:2:\"1x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-128x128.png?rev=2718101\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/ultimate-member/assets/banner-1544x500.png?rev=2143172\";s:2:\"1x\";s:70:\"https://ps.w.org/ultimate-member/assets/banner-772x250.png?rev=2143172\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}}s:7:\"checked\";a:6:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.59\";s:31:\"cookie-notice/cookie-notice.php\";s:5:\"2.2.3\";s:59:\"modern-events-calendar-lite/modern-events-calendar-lite.php\";s:5:\"6.5.5\";s:33:\"instagram-feed/instagram-feed.php\";s:5:\"6.0.5\";s:34:\"ultimate-maps-by-supsystic/ums.php\";s:5:\"1.2.9\";s:35:\"ultimate-member/ultimate-member.php\";s:5:\"2.3.2\";}}','no');
INSERT INTO `wp_options` VALUES (1719,'ai1wm_secret_key','g1iCBewN8RZM','yes');
INSERT INTO `wp_options` VALUES (1721,'um_cached_users_queue','0','no');
INSERT INTO `wp_options` VALUES (1722,'ai1wm_status','a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:296:\"<a href=\"http://pilots.local/wp-content/ai1wm-backups/pilots.local-20220511-141514-4wtigf.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"pilots.local\" download=\"pilots.local-20220511-141514-4wtigf.wpress\"><span>Download pilots.local</span><em>Size: 90 MB</em></a>\";}','yes');
INSERT INTO `wp_options` VALUES (1727,'_transient_timeout_global_styles_test-theme','1652279531','no');
INSERT INTO `wp_options` VALUES (1728,'_transient_global_styles_test-theme','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (4,7,'_edit_lock','1652223450:1');
INSERT INTO `wp_postmeta` VALUES (5,9,'_edit_lock','1651238674:1');
INSERT INTO `wp_postmeta` VALUES (6,11,'_edit_lock','1651154363:1');
INSERT INTO `wp_postmeta` VALUES (7,13,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (8,13,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (9,13,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (10,13,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (11,13,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (12,13,'_menu_item_classes','a:1:{i:0;s:8:\"nav-item\";}');
INSERT INTO `wp_postmeta` VALUES (13,13,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (14,13,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (16,14,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (17,14,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (18,14,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (19,14,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (20,14,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (21,14,'_menu_item_classes','a:1:{i:0;s:8:\"nav-item\";}');
INSERT INTO `wp_postmeta` VALUES (22,14,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (23,14,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (34,16,'_wp_attached_file','2022/04/EEL_logo2-removebg-preview.png');
INSERT INTO `wp_postmeta` VALUES (35,16,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:183;s:6:\"height\";i:43;s:4:\"file\";s:38:\"2022/04/EEL_logo2-removebg-preview.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"EEL_logo2-removebg-preview-150x43.png\";s:5:\"width\";i:150;s:6:\"height\";i:43;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (36,17,'_wp_attached_file','2022/04/cropped-EEL_logo2-removebg-preview.png');
INSERT INTO `wp_postmeta` VALUES (37,17,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (38,17,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:46:\"2022/04/cropped-EEL_logo2-removebg-preview.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"cropped-EEL_logo2-removebg-preview-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"cropped-EEL_logo2-removebg-preview-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:46:\"cropped-EEL_logo2-removebg-preview-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:46:\"cropped-EEL_logo2-removebg-preview-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:46:\"cropped-EEL_logo2-removebg-preview-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:44:\"cropped-EEL_logo2-removebg-preview-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (39,18,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (40,18,'_wp_trash_meta_time','1651184905');
INSERT INTO `wp_postmeta` VALUES (41,19,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (42,19,'_wp_trash_meta_time','1651226769');
INSERT INTO `wp_postmeta` VALUES (43,21,'_wp_attached_file','2022/04/ffc07eeeff484c0670434af054d7be64.jpeg');
INSERT INTO `wp_postmeta` VALUES (44,21,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:720;s:6:\"height\";i:500;s:4:\"file\";s:45:\"2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"ffc07eeeff484c0670434af054d7be64-300x208.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"ffc07eeeff484c0670434af054d7be64-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (45,22,'_wp_attached_file','2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg');
INSERT INTO `wp_postmeta` VALUES (46,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:700;s:4:\"file\";s:127:\"2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:127:\"digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:127:\"digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (47,23,'_wp_attached_file','2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (48,23,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:55:\"2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"philip-myrtorp-iiqpxCg2GD4-unsplash-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"philip-myrtorp-iiqpxCg2GD4-unsplash-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"philip-myrtorp-iiqpxCg2GD4-unsplash-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"philip-myrtorp-iiqpxCg2GD4-unsplash-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:50:\"philip-myrtorp-iiqpxCg2GD4-unsplash-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:50:\"philip-myrtorp-iiqpxCg2GD4-unsplash-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:40:\"philip-myrtorp-iiqpxCg2GD4-unsplash.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (49,7,'_oembed_45ed0029205b7542d335d0b259867708','<iframe title=\"Spotify Embed: Green Day Radio\" style=\"border-radius: 12px\" width=\"100%\" height=\"380\" frameborder=\"0\" allowfullscreen allow=\"autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture\" src=\"https://open.spotify.com/embed/playlist/37i9dQZF1E4wYWiDJuwz1b?si=154d1a755e8445ff&utm_source=oembed\"></iframe>');
INSERT INTO `wp_postmeta` VALUES (50,7,'_oembed_time_45ed0029205b7542d335d0b259867708','1651228944');
INSERT INTO `wp_postmeta` VALUES (51,29,'_wp_attached_file','2022/04/poster.png');
INSERT INTO `wp_postmeta` VALUES (52,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1260;s:6:\"height\";i:643;s:4:\"file\";s:18:\"2022/04/poster.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"poster-300x153.png\";s:5:\"width\";i:300;s:6:\"height\";i:153;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"poster-1024x523.png\";s:5:\"width\";i:1024;s:6:\"height\";i:523;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"poster-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"poster-768x392.png\";s:5:\"width\";i:768;s:6:\"height\";i:392;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (53,30,'_wp_attached_file','2022/04/clouds-handbroke.mp4');
INSERT INTO `wp_postmeta` VALUES (54,30,'_wp_attachment_metadata','a:10:{s:7:\"bitrate\";i:2236269;s:8:\"filesize\";i:4557779;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:16;s:16:\"length_formatted\";s:4:\"0:16\";s:5:\"width\";i:1484;s:6:\"height\";i:752;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:17:\"created_timestamp\";i:1651156981;}');
INSERT INTO `wp_postmeta` VALUES (55,31,'_wp_attached_file','2022/04/clouds-bg-sm.mp4');
INSERT INTO `wp_postmeta` VALUES (56,31,'_wp_attachment_metadata','a:10:{s:8:\"filesize\";i:4847550;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:31;s:16:\"length_formatted\";s:4:\"0:31\";s:5:\"width\";i:1480;s:6:\"height\";i:752;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1651243312;}');
INSERT INTO `wp_postmeta` VALUES (57,32,'_wp_attached_file','2022/05/poster.png');
INSERT INTO `wp_postmeta` VALUES (58,32,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1474;s:6:\"height\";i:748;s:4:\"file\";s:18:\"2022/05/poster.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"poster-300x152.png\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"poster-1024x520.png\";s:5:\"width\";i:1024;s:6:\"height\";i:520;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"poster-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"poster-768x390.png\";s:5:\"width\";i:768;s:6:\"height\";i:390;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (59,50,'em_event_type','4');
INSERT INTO `wp_postmeta` VALUES (60,50,'em_venue','0');
INSERT INTO `wp_postmeta` VALUES (61,50,'em_performer','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (62,50,'em_start_date','1653069600');
INSERT INTO `wp_postmeta` VALUES (63,50,'em_end_date','1653080400');
INSERT INTO `wp_postmeta` VALUES (64,50,'em_seating_capacity','0');
INSERT INTO `wp_postmeta` VALUES (65,50,'em_organizer_name','');
INSERT INTO `wp_postmeta` VALUES (66,50,'em_organizer_phones','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (67,50,'em_organizer_emails','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (68,50,'em_organizer_websites','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (69,50,'em_hide_event_from_calendar','0');
INSERT INTO `wp_postmeta` VALUES (70,50,'em_hide_event_from_events','0');
INSERT INTO `wp_postmeta` VALUES (71,50,'em_ticket_template','0');
INSERT INTO `wp_postmeta` VALUES (72,50,'em_max_tickets_per_person','0');
INSERT INTO `wp_postmeta` VALUES (73,50,'em_allow_cancellations','0');
INSERT INTO `wp_postmeta` VALUES (74,50,'em_audience_notice','');
INSERT INTO `wp_postmeta` VALUES (75,50,'em_allow_discount','0');
INSERT INTO `wp_postmeta` VALUES (76,50,'em_discount_no_tickets','2');
INSERT INTO `wp_postmeta` VALUES (77,50,'em_discount_per','0');
INSERT INTO `wp_postmeta` VALUES (78,50,'em_facebook_page',NULL);
INSERT INTO `wp_postmeta` VALUES (79,50,'em_cover_image_id','23');
INSERT INTO `wp_postmeta` VALUES (80,50,'em_sponser_image_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (81,50,'em_gallery_image_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (82,50,'em_ticket_price','0');
INSERT INTO `wp_postmeta` VALUES (83,50,'em_hide_organizer','0');
INSERT INTO `wp_postmeta` VALUES (84,50,'em_hide_booking_status','0');
INSERT INTO `wp_postmeta` VALUES (85,50,'em_last_booking_date','1653080400');
INSERT INTO `wp_postmeta` VALUES (86,50,'em_start_booking_date','1653069600');
INSERT INTO `wp_postmeta` VALUES (87,50,'em_rm_form','0');
INSERT INTO `wp_postmeta` VALUES (88,50,'em_seats','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (89,50,'em_booked_seats','0');
INSERT INTO `wp_postmeta` VALUES (90,50,'em_match','0');
INSERT INTO `wp_postmeta` VALUES (91,50,'em_is_daily_event','0');
INSERT INTO `wp_postmeta` VALUES (92,50,'em_enable_performer','0');
INSERT INTO `wp_postmeta` VALUES (93,50,'em_enable_booking','0');
INSERT INTO `wp_postmeta` VALUES (94,50,'em_en_ticket','0');
INSERT INTO `wp_postmeta` VALUES (95,50,'em_all_day','1');
INSERT INTO `wp_postmeta` VALUES (96,50,'em_custom_link_enabled','0');
INSERT INTO `wp_postmeta` VALUES (97,50,'em_custom_link','');
INSERT INTO `wp_postmeta` VALUES (98,50,'em_user_submitted','0');
INSERT INTO `wp_postmeta` VALUES (99,50,'em_user','1');
INSERT INTO `wp_postmeta` VALUES (100,50,'em_enable_attendees','1');
INSERT INTO `wp_postmeta` VALUES (101,50,'em_show_attendees','0');
INSERT INTO `wp_postmeta` VALUES (102,50,'em_is_featured','0');
INSERT INTO `wp_postmeta` VALUES (103,50,'em_allow_comments','1');
INSERT INTO `wp_postmeta` VALUES (104,50,'em_event_text_color','');
INSERT INTO `wp_postmeta` VALUES (105,50,'em_fixed_event_price','0');
INSERT INTO `wp_postmeta` VALUES (106,50,'em_show_fixed_event_price','0');
INSERT INTO `wp_postmeta` VALUES (107,50,'em_custom_meta','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (108,50,'em_enable_custom_booking_confirmation_email',NULL);
INSERT INTO `wp_postmeta` VALUES (109,50,'em_custom_booking_confirmation_email_subject',NULL);
INSERT INTO `wp_postmeta` VALUES (110,50,'em_custom_booking_confirmation_email_body','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" >\n    <tbody>\n        <tr>\n            <td align=\"center\" valign=\"top\">\n                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"background-color:#fdfdfd;border:1px solid #dcdcdc;border-radius:3px!important\">\n                    <tbody>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"background-color: #0087be;border-radius:3px 3px 0 0!important;color:#ffffff;border-bottom:0;font-weight:bold;line-height:100%;vertical-align:middle;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif; width:100%;\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"padding:36px 48px;display:block\">\n                                                <h1 style=\"color:#ffffff;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:30px;font-weight:300;line-height:150%;margin:0;text-align:left\">Your Booking is Confirmed</h1>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td align=\"center\" valign=\"top\">\n                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\n                                    <tbody>\n                                        <tr>\n                                            <td valign=\"top\" style=\"background-color:#fdfdfd\">\n                                                <table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td valign=\"top\" style=\"padding:48px\">\n                                                                <div style=\"color:#737373;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:14px;line-height:150%;text-align:left\">\n                                                                    <h1 style=\"color:#0087be;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:22px;font-weight:bold;line-height:130%;margin:16px 0 8px;text-align:center;\">{{event_name}}</h1>\n                                                                    <h2 style=\"color:#557da1;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:18px;font-weight:normal;line-height:130%;margin:16px 0 8px;text-align:center; font-style: italic;\">{{venue_name}}</h2>\n                                                                    <h2 style=\"color:#557da1;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:18px;font-weight:normal;line-height:130%;margin:16px 0 8px;text-align:center; font-style: italic;\">{{venue_address}}</h2>\n                                                                    <h2 style=\"color:#0087be;display:block;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;font-size:18px;font-weight:bold;line-height:130%;margin:16px 0 8px;text-align:left\">Booking #{{booking_id}}</h2>\n                                                                    <table cellspacing=\"0\" cellpadding=\"6\" style=\"width:100%;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;color:#737373;border:1px solid #e4e4e4\" border=\"1\">\n                                                                        <thead>\n                                                                            <tr>\n                                                                                <th scope=\"col\" style=\"text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px\">Ticket(s)</th>\n                                                                                <th scope=\"col\" style=\"text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px\">Attendees</th>\n                                                                                <th scope=\"col\" style=\"text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px\">Quantity</th>\n                                                                                <th scope=\"col\" style=\"text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px\">Price</th>\n                                                                                <th scope=\"col\" style=\"text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px\">Discount</th>\n                                                                            </tr>\n                                                                        </thead>\n                                                                        <tbody>\n                                                                            <tr>\n                                                                                <td style=\"text-align:left;vertical-align:middle;border:1px solid #eee;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;word-wrap:break-word;color:#737373;padding:12px\">{{seat_no}}</td>\n                                                                                <td style=\"text-align:left;vertical-align:middle;border:1px solid #eee;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;color:#737373;padding:12px; word-break: break-word;\">{{attendee_names}}</td>\n                                                                                <td style=\"text-align:left;vertical-align:middle;border:1px solid #eee;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;color:#737373;padding:12px\">{{quantity}}</td>\n                                                                                <td style=\"text-align:left;vertical-align:middle;border:1px solid #eee;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;color:#737373;padding:12px\"><span>{{price}}</span></td>\n                                                                                <td style=\"text-align:left;vertical-align:middle;border:1px solid #eee;font-family:\'Helvetica Neue\',Helvetica,Roboto,Arial,sans-serif;color:#737373;padding:12px\"> -{{discount}}</td>\n                                                                            </tr>\n                                                                        </tbody>\n                                                                        <tfoot>\n                                                                            <tr>\n                                                                                <th colspan=\"3\" style=\"text-align:left;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\">One-Time event Fee:</th>\n                                                                                <td style=\"text-align:left;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\"><span>{{fixed_fees}}</span>\n                                                                                </td>\n                                                                            </tr>\n                                                                            <tr>\n                                                                                <th colspan=\"3\" style=\"text-align:left;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\">Subtotal:</th>\n                                                                                <td style=\"text-align:left;border-top-width:4px;color:#737373;border:1px solid #e4e4e4;padding:12px\"><span>{{subtotal}}</span>\n                                                                                </td>\n                                                                            </tr>\n                                                                        </tfoot>\n                                                                    </table>\n                                                                </div>\n                                                            </td>\n                                                        </tr>\n                                                    </tbody>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n        </tr>\n    </tbody>\n</table>');
INSERT INTO `wp_postmeta` VALUES (111,50,'em_standing_capacity','0');
INSERT INTO `wp_postmeta` VALUES (112,50,'em_is_zoom_meetings','0');
INSERT INTO `wp_postmeta` VALUES (113,50,'em_meeting_data','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (114,50,'em_organizer','0');
INSERT INTO `wp_postmeta` VALUES (115,50,'em_show_tier_name_on_booking','0');
INSERT INTO `wp_postmeta` VALUES (116,50,'_thumbnail_id','23');
INSERT INTO `wp_postmeta` VALUES (117,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (118,53,'mec_color','005f90');
INSERT INTO `wp_postmeta` VALUES (119,53,'_thumbnail_id','23');
INSERT INTO `wp_postmeta` VALUES (120,53,'mec_location_id','7');
INSERT INTO `wp_postmeta` VALUES (121,53,'mec_dont_show_map','0');
INSERT INTO `wp_postmeta` VALUES (122,53,'mec_organizer_id','8');
INSERT INTO `wp_postmeta` VALUES (123,53,'mec_start_date','2022-05-20');
INSERT INTO `wp_postmeta` VALUES (124,53,'mec_start_time_hour','6');
INSERT INTO `wp_postmeta` VALUES (125,53,'mec_start_time_minutes','0');
INSERT INTO `wp_postmeta` VALUES (126,53,'mec_start_time_ampm','PM');
INSERT INTO `wp_postmeta` VALUES (127,53,'mec_start_day_seconds','64800');
INSERT INTO `wp_postmeta` VALUES (128,53,'mec_end_date','2022-05-20');
INSERT INTO `wp_postmeta` VALUES (129,53,'mec_end_time_hour','9');
INSERT INTO `wp_postmeta` VALUES (130,53,'mec_end_time_minutes','30');
INSERT INTO `wp_postmeta` VALUES (131,53,'mec_end_time_ampm','PM');
INSERT INTO `wp_postmeta` VALUES (132,53,'mec_end_day_seconds','77400');
INSERT INTO `wp_postmeta` VALUES (133,53,'mec_date','a:2:{s:5:\"start\";a:4:{s:4:\"date\";s:10:\"2022-05-20\";s:4:\"hour\";s:1:\"6\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"PM\";}s:3:\"end\";a:4:{s:4:\"date\";s:10:\"2022-05-20\";s:4:\"hour\";s:1:\"9\";s:7:\"minutes\";s:2:\"30\";s:4:\"ampm\";s:2:\"PM\";}}');
INSERT INTO `wp_postmeta` VALUES (134,53,'mec_repeat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (135,53,'mec_certain_weekdays','');
INSERT INTO `wp_postmeta` VALUES (136,53,'mec_allday','0');
INSERT INTO `wp_postmeta` VALUES (137,53,'mec_hide_time','0');
INSERT INTO `wp_postmeta` VALUES (138,53,'mec_hide_end_time','0');
INSERT INTO `wp_postmeta` VALUES (139,53,'mec_comment','');
INSERT INTO `wp_postmeta` VALUES (140,53,'mec_repeat_status','0');
INSERT INTO `wp_postmeta` VALUES (141,53,'mec_repeat_type','');
INSERT INTO `wp_postmeta` VALUES (142,53,'mec_repeat_interval','');
INSERT INTO `wp_postmeta` VALUES (143,53,'mec_repeat_end','');
INSERT INTO `wp_postmeta` VALUES (144,53,'mec_repeat_end_at_occurrences','');
INSERT INTO `wp_postmeta` VALUES (145,53,'mec_repeat_end_at_date','');
INSERT INTO `wp_postmeta` VALUES (146,53,'mec_advanced_days','');
INSERT INTO `wp_postmeta` VALUES (147,53,'mec_in_days','');
INSERT INTO `wp_postmeta` VALUES (148,53,'mec_not_in_days','');
INSERT INTO `wp_postmeta` VALUES (149,53,'mec_hourly_schedules','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (150,53,'mec_booking','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (151,53,'mec_tickets','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (152,53,'mec_fees_global_inheritance','1');
INSERT INTO `wp_postmeta` VALUES (153,53,'mec_fees','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (154,53,'mec_ticket_variations_global_inheritance','1');
INSERT INTO `wp_postmeta` VALUES (155,53,'mec_ticket_variations','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (156,53,'mec_reg_fields_global_inheritance','1');
INSERT INTO `wp_postmeta` VALUES (157,53,'mec_reg_fields','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (158,53,'mec_op','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (159,53,'mec_event_date_submit','20220506111517');
INSERT INTO `wp_postmeta` VALUES (160,53,'mec_new_event_notif_sent','1');
INSERT INTO `wp_postmeta` VALUES (161,56,'label','');
INSERT INTO `wp_postmeta` VALUES (162,56,'category','');
INSERT INTO `wp_postmeta` VALUES (163,56,'location','');
INSERT INTO `wp_postmeta` VALUES (164,56,'organizer','');
INSERT INTO `wp_postmeta` VALUES (165,56,'tag','');
INSERT INTO `wp_postmeta` VALUES (166,56,'author','');
INSERT INTO `wp_postmeta` VALUES (167,56,'skin','timeline');
INSERT INTO `wp_postmeta` VALUES (168,56,'sk-options','a:1:{s:8:\"timeline\";a:7:{s:15:\"start_date_type\";s:5:\"today\";s:10:\"start_date\";s:0:\"\";s:18:\"maximum_date_range\";s:0:\"\";s:16:\"load_more_button\";i:1;s:13:\"month_divider\";i:0;s:10:\"sed_method\";s:2:\"m1\";s:11:\"image_popup\";i:0;}}');
INSERT INTO `wp_postmeta` VALUES (169,56,'sf-options','a:1:{s:8:\"timeline\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (170,56,'sf_status','0');
INSERT INTO `wp_postmeta` VALUES (171,56,'sf_display_label','');
INSERT INTO `wp_postmeta` VALUES (172,56,'show_past_events','1');
INSERT INTO `wp_postmeta` VALUES (173,56,'show_only_past_events','0');
INSERT INTO `wp_postmeta` VALUES (174,56,'show_only_ongoing_events','0');
INSERT INTO `wp_postmeta` VALUES (175,56,'_edit_lock','1651825770:1');
INSERT INTO `wp_postmeta` VALUES (176,60,'_edit_lock','1651826647:1');
INSERT INTO `wp_postmeta` VALUES (177,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (178,60,'mec_color','');
INSERT INTO `wp_postmeta` VALUES (179,60,'mec_location_id','1');
INSERT INTO `wp_postmeta` VALUES (180,60,'mec_dont_show_map','0');
INSERT INTO `wp_postmeta` VALUES (181,60,'mec_organizer_id','1');
INSERT INTO `wp_postmeta` VALUES (182,60,'mec_read_more','');
INSERT INTO `wp_postmeta` VALUES (183,60,'mec_more_info','');
INSERT INTO `wp_postmeta` VALUES (184,60,'mec_more_info_title','');
INSERT INTO `wp_postmeta` VALUES (185,60,'mec_more_info_target','_self');
INSERT INTO `wp_postmeta` VALUES (186,60,'mec_cost','');
INSERT INTO `wp_postmeta` VALUES (187,60,'mec_cost_auto_calculate','0');
INSERT INTO `wp_postmeta` VALUES (188,60,'mec_currency','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (189,60,'mec_additional_organizer_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (190,60,'mec_additional_location_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (191,60,'mec_date','a:5:{s:5:\"start\";a:4:{s:4:\"date\";s:10:\"2022-06-24\";s:4:\"hour\";s:1:\"8\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"AM\";}s:3:\"end\";a:4:{s:4:\"date\";s:10:\"2022-06-24\";s:4:\"hour\";i:6;s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"PM\";}s:6:\"allday\";s:1:\"1\";s:7:\"comment\";s:0:\"\";s:6:\"repeat\";a:6:{s:4:\"type\";s:5:\"daily\";s:8:\"interval\";s:1:\"1\";s:8:\"advanced\";s:0:\"\";s:3:\"end\";s:5:\"never\";s:11:\"end_at_date\";s:0:\"\";s:18:\"end_at_occurrences\";s:2:\"10\";}}');
INSERT INTO `wp_postmeta` VALUES (192,60,'mec_repeat','a:6:{s:4:\"type\";s:5:\"daily\";s:8:\"interval\";s:1:\"1\";s:8:\"advanced\";s:0:\"\";s:3:\"end\";s:5:\"never\";s:11:\"end_at_date\";s:0:\"\";s:18:\"end_at_occurrences\";s:2:\"10\";}');
INSERT INTO `wp_postmeta` VALUES (193,60,'mec_certain_weekdays','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (194,60,'mec_allday','1');
INSERT INTO `wp_postmeta` VALUES (195,60,'one_occurrence','0');
INSERT INTO `wp_postmeta` VALUES (196,60,'mec_hide_time','0');
INSERT INTO `wp_postmeta` VALUES (197,60,'mec_hide_end_time','0');
INSERT INTO `wp_postmeta` VALUES (198,60,'mec_comment','');
INSERT INTO `wp_postmeta` VALUES (199,60,'mec_timezone','global');
INSERT INTO `wp_postmeta` VALUES (200,60,'mec_countdown_method','global');
INSERT INTO `wp_postmeta` VALUES (201,60,'mec_public','1');
INSERT INTO `wp_postmeta` VALUES (202,60,'mec_start_date','2022-06-24');
INSERT INTO `wp_postmeta` VALUES (203,60,'mec_start_time_hour','8');
INSERT INTO `wp_postmeta` VALUES (204,60,'mec_start_time_minutes','00');
INSERT INTO `wp_postmeta` VALUES (205,60,'mec_start_time_ampm','AM');
INSERT INTO `wp_postmeta` VALUES (206,60,'mec_start_day_seconds','28800');
INSERT INTO `wp_postmeta` VALUES (207,60,'mec_start_datetime','2022-06-24 08:00 AM');
INSERT INTO `wp_postmeta` VALUES (208,60,'mec_end_date','2022-06-24');
INSERT INTO `wp_postmeta` VALUES (209,60,'mec_end_time_hour','6');
INSERT INTO `wp_postmeta` VALUES (210,60,'mec_end_time_minutes','00');
INSERT INTO `wp_postmeta` VALUES (211,60,'mec_end_time_ampm','PM');
INSERT INTO `wp_postmeta` VALUES (212,60,'mec_end_day_seconds','64800');
INSERT INTO `wp_postmeta` VALUES (213,60,'mec_end_datetime','2022-06-24 06:00 PM');
INSERT INTO `wp_postmeta` VALUES (214,60,'mec_repeat_status','0');
INSERT INTO `wp_postmeta` VALUES (215,60,'mec_repeat_type','');
INSERT INTO `wp_postmeta` VALUES (216,60,'mec_repeat_interval','1');
INSERT INTO `wp_postmeta` VALUES (217,60,'mec_repeat_end','');
INSERT INTO `wp_postmeta` VALUES (218,60,'mec_repeat_end_at_occurrences','');
INSERT INTO `wp_postmeta` VALUES (219,60,'mec_repeat_end_at_date','');
INSERT INTO `wp_postmeta` VALUES (220,60,'mec_advanced_days','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (221,60,'mec_in_days','');
INSERT INTO `wp_postmeta` VALUES (222,60,'mec_not_in_days','');
INSERT INTO `wp_postmeta` VALUES (223,60,'mec_hourly_schedules','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (224,60,'mec_booking','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (225,60,'mec_tickets','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (226,60,'mec_fees_global_inheritance','1');
INSERT INTO `wp_postmeta` VALUES (227,60,'mec_fees','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (228,60,'mec_ticket_variations_global_inheritance','1');
INSERT INTO `wp_postmeta` VALUES (229,60,'mec_ticket_variations','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (230,60,'mec_reg_fields_global_inheritance','1');
INSERT INTO `wp_postmeta` VALUES (231,60,'mec_reg_fields','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (232,60,'mec_bfixed_fields','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (233,60,'mec_op','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (234,60,'mec_fields','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (235,60,'mec_event_status','EventScheduled');
INSERT INTO `wp_postmeta` VALUES (236,60,'mec_moved_online_link','');
INSERT INTO `wp_postmeta` VALUES (237,60,'mec_cancelled_reason','');
INSERT INTO `wp_postmeta` VALUES (238,60,'mec_display_cancellation_reason_in_single_page','');
INSERT INTO `wp_postmeta` VALUES (239,7,'mec_location_id','0');
INSERT INTO `wp_postmeta` VALUES (240,7,'mec_additional_location_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (241,7,'mec_organizer_id','0');
INSERT INTO `wp_postmeta` VALUES (242,7,'mec_additional_organizer_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (243,62,'_edit_lock','1651840046:1');
INSERT INTO `wp_postmeta` VALUES (244,64,'_edit_lock','1651840068:1');
INSERT INTO `wp_postmeta` VALUES (245,66,'_edit_lock','1652211417:1');
INSERT INTO `wp_postmeta` VALUES (246,68,'_edit_lock','1652265189:1');
INSERT INTO `wp_postmeta` VALUES (247,70,'_edit_lock','1651840119:1');
INSERT INTO `wp_postmeta` VALUES (248,72,'_edit_lock','1652218451:1');
INSERT INTO `wp_postmeta` VALUES (249,74,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (250,74,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (251,74,'_menu_item_object_id','72');
INSERT INTO `wp_postmeta` VALUES (252,74,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (253,74,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (254,74,'_menu_item_classes','a:1:{i:0;s:8:\"nav-item\";}');
INSERT INTO `wp_postmeta` VALUES (255,74,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (256,74,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (258,75,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (259,75,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (260,75,'_menu_item_object_id','70');
INSERT INTO `wp_postmeta` VALUES (261,75,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (262,75,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (263,75,'_menu_item_classes','a:1:{i:0;s:8:\"nav-item\";}');
INSERT INTO `wp_postmeta` VALUES (264,75,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (265,75,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (267,76,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (268,76,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (269,76,'_menu_item_object_id','68');
INSERT INTO `wp_postmeta` VALUES (270,76,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (271,76,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (272,76,'_menu_item_classes','a:1:{i:0;s:8:\"nav-item\";}');
INSERT INTO `wp_postmeta` VALUES (273,76,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (274,76,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (276,77,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (277,77,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (278,77,'_menu_item_object_id','66');
INSERT INTO `wp_postmeta` VALUES (279,77,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (280,77,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (281,77,'_menu_item_classes','a:1:{i:0;s:8:\"nav-item\";}');
INSERT INTO `wp_postmeta` VALUES (282,77,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (283,77,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (285,78,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (286,78,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (287,78,'_menu_item_object_id','64');
INSERT INTO `wp_postmeta` VALUES (288,78,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (289,78,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (290,78,'_menu_item_classes','a:1:{i:0;s:8:\"nav-item\";}');
INSERT INTO `wp_postmeta` VALUES (291,78,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (292,78,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (294,79,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (295,79,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (296,79,'_menu_item_object_id','62');
INSERT INTO `wp_postmeta` VALUES (297,79,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (298,79,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (299,79,'_menu_item_classes','a:1:{i:0;s:8:\"nav-item\";}');
INSERT INTO `wp_postmeta` VALUES (300,79,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (301,79,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (303,14,'_wp_old_date','2022-04-28');
INSERT INTO `wp_postmeta` VALUES (304,13,'_wp_old_date','2022-04-28');
INSERT INTO `wp_postmeta` VALUES (305,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (306,2,'_wp_trash_meta_time','1651841696');
INSERT INTO `wp_postmeta` VALUES (307,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (308,43,'_edit_lock','1652215370:1');
INSERT INTO `wp_postmeta` VALUES (309,85,'_um_custom_fields','a:6:{s:10:\"user_login\";a:15:{s:5:\"title\";s:8:\"Username\";s:7:\"metakey\";s:10:\"user_login\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:8:\"Username\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:15:\"unique_username\";s:9:\"min_chars\";i:3;s:9:\"max_chars\";i:24;s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"user_email\";a:13:{s:5:\"title\";s:14:\"E-mail Address\";s:7:\"metakey\";s:10:\"user_email\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:14:\"E-mail Address\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"validate\";s:12:\"unique_email\";s:8:\"position\";s:1:\"4\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"5\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"first_name\";a:12:{s:5:\"title\";s:10:\"First Name\";s:7:\"metakey\";s:10:\"first_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:10:\"First Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"last_name\";a:12:{s:5:\"title\";s:9:\"Last Name\";s:7:\"metakey\";s:9:\"last_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:9:\"Last Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"3\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}');
INSERT INTO `wp_postmeta` VALUES (310,85,'_um_mode','register');
INSERT INTO `wp_postmeta` VALUES (311,85,'_um_core','register');
INSERT INTO `wp_postmeta` VALUES (312,85,'_um_register_use_custom_settings','0');
INSERT INTO `wp_postmeta` VALUES (313,86,'_um_custom_fields','a:3:{s:8:\"username\";a:13:{s:5:\"title\";s:18:\"Username or E-mail\";s:7:\"metakey\";s:8:\"username\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:18:\"Username or E-mail\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:24:\"unique_username_or_email\";s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}');
INSERT INTO `wp_postmeta` VALUES (314,86,'_um_mode','login');
INSERT INTO `wp_postmeta` VALUES (315,86,'_um_core','login');
INSERT INTO `wp_postmeta` VALUES (316,86,'_um_login_use_custom_settings','0');
INSERT INTO `wp_postmeta` VALUES (317,87,'_um_custom_fields','a:1:{s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}');
INSERT INTO `wp_postmeta` VALUES (318,87,'_um_mode','profile');
INSERT INTO `wp_postmeta` VALUES (319,87,'_um_core','profile');
INSERT INTO `wp_postmeta` VALUES (320,87,'_um_profile_use_custom_settings','0');
INSERT INTO `wp_postmeta` VALUES (321,88,'_um_core','members');
INSERT INTO `wp_postmeta` VALUES (322,88,'_um_template','members');
INSERT INTO `wp_postmeta` VALUES (323,88,'_um_mode','directory');
INSERT INTO `wp_postmeta` VALUES (324,88,'_um_view_types','a:1:{i:0;s:4:\"grid\";}');
INSERT INTO `wp_postmeta` VALUES (325,88,'_um_default_view','grid');
INSERT INTO `wp_postmeta` VALUES (327,88,'_um_has_profile_photo','');
INSERT INTO `wp_postmeta` VALUES (328,88,'_um_has_cover_photo','0');
INSERT INTO `wp_postmeta` VALUES (331,88,'_um_sortby','user_registered_desc');
INSERT INTO `wp_postmeta` VALUES (332,88,'_um_sortby_custom','');
INSERT INTO `wp_postmeta` VALUES (333,88,'_um_sortby_custom_label','');
INSERT INTO `wp_postmeta` VALUES (334,88,'_um_enable_sorting','');
INSERT INTO `wp_postmeta` VALUES (336,88,'_um_profile_photo','1');
INSERT INTO `wp_postmeta` VALUES (337,88,'_um_cover_photos','1');
INSERT INTO `wp_postmeta` VALUES (338,88,'_um_show_name','1');
INSERT INTO `wp_postmeta` VALUES (339,88,'_um_show_tagline','');
INSERT INTO `wp_postmeta` VALUES (341,88,'_um_show_userinfo','');
INSERT INTO `wp_postmeta` VALUES (343,88,'_um_show_social','');
INSERT INTO `wp_postmeta` VALUES (344,88,'_um_userinfo_animate','1');
INSERT INTO `wp_postmeta` VALUES (345,88,'_um_search','1');
INSERT INTO `wp_postmeta` VALUES (347,88,'_um_filters','');
INSERT INTO `wp_postmeta` VALUES (350,88,'_um_filters_expanded','');
INSERT INTO `wp_postmeta` VALUES (351,88,'_um_filters_is_collapsible','1');
INSERT INTO `wp_postmeta` VALUES (353,88,'_um_must_search','');
INSERT INTO `wp_postmeta` VALUES (354,88,'_um_max_users','0');
INSERT INTO `wp_postmeta` VALUES (355,88,'_um_profiles_per_page','24');
INSERT INTO `wp_postmeta` VALUES (356,88,'_um_profiles_per_page_mobile','12');
INSERT INTO `wp_postmeta` VALUES (357,88,'_um_directory_header','{total_users} liiget');
INSERT INTO `wp_postmeta` VALUES (358,88,'_um_directory_header_single','{total_users} liige');
INSERT INTO `wp_postmeta` VALUES (359,88,'_um_directory_no_users','Ei leidnud ühtegi sellist kasutajat!');
INSERT INTO `wp_postmeta` VALUES (367,1,'_um_core','pages_settings');
INSERT INTO `wp_postmeta` VALUES (368,89,'_um_core','user');
INSERT INTO `wp_postmeta` VALUES (369,90,'_um_core','login');
INSERT INTO `wp_postmeta` VALUES (370,91,'_um_core','register');
INSERT INTO `wp_postmeta` VALUES (371,72,'_um_core','members');
INSERT INTO `wp_postmeta` VALUES (372,93,'_um_core','logout');
INSERT INTO `wp_postmeta` VALUES (373,94,'_um_core','account');
INSERT INTO `wp_postmeta` VALUES (374,95,'_um_core','password-reset');
INSERT INTO `wp_postmeta` VALUES (375,96,'_wp_attached_file','2022/05/14580310081598811066-512.png');
INSERT INTO `wp_postmeta` VALUES (376,96,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:36:\"2022/05/14580310081598811066-512.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"14580310081598811066-512-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"14580310081598811066-512-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumblist\";a:4:{s:4:\"file\";s:36:\"14580310081598811066-512-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"meccarouselthumb\";a:4:{s:4:\"file\";s:36:\"14580310081598811066-512-474x324.png\";s:5:\"width\";i:474;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"gridsquare\";a:4:{s:4:\"file\";s:36:\"14580310081598811066-512-391x260.png\";s:5:\"width\";i:391;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"tileview\";a:4:{s:4:\"file\";s:36:\"14580310081598811066-512-300x400.png\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (377,97,'_wp_attached_file','2022/05/Cessna-172n.jpeg');
INSERT INTO `wp_postmeta` VALUES (378,97,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1631;s:6:\"height\";i:900;s:4:\"file\";s:24:\"2022/05/Cessna-172n.jpeg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Cessna-172n-300x166.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Cessna-172n-1024x565.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:565;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Cessna-172n-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Cessna-172n-768x424.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:424;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumblist\";a:4:{s:4:\"file\";s:24:\"Cessna-172n-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"meccarouselthumb\";a:4:{s:4:\"file\";s:24:\"Cessna-172n-474x324.jpeg\";s:5:\"width\";i:474;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"gridsquare\";a:4:{s:4:\"file\";s:24:\"Cessna-172n-391x260.jpeg\";s:5:\"width\";i:391;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"tileview\";a:4:{s:4:\"file\";s:24:\"Cessna-172n-300x400.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"Cessna-172n-1536x848.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:848;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (379,72,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (380,72,'um_content_restriction','a:8:{s:26:\"_um_custom_access_settings\";b:1;s:14:\"_um_accessible\";i:2;s:28:\"_um_access_hide_from_queries\";b:1;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (381,88,'_edit_lock','1652218223:1');
INSERT INTO `wp_postmeta` VALUES (382,88,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (383,88,'_um_directory_template','members');
INSERT INTO `wp_postmeta` VALUES (384,88,'_um_show_these_users','');
INSERT INTO `wp_postmeta` VALUES (385,88,'_um_exclude_these_users','');
INSERT INTO `wp_postmeta` VALUES (386,88,'_um_tagline_fields','a:1:{i:0;s:11:\"description\";}');
INSERT INTO `wp_postmeta` VALUES (387,88,'_um_reveal_fields','a:1:{i:0;s:11:\"description\";}');
INSERT INTO `wp_postmeta` VALUES (388,88,'_um_search_filters_gmt','3');
INSERT INTO `wp_postmeta` VALUES (389,101,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (390,101,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (391,101,'_menu_item_object_id','90');
INSERT INTO `wp_postmeta` VALUES (392,101,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (393,101,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (394,101,'_menu_item_classes','a:2:{i:0;s:8:\"nav-item\";i:1;s:9:\"nav-login\";}');
INSERT INTO `wp_postmeta` VALUES (395,101,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (396,101,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (398,102,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (399,102,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (400,102,'_menu_item_object_id','93');
INSERT INTO `wp_postmeta` VALUES (401,102,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (402,102,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (403,102,'_menu_item_classes','a:2:{i:0;s:8:\"nav-item\";i:1;s:9:\"nav-login\";}');
INSERT INTO `wp_postmeta` VALUES (404,102,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (405,102,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (407,79,'_wp_old_date','2022-05-06');
INSERT INTO `wp_postmeta` VALUES (408,78,'_wp_old_date','2022-05-06');
INSERT INTO `wp_postmeta` VALUES (409,77,'_wp_old_date','2022-05-06');
INSERT INTO `wp_postmeta` VALUES (410,76,'_wp_old_date','2022-05-06');
INSERT INTO `wp_postmeta` VALUES (411,14,'_wp_old_date','2022-05-06');
INSERT INTO `wp_postmeta` VALUES (412,13,'_wp_old_date','2022-05-06');
INSERT INTO `wp_postmeta` VALUES (413,75,'_wp_old_date','2022-05-06');
INSERT INTO `wp_postmeta` VALUES (414,74,'_wp_old_date','2022-05-06');
INSERT INTO `wp_postmeta` VALUES (415,74,'menu-item-um_nav_public','2');
INSERT INTO `wp_postmeta` VALUES (416,101,'menu-item-um_nav_public','1');
INSERT INTO `wp_postmeta` VALUES (417,102,'menu-item-um_nav_public','2');
INSERT INTO `wp_postmeta` VALUES (418,90,'_edit_lock','1652223259:1');
INSERT INTO `wp_postmeta` VALUES (419,90,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (420,90,'um_content_restriction','a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (421,93,'_edit_lock','1652219847:1');
INSERT INTO `wp_postmeta` VALUES (422,93,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (423,93,'um_content_restriction','a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (424,7,'um_content_restriction','a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (425,68,'_oembed_738a7f7b56cefd6c92a34f21822cd2d6','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (426,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (427,68,'um_content_restriction','a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-04-28 09:00:35','2022-04-28 09:00:35','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-04-28 09:00:35','2022-04-28 09:00:35','',0,'http://pilots.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2022-04-28 09:00:35','2022-04-28 09:00:35','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://pilots.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2022-05-06 15:54:56','2022-05-06 12:54:56','',0,'http://pilots.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-04-28 09:00:35','2022-04-28 09:00:35','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://pilots.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2022-04-28 09:00:35','2022-04-28 09:00:35','',0,'http://pilots.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2022-04-28 13:32:49','2022-04-28 13:32:49','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-test-theme','','','2022-04-28 13:32:49','2022-04-28 13:32:49','',0,'http://pilots.local/wp-global-styles-test-theme/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2022-04-28 13:34:20','2022-04-28 10:34:20','<!-- wp:gallery {\"columns\":3,\"linkTo\":\"none\",\"className\":\"blue-block\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-3 is-cropped blue-block\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:shortcode -->\n[MEC id=\"56\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group -->\n\n<!-- wp:sbi/sbi-feed-block {\"className\":\"blue-block\"} /-->','Angaar (esileht)','','publish','closed','closed','','angaar','','','2022-05-11 01:54:53','2022-05-10 22:54:53','',0,'http://pilots.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2022-04-28 13:34:20','2022-04-28 13:34:20','<!-- wp:paragraph -->\n<p>Tere tulemast koju, piloot!</p>\n<!-- /wp:paragraph -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-04-28 13:34:20','2022-04-28 13:34:20','',7,'http://pilots.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2022-04-28 17:00:19','2022-04-28 14:00:19','<!-- wp:paragraph -->\n<p>Eestis pakuvad pakuvad koolitust mootorlennukitel ja purilennukitel lendama õppimiseks mitmed lennuklubid.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pädevuste järgi liigitatakse erapilootide koolitused ja pilooditunnistused järgnevalt:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>GPL (Glider Pilot Licence)</strong> – purilennuki piloodiluba</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>ULAPL (Ultra Light Pilot Licence)</strong> – ülikerglennuki piloodiluba</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>PPL (Private Pilot Licence)</strong> – erapiloodi luba (lennukil või helikopteril, ühe- või mitmemootorilisel)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Põhilisent toimub lennuõpe Tallinnas ning Tartus, purilennukil õpitakse lendama Põlvamaal Ridalis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Täpsemalt saad lugeda koolitusorganisatsioonide kodulehtedelt:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"http://www.naa.ee/\" target=\"_blank\" rel=\"noreferrer noopener\">Nordic Aviation Academy</a>&nbsp;– PPL lennuk, ühe- ja mitmemootorilised</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"http://www.pakkeravio.ee/\" target=\"_blank\" rel=\"noreferrer noopener\">Pakker Avio</a>&nbsp;– PPL lennuk ja helikopter, ühe- ja mitmemootorilised</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"http://www.purilend.ee/\" target=\"_blank\" rel=\"noreferrer noopener\">Ridali Lennuklubi</a>&nbsp;– purilend</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nõuded piloodile ja koolitustele on reguleeritud vastava määrusega:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.riigiteataja.ee/akt/13027944\">https://www.riigiteataja.ee/akt/13027944</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tervisenõuded:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.riigiteataja.ee/akt/973055\">https://www.riigiteataja.ee/akt/973055</a></p>\n<!-- /wp:paragraph -->','Lennukoolitused','','publish','closed','closed','','lennukoolitused','','','2022-04-29 14:26:55','2022-04-29 11:26:55','',0,'http://pilots.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2022-04-28 17:00:19','2022-04-28 14:00:19','<!-- wp:paragraph -->\n<p>Koolituste info tut</p>\n<!-- /wp:paragraph -->','Lennukoolitused','','inherit','closed','closed','','9-revision-v1','','','2022-04-28 17:00:19','2022-04-28 14:00:19','',9,'http://pilots.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2022-04-28 17:01:17','2022-04-28 14:01:17','<!-- wp:paragraph -->\n<p>tut je seadused i viited</p>\n<!-- /wp:paragraph -->','Seadusandlus, viited','','publish','closed','closed','','seadusandlus-viited','','','2022-04-28 17:01:17','2022-04-28 14:01:17','',0,'http://pilots.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2022-04-28 17:01:17','2022-04-28 14:01:17','<!-- wp:paragraph -->\n<p>tut je seadused i viited</p>\n<!-- /wp:paragraph -->','Seadusandlus, viited','','inherit','closed','closed','','11-revision-v1','','','2022-04-28 17:01:17','2022-04-28 14:01:17','',11,'http://pilots.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2022-05-11 00:56:22','2022-04-28 14:02:26',' ','','','publish','closed','closed','','13','','','2022-05-11 00:56:22','2022-05-10 21:56:22','',0,'http://pilots.local/?p=13',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2022-05-11 00:56:22','2022-04-28 14:02:27',' ','','','publish','closed','closed','','14','','','2022-05-11 00:56:22','2022-05-10 21:56:22','',0,'http://pilots.local/?p=14',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2022-04-29 01:27:47','2022-04-28 22:27:47','','EEL_logo2-removebg-preview','','inherit','open','closed','','eel_logo2-removebg-preview','','','2022-04-29 01:27:47','2022-04-28 22:27:47','',0,'http://pilots.local/wp-content/uploads/2022/04/EEL_logo2-removebg-preview.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (17,1,'2022-04-29 01:28:14','2022-04-28 22:28:14','http://pilots.local/wp-content/uploads/2022/04/cropped-EEL_logo2-removebg-preview.png','cropped-EEL_logo2-removebg-preview.png','','inherit','open','closed','','cropped-eel_logo2-removebg-preview-png','','','2022-04-29 01:28:14','2022-04-28 22:28:14','',0,'http://pilots.local/wp-content/uploads/2022/04/cropped-EEL_logo2-removebg-preview.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (18,1,'2022-04-29 01:28:25','2022-04-28 22:28:25','{\n    \"site_icon\": {\n        \"value\": 17,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-28 22:28:25\"\n    },\n    \"test-theme::custom_logo\": {\n        \"value\": 16,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-28 22:28:25\"\n    }\n}','','','trash','closed','closed','','55c093df-e14b-4432-91e7-2cf6048aa361','','','2022-04-29 01:28:25','2022-04-28 22:28:25','',0,'http://pilots.local/55c093df-e14b-4432-91e7-2cf6048aa361/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2022-04-29 13:06:09','2022-04-29 10:06:09','{\n    \"blogname\": {\n        \"value\": \"Eesti Erapilootide Liit\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-29 10:06:09\"\n    },\n    \"blogdescription\": {\n        \"value\": \"EEPL\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-29 10:06:09\"\n    }\n}','','','trash','closed','closed','','52426c00-ecd3-4faf-a86f-1f5e9a438e85','','','2022-04-29 13:06:09','2022-04-29 10:06:09','',0,'http://pilots.local/52426c00-ecd3-4faf-a86f-1f5e9a438e85/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2022-04-29 13:13:12','2022-04-29 10:13:12','','ffc07eeeff484c0670434af054d7be64','','inherit','open','closed','','ffc07eeeff484c0670434af054d7be64','','','2022-04-29 13:13:12','2022-04-29 10:13:12','',7,'http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (22,1,'2022-04-29 13:13:12','2022-04-29 10:13:12','','digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067','','inherit','open','closed','','digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067','','','2022-04-29 13:13:12','2022-04-29 10:13:12','',7,'http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (23,1,'2022-04-29 13:13:12','2022-04-29 10:13:12','','philip-myrtorp-iiqpxCg2GD4-unsplash','','inherit','open','closed','','philip-myrtorp-iiqpxcg2gd4-unsplash','','','2022-04-29 13:13:12','2022-04-29 10:13:12','',7,'http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (24,1,'2022-04-29 13:13:16','2022-04-29 10:13:16','<!-- wp:paragraph -->\n<p>Tere tulemast koju, piloot!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"blob:http://pilots.local/35e5f722-72e9-423c-b6d8-103c46482b1f\" alt=\"\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-04-29 13:13:16','2022-04-29 10:13:16','',7,'http://pilots.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2022-04-29 13:19:44','2022-04-29 10:19:44','<!-- wp:paragraph -->\n<p>Tere tulemast koju, piloot!</p>\n<!-- /wp:paragraph -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-04-29 13:19:44','2022-04-29 10:19:44','',7,'http://pilots.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2022-04-29 13:38:11','2022-04-29 10:38:11','<iframe title=\"Spotify Embed: Green Day Radio\" style=\"border-radius: 12px\" width=\"100%\" height=\"380\" frameborder=\"0\" allowfullscreen allow=\"autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture\" src=\"https://open.spotify.com/embed/playlist/37i9dQZF1E4wYWiDJuwz1b?si=154d1a755e8445ff&utm_source=oembed\"></iframe>','','','publish','closed','closed','','45ed0029205b7542d335d0b259867708','','','2022-04-29 13:38:11','2022-04-29 10:38:11','',0,'http://pilots.local/45ed0029205b7542d335d0b259867708/',0,'oembed_cache','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2022-04-29 14:26:55','2022-04-29 11:26:55','<!-- wp:paragraph -->\n<p>Eestis pakuvad pakuvad koolitust mootorlennukitel ja purilennukitel lendama õppimiseks mitmed lennuklubid.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pädevuste järgi liigitatakse erapilootide koolitused ja pilooditunnistused järgnevalt:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>GPL (Glider Pilot Licence)</strong> – purilennuki piloodiluba</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>ULAPL (Ultra Light Pilot Licence)</strong> – ülikerglennuki piloodiluba</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>PPL (Private Pilot Licence)</strong> – erapiloodi luba (lennukil või helikopteril, ühe- või mitmemootorilisel)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Põhilisent toimub lennuõpe Tallinnas ning Tartus, purilennukil õpitakse lendama Põlvamaal Ridalis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Täpsemalt saad lugeda koolitusorganisatsioonide kodulehtedelt:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"http://www.naa.ee/\" target=\"_blank\" rel=\"noreferrer noopener\">Nordic Aviation Academy</a>&nbsp;– PPL lennuk, ühe- ja mitmemootorilised</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"http://www.pakkeravio.ee/\" target=\"_blank\" rel=\"noreferrer noopener\">Pakker Avio</a>&nbsp;– PPL lennuk ja helikopter, ühe- ja mitmemootorilised</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"http://www.purilend.ee/\" target=\"_blank\" rel=\"noreferrer noopener\">Ridali Lennuklubi</a>&nbsp;– purilend</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nõuded piloodile ja koolitustele on reguleeritud vastava määrusega:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.riigiteataja.ee/akt/13027944\">https://www.riigiteataja.ee/akt/13027944</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tervisenõuded:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.riigiteataja.ee/akt/973055\">https://www.riigiteataja.ee/akt/973055</a></p>\n<!-- /wp:paragraph -->','Lennukoolitused','','inherit','closed','closed','','9-revision-v1','','','2022-04-29 14:26:55','2022-04-29 11:26:55','',9,'http://pilots.local/?p=27',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2022-04-29 16:40:32','2022-04-29 13:40:32','','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-04-29 16:40:32','2022-04-29 13:40:32','',7,'http://pilots.local/?p=28',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2022-04-29 17:17:13','2022-04-29 14:17:13','','poster','','inherit','open','closed','','poster','','','2022-04-29 17:17:13','2022-04-29 14:17:13','',0,'http://pilots.local/wp-content/uploads/2022/04/poster.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (30,1,'2022-04-29 17:17:23','2022-04-29 14:17:23','','clouds-handbroke','','inherit','open','closed','','clouds-handbroke','','','2022-04-29 17:17:23','2022-04-29 14:17:23','',0,'http://pilots.local/wp-content/uploads/2022/04/clouds-handbroke.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (31,1,'2022-04-29 17:42:52','2022-04-29 14:42:52','','clouds-bg-sm','','inherit','open','closed','','clouds-bg-sm','','','2022-04-29 17:42:52','2022-04-29 14:42:52','',0,'http://pilots.local/wp-content/uploads/2022/04/clouds-bg-sm.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (32,1,'2022-05-04 15:43:04','2022-05-04 12:43:04','','poster','','inherit','open','closed','','poster-2','','','2022-05-04 15:43:04','2022-05-04 12:43:04','',0,'http://pilots.local/wp-content/uploads/2022/05/poster.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (33,1,'2022-05-06 10:06:21','2022-05-06 07:06:21','<!-- wp:heading -->\n<h2>Eesti Erapilootide Liit</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Eesti Erapilootide Liit (EEL) asutati 8. jaanuaril 2003 tookord 32 harrastuspiloodi poolt eesmärgiga koondada Eesti Vabariigis eralennundusega tegelevaid ning eralennundusest huvitatud isikuid.<br>EEL liikmeteks on era- ja harrastuspiloodid, purilendurid, ülikerglennukite piloodid, professionaalsed piloodid, lennujuhid ja -instruktorid. Erinevate eluvaldkondade esindajad – kuid ühise nimetajaga – lennundusentusiastid. Liitu kuulumine on loomulikult vabatahtlikkuse alusel, liikmed ega juhatus ei saa tehtava töö eest tasu.</p>\n<!-- /wp:paragraph -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-05-06 10:06:21','2022-05-06 07:06:21','',7,'http://pilots.local/?p=33',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2022-05-06 10:11:36','2022-05-06 07:11:36','','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-05-06 10:11:36','2022-05-06 07:11:36','',7,'http://pilots.local/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2022-05-06 10:17:45','2022-05-06 07:17:45','<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-05-06 10:17:45','2022-05-06 07:17:45','',7,'http://pilots.local/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2022-05-06 10:40:56','2022-05-06 07:40:56','<!-- wp:gallery {\"linkTo\":\"none\",\"className\":\"blue-block\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped blue-block\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-05-06 10:40:56','2022-05-06 07:40:56','',7,'http://pilots.local/?p=37',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2022-05-06 10:51:14','2022-05-06 07:51:14','<!-- wp:gallery {\"linkTo\":\"none\",\"className\":\"blue-block\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped blue-block\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"unskew\"} -->\n<figure class=\"wp-block-image size-large unskew\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-05-06 10:51:14','2022-05-06 07:51:14','',7,'http://pilots.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2022-05-06 10:51:55','2022-05-06 07:51:55','<!-- wp:gallery {\"linkTo\":\"none\",\"className\":\"blue-block\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped blue-block\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"unskew\"} -->\n<figure class=\"wp-block-image size-large unskew\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"unskew\"} -->\n<figure class=\"wp-block-image size-large unskew\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"unskew\"} -->\n<figure class=\"wp-block-image size-large unskew\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-05-06 10:51:55','2022-05-06 07:51:55','',7,'http://pilots.local/?p=39',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2022-05-06 10:53:04','2022-05-06 07:53:04','<!-- wp:gallery {\"columns\":3,\"linkTo\":\"none\",\"className\":\"blue-block\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-3 is-cropped blue-block\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-05-06 10:53:04','2022-05-06 07:53:04','',7,'http://pilots.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2022-05-06 10:58:00','2022-05-06 07:58:00','[em_performers]','Performers','','publish','closed','closed','','performers','','','2022-05-06 10:58:00','2022-05-06 07:58:00','',0,'http://pilots.local/performers/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2022-05-06 10:58:00','2022-05-06 07:58:00','[em_sites]','Event Sites & Locations','','publish','closed','closed','','event-sites-locations','','','2022-05-06 10:58:00','2022-05-06 07:58:00','',0,'http://pilots.local/event-sites-locations/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2022-05-06 10:58:00','2022-05-06 07:58:00','[em_events]','Events','','publish','closed','closed','','events','','','2022-05-06 10:58:00','2022-05-06 07:58:00','',0,'http://pilots.local/events/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2022-05-06 10:58:00','2022-05-06 07:58:00','[em_booking]','Booking','','publish','closed','closed','','booking','','','2022-05-06 10:58:00','2022-05-06 07:58:00','',0,'http://pilots.local/booking/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2022-05-06 10:58:00','2022-05-06 07:58:00','[em_profile]','User Profile','','publish','closed','closed','','user-profile','','','2022-05-06 10:58:00','2022-05-06 07:58:00','',0,'http://pilots.local/user-profile/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2022-05-06 10:58:00','2022-05-06 07:58:00','[em_event_types]','Event Types','','publish','closed','closed','','event-types','','','2022-05-06 10:58:00','2022-05-06 07:58:00','',0,'http://pilots.local/event-types/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2022-05-06 10:58:00','2022-05-06 07:58:00','[em_event_submit_form]','Submit Event','','publish','closed','closed','','submit-event','','','2022-05-06 10:58:00','2022-05-06 07:58:00','',0,'http://pilots.local/submit-event/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2022-05-06 10:58:00','2022-05-06 07:58:00','[em_booking_details]','Booking Details','','publish','closed','closed','','booking-details','','','2022-05-06 10:58:00','2022-05-06 07:58:00','',0,'http://pilots.local/booking-details/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2022-05-06 10:58:01','2022-05-06 07:58:01','[em_event_organizers]','Event Organizers','','publish','closed','closed','','event-organizers','','','2022-05-06 10:58:01','2022-05-06 07:58:01','',0,'http://pilots.local/event-organizers/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2022-05-06 10:59:42','2022-05-06 07:59:42','<p>See on testiks</p>','Lennuüritus','','publish','open','closed','','lennuuritus','','','2022-05-06 11:04:42','2022-05-06 08:04:42','',0,'http://pilots.local/event/lennuuritus/',0,'em_event','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2022-05-06 11:05:40','2022-05-06 08:05:40','<!-- wp:gallery {\"columns\":3,\"linkTo\":\"none\",\"className\":\"blue-block\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-3 is-cropped blue-block\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:shortcode -->\n[em_event id=\'50\']\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-05-06 11:05:40','2022-05-06 08:05:40','',7,'http://pilots.local/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2022-05-06 11:15:17','2022-05-06 08:15:17','<p>See on testüritus</p>','Lennuüritus','','publish','open','closed','','lennuuritus','','','2022-05-06 11:15:17','2022-05-06 08:15:17','',0,'http://pilots.local/events/lennuuritus/',0,'mec-events','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2022-05-06 11:15:51','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2022-05-06 11:15:51','0000-00-00 00:00:00','',0,'http://pilots.local/?p=54',0,'post','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2022-05-06 11:16:56','2022-05-06 08:16:56','<!-- wp:gallery {\"columns\":3,\"linkTo\":\"none\",\"className\":\"blue-block\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-3 is-cropped blue-block\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-05-06 11:16:56','2022-05-06 08:16:56','',7,'http://pilots.local/?p=55',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2022-05-06 11:19:13','2022-05-06 08:19:13','','Kaart','','publish','closed','closed','','kaart','','','2022-05-06 11:19:13','2022-05-06 08:19:13','',0,'http://pilots.local/mec_calendars/kaart/',0,'mec_calendars','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2022-05-06 11:19:52','2022-05-06 08:19:52','<!-- wp:gallery {\"columns\":3,\"linkTo\":\"none\",\"className\":\"blue-block\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-3 is-cropped blue-block\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:shortcode -->\n[MEC id=\"56\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-05-06 11:19:52','2022-05-06 08:19:52','',7,'http://pilots.local/?p=57',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2022-05-06 11:20:46','2022-05-06 08:20:46','<!-- wp:gallery {\"columns\":3,\"linkTo\":\"none\",\"className\":\"blue-block\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-3 is-cropped blue-block\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:shortcode -->\n[MEC id=\"56\" class=\"light-block\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-05-06 11:20:46','2022-05-06 08:20:46','',7,'http://pilots.local/?p=58',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2022-05-06 11:30:12','2022-05-06 08:30:12','<!-- wp:gallery {\"columns\":3,\"linkTo\":\"none\",\"className\":\"blue-block\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-3 is-cropped blue-block\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:shortcode -->\n[MEC id=\"56\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Angaar','','inherit','closed','closed','','7-revision-v1','','','2022-05-06 11:30:12','2022-05-06 08:30:12','',7,'http://pilots.local/?p=59',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2022-05-06 11:43:43','2022-05-06 08:43:43','','Teine üritus','','publish','open','closed','','teine-uritus','','','2022-05-06 11:43:43','2022-05-06 08:43:43','',0,'http://pilots.local/?post_type=mec-events&#038;p=60',0,'mec-events','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2022-05-06 13:52:09','2022-05-06 10:52:09','<!-- wp:gallery {\"columns\":3,\"linkTo\":\"none\",\"className\":\"blue-block\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-3 is-cropped blue-block\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:shortcode -->\n[MEC id=\"56\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Angaar (esileht)','','inherit','closed','closed','','7-revision-v1','','','2022-05-06 13:52:09','2022-05-06 10:52:09','',7,'http://pilots.local/?p=61',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2022-05-06 15:29:47','2022-05-06 12:29:47','<!-- wp:paragraph -->\n<p>placeholder text</p>\n<!-- /wp:paragraph -->','Meist','','publish','closed','closed','','meist','','','2022-05-06 15:29:47','2022-05-06 12:29:47','',0,'http://pilots.local/?page_id=62',0,'page','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2022-05-06 15:29:47','2022-05-06 12:29:47','<!-- wp:paragraph -->\n<p>placeholder text</p>\n<!-- /wp:paragraph -->','Meist','','inherit','closed','closed','','62-revision-v1','','','2022-05-06 15:29:47','2022-05-06 12:29:47','',62,'http://pilots.local/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2022-05-06 15:30:11','2022-05-06 12:30:11','<!-- wp:paragraph -->\n<p>plaecholder text</p>\n<!-- /wp:paragraph -->','Üritused & galerii','','publish','closed','closed','','uritused-galerii','','','2022-05-06 15:30:11','2022-05-06 12:30:11','',0,'http://pilots.local/?page_id=64',0,'page','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2022-05-06 15:30:11','2022-05-06 12:30:11','<!-- wp:paragraph -->\n<p>plaecholder text</p>\n<!-- /wp:paragraph -->','Üritused & galerii','','inherit','closed','closed','','64-revision-v1','','','2022-05-06 15:30:11','2022-05-06 12:30:11','',64,'http://pilots.local/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2022-05-06 15:30:27','2022-05-06 12:30:27','<!-- wp:shortcode -->\n[ultimate_maps id=\"1\"]\n<!-- /wp:shortcode -->','Lennuväljad','','publish','closed','closed','','lennuvaljad','','','2022-05-10 22:39:14','2022-05-10 19:39:14','',0,'http://pilots.local/?page_id=66',0,'page','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2022-05-06 15:30:27','2022-05-06 12:30:27','<!-- wp:paragraph -->\n<p>placegolder text</p>\n<!-- /wp:paragraph -->','Lennuväljad','','inherit','closed','closed','','66-revision-v1','','','2022-05-06 15:30:27','2022-05-06 12:30:27','',66,'http://pilots.local/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2022-05-06 15:30:46','2022-05-06 12:30:46','<!-- wp:group {\"className\":\"blue-block\"} -->\n<div class=\"wp-block-group blue-block\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#f5f5ff\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#f5f5ff\"><strong>Lennundusteave</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#f5f5ff\"}},\"className\":\"text-block description-text\"} -->\n<p class=\"text-block description-text has-text-color\" style=\"color:#f5f5ff\"><a href=\"https://aim.eans.ee/\">Estonian AIP</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:heading -->\n<h2>NOTAM teated</h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"className\":\"mt-5\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"wrap\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons mt-5\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#005f90\",\"text\":\"#f5f5ff\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/notampib.pdf\">NOTAM PIB (PDF)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoHTML.html\">NOTAM PIB (HTML)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoXML.xml\">NOTAM PIB (XML)</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','publish','closed','closed','','eesti-lennuinfo','','','2022-05-11 02:18:19','2022-05-10 23:18:19','',0,'http://pilots.local/?page_id=68',0,'page','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2022-05-06 15:30:46','2022-05-06 12:30:46','<!-- wp:paragraph -->\n<p>pleissholder tekst</p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-06 15:30:46','2022-05-06 12:30:46','',68,'http://pilots.local/?p=69',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2022-05-06 15:31:02','2022-05-06 12:31:02','<!-- wp:paragraph -->\n<p>placeholder tekst</p>\n<!-- /wp:paragraph -->','Kontakt','','publish','closed','closed','','kontakt','','','2022-05-06 15:31:02','2022-05-06 12:31:02','',0,'http://pilots.local/?page_id=70',0,'page','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2022-05-06 15:31:02','2022-05-06 12:31:02','<!-- wp:paragraph -->\n<p>placeholder tekst</p>\n<!-- /wp:paragraph -->','Kontakt','','inherit','closed','closed','','70-revision-v1','','','2022-05-06 15:31:02','2022-05-06 12:31:02','',70,'http://pilots.local/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2022-05-06 15:31:19','2022-05-06 12:31:19','<!-- wp:shortcode -->\n[ultimatemember form_id=\"88\"]	\n<!-- /wp:shortcode -->','Kasutajaprofiilid','','publish','closed','closed','','kasutajaprofiilid','','','2022-05-11 00:33:23','2022-05-10 21:33:23','',0,'http://pilots.local/?page_id=72',0,'page','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2022-05-06 15:31:19','2022-05-06 12:31:19','<!-- wp:paragraph -->\n<p>ainult sisselogitud kasutajatele!</p>\n<!-- /wp:paragraph -->','Kasutajaprofiilid','','inherit','closed','closed','','72-revision-v1','','','2022-05-06 15:31:19','2022-05-06 12:31:19','',72,'http://pilots.local/?p=73',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2022-05-11 00:56:23','2022-05-06 12:33:33',' ','','','publish','closed','closed','','74','','','2022-05-11 00:56:23','2022-05-10 21:56:23','',0,'http://pilots.local/?p=74',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2022-05-11 00:56:22','2022-05-06 12:33:33',' ','','','publish','closed','closed','','75','','','2022-05-11 00:56:22','2022-05-10 21:56:22','',0,'http://pilots.local/?p=75',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2022-05-11 00:56:22','2022-05-06 12:33:33',' ','','','publish','closed','closed','','76','','','2022-05-11 00:56:22','2022-05-10 21:56:22','',0,'http://pilots.local/?p=76',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2022-05-11 00:56:22','2022-05-06 12:33:33',' ','','','publish','closed','closed','','77','','','2022-05-11 00:56:22','2022-05-10 21:56:22','',0,'http://pilots.local/?p=77',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2022-05-11 00:56:22','2022-05-06 12:33:33',' ','','','publish','closed','closed','','78','','','2022-05-11 00:56:22','2022-05-10 21:56:22','',0,'http://pilots.local/?p=78',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2022-05-11 00:56:22','2022-05-06 12:33:33',' ','','','publish','closed','closed','','79','','','2022-05-11 00:56:22','2022-05-10 21:56:22','',0,'http://pilots.local/?p=79',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2022-05-06 15:54:56','2022-05-06 12:54:56','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://pilots.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2022-05-06 15:54:56','2022-05-06 12:54:56','',2,'http://pilots.local/?p=80',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2022-05-09 13:42:11','2022-05-09 10:42:11','<!-- wp:gallery {\"columns\":3,\"linkTo\":\"none\",\"className\":\"blue-block\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-3 is-cropped blue-block\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:shortcode -->\n[MEC id=\"56\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:sbi/sbi-feed-block {\"className\":\"blue-block\"} /-->','Angaar (esileht)','','inherit','closed','closed','','7-revision-v1','','','2022-05-09 13:42:11','2022-05-09 10:42:11','',7,'http://pilots.local/?p=81',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2022-05-10 22:25:58','2022-05-10 19:25:58','<!-- wp:shortcode -->\n[ultimate_maps id=\"1\"]\n<!-- /wp:shortcode -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-10 22:25:58','2022-05-10 19:25:58','',68,'http://pilots.local/?p=82',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2022-05-10 22:38:49','2022-05-10 19:38:49','<!-- wp:paragraph -->\n<p>siia tuleb lennuinfo</p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-10 22:38:49','2022-05-10 19:38:49','',68,'http://pilots.local/?p=83',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2022-05-10 22:39:14','2022-05-10 19:39:14','<!-- wp:shortcode -->\n[ultimate_maps id=\"1\"]\n<!-- /wp:shortcode -->','Lennuväljad','','inherit','closed','closed','','66-revision-v1','','','2022-05-10 22:39:14','2022-05-10 19:39:14','',66,'http://pilots.local/?p=84',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2022-05-10 23:53:09','2022-05-10 20:53:09','','Default Registration','','publish','closed','closed','','default-registration','','','2022-05-10 23:53:09','2022-05-10 20:53:09','',0,'http://pilots.local/um_form/default-registration/',0,'um_form','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2022-05-10 23:53:09','2022-05-10 20:53:09','','Default Login','','publish','closed','closed','','default-login','','','2022-05-10 23:53:09','2022-05-10 20:53:09','',0,'http://pilots.local/um_form/default-login/',0,'um_form','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2022-05-10 23:53:09','2022-05-10 20:53:09','','Default Profile','','publish','closed','closed','','default-profile','','','2022-05-10 23:53:09','2022-05-10 20:53:09','',0,'http://pilots.local/um_form/default-profile/',0,'um_form','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2022-05-10 23:53:09','2022-05-10 20:53:09','','Members','','publish','closed','closed','','members','','','2022-05-11 00:32:43','2022-05-10 21:32:43','',0,'http://pilots.local/um_directory/members/',0,'um_directory','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2022-05-10 23:53:26','2022-05-10 20:53:26','[ultimatemember form_id=\"87\"]','User','','publish','closed','closed','','user','','','2022-05-10 23:53:26','2022-05-10 20:53:26','',0,'http://pilots.local/user/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2022-05-10 23:53:26','2022-05-10 20:53:26','<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:shortcode -->\n[ultimatemember form_id=\"86\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Logi sisse','','publish','closed','closed','','login','','','2022-05-11 00:59:05','2022-05-10 21:59:05','',0,'http://pilots.local/login/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2022-05-10 23:53:26','2022-05-10 20:53:26','[ultimatemember form_id=\"85\"]','Register','','publish','closed','closed','','register','','','2022-05-10 23:53:26','2022-05-10 20:53:26','',0,'http://pilots.local/register/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2022-05-10 23:53:26','2022-05-10 20:53:26','[ultimatemember form_id=\"88\"]','Members','','publish','closed','closed','','members','','','2022-05-10 23:53:26','2022-05-10 20:53:26','',0,'http://pilots.local/members/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2022-05-10 23:53:26','2022-05-10 20:53:26','','Logi välja','','publish','closed','closed','','logout','','','2022-05-11 00:57:26','2022-05-10 21:57:26','',0,'http://pilots.local/logout/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2022-05-10 23:53:26','2022-05-10 20:53:26','[ultimatemember_account]','Account','','publish','closed','closed','','account','','','2022-05-10 23:53:26','2022-05-10 20:53:26','',0,'http://pilots.local/account/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2022-05-10 23:53:26','2022-05-10 20:53:26','[ultimatemember_password]','Password Reset','','publish','closed','closed','','password-reset','','','2022-05-10 23:53:26','2022-05-10 20:53:26','',0,'http://pilots.local/password-reset/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2022-05-11 00:16:20','2022-05-10 21:16:20','','14580310081598811066-512','','inherit','open','closed','','14580310081598811066-512','','','2022-05-11 00:16:20','2022-05-10 21:16:20','',0,'http://pilots.local/wp-content/uploads/2022/05/14580310081598811066-512.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (97,1,'2022-05-11 00:20:55','2022-05-10 21:20:55','','Cessna-172n','','inherit','open','closed','','cessna-172n','','','2022-05-11 00:20:55','2022-05-10 21:20:55','',0,'http://pilots.local/wp-content/uploads/2022/05/Cessna-172n.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (99,1,'2022-05-11 00:33:08','2022-05-10 21:33:08','','Kasutajaprofiilid','','inherit','closed','closed','','72-revision-v1','','','2022-05-11 00:33:08','2022-05-10 21:33:08','',72,'http://pilots.local/?p=99',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2022-05-11 00:33:22','2022-05-10 21:33:22','<!-- wp:shortcode -->\n[ultimatemember form_id=\"88\"]	\n<!-- /wp:shortcode -->','Kasutajaprofiilid','','inherit','closed','closed','','72-revision-v1','','','2022-05-11 00:33:22','2022-05-10 21:33:22','',72,'http://pilots.local/?p=100',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2022-05-11 00:56:23','2022-05-10 21:43:17','','Logi sisse','','publish','closed','closed','','logi-sisse','','','2022-05-11 00:56:23','2022-05-10 21:56:23','',0,'http://pilots.local/?p=101',9,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2022-05-11 00:56:23','2022-05-10 21:43:17','','Logi välja','','publish','closed','closed','','logi-valja','','','2022-05-11 00:56:23','2022-05-10 21:56:23','',0,'http://pilots.local/?p=102',10,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2022-05-11 00:56:57','2022-05-10 21:56:57','<p>[ultimatemember form_id=\"86\"]</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Logi sisse','','inherit','closed','closed','','90-revision-v1','','','2022-05-11 00:56:57','2022-05-10 21:56:57','',90,'http://pilots.local/?p=103',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2022-05-11 00:57:25','2022-05-10 21:57:25','','Logi välja','','inherit','closed','closed','','93-revision-v1','','','2022-05-11 00:57:25','2022-05-10 21:57:25','',93,'http://pilots.local/?p=104',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2022-05-11 00:58:43','2022-05-10 21:58:43','<p>[ultimatemember form_id=\"86\"]</p>\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:shortcode -->\n[ultimatemember form_id=\"86\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Logi sisse','','inherit','closed','closed','','90-revision-v1','','','2022-05-11 00:58:43','2022-05-10 21:58:43','',90,'http://pilots.local/?p=105',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2022-05-11 00:59:04','2022-05-10 21:59:04','<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:shortcode -->\n[ultimatemember form_id=\"86\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Logi sisse','','inherit','closed','closed','','90-revision-v1','','','2022-05-11 00:59:04','2022-05-10 21:59:04','',90,'http://pilots.local/?p=106',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2022-05-11 01:54:52','2022-05-10 22:54:52','<!-- wp:gallery {\"columns\":3,\"linkTo\":\"none\",\"className\":\"blue-block\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-3 is-cropped blue-block\"><!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/philip-myrtorp-iiqpxCg2GD4-unsplash-scaled.jpeg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/ffc07eeeff484c0670434af054d7be64.jpeg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://pilots.local/wp-content/uploads/2022/04/digital-camo-seamless-camouflage-pattern-military-texture-forest-green-colors-vector-print-on-fabric-700-225515067.jpeg\" alt=\"\" class=\"wp-image-22\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:shortcode -->\n[MEC id=\"56\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group -->\n\n<!-- wp:sbi/sbi-feed-block {\"className\":\"blue-block\"} /-->','Angaar (esileht)','','inherit','closed','closed','','7-revision-v1','','','2022-05-11 01:54:52','2022-05-10 22:54:52','',7,'http://pilots.local/?p=107',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2022-05-11 02:00:52','2022-05-10 23:00:52','<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"><strong>Lennundusteave</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://aim.eans.ee/\" target=\"_blank\" rel=\"noreferrer noopener\">https://aim.eans.ee/</a></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-11 02:00:52','2022-05-10 23:00:52','',68,'http://pilots.local/?p=109',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2022-05-11 02:08:22','2022-05-10 23:08:22','<!-- wp:group {\"className\":\"blue-block\"} -->\n<div class=\"wp-block-group blue-block\"><!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"><strong>Lennundusteave</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://aim.eans.ee/\" target=\"_blank\" rel=\"noreferrer noopener\">https://aim.eans.ee/</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#005f90\",\"text\":\"#f5f5ff\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/notampib.pdf\">NOTAM PIB (PDF)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoHTML.html\">NOTAM PIB (HTML)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoXML.xml\">NOTAM PIB (XML)</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-11 02:08:22','2022-05-10 23:08:22','',68,'http://pilots.local/?p=111',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2022-05-11 02:09:38','2022-05-10 23:09:38','<!-- wp:group {\"className\":\"blue-block\"} -->\n<div class=\"wp-block-group blue-block\"><!-- wp:paragraph {\"className\":\"light-title\",\"fontSize\":\"large\"} -->\n<p class=\"light-title has-large-font-size\"><strong>Lennundusteave</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"text-block\"} -->\n<p class=\"text-block\"><a href=\"https://aim.eans.ee/\" target=\"_blank\" rel=\"noreferrer noopener\">https://aim.eans.ee/</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#005f90\",\"text\":\"#f5f5ff\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/notampib.pdf\">NOTAM PIB (PDF)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoHTML.html\">NOTAM PIB (HTML)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoXML.xml\">NOTAM PIB (XML)</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-11 02:09:38','2022-05-10 23:09:38','',68,'http://pilots.local/?p=112',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2022-05-11 02:10:09','2022-05-10 23:10:09','<!-- wp:group {\"className\":\"blue-block\"} -->\n<div class=\"wp-block-group blue-block\"><!-- wp:paragraph {\"className\":\"light-title\",\"fontSize\":\"large\"} -->\n<p class=\"light-title has-large-font-size\"><strong>Lennundusteave</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"text-block description-text\"} -->\n<p class=\"text-block description-text\"><a href=\"https://aim.eans.ee/\" target=\"_blank\" rel=\"noreferrer noopener\">https://aim.eans.ee/</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#005f90\",\"text\":\"#f5f5ff\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/notampib.pdf\">NOTAM PIB (PDF)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoHTML.html\">NOTAM PIB (HTML)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoXML.xml\">NOTAM PIB (XML)</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-11 02:10:09','2022-05-10 23:10:09','',68,'http://pilots.local/?p=113',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2022-05-11 02:12:37','2022-05-10 23:12:37','<!-- wp:group {\"className\":\"blue-block\"} -->\n<div class=\"wp-block-group blue-block\"><!-- wp:paragraph {\"className\":\"light-title\",\"fontSize\":\"large\"} -->\n<p class=\"light-title has-large-font-size\"><strong>Lennundusteave</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"text-block description-text\"} -->\n<p class=\"text-block description-text\"><a href=\"https://aim.eans.ee/\">Estonian AIP</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#005f90\",\"text\":\"#f5f5ff\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/notampib.pdf\">NOTAM PIB (PDF)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoHTML.html\">NOTAM PIB (HTML)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoXML.xml\">NOTAM PIB (XML)</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-11 02:12:37','2022-05-10 23:12:37','',68,'http://pilots.local/?p=114',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2022-05-11 02:13:53','2022-05-10 23:13:53','<!-- wp:group {\"className\":\"blue-block\"} -->\n<div class=\"wp-block-group blue-block\"><!-- wp:paragraph {\"className\":\"light-title\",\"fontSize\":\"large\"} -->\n<p class=\"light-title has-large-font-size\"><strong>Lennundusteave</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"text-block description-text\"} -->\n<p class=\"text-block description-text\"><a href=\"https://aim.eans.ee/\">Estonian AIP</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:heading {\"className\":\"light-title\"} -->\n<h2 class=\"light-title\">NOTAM teated</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#005f90\",\"text\":\"#f5f5ff\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/notampib.pdf\">NOTAM PIB (PDF)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoHTML.html\">NOTAM PIB (HTML)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoXML.xml\">NOTAM PIB (XML)</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-11 02:13:53','2022-05-10 23:13:53','',68,'http://pilots.local/?p=115',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2022-05-11 02:14:32','2022-05-10 23:14:32','<!-- wp:group {\"className\":\"blue-block\"} -->\n<div class=\"wp-block-group blue-block\"><!-- wp:paragraph {\"className\":\"light-title\",\"fontSize\":\"large\"} -->\n<p class=\"light-title has-large-font-size\"><strong>Lennundusteave</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"text-block description-text\"} -->\n<p class=\"text-block description-text\"><a href=\"https://aim.eans.ee/\">Estonian AIP</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:heading {\"className\":\"light-title\"} -->\n<h2 class=\"light-title\">NOTAM teated</h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#005f90\",\"text\":\"#f5f5ff\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/notampib.pdf\">NOTAM PIB (PDF)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoHTML.html\">NOTAM PIB (HTML)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoXML.xml\">NOTAM PIB (XML)</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-11 02:14:32','2022-05-10 23:14:32','',68,'http://pilots.local/?p=116',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2022-05-11 02:14:49','2022-05-10 23:14:49','<!-- wp:group {\"className\":\"blue-block\"} -->\n<div class=\"wp-block-group blue-block\"><!-- wp:paragraph {\"className\":\"light-title\",\"fontSize\":\"large\"} -->\n<p class=\"light-title has-large-font-size\"><strong>Lennundusteave</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"text-block description-text\"} -->\n<p class=\"text-block description-text\"><a href=\"https://aim.eans.ee/\">Estonian AIP</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:heading -->\n<h2>NOTAM teated</h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#005f90\",\"text\":\"#f5f5ff\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/notampib.pdf\">NOTAM PIB (PDF)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoHTML.html\">NOTAM PIB (HTML)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoXML.xml\">NOTAM PIB (XML)</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-11 02:14:49','2022-05-10 23:14:49','',68,'http://pilots.local/?p=117',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2022-05-11 02:16:01','2022-05-10 23:16:01','<!-- wp:group {\"className\":\"blue-block\"} -->\n<div class=\"wp-block-group blue-block\"><!-- wp:paragraph {\"className\":\"light-title\",\"fontSize\":\"large\"} -->\n<p class=\"light-title has-large-font-size\"><strong>Lennundusteave</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"text-block description-text\"} -->\n<p class=\"text-block description-text\"><a href=\"https://aim.eans.ee/\">Estonian AIP</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:heading -->\n<h2>NOTAM teated</h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"className\":\"mt-3\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-buttons mt-3\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#005f90\",\"text\":\"#f5f5ff\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/notampib.pdf\">NOTAM PIB (PDF)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoHTML.html\">NOTAM PIB (HTML)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoXML.xml\">NOTAM PIB (XML)</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-11 02:16:01','2022-05-10 23:16:01','',68,'http://pilots.local/?p=119',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2022-05-11 02:16:14','2022-05-10 23:16:14','<!-- wp:group {\"className\":\"blue-block\"} -->\n<div class=\"wp-block-group blue-block\"><!-- wp:paragraph {\"className\":\"light-title\",\"fontSize\":\"large\"} -->\n<p class=\"light-title has-large-font-size\"><strong>Lennundusteave</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"text-block description-text\"} -->\n<p class=\"text-block description-text\"><a href=\"https://aim.eans.ee/\">Estonian AIP</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:heading -->\n<h2>NOTAM teated</h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"className\":\"mt-5\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-buttons mt-5\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#005f90\",\"text\":\"#f5f5ff\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/notampib.pdf\">NOTAM PIB (PDF)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoHTML.html\">NOTAM PIB (HTML)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoXML.xml\">NOTAM PIB (XML)</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-11 02:16:14','2022-05-10 23:16:14','',68,'http://pilots.local/?p=120',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2022-05-11 02:16:55','2022-05-10 23:16:55','<!-- wp:group {\"className\":\"blue-block\"} -->\n<div class=\"wp-block-group blue-block\"><!-- wp:paragraph {\"className\":\"light-title\",\"fontSize\":\"large\"} -->\n<p class=\"light-title has-large-font-size\"><strong>Lennundusteave</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"text-block description-text\"} -->\n<p class=\"text-block description-text\"><a href=\"https://aim.eans.ee/\">Estonian AIP</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:heading -->\n<h2>NOTAM teated</h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"className\":\"mt-5\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"wrap\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons mt-5\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#005f90\",\"text\":\"#f5f5ff\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/notampib.pdf\">NOTAM PIB (PDF)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoHTML.html\">NOTAM PIB (HTML)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoXML.xml\">NOTAM PIB (XML)</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-11 02:16:55','2022-05-10 23:16:55','',68,'http://pilots.local/?p=121',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2022-05-11 02:17:38','2022-05-10 23:17:38','<!-- wp:group {\"className\":\"blue-block\"} -->\n<div class=\"wp-block-group blue-block\"><!-- wp:heading -->\n<h2><strong>Lennundusteave</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"className\":\"text-block description-text\"} -->\n<p class=\"text-block description-text\"><a href=\"https://aim.eans.ee/\">Estonian AIP</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:heading -->\n<h2>NOTAM teated</h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"className\":\"mt-5\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"wrap\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons mt-5\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#005f90\",\"text\":\"#f5f5ff\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/notampib.pdf\">NOTAM PIB (PDF)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoHTML.html\">NOTAM PIB (HTML)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoXML.xml\">NOTAM PIB (XML)</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-11 02:17:38','2022-05-10 23:17:38','',68,'http://pilots.local/?p=122',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2022-05-11 02:18:18','2022-05-10 23:18:18','<!-- wp:group {\"className\":\"blue-block\"} -->\n<div class=\"wp-block-group blue-block\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#f5f5ff\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#f5f5ff\"><strong>Lennundusteave</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#f5f5ff\"}},\"className\":\"text-block description-text\"} -->\n<p class=\"text-block description-text has-text-color\" style=\"color:#f5f5ff\"><a href=\"https://aim.eans.ee/\">Estonian AIP</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"className\":\"light-block\"} -->\n<div class=\"wp-block-group light-block\"><!-- wp:heading -->\n<h2>NOTAM teated</h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"className\":\"mt-5\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"wrap\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons mt-5\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#005f90\",\"text\":\"#f5f5ff\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/notampib.pdf\">NOTAM PIB (PDF)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoHTML.html\">NOTAM PIB (HTML)</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"style\":{\"color\":{\"text\":\"#f5f5ff\",\"background\":\"#005f90\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:0px;background-color:#005f90;color:#f5f5ff\" rel=\"https://aim.eans.ee/notampib/EEareaPIBtoXML.xml\">NOTAM PIB (XML)</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Eesti lennuinfo','','inherit','closed','closed','','68-revision-v1','','','2022-05-11 02:18:18','2022-05-10 23:18:18','',68,'http://pilots.local/?p=123',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_sbi_feed_caches`
--

DROP TABLE IF EXISTS `wp_sbi_feed_caches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_sbi_feed_caches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `feed_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cache_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cache_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cron_update` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `feed_id` (`feed_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_sbi_feed_caches`
--

LOCK TABLES `wp_sbi_feed_caches` WRITE;
/*!40000 ALTER TABLE `wp_sbi_feed_caches` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_sbi_feed_caches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_sbi_feeds`
--

DROP TABLE IF EXISTS `wp_sbi_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_sbi_feeds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `feed_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `feed_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `author` bigint(20) unsigned NOT NULL DEFAULT '1',
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `last_modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author` (`author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_sbi_feeds`
--

LOCK TABLES `wp_sbi_feeds` WRITE;
/*!40000 ALTER TABLE `wp_sbi_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_sbi_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_sbi_instagram_feed_locator`
--

DROP TABLE IF EXISTS `wp_sbi_instagram_feed_locator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_sbi_instagram_feed_locator` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `feed_id` varchar(50) NOT NULL DEFAULT '',
  `post_id` bigint(20) unsigned NOT NULL,
  `html_location` varchar(50) NOT NULL DEFAULT 'unknown',
  `shortcode_atts` longtext NOT NULL,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feed_id` (`feed_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_sbi_instagram_feed_locator`
--

LOCK TABLES `wp_sbi_instagram_feed_locator` WRITE;
/*!40000 ALTER TABLE `wp_sbi_instagram_feed_locator` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_sbi_instagram_feed_locator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_sbi_instagram_feeds_posts`
--

DROP TABLE IF EXISTS `wp_sbi_instagram_feeds_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_sbi_instagram_feeds_posts` (
  `record_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) unsigned NOT NULL,
  `instagram_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `feed_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `hashtag` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`record_id`),
  KEY `hashtag` (`hashtag`(191)),
  KEY `feed_id` (`feed_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_sbi_instagram_feeds_posts`
--

LOCK TABLES `wp_sbi_instagram_feeds_posts` WRITE;
/*!40000 ALTER TABLE `wp_sbi_instagram_feeds_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_sbi_instagram_feeds_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_sbi_instagram_posts`
--

DROP TABLE IF EXISTS `wp_sbi_instagram_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_sbi_instagram_posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `instagram_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `time_stamp` datetime DEFAULT NULL,
  `top_time_stamp` datetime DEFAULT NULL,
  `json_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `media_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sizes` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `aspect_ratio` decimal(4,2) NOT NULL DEFAULT '0.00',
  `images_done` tinyint(1) NOT NULL DEFAULT '0',
  `last_requested` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_sbi_instagram_posts`
--

LOCK TABLES `wp_sbi_instagram_posts` WRITE;
/*!40000 ALTER TABLE `wp_sbi_instagram_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_sbi_instagram_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_sbi_sources`
--

DROP TABLE IF EXISTS `wp_sbi_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_sbi_sources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `account_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `privilege` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `access_token` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `username` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `info` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `error` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `expires` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `author` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `account_type` (`account_type`(191)),
  KEY `author` (`author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_sbi_sources`
--

LOCK TABLES `wp_sbi_sources` WRITE;
/*!40000 ALTER TABLE `wp_sbi_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_sbi_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
INSERT INTO `wp_term_relationships` VALUES (13,3,0);
INSERT INTO `wp_term_relationships` VALUES (14,3,0);
INSERT INTO `wp_term_relationships` VALUES (50,4,0);
INSERT INTO `wp_term_relationships` VALUES (53,5,0);
INSERT INTO `wp_term_relationships` VALUES (53,7,0);
INSERT INTO `wp_term_relationships` VALUES (53,8,0);
INSERT INTO `wp_term_relationships` VALUES (74,3,0);
INSERT INTO `wp_term_relationships` VALUES (75,3,0);
INSERT INTO `wp_term_relationships` VALUES (76,3,0);
INSERT INTO `wp_term_relationships` VALUES (77,3,0);
INSERT INTO `wp_term_relationships` VALUES (78,3,0);
INSERT INTO `wp_term_relationships` VALUES (79,3,0);
INSERT INTO `wp_term_relationships` VALUES (101,3,0);
INSERT INTO `wp_term_relationships` VALUES (102,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,10);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'em_event_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'mec_category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'mec_category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'mec_location','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'mec_organizer','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (1,4,'em_color','3DFFA2');
INSERT INTO `wp_termmeta` VALUES (2,4,'em_type_text_color','');
INSERT INTO `wp_termmeta` VALUES (3,4,'em_age_group','all');
INSERT INTO `wp_termmeta` VALUES (4,4,'em_image_id',NULL);
INSERT INTO `wp_termmeta` VALUES (5,4,'em_description',NULL);
INSERT INTO `wp_termmeta` VALUES (6,4,'em_custom_group',NULL);
INSERT INTO `wp_termmeta` VALUES (7,7,'address','Kuressaare Lennujaam');
INSERT INTO `wp_termmeta` VALUES (8,7,'latitude','0');
INSERT INTO `wp_termmeta` VALUES (9,7,'longitude','0');
INSERT INTO `wp_termmeta` VALUES (10,7,'thumbnail','');
INSERT INTO `wp_termmeta` VALUES (11,8,'tel','');
INSERT INTO `wp_termmeta` VALUES (12,8,'email','peeter@pakiraam.ee');
INSERT INTO `wp_termmeta` VALUES (13,8,'url','');
INSERT INTO `wp_termmeta` VALUES (14,8,'thumbnail','');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'test-theme','test-theme',0);
INSERT INTO `wp_terms` VALUES (3,'Main Menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Lennuüritus','lennuuritus',0);
INSERT INTO `wp_terms` VALUES (5,'Ühislend','uhislend',0);
INSERT INTO `wp_terms` VALUES (6,'Koosolek','koosolek',0);
INSERT INTO `wp_terms` VALUES (7,'Kuressaare Lennujaam','kuressaare-lennujaam',0);
INSERT INTO `wp_terms` VALUES (8,'Peeter Pakiraam','peeter-pakiraam',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_um_metadata`
--

DROP TABLE IF EXISTS `wp_um_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_um_metadata` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `um_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `um_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id_indx` (`user_id`),
  KEY `meta_key_indx` (`um_key`),
  KEY `meta_value_indx` (`um_value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_um_metadata`
--

LOCK TABLES `wp_um_metadata` WRITE;
/*!40000 ALTER TABLE `wp_um_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_um_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_icons`
--

DROP TABLE IF EXISTS `wp_ums_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_icons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `path` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `width` mediumint(5) NOT NULL DEFAULT '0',
  `height` mediumint(5) NOT NULL DEFAULT '0',
  `is_def` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_icons`
--

LOCK TABLES `wp_ums_icons` WRITE;
/*!40000 ALTER TABLE `wp_ums_icons` DISABLE KEYS */;
INSERT INTO `wp_ums_icons` VALUES (1,'marker','blue,white,star,pin','bblue.png',32,44,1);
INSERT INTO `wp_ums_icons` VALUES (2,'marker','green,white,star,pin','bgreen.png',32,44,1);
INSERT INTO `wp_ums_icons` VALUES (3,'marker','purple,white,star,pin','purple.png',32,44,1);
INSERT INTO `wp_ums_icons` VALUES (4,'marker','blue,white,star,pin','bred.png',32,44,1);
INSERT INTO `wp_ums_icons` VALUES (5,'marker','blue,pin','blue.png',24,38,1);
INSERT INTO `wp_ums_icons` VALUES (6,'marker','gray,pin','gray.png',20,33,1);
INSERT INTO `wp_ums_icons` VALUES (7,'marker','green,pin','green.png',20,34,1);
INSERT INTO `wp_ums_icons` VALUES (8,'marker','pin,yellow','orange.png',20,33,1);
INSERT INTO `wp_ums_icons` VALUES (9,'marker','pin,red','red.png',20,31,1);
INSERT INTO `wp_ums_icons` VALUES (10,'flag','gray','flag_black.png',32,30,1);
INSERT INTO `wp_ums_icons` VALUES (11,'flag','blue','flag_blue.png',32,30,1);
INSERT INTO `wp_ums_icons` VALUES (12,'flag','green','flag_green.png',32,30,1);
INSERT INTO `wp_ums_icons` VALUES (13,'flag','orange','flag_orange.png',32,30,1);
INSERT INTO `wp_ums_icons` VALUES (14,'flag','purple','flag_purple.png',32,30,1);
INSERT INTO `wp_ums_icons` VALUES (15,'flag','red','flag_red.png',32,30,1);
INSERT INTO `wp_ums_icons` VALUES (16,'marker','pin,cycle,blue','blue_circle.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (17,'marker','white,blue,pin','blue_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (18,'marker','blue,pin','blue_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (19,'pin','green,marker,cycle','green_circle.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (20,'pin','green,cycle','green_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (21,'pin','green','green_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (22,'pin','orange,cycle','orange_circle.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (23,'pin','orange,cycle','orange_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (24,'pin','orange','orange_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (25,'pin','purple,cycle','purple_circle.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (26,'pin','purple,cycle','purple_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (27,'pin','purple','purple_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (28,'pin','red,cycle','red_circle.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (29,'pin','red,cycle','red_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (30,'pin','red','red_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (31,'star','black,dark,pin','star_pin_black.png',32,41,1);
INSERT INTO `wp_ums_icons` VALUES (32,'star','blue,pin','star_pin_blue.png',32,41,1);
INSERT INTO `wp_ums_icons` VALUES (33,'star','green,pin','star_pin_green.png',32,41,1);
INSERT INTO `wp_ums_icons` VALUES (34,'star','orange,pin','star_pin_orange.png',32,41,1);
INSERT INTO `wp_ums_icons` VALUES (35,'star','purple','star_pin_purple.png',32,41,1);
INSERT INTO `wp_ums_icons` VALUES (36,'star','red,pin','star_pin_red.png',32,41,1);
INSERT INTO `wp_ums_icons` VALUES (37,'pin','gray,white,cycle','white_circlepng.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (38,'pin','gray,white,cycle','white_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (39,'pin','white,gray','white_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (40,'pin','yellow,cycle','yellow_circlepng.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (41,'pin','yellow,cycle','yellow_orifice.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (42,'pin','yellow','yellow_std.png',26,36,1);
INSERT INTO `wp_ums_icons` VALUES (43,'marker','red','marker.png',20,34,1);
INSERT INTO `wp_ums_icons` VALUES (44,'marker','blue','marker_blue.png',22,32,1);
INSERT INTO `wp_ums_icons` VALUES (45,'marker','red,letter','markerA.png',20,34,1);
INSERT INTO `wp_ums_icons` VALUES (46,'marker','orange','marker_orange.png',20,34,1);
INSERT INTO `wp_ums_icons` VALUES (47,'marker','green','marker_green.png',20,34,1);
/*!40000 ALTER TABLE `wp_ums_icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_maps`
--

DROP TABLE IF EXISTS `wp_ums_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `engine` varchar(32) DEFAULT NULL,
  `params` text,
  `html_options` text NOT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_maps`
--

LOCK TABLES `wp_ums_maps` WRITE;
/*!40000 ALTER TABLE `wp_ums_maps` DISABLE KEYS */;
INSERT INTO `wp_ums_maps` VALUES (1,'testkaart','leaflet','a:60:{s:11:\"width_units\";s:1:\"%\";s:16:\"membershipEnable\";s:1:\"0\";s:26:\"adapt_map_to_screen_height\";s:1:\"0\";s:4:\"type\";N;s:8:\"map_type\";s:71:\"https://stamen-tiles-{s}.a.ssl.fastly.net/toner-lite/{z}/{x}/{y}{r}.png\";s:16:\"map_display_mode\";N;s:10:\"map_center\";a:3:{s:7:\"address\";s:69:\"Viluvere küla, Põhja-Pärnumaa vald, Pärnu maakond, 87620, Estonia\";s:7:\"coord_x\";s:17:\"58.65707568081628\";s:7:\"coord_y\";s:16:\"24.8724298308147\";}s:8:\"language\";N;s:11:\"enable_zoom\";N;s:17:\"enable_mouse_zoom\";N;s:16:\"mouse_wheel_zoom\";s:1:\"1\";s:9:\"zoom_type\";N;s:4:\"zoom\";s:1:\"7\";s:11:\"zoom_mobile\";s:1:\"8\";s:8:\"zoom_min\";s:1:\"1\";s:8:\"zoom_max\";s:2:\"21\";s:19:\"navigation_bar_mode\";s:4:\"full\";s:12:\"zoom_control\";N;s:14:\"dbl_click_zoom\";s:1:\"1\";s:19:\"street_view_control\";N;s:11:\"pan_control\";N;s:16:\"overview_control\";N;s:9:\"draggable\";s:6:\"enable\";s:15:\"map_stylization\";N;s:18:\"marker_title_color\";s:7:\"#000000\";s:17:\"marker_title_size\";s:2:\"19\";s:23:\"marker_title_size_units\";s:2:\"px\";s:16:\"marker_desc_size\";s:2:\"13\";s:22:\"marker_desc_size_units\";s:2:\"px\";s:19:\"hide_marker_tooltip\";N;s:28:\"center_on_cur_marker_infownd\";N;s:19:\"marker_infownd_type\";N;s:29:\"marker_infownd_hide_close_btn\";N;s:20:\"marker_infownd_width\";s:3:\"200\";s:26:\"marker_infownd_width_units\";s:4:\"auto\";s:21:\"marker_infownd_height\";s:3:\"100\";s:27:\"marker_infownd_height_units\";s:4:\"auto\";s:23:\"marker_infownd_bg_color\";s:7:\"#FFFFFF\";s:16:\"marker_clasterer\";s:15:\"MarkerClusterer\";s:21:\"marker_clasterer_icon\";N;s:27:\"marker_clasterer_icon_width\";N;s:28:\"marker_clasterer_icon_height\";N;s:26:\"marker_clasterer_grid_size\";s:2:\"60\";s:33:\"marker_clasterer_background_color\";s:7:\"#2196f3\";s:29:\"marker_clasterer_border_color\";s:7:\"#1c7ba7\";s:27:\"marker_clasterer_text_color\";s:5:\"white\";s:19:\"marker_filter_color\";N;s:26:\"marker_filter_button_title\";N;s:12:\"marker_hover\";s:1:\"1\";s:35:\"slider_simple_table_width_dimension\";N;s:31:\"slider_simple_table_width_title\";N;s:33:\"slider_simple_table_width_address\";N;s:37:\"slider_simple_table_width_description\";N;s:38:\"slider_simple_table_width_getdirection\";N;s:17:\"markers_list_type\";N;s:18:\"markers_list_color\";s:7:\"#55BA68\";s:9:\"is_static\";N;s:16:\"hide_empty_block\";N;s:15:\"autoplay_slider\";N;s:14:\"slide_duration\";N;}','a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"600\";}','2022-05-10 19:13:48');
/*!40000 ALTER TABLE `wp_ums_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_marker_groups`
--

DROP TABLE IF EXISTS `wp_ums_marker_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_marker_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `parent` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_marker_groups`
--

LOCK TABLES `wp_ums_marker_groups` WRITE;
/*!40000 ALTER TABLE `wp_ums_marker_groups` DISABLE KEYS */;
INSERT INTO `wp_ums_marker_groups` VALUES (1,'Kunagine lennuväli',NULL,'a:5:{s:8:\"bg_color\";s:7:\"#E4E4E4\";s:10:\"text_color\";s:7:\"#E4E4E4\";s:12:\"claster_icon\";N;s:18:\"claster_icon_width\";N;s:19:\"claster_icon_height\";N;}',0,1);
INSERT INTO `wp_ums_marker_groups` VALUES (2,'Eralennuväli',NULL,'a:5:{s:8:\"bg_color\";s:7:\"#E4E4E4\";s:10:\"text_color\";s:7:\"#E4E4E4\";s:12:\"claster_icon\";N;s:18:\"claster_icon_width\";N;s:19:\"claster_icon_height\";N;}',0,2);
INSERT INTO `wp_ums_marker_groups` VALUES (3,'Riiklik lennuväli',NULL,'a:5:{s:8:\"bg_color\";s:7:\"#E4E4E4\";s:10:\"text_color\";s:7:\"#E4E4E4\";s:12:\"claster_icon\";N;s:18:\"claster_icon_width\";N;s:19:\"claster_icon_height\";N;}',0,3);
/*!40000 ALTER TABLE `wp_ums_marker_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_marker_groups_relation`
--

DROP TABLE IF EXISTS `wp_ums_marker_groups_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_marker_groups_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marker_id` int(11) NOT NULL,
  `groups_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_marker_groups_relation`
--

LOCK TABLES `wp_ums_marker_groups_relation` WRITE;
/*!40000 ALTER TABLE `wp_ums_marker_groups_relation` DISABLE KEYS */;
INSERT INTO `wp_ums_marker_groups_relation` VALUES (4,1,3);
INSERT INTO `wp_ums_marker_groups_relation` VALUES (5,2,2);
/*!40000 ALTER TABLE `wp_ums_marker_groups_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_markers`
--

DROP TABLE IF EXISTS `wp_ums_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `coord_x` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coord_y` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` int(11) DEFAULT NULL,
  `map_id` int(11) DEFAULT NULL,
  `marker_group_id` int(11) DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `animation` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `period_from` date DEFAULT NULL,
  `period_to` date DEFAULT NULL,
  `hash` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_markers`
--

LOCK TABLES `wp_ums_markers` WRITE;
/*!40000 ALTER TABLE `wp_ums_markers` DISABLE KEYS */;
INSERT INTO `wp_ums_markers` VALUES (1,'Kuressaare lennujaam (EEKE)','<p><a href=\\\"http://www.ilmateenistus.ee/?ide=19,394,416,421&amp;jaam=50\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">EMHI Meteogrammid</a></p><p>Kirjelduse muutmine käib niimoodi.</p>','58.231926742584','22.506488486894',18,1,3,'',NULL,'2022-05-10 19:23:56','a:3:{s:11:\"marker_link\";s:1:\"1\";s:15:\"marker_link_src\";s:36:\"http://www.kuressaare-airport.ee/ilm\";s:19:\"marker_link_new_wnd\";s:1:\"1\";}',1,NULL,NULL,NULL,NULL);
INSERT INTO `wp_ums_markers` VALUES (2,'Ridali (EERI)','<p><strong>Üldandmed</strong></p><ul><li>Kõrgus merepinnast: <strong>99m</strong> <em>(325ft)</em></li><li>Raja pikkus:<strong> 1200m</strong></li><li>Raja laius: <strong>60m</strong></li><li>Kandejõud: <strong>7t</strong></li><li>Murukate</li><li>Magnetkurss:<strong> 360º</strong> ja <strong>180º</strong></li><li>Magnetiline kõrvalekalle: <strong>+9.5º E</strong></li></ul><p>Kasutatav raadiosagedus on <strong>118,455Mhz (vana sagedus</strong> <strong>125,000Mhz)</strong></p>','57.941919124232','26.980705613842',19,1,2,'Raiste küla, Võru vald, Võru maakond, Estonia',NULL,'2022-05-10 19:33:21','a:3:{s:11:\"marker_link\";s:1:\"1\";s:15:\"marker_link_src\";s:24:\"https://www.purilend.ee/\";s:19:\"marker_link_new_wnd\";s:1:\"1\";}',2,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_ums_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_modules`
--

DROP TABLE IF EXISTS `wp_ums_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `type_id` smallint(3) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_520_ci,
  `has_tab` tinyint(1) NOT NULL DEFAULT '0',
  `label` varchar(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `ex_plug_dir` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_modules`
--

LOCK TABLES `wp_ums_modules` WRITE;
/*!40000 ALTER TABLE `wp_ums_modules` DISABLE KEYS */;
INSERT INTO `wp_ums_modules` VALUES (1,'adminmenu',1,1,'',0,'Admin Menu','',NULL);
INSERT INTO `wp_ums_modules` VALUES (2,'options',1,1,'',0,'Options','',NULL);
INSERT INTO `wp_ums_modules` VALUES (3,'user',1,1,'',0,'Users','',NULL);
INSERT INTO `wp_ums_modules` VALUES (4,'templates',1,1,'',0,'Templates for Plugin','',NULL);
INSERT INTO `wp_ums_modules` VALUES (5,'maps',1,1,'',0,'maps','maps',NULL);
INSERT INTO `wp_ums_modules` VALUES (6,'marker',1,1,'',0,'Markers','Maps Markers',NULL);
INSERT INTO `wp_ums_modules` VALUES (7,'marker_groups',1,1,'',0,'Marker Groups','Marker Groups',NULL);
INSERT INTO `wp_ums_modules` VALUES (8,'supsystic_promo',1,1,'',0,'Promo','Promo',NULL);
INSERT INTO `wp_ums_modules` VALUES (9,'icons',1,1,'',1,'Marker Icons','Marker Icons',NULL);
INSERT INTO `wp_ums_modules` VALUES (10,'csv',1,1,'',0,'csv','',NULL);
/*!40000 ALTER TABLE `wp_ums_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_modules_type`
--

DROP TABLE IF EXISTS `wp_ums_modules_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_modules_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_modules_type`
--

LOCK TABLES `wp_ums_modules_type` WRITE;
/*!40000 ALTER TABLE `wp_ums_modules_type` DISABLE KEYS */;
INSERT INTO `wp_ums_modules_type` VALUES (1,'system');
INSERT INTO `wp_ums_modules_type` VALUES (4,'widget');
INSERT INTO `wp_ums_modules_type` VALUES (6,'addons');
INSERT INTO `wp_ums_modules_type` VALUES (7,'template');
/*!40000 ALTER TABLE `wp_ums_modules_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_options`
--

DROP TABLE IF EXISTS `wp_ums_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value` text,
  `label` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `htmltype_id` smallint(2) NOT NULL DEFAULT '1',
  `params` text,
  `cat_id` mediumint(3) DEFAULT '0',
  `sort_order` mediumint(3) DEFAULT '0',
  `value_type` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_options`
--

LOCK TABLES `wp_ums_options` WRITE;
/*!40000 ALTER TABLE `wp_ums_options` DISABLE KEYS */;
INSERT INTO `wp_ums_options` VALUES (1,'save_statistic','0','Send statistic',NULL,1,NULL,0,0,NULL);
INSERT INTO `wp_ums_options` VALUES (2,'infowindow_size','a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";}','Info Window Size',NULL,1,NULL,0,0,'array');
/*!40000 ALTER TABLE `wp_ums_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_options_categories`
--

DROP TABLE IF EXISTS `wp_ums_options_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_options_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_options_categories`
--

LOCK TABLES `wp_ums_options_categories` WRITE;
/*!40000 ALTER TABLE `wp_ums_options_categories` DISABLE KEYS */;
INSERT INTO `wp_ums_options_categories` VALUES (1,'General');
INSERT INTO `wp_ums_options_categories` VALUES (2,'Template');
INSERT INTO `wp_ums_options_categories` VALUES (3,'Subscribe');
INSERT INTO `wp_ums_options_categories` VALUES (4,'Social');
/*!40000 ALTER TABLE `wp_ums_options_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ums_usage_stat`
--

DROP TABLE IF EXISTS `wp_ums_usage_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_ums_usage_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `visits` int(11) NOT NULL DEFAULT '0',
  `spent_time` int(11) NOT NULL DEFAULT '0',
  `modify_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ums_usage_stat`
--

LOCK TABLES `wp_ums_usage_stat` WRITE;
/*!40000 ALTER TABLE `wp_ums_usage_stat` DISABLE KEYS */;
INSERT INTO `wp_ums_usage_stat` VALUES (1,'installed',1,0,'2022-05-10 19:11:22');
/*!40000 ALTER TABLE `wp_ums_usage_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','truumeedia');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:3:{s:64:\"e28624957c939a7bc452cf1fc2487e3d30637fd536c158bde8ca96e2f51f8aac\";a:4:{s:10:\"expiration\";i:1652362077;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36\";s:5:\"login\";i:1651152477;}s:64:\"533df226c5e3438b73426e2e4c61eac95af9d82da27132dfeb95b6c445e3c9b5\";a:4:{s:10:\"expiration\";i:1652292612;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36\";s:5:\"login\";i:1652119812;}s:64:\"5a34c472e86d7f3a2dd495d6969fa42dfa5d0369bc093c15bb3e78189407aba7\";a:4:{s:10:\"expiration\";i:1652389626;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36\";s:5:\"login\";i:1652216826;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','54');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:1:{i:0;s:11:\"description\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','libraryContent=browse&amphidetb=1&ampeditor=tinymce');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1652211502');
INSERT INTO `wp_usermeta` VALUES (23,1,'user_last_view_date','20220506111308');
INSERT INTO `wp_usermeta` VALUES (24,1,'user_last_view_date_events','20220506114415');
INSERT INTO `wp_usermeta` VALUES (25,1,'mec_op','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'closedpostboxes_mec_calendars','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_mec_calendars','a:1:{i:0;s:24:\"mec_calendar_search_form\";}');
INSERT INTO `wp_usermeta` VALUES (28,2,'nickname','karlmihkeltruu');
INSERT INTO `wp_usermeta` VALUES (29,2,'first_name','Karl-Mihkel');
INSERT INTO `wp_usermeta` VALUES (30,2,'last_name','Truu');
INSERT INTO `wp_usermeta` VALUES (31,2,'description','Ma jään pigem kahe kuni nelja rattaga maa peale.');
INSERT INTO `wp_usermeta` VALUES (32,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (33,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (34,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (35,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (36,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (37,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (38,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (39,2,'wp_capabilities','a:1:{s:6:\"author\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (40,2,'wp_user_level','2');
INSERT INTO `wp_usermeta` VALUES (41,2,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (42,2,'account_status','approved');
INSERT INTO `wp_usermeta` VALUES (43,2,'um_member_directory_data','a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}');
INSERT INTO `wp_usermeta` VALUES (44,1,'account_status','approved');
INSERT INTO `wp_usermeta` VALUES (45,1,'um_member_directory_data','a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}');
INSERT INTO `wp_usermeta` VALUES (46,2,'um_user_profile_url_slug_user_login','karlmihkeltruu');
INSERT INTO `wp_usermeta` VALUES (47,1,'um_user_profile_url_slug_user_login','truumeedia');
INSERT INTO `wp_usermeta` VALUES (49,2,'_um_last_login','1652274306');
INSERT INTO `wp_usermeta` VALUES (50,1,'_um_last_login','1652227626');
INSERT INTO `wp_usermeta` VALUES (52,2,'um_user_profile_url_slug_user_id','2');
INSERT INTO `wp_usermeta` VALUES (53,1,'um_user_profile_url_slug_user_id','1');
INSERT INTO `wp_usermeta` VALUES (55,2,'session_tokens','a:1:{s:64:\"db0c177a27bd4858b80213d23535a0cf07f1e61f7da4db612cded14d38263b50\";a:4:{s:10:\"expiration\";i:1652436306;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36\";s:5:\"login\";i:1652263506;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'truumeedia','$P$BDL09b3pjPr4fklKydQsk9iOlD4L8B1','truumeedia','truumeedia@gmail.com','http://pilots.local','2022-04-28 09:00:35','',0,'truumeedia');
INSERT INTO `wp_users` VALUES (2,'karlmihkeltruu','$P$BYRHo5TVlwDFDSdwlwqrA/jzyTn/4b1','karlmihkeltruu','karltruu8@hotmail.com','','2022-05-10 19:40:38','',0,'Karl-Mihkel Truu');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-11 17:33:46
