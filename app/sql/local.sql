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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-03-15 22:57:52','2024-03-15 22:57:52','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=902 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Fictional University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site.','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','ianpetercreative@gmail.com','yes');
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
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:157:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=38&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','57155','yes');
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
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','40','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','38','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1726095472','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'wp_attachment_pages_enabled','0','yes');
INSERT INTO `wp_options` VALUES (100,'initial_db_version','56657','yes');
INSERT INTO `wp_options` VALUES (101,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (102,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (103,'user_count','1','no');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (106,'cron','a:7:{i:1715194673;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1715209073;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1715212161;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1715212162;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1715468273;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1715792565;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.4.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:1:{s:22:\"s04r4Bq5mpJ6INTChvohoo\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BHdt1CvWQWUbBGkb5DDRTHqYRwagOG1\";s:10:\"created_at\";i:1715111505;}}','yes');
INSERT INTO `wp_options` VALUES (129,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1715165974;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (130,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1710953590;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','no');
INSERT INTO `wp_options` VALUES (151,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (156,'_transient_health-check-site-status-result','{\"good\":17,\"recommended\":3,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (176,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (177,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (178,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (183,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (184,'new_admin_email','ianpetercreative@gmail.com','yes');
INSERT INTO `wp_options` VALUES (208,'db_upgraded','','yes');
INSERT INTO `wp_options` VALUES (209,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.5.3-partial-2.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:5:\"6.5.2\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.5.3-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-rollback-2.zip\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:5:\"6.5.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1715165973;s:15:\"version_checked\";s:5:\"6.5.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (210,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"ianpetercreative@gmail.com\";s:7:\"version\";s:5:\"6.5.2\";s:9:\"timestamp\";i:1712807149;}','no');
INSERT INTO `wp_options` VALUES (218,'can_compress_scripts','1','yes');
INSERT INTO `wp_options` VALUES (327,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (361,'recovery_mode_email_last_sent','1715111505','yes');
INSERT INTO `wp_options` VALUES (362,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (424,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (647,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','no');
INSERT INTO `wp_options` VALUES (648,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (652,'acf_first_activated_version','6.2.9','yes');
INSERT INTO `wp_options` VALUES (653,'acf_version','6.2.9','yes');
INSERT INTO `wp_options` VALUES (797,'_site_transient_timeout_php_check_18f908370f4cb169b20964c7203d6110','1715468275','no');
INSERT INTO `wp_options` VALUES (798,'_site_transient_php_check_18f908370f4cb169b20964c7203d6110','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (869,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1715165974;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=3079482\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.9\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.6\";}}','no');
INSERT INTO `wp_options` VALUES (891,'_site_transient_timeout_theme_roots','1715167774','no');
INSERT INTO `wp_options` VALUES (892,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,7,'_edit_lock','1713393492:1');
INSERT INTO `wp_postmeta` VALUES (6,9,'_edit_lock','1713393505:1');
INSERT INTO `wp_postmeta` VALUES (9,11,'_edit_lock','1713457834:1');
INSERT INTO `wp_postmeta` VALUES (10,13,'_edit_lock','1713550677:1');
INSERT INTO `wp_postmeta` VALUES (11,3,'_edit_lock','1713462481:1');
INSERT INTO `wp_postmeta` VALUES (12,17,'_edit_lock','1713466920:1');
INSERT INTO `wp_postmeta` VALUES (13,19,'_edit_lock','1713467251:1');
INSERT INTO `wp_postmeta` VALUES (14,21,'_edit_lock','1713477252:1');
INSERT INTO `wp_postmeta` VALUES (15,23,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (16,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (17,23,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (18,23,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (19,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (20,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (21,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (22,23,'_menu_item_url','http://fictional-university.local/');
INSERT INTO `wp_postmeta` VALUES (23,23,'_menu_item_orphaned','1713477354');
INSERT INTO `wp_postmeta` VALUES (24,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (25,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (26,24,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (27,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (28,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (29,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (30,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (31,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (33,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (34,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (35,25,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (36,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (37,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (38,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (39,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (40,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (41,25,'_menu_item_orphaned','1713477354');
INSERT INTO `wp_postmeta` VALUES (42,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (43,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (44,26,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (45,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (46,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (47,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (48,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (49,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (51,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (52,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (53,27,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (54,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (55,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (56,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (57,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (58,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (59,27,'_menu_item_orphaned','1713477354');
INSERT INTO `wp_postmeta` VALUES (60,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (61,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (62,28,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (63,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (64,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (65,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (66,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (67,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (68,28,'_menu_item_orphaned','1713477354');
INSERT INTO `wp_postmeta` VALUES (69,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (70,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (71,29,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (72,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (73,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (74,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (75,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (76,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (77,29,'_menu_item_orphaned','1713477354');
INSERT INTO `wp_postmeta` VALUES (78,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (79,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (80,30,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (81,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (82,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (83,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (84,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (85,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (86,30,'_menu_item_orphaned','1713477354');
INSERT INTO `wp_postmeta` VALUES (87,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (88,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (89,31,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (90,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (91,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (92,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (93,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (94,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (95,31,'_menu_item_orphaned','1713477950');
INSERT INTO `wp_postmeta` VALUES (96,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (97,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (98,32,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (99,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (100,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (101,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (102,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (103,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (104,32,'_menu_item_orphaned','1713477950');
INSERT INTO `wp_postmeta` VALUES (105,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (106,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (107,33,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (108,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (109,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (110,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (111,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (112,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (113,33,'_menu_item_orphaned','1713477967');
INSERT INTO `wp_postmeta` VALUES (114,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (115,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (116,34,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (117,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (118,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (119,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (120,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (121,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (123,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (124,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (125,35,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (126,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (127,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (128,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (129,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (130,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (132,36,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (133,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (134,36,'_menu_item_object_id','36');
INSERT INTO `wp_postmeta` VALUES (135,36,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (136,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (137,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (138,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (139,36,'_menu_item_url','http://google.com');
INSERT INTO `wp_postmeta` VALUES (141,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (142,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (143,37,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (144,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (145,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (146,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (147,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (148,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (150,38,'_edit_lock','1713844218:1');
INSERT INTO `wp_postmeta` VALUES (151,40,'_edit_lock','1713550566:1');
INSERT INTO `wp_postmeta` VALUES (152,42,'_edit_lock','1713847146:1');
INSERT INTO `wp_postmeta` VALUES (155,44,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (156,44,'_edit_lock','1714254236:1');
INSERT INTO `wp_postmeta` VALUES (157,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (158,45,'_edit_lock','1714254219:1');
INSERT INTO `wp_postmeta` VALUES (159,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (160,46,'_edit_lock','1714254126:1');
INSERT INTO `wp_postmeta` VALUES (173,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (174,54,'_edit_lock','1714493616:1');
INSERT INTO `wp_postmeta` VALUES (175,46,'event_date','2024-07-20 19:00:00');
INSERT INTO `wp_postmeta` VALUES (176,46,'_event_date','field_662d6fb5ffb2f');
INSERT INTO `wp_postmeta` VALUES (177,45,'event_date','2024-06-13 00:00:00');
INSERT INTO `wp_postmeta` VALUES (178,45,'_event_date','field_662d6fb5ffb2f');
INSERT INTO `wp_postmeta` VALUES (179,44,'event_date','2024-05-16 00:00:00');
INSERT INTO `wp_postmeta` VALUES (180,44,'_event_date','field_662d6fb5ffb2f');
INSERT INTO `wp_postmeta` VALUES (181,56,'_edit_lock','1714257179:1');
INSERT INTO `wp_postmeta` VALUES (182,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (183,56,'event_date','2022-04-06 00:00:00');
INSERT INTO `wp_postmeta` VALUES (184,56,'_event_date','field_662d6fb5ffb2f');
INSERT INTO `wp_postmeta` VALUES (185,57,'_edit_lock','1714257318:1');
INSERT INTO `wp_postmeta` VALUES (186,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (187,57,'event_date','2024-10-24 00:00:00');
INSERT INTO `wp_postmeta` VALUES (188,57,'_event_date','field_662d6fb5ffb2f');
INSERT INTO `wp_postmeta` VALUES (189,58,'_edit_lock','1714257354:1');
INSERT INTO `wp_postmeta` VALUES (190,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (191,58,'event_date','2024-04-28 00:00:00');
INSERT INTO `wp_postmeta` VALUES (192,58,'_event_date','field_662d6fb5ffb2f');
INSERT INTO `wp_postmeta` VALUES (193,58,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (194,58,'_wp_trash_meta_time','1714493190');
INSERT INTO `wp_postmeta` VALUES (195,58,'_wp_desired_post_slug','tomorrow-event-test');
INSERT INTO `wp_postmeta` VALUES (196,57,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (197,57,'_wp_trash_meta_time','1714493197');
INSERT INTO `wp_postmeta` VALUES (198,57,'_wp_desired_post_slug','winter-study-night');
INSERT INTO `wp_postmeta` VALUES (199,56,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (200,56,'_wp_trash_meta_time','1714493197');
INSERT INTO `wp_postmeta` VALUES (201,56,'_wp_desired_post_slug','old-event');
INSERT INTO `wp_postmeta` VALUES (202,46,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (203,46,'_wp_trash_meta_time','1714493197');
INSERT INTO `wp_postmeta` VALUES (204,46,'_wp_desired_post_slug','poetry-day');
INSERT INTO `wp_postmeta` VALUES (205,45,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (206,45,'_wp_trash_meta_time','1714493197');
INSERT INTO `wp_postmeta` VALUES (207,45,'_wp_desired_post_slug','the-science-of-cats');
INSERT INTO `wp_postmeta` VALUES (208,44,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (209,44,'_wp_trash_meta_time','1714493197');
INSERT INTO `wp_postmeta` VALUES (210,44,'_wp_desired_post_slug','math-meetup');
INSERT INTO `wp_postmeta` VALUES (211,59,'_edit_lock','1714493635:1');
INSERT INTO `wp_postmeta` VALUES (212,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (213,59,'event_date','20240503');
INSERT INTO `wp_postmeta` VALUES (214,59,'_event_date','field_662d6fb5ffb2f');
INSERT INTO `wp_postmeta` VALUES (215,60,'_edit_lock','1714493631:1');
INSERT INTO `wp_postmeta` VALUES (216,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (217,60,'event_date','20240606');
INSERT INTO `wp_postmeta` VALUES (218,60,'_event_date','field_662d6fb5ffb2f');
INSERT INTO `wp_postmeta` VALUES (219,61,'_edit_lock','1714493355:1');
INSERT INTO `wp_postmeta` VALUES (220,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (221,61,'event_date','20240730');
INSERT INTO `wp_postmeta` VALUES (222,61,'_event_date','field_662d6fb5ffb2f');
INSERT INTO `wp_postmeta` VALUES (223,62,'_edit_lock','1714493627:1');
INSERT INTO `wp_postmeta` VALUES (224,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (225,62,'event_date','20240404');
INSERT INTO `wp_postmeta` VALUES (226,62,'_event_date','field_662d6fb5ffb2f');
INSERT INTO `wp_postmeta` VALUES (227,61,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (228,61,'_wp_trash_meta_time','1714493422');
INSERT INTO `wp_postmeta` VALUES (229,61,'_wp_desired_post_slug','the-science-of-cats');
INSERT INTO `wp_postmeta` VALUES (231,64,'_edit_lock','1714603260:1');
INSERT INTO `wp_postmeta` VALUES (232,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (233,64,'event_date','20240725');
INSERT INTO `wp_postmeta` VALUES (234,64,'_event_date','field_663118d6ddd83');
INSERT INTO `wp_postmeta` VALUES (235,66,'_edit_lock','1714495272:1');
INSERT INTO `wp_postmeta` VALUES (236,66,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (237,66,'event_date','20240517');
INSERT INTO `wp_postmeta` VALUES (238,66,'_event_date','field_663118d6ddd83');
INSERT INTO `wp_postmeta` VALUES (239,67,'_edit_lock','1714495316:1');
INSERT INTO `wp_postmeta` VALUES (240,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (241,67,'event_date','20241210');
INSERT INTO `wp_postmeta` VALUES (242,67,'_event_date','field_663118d6ddd83');
INSERT INTO `wp_postmeta` VALUES (243,68,'_edit_lock','1714495716:1');
INSERT INTO `wp_postmeta` VALUES (244,70,'_edit_lock','1714600194:1');
INSERT INTO `wp_postmeta` VALUES (245,70,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (246,70,'event_date','20240101');
INSERT INTO `wp_postmeta` VALUES (247,70,'_event_date','field_663118d6ddd83');
INSERT INTO `wp_postmeta` VALUES (248,71,'_edit_lock','1714600245:1');
INSERT INTO `wp_postmeta` VALUES (249,72,'_edit_lock','1714600253:1');
INSERT INTO `wp_postmeta` VALUES (250,73,'_edit_lock','1714600274:1');
INSERT INTO `wp_postmeta` VALUES (251,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (252,74,'_edit_lock','1715108546:1');
INSERT INTO `wp_postmeta` VALUES (253,64,'related_program','a:1:{i:0;s:2:\"72\";}');
INSERT INTO `wp_postmeta` VALUES (254,64,'_related_program','field_6632bc3df8613');
INSERT INTO `wp_postmeta` VALUES (255,64,'related_programs','a:2:{i:0;s:2:\"72\";i:1;s:2:\"71\";}');
INSERT INTO `wp_postmeta` VALUES (256,64,'_related_programs','field_6632bc3df8613');
INSERT INTO `wp_postmeta` VALUES (257,76,'_edit_lock','1715111384:1');
INSERT INTO `wp_postmeta` VALUES (258,77,'_edit_lock','1715110722:1');
INSERT INTO `wp_postmeta` VALUES (259,77,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (260,77,'related_programs','a:1:{i:0;s:2:\"72\";}');
INSERT INTO `wp_postmeta` VALUES (261,77,'_related_programs','field_6632bc3df8613');
INSERT INTO `wp_postmeta` VALUES (262,78,'_wp_attached_file','2024/05/dr-johnson-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (263,78,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:30:\"2024/05/dr-johnson-scaled.jpeg\";s:8:\"filesize\";i:425513;s:5:\"sizes\";a:8:{s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"dr-johnson-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:264828;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:23:\"dr-johnson-400x260.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14718;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:23:\"dr-johnson-480x650.jpeg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46383;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"dr-johnson-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7734;}s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"dr-johnson-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10799;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"dr-johnson-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38572;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"dr-johnson-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61373;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"dr-johnson-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:138399;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"dr-johnson.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (264,79,'_wp_attached_file','2024/05/meow.jpeg');
INSERT INTO `wp_postmeta` VALUES (265,79,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:17:\"2024/05/meow.jpeg\";s:8:\"filesize\";i:517261;s:5:\"sizes\";a:7:{s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:17:\"meow-400x260.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28468;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:17:\"meow-480x650.jpeg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57014;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"meow-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21976;}s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"meow-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24768;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"meow-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49373;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"meow-1024x682.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71361;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"meow-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:133594;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:17:\"Joshua C Mitchell\";s:6:\"camera\";s:10:\"NIKON D850\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1552054856\";s:9:\"copyright\";s:21:\"www.yourfaceisrad.com\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (266,76,'_thumbnail_id','79');
INSERT INTO `wp_postmeta` VALUES (267,76,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (268,76,'related_programs','a:1:{i:0;s:2:\"72\";}');
INSERT INTO `wp_postmeta` VALUES (269,76,'_related_programs','field_6632bc3df8613');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-03-15 22:57:52','2024-03-15 22:57:52','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2024-03-15 22:57:52','2024-03-15 22:57:52','',0,'http://fictional-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2024-03-15 22:57:52','2024-03-15 22:57:52','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-03-15 22:57:52','2024-03-15 22:57:52','',0,'http://fictional-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2024-03-15 22:57:52','2024-03-15 22:57:52','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2024-04-18 17:50:20','2024-04-18 17:50:20','',0,'http://fictional-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2024-03-15 23:48:04','2024-03-15 23:48:04','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-03-15 23:48:04','2024-03-15 23:48:04','',0,'http://fictional-university.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2024-04-17 22:40:32','2024-04-17 22:40:32','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Test Post','','publish','open','open','','test-post','','','2024-04-17 22:40:32','2024-04-17 22:40:32','',0,'http://fictional-university.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2024-04-17 22:40:32','2024-04-17 22:40:32','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','7-revision-v1','','','2024-04-17 22:40:32','2024-04-17 22:40:32','',7,'http://fictional-university.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2024-04-17 22:40:47','2024-04-17 22:40:47','<!-- wp:paragraph -->\n<p>;lakjsdf;lkajsdf</p>\n<!-- /wp:paragraph -->','Second Test Post','','publish','open','open','','second-test-post','','','2024-04-17 22:40:47','2024-04-17 22:40:47','',0,'http://fictional-university.local/?p=9',0,'post','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2024-04-17 22:40:47','2024-04-17 22:40:47','<!-- wp:paragraph -->\n<p>;lakjsdf;lkajsdf</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','9-revision-v1','','','2024-04-17 22:40:47','2024-04-17 22:40:47','',9,'http://fictional-university.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2024-04-17 23:14:09','2024-04-17 23:14:09','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Test Page 123','','publish','closed','closed','','test-page-123','','','2024-04-17 23:14:09','2024-04-17 23:14:09','',0,'http://fictional-university.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2024-04-17 23:14:09','2024-04-17 23:14:09','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Test Page 123','','inherit','closed','closed','','11-revision-v1','','','2024-04-17 23:14:09','2024-04-17 23:14:09','',11,'http://fictional-university.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2024-04-18 17:49:11','2024-04-18 17:49:11','<!-- wp:paragraph -->\n<p>This is the about page content. </p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2024-04-18 17:49:11','2024-04-18 17:49:11','',0,'http://fictional-university.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2024-04-18 17:49:11','2024-04-18 17:49:11','<!-- wp:paragraph -->\n<p>This is the about page content. </p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','13-revision-v1','','','2024-04-18 17:49:11','2024-04-18 17:49:11','',13,'http://fictional-university.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2024-04-18 17:49:29','2024-04-18 17:49:29','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://fictional-university.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2024-04-18 17:49:29','2024-04-18 17:49:29','',3,'http://fictional-university.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2024-04-18 17:50:20','2024-04-18 17:50:20','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2024-04-18 17:50:20','2024-04-18 17:50:20','',3,'http://fictional-university.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2024-04-18 19:04:18','2024-04-18 19:04:18','<!-- wp:paragraph -->\n<p>Our history text</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2024-04-18 19:04:18','2024-04-18 19:04:18','',13,'http://fictional-university.local/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2024-04-18 19:04:18','2024-04-18 19:04:18','<!-- wp:paragraph -->\n<p>Our history text</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','17-revision-v1','','','2024-04-18 19:04:18','2024-04-18 19:04:18','',17,'http://fictional-university.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2024-04-18 19:04:49','2024-04-18 19:04:49','<!-- wp:paragraph -->\n<p>Our goals content</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2024-04-18 19:04:49','2024-04-18 19:04:49','',13,'http://fictional-university.local/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2024-04-18 19:04:49','2024-04-18 19:04:49','<!-- wp:paragraph -->\n<p>Our goals content</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','19-revision-v1','','','2024-04-18 19:04:49','2024-04-18 19:04:49','',19,'http://fictional-university.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-04-18 19:29:03','2024-04-18 19:29:03','<!-- wp:paragraph -->\n<p>;lkasjdf;lk</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2024-04-18 19:29:03','2024-04-18 19:29:03','',3,'http://fictional-university.local/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2024-04-18 19:29:03','2024-04-18 19:29:03','<!-- wp:paragraph -->\n<p>;lkasjdf;lk</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','21-revision-v1','','','2024-04-18 19:29:03','2024-04-18 19:29:03','',21,'http://fictional-university.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2024-04-18 21:55:54','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2024-04-18 21:55:54','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=23',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-04-18 22:04:45','2024-04-18 21:56:27',' ','','','publish','closed','closed','','24','','','2024-04-18 22:04:45','2024-04-18 22:04:45','',0,'http://fictional-university.local/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2024-04-18 21:55:54','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-18 21:55:54','0000-00-00 00:00:00','',3,'http://fictional-university.local/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2024-04-18 22:04:45','2024-04-18 21:56:27',' ','','','publish','closed','closed','','26','','','2024-04-18 22:04:45','2024-04-18 22:04:45','',0,'http://fictional-university.local/?p=26',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2024-04-18 21:55:54','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-18 21:55:54','0000-00-00 00:00:00','',13,'http://fictional-university.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2024-04-18 21:55:54','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-18 21:55:54','0000-00-00 00:00:00','',13,'http://fictional-university.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2024-04-18 21:55:54','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-18 21:55:54','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2024-04-18 21:55:54','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-18 21:55:54','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2024-04-18 22:05:50','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-18 22:05:50','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2024-04-18 22:05:50','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-18 22:05:50','0000-00-00 00:00:00','',3,'http://fictional-university.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2024-04-18 22:06:07','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-18 22:06:07','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=33',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2024-04-18 22:06:36','2024-04-18 22:06:36',' ','','','publish','closed','closed','','34','','','2024-04-18 22:06:36','2024-04-18 22:06:36','',0,'http://fictional-university.local/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2024-04-18 22:06:36','2024-04-18 22:06:36',' ','','','publish','closed','closed','','35','','','2024-04-18 22:06:36','2024-04-18 22:06:36','',3,'http://fictional-university.local/?p=35',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2024-04-18 22:07:04','2024-04-18 22:06:57','','Google','','publish','closed','closed','','google','','','2024-04-18 22:07:04','2024-04-18 22:07:04','',0,'http://fictional-university.local/?p=36',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2024-04-18 22:07:04','2024-04-18 22:07:04',' ','','','publish','closed','closed','','37','','','2024-04-18 22:07:04','2024-04-18 22:07:04','',0,'http://fictional-university.local/?p=37',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2024-04-19 18:18:19','2024-04-19 18:18:19','','Home','','publish','closed','closed','','home','','','2024-04-19 18:18:19','2024-04-19 18:18:19','',0,'http://fictional-university.local/?page_id=38',0,'page','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2024-04-19 18:18:19','2024-04-19 18:18:19','','Home','','inherit','closed','closed','','38-revision-v1','','','2024-04-19 18:18:19','2024-04-19 18:18:19','',38,'http://fictional-university.local/?p=39',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2024-04-19 18:18:27','2024-04-19 18:18:27','','Blog','','publish','closed','closed','','blog','','','2024-04-19 18:18:27','2024-04-19 18:18:27','',0,'http://fictional-university.local/?page_id=40',0,'page','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2024-04-19 18:18:27','2024-04-19 18:18:27','','Blog','','inherit','closed','closed','','40-revision-v1','','','2024-04-19 18:18:27','2024-04-19 18:18:27','',40,'http://fictional-university.local/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2024-04-19 18:33:28','2024-04-19 18:33:28','<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Adipisci, quidem minima eius suscipit, dolore deserunt vitae accusamus possimus quasi cum a! Corrupti a quas, omnis cumque voluptatum repudiandae asperiores vel.</p>\n<!-- /wp:paragraph -->','We Won an Award!','Our school has won an another award this year!','publish','open','open','','we-won-an-award','','','2024-04-23 04:35:59','2024-04-23 04:35:59','',0,'http://fictional-university.local/?p=42',0,'post','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2024-04-19 18:33:28','2024-04-19 18:33:28','','We Won an Award!','','inherit','closed','closed','','42-revision-v1','','','2024-04-19 18:33:28','2024-04-19 18:33:28','',42,'http://fictional-university.local/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2024-04-23 03:56:30','2024-04-23 03:56:30','<div>\r\n<div>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestias ratione tenetur nulla amet, ducimus ut nemo repudiandae incidunt deleniti, similique praesentium optio ab voluptatibus minima quam facilis, fugiat aut veniam.</div>\r\n</div>','Math Meetup','','trash','closed','closed','','math-meetup__trashed','','','2024-04-30 16:06:37','2024-04-30 16:06:37','',0,'http://fictional-university.local/?post_type=event&#038;p=44',0,'event','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2024-04-23 03:56:41','2024-04-23 03:56:41','<div>\r\n<div>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestias ratione tenetur nulla amet, ducimus ut nemo repudiandae incidunt deleniti, similique praesentium optio ab voluptatibus minima quam facilis, fugiat aut veniam.</div>\r\n</div>','The Science of Cats','','trash','closed','closed','','the-science-of-cats__trashed','','','2024-04-30 16:06:37','2024-04-30 16:06:37','',0,'http://fictional-university.local/?post_type=event&#038;p=45',0,'event','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2024-04-23 03:56:49','2024-04-23 03:56:49','<div>\n<div>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestias ratione tenetur nulla amet, ducimus ut nemo repudiandae incidunt deleniti, similique praesentium optio ab voluptatibus minima quam facilis, fugiat aut veniam.</div>\n</div>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Poetry Day','Poetry Day is going to be amazing. ','trash','closed','closed','','poetry-day__trashed','','','2024-04-30 16:06:37','2024-04-30 16:06:37','',0,'http://fictional-university.local/?post_type=event&#038;p=46',0,'event','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2024-04-23 04:35:41','2024-04-23 04:35:41','<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Adipisci, quidem minima eius suscipit, dolore deserunt vitae accusamus possimus quasi cum a! Corrupti a quas, omnis cumque voluptatum repudiandae asperiores vel.</p>\n<!-- /wp:paragraph -->','We Won an Award!','','inherit','closed','closed','','42-revision-v1','','','2024-04-23 04:35:41','2024-04-23 04:35:41','',42,'http://fictional-university.local/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2024-04-23 04:35:59','2024-04-23 04:35:59','<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Adipisci, quidem minima eius suscipit, dolore deserunt vitae accusamus possimus quasi cum a! Corrupti a quas, omnis cumque voluptatum repudiandae asperiores vel.</p>\n<!-- /wp:paragraph -->','We Won an Award!','Our school has won an another award this year!','inherit','closed','closed','','42-revision-v1','','','2024-04-23 04:35:59','2024-04-23 04:35:59','',42,'http://fictional-university.local/?p=51',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2024-04-27 21:37:57','2024-04-27 21:37:57','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Event Date','event-date','publish','closed','closed','','group_662d6fb4c0102','','','2024-04-30 16:15:55','2024-04-30 16:15:55','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=54',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2024-04-27 21:50:47','2024-04-27 21:50:47','','Old Event','','trash','closed','closed','','old-event__trashed','','','2024-04-30 16:06:37','2024-04-30 16:06:37','',0,'http://fictional-university.local/?post_type=event&#038;p=56',0,'event','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2024-04-27 22:34:57','2024-04-27 22:34:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda ullam quod unde sint sequi et saepe nobis, quo iusto, iure tenetur aperiam exercitationem totam distinctio eum, possimus recusandae odio! Animi.</p>\n<!-- /wp:paragraph -->','Winter Study Night','','trash','closed','closed','','winter-study-night__trashed','','','2024-04-30 16:06:37','2024-04-30 16:06:37','',0,'http://fictional-university.local/?post_type=event&#038;p=57',0,'event','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2024-04-27 22:35:49','2024-04-27 22:35:49','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda ullam quod unde sint sequi et saepe nobis, quo iusto, iure tenetur aperiam exercitationem totam distinctio eum, possimus recusandae odio! Animi.</p>\n<!-- /wp:paragraph -->','Tomorrow Event test','','trash','closed','closed','','tomorrow-event-test__trashed','','','2024-04-30 16:06:30','2024-04-30 16:06:30','',0,'http://fictional-university.local/?post_type=event&#038;p=58',0,'event','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2024-04-30 16:08:29','2024-04-30 16:08:29','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi, aspernatur reprehenderit quaerat magnam, possimus, nam molestiae quae eius perspiciatis cupiditate maxime porro totam aperiam tempore unde deserunt quas. Voluptas, impedit.</p>\n<!-- /wp:paragraph -->','Poetry Day','','publish','closed','closed','','poetry-day','','','2024-04-30 16:08:29','2024-04-30 16:08:29','',0,'http://fictional-university.local/?post_type=event&#038;p=59',0,'event','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2024-04-30 16:08:48','2024-04-30 16:08:48','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi, aspernatur reprehenderit quaerat magnam, possimus, nam molestiae quae eius perspiciatis cupiditate maxime porro totam aperiam tempore unde deserunt quas. Voluptas, impedit.</p>\n<!-- /wp:paragraph -->','Math Meetup','','publish','closed','closed','','math-meetup','','','2024-04-30 16:08:48','2024-04-30 16:08:48','',0,'http://fictional-university.local/?post_type=event&#038;p=60',0,'event','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2024-04-30 16:09:14','2024-04-30 16:09:14','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi, aspernatur reprehenderit quaerat magnam, possimus, nam molestiae quae eius perspiciatis cupiditate maxime porro totam aperiam tempore unde deserunt quas. Voluptas, impedit.</p>\n<!-- /wp:paragraph -->','The Science of Cats','','trash','closed','closed','','the-science-of-cats__trashed-2','','','2024-04-30 16:10:22','2024-04-30 16:10:22','',0,'http://fictional-university.local/?post_type=event&#038;p=61',0,'event','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2024-04-30 16:09:28','2024-04-30 16:09:28','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi, aspernatur reprehenderit quaerat magnam, possimus, nam molestiae quae eius perspiciatis cupiditate maxime porro totam aperiam tempore unde deserunt quas. Voluptas, impedit.</p>\n<!-- /wp:paragraph -->','Old Event','','publish','closed','closed','','old-event','','','2024-04-30 16:09:28','2024-04-30 16:09:28','',0,'http://fictional-university.local/?post_type=event&#038;p=62',0,'event','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2024-04-30 16:11:19','2024-04-30 16:11:19','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi, aspernatur reprehenderit quaerat magnam, possimus, nam molestiae quae eius perspiciatis cupiditate maxime porro totam aperiam tempore unde deserunt quas. Voluptas, impedit.</p>\n<!-- /wp:paragraph -->','The Science of Cats','','publish','closed','closed','','the-science-of-cats','','','2024-05-01 22:11:20','2024-05-01 22:11:20','',0,'http://fictional-university.local/?post_type=event&#038;p=64',0,'event','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2024-04-30 16:15:55','2024-04-30 16:15:55','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"m/d/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_663118d6ddd83','','','2024-04-30 16:15:55','2024-04-30 16:15:55','',54,'http://fictional-university.local/?post_type=acf-field&p=65',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2024-04-30 16:41:11','2024-04-30 16:41:11','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis eligendi aliquid nam ducimus dolore earum, sequi dicta sapiente minus, facere maiores iste ab fugit repellat, laboriosam qui itaque sed molestiae.</p>\n<!-- /wp:paragraph -->','FCA','','publish','closed','closed','','fca','','','2024-04-30 16:41:11','2024-04-30 16:41:11','',0,'http://fictional-university.local/?post_type=event&#038;p=66',0,'event','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2024-04-30 16:41:56','2024-04-30 16:41:56','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis eligendi aliquid nam ducimus dolore earum, sequi dicta sapiente minus, facere maiores iste ab fugit repellat, laboriosam qui itaque sed molestiae.</p>\n<!-- /wp:paragraph -->','Winter Study Night','','publish','closed','closed','','winter-study-night','','','2024-04-30 16:41:56','2024-04-30 16:41:56','',0,'http://fictional-university.local/?post_type=event&#038;p=67',0,'event','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2024-04-30 16:43:14','2024-04-30 16:43:14','','Past Events','','publish','closed','closed','','past-events','','','2024-04-30 16:43:14','2024-04-30 16:43:14','',0,'http://fictional-university.local/?page_id=68',0,'page','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2024-04-30 16:43:14','2024-04-30 16:43:14','','Past Events','','inherit','closed','closed','','68-revision-v1','','','2024-04-30 16:43:14','2024-04-30 16:43:14','',68,'http://fictional-university.local/?p=69',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2024-04-30 16:49:23','2024-04-30 16:49:23','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis odio eligendi sequi culpa dolorem sapiente! Aperiam magni ullam maiores repellat error placeat aut doloribus pariatur, quibusdam modi vero eos natus?</p>\n<!-- /wp:paragraph -->','New Year 2024','','publish','closed','closed','','new-year-2024','','','2024-04-30 16:49:24','2024-04-30 16:49:24','',0,'http://fictional-university.local/?post_type=event&#038;p=70',0,'event','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2024-05-01 21:53:08','2024-05-01 21:53:08','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ipsa nostrum magnam dolorum tempora et, recusandae nihil illo architecto earum numquam molestias sapiente cumque quisquam voluptatibus dicta totam, temporibus modi quasi?</p>\n<!-- /wp:paragraph -->','Math','','publish','closed','closed','','math','','','2024-05-01 21:53:08','2024-05-01 21:53:08','',0,'http://fictional-university.local/?post_type=program&#038;p=71',0,'program','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2024-05-01 21:53:17','2024-05-01 21:53:17','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ipsa nostrum magnam dolorum tempora et, recusandae nihil illo architecto earum numquam molestias sapiente cumque quisquam voluptatibus dicta totam, temporibus modi quasi?</p>\n<!-- /wp:paragraph -->','Biology','','publish','closed','closed','','biology','','','2024-05-01 21:53:17','2024-05-01 21:53:17','',0,'http://fictional-university.local/?post_type=program&#038;p=72',0,'program','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2024-05-01 21:53:25','2024-05-01 21:53:25','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ipsa nostrum magnam dolorum tempora et, recusandae nihil illo architecto earum numquam molestias sapiente cumque quisquam voluptatibus dicta totam, temporibus modi quasi?</p>\n<!-- /wp:paragraph -->','English','','publish','closed','closed','','english','','','2024-05-01 21:53:25','2024-05-01 21:53:25','',0,'http://fictional-university.local/?post_type=program&#038;p=73',0,'program','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2024-05-01 22:05:03','2024-05-01 22:05:03','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Programs','related-programs','publish','closed','closed','','group_6632bc3cd2673','','','2024-05-07 19:04:46','2024-05-07 19:04:46','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=74',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2024-05-01 22:05:03','2024-05-01 22:05:03','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','Related Program(s)','related_programs','publish','closed','closed','','field_6632bc3df8613','','','2024-05-01 22:08:40','2024-05-01 22:08:40','',74,'http://fictional-university.local/?post_type=acf-field&#038;p=75',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2024-05-07 19:01:16','2024-05-07 19:01:16','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae accusamus esse iure molestiae, rem nulla provident at cupiditate dolorem veritatis repellat in, natus perspiciatis, deleniti eligendi commodi maiores necessitatibus iste?</p>\n<!-- /wp:paragraph -->','Dr. Meowsalot','','publish','closed','closed','','dr-meowsalot','','','2024-05-07 19:41:03','2024-05-07 19:41:03','',0,'http://fictional-university.local/?post_type=professor&#038;p=76',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2024-05-07 19:01:26','2024-05-07 19:01:26','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae accusamus esse iure molestiae, rem nulla provident at cupiditate dolorem veritatis repellat in, natus perspiciatis, deleniti eligendi commodi maiores necessitatibus iste?</p>\n<!-- /wp:paragraph -->','Dr. Johnson','','publish','closed','closed','','dr-johnson','','','2024-05-07 19:04:59','2024-05-07 19:04:59','',0,'http://fictional-university.local/?post_type=professor&#038;p=77',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2024-05-07 19:38:39','2024-05-07 19:38:39','','dr-johnson','','inherit','open','closed','','dr-johnson-2','','','2024-05-07 19:38:39','2024-05-07 19:38:39','',77,'http://fictional-university.local/wp-content/uploads/2024/05/dr-johnson.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2024-05-07 19:40:44','2024-05-07 19:40:44','','meow','','inherit','open','closed','','meow','','','2024-05-07 19:40:44','2024-05-07 19:40:44','',76,'http://fictional-university.local/wp-content/uploads/2024/05/meow.jpeg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
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
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (9,1,0);
INSERT INTO `wp_term_relationships` VALUES (24,2,0);
INSERT INTO `wp_term_relationships` VALUES (26,2,0);
INSERT INTO `wp_term_relationships` VALUES (34,3,0);
INSERT INTO `wp_term_relationships` VALUES (35,3,0);
INSERT INTO `wp_term_relationships` VALUES (36,4,0);
INSERT INTO `wp_term_relationships` VALUES (37,4,0);
INSERT INTO `wp_term_relationships` VALUES (42,5,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','We love to blog about our awards.',0,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'My Main Header Menu','my-main-header-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Footer One','footer-one',0);
INSERT INTO `wp_terms` VALUES (4,'Footer Two','footer-two',0);
INSERT INTO `wp_terms` VALUES (5,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','ianpetercreative');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Whatever you type here is your bio.');
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
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"ff587cae2c00c4626245219b8b8e4dee603e168f4b4adc8f00b3fe8efef2a957\";a:4:{s:10:\"expiration\";i:1715281173;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36\";s:5:\"login\";i:1715108373;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','53');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:3:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-05-07T19:37:46.014Z\";s:4:\"core\";a:2:{s:10:\"openPanels\";a:5:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:23:\"taxonomy-panel-category\";i:3;s:12:\"post-excerpt\";i:4;s:14:\"featured-image\";}s:10:\"editorMode\";s:6:\"visual\";}}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','unfold=1&mfold=o&editor=tinymce&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1715110752');
INSERT INTO `wp_usermeta` VALUES (23,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_event','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_event','a:0:{}');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'ianpetercreative','$P$B4arKRxzFR0XwEp/lzYrx9O8TYqxYt1','ianpetercreative','ianpetercreative@gmail.com','http://fictional-university.local','2024-03-15 22:57:52','',0,'ianpetercreative');
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

-- Dump completed on 2024-05-08 12:17:06
