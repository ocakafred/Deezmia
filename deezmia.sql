-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: deezmia
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Page','page','2022-05-08 00:20:20','2022-12-21 21:59:48'),(2,NULL,1,'Image Slider','image-slider','2022-05-08 00:20:20','2022-12-21 22:00:33'),(3,NULL,1,'products','products','2022-12-22 23:31:50','2022-12-22 23:31:50'),(4,NULL,1,'home','home','2022-12-23 00:44:32','2022-12-23 00:44:32'),(5,NULL,1,'contact','contact','2022-12-23 00:52:07','2022-12-23 00:52:07');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','number','ID',1,0,0,0,0,0,NULL,1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(29,5,'id','number','ID',1,0,0,0,0,0,NULL,1),(30,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(31,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(32,5,'title','text','Title',1,1,1,1,1,1,NULL,4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),(48,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),(51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),(54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),(55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2022-05-08 00:20:19','2022-05-08 00:20:19'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2022-05-08 00:20:19','2022-05-08 00:20:19'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2022-05-08 00:20:19','2022-05-08 00:20:19'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2022-05-08 00:20:20','2022-05-08 00:20:20'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2022-05-08 00:20:20','2022-05-08 00:20:20'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2022-05-08 00:20:20','2022-05-08 00:20:20');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2022-05-08 00:20:19','2022-05-08 00:20:19','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2022-05-08 00:20:19','2022-05-08 00:20:19','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2022-05-08 00:20:19','2022-05-08 00:20:19','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2022-05-08 00:20:19','2022-05-08 00:20:19','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2022-05-08 00:20:19','2022-05-08 00:20:19',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,10,'2022-05-08 00:20:19','2022-05-08 00:20:19','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,11,'2022-05-08 00:20:19','2022-05-08 00:20:19','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,12,'2022-05-08 00:20:19','2022-05-08 00:20:19','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,13,'2022-05-08 00:20:19','2022-05-08 00:20:19','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2022-05-08 00:20:19','2022-05-08 00:20:19','voyager.settings.index',NULL),(11,1,'Categories','','_self','voyager-categories',NULL,NULL,8,'2022-05-08 00:20:20','2022-05-08 00:20:20','voyager.categories.index',NULL),(12,1,'Posts','','_self','voyager-news',NULL,NULL,6,'2022-05-08 00:20:20','2022-05-08 00:20:20','voyager.posts.index',NULL),(13,1,'Pages','','_self','voyager-file-text',NULL,NULL,7,'2022-05-08 00:20:20','2022-05-08 00:20:20','voyager.pages.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2022-05-08 00:20:19','2022-05-08 00:20:19');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_12_14_000001_create_personal_access_tokens_table',1),(25,'2016_01_01_000000_create_pages_table',2),(26,'2016_01_01_000000_create_posts_table',2),(27,'2016_02_15_204651_create_categories_table',2),(28,'2017_04_11_000000_alter_post_nullable_fields_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (3,1,'About us','We Are  your Best For Agro Partners','<h4>Background</h4>\r\n<p>The farm was birthed during Covid in 2020 through prayer; we decided as a couple that we needed a retirement plan especially after the Pandemic affected all streams of income. The farm was purchased in June 2020; then registered as a business a year later in June 2021. The Farm is called Deemzia Agro import and Export Limited. The rationale for Deemzia Agro Limited is to be a commercially viable and sustainable farming enterprise with emphasis on farming and fisheries. Furthermore, its medium to long term goal is to ensure that these sustainable practices are transplanted, via learnings, to the community at large and more specifically, upcoming agricultural scholars.</p>\r\n<h4>Mission</h4>\r\n<p>To encourage community involvement through good skilful agricultural practices</p>\r\n<h4>Vision</h4>\r\n<p>To put in place sustainable and good agricultural and animal husbandry practices in Deemzia Agro Limited with the ultimate aim of being a commercially sustainable agricultural venture that, not only provides high quality produce, but is also a source of learnings for the community at large.</p>\r\n<h4>Core Values</h4>\r\n<ol class=\"list-unstyled\">\r\n<li>Innovation - Using technology to work smarter, faster and more efficiently.</li>\r\n<li>Creativity-coming up with new ideas on how to maximise available resources.</li>\r\n<li>Sustainability- Good agricultural practices with a green foot print for future generations to come.</li>\r\n<li>Fairness - A mutually beneficial and respectful work environment regardless of gender, background or race.</li>\r\n<li>Hard work- Your work will provide for your needs;you will be happy and prosperous. (Psalm 128:2)</li>\r\n</ol>','pages/December2022/ZjdHbp6y44KXPRiMVv81.jpeg','about-us','about us page','About us,','ACTIVE','2022-12-21 22:05:03','2022-12-21 22:39:38'),(4,1,'Things We Do','N/A','<section class=\"what-we-do-area\">\r\n<div class=\"container position-relative\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-lg-7 col-md-8\">\r\n<h3 class=\"section-title text-center\">Explore what we do</h3>\r\n</div>\r\n</div>\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-lg-4 col-md-6 col-sm-8\">\r\n<div class=\"what-we-do-item text-center mt-30\">\r\n<h4 class=\"title\">Cropping</h4>\r\n<p>But I must explain to you how all this mistaken idea denouncing pleasure and praising pain was born give</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-md-6 col-sm-8\">\r\n<div class=\"what-we-do-item text-center mt-30\">\r\n<h4 class=\"title\">Fish Farming</h4>\r\n<p>But I must explain to you how all this mistaken idea denouncing pleasure and praising pain was born give</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-md-6 col-sm-8\">\r\n<div class=\"what-we-do-item text-center mt-30\">\r\n<h4 class=\"title\">Plan Designing</h4>\r\n<p>But I must explain to you how all this mistaken idea denouncing pleasure and praising pain was born give</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-md-6 col-sm-8\">\r\n<div class=\"what-we-do-item text-center mt-30\">\r\n<h4 class=\"title\">Piggery</h4>\r\n<p>But I must explain to you how all this mistaken idea denouncing pleasure and praising pain was born give</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-md-6 col-sm-8\">\r\n<div class=\"what-we-do-item text-center mt-30\">\r\n<h4 class=\"title\">Forestry( Cashew)</h4>\r\n<p>But I must explain to you how all this mistaken idea denouncing pleasure and praising pain was born give</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-md-6 col-sm-8\">\r\n<div class=\"what-we-do-item text-center mt-30\">\r\n<h4 class=\"title\">Apiary</h4>\r\n<p>But I must explain to you how all this mistaken idea denouncing pleasure and praising pain was born give</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>',NULL,'services','services','services','ACTIVE','2022-12-21 22:46:45','2022-12-21 22:53:27'),(5,1,'Contact','contact','<div class=\"contact-info-area\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12\">\r\n<div class=\"contact-info\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-4\">\r\n<div class=\"contact-info-item text-center\">\r\n<ul>\r\n<li>Lujoro Village, Amuru District</li>\r\n<li>Northern Uganda</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4\">\r\n<div class=\"contact-info-item text-center\">\r\n<ul>\r\n<li>deezmiaagrofarms2021@gmail.com</li>\r\n<li>&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4\">\r\n<div class=\"contact-info-item text-center\">\r\n<ul>\r\n<li>+256-781-444470</li>\r\n<li>+447-931-726700</li>\r\n<li>+447- 932-556164</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"map\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d510078.3578440853!2d31.59017728437845!3d2.8198768979459365!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1771c46832a393d7%3A0xc94d69318489d9a0!2sOtwee%20Public%20School!5e0!3m2!1sen!2sug!4v1661675559167!5m2!1sen!2sug\" width=\"600\" height=\"450\" allowfullscreen=\"\"></iframe></div>\r\n</div>',NULL,'contact','contact','contact','ACTIVE','2022-12-21 22:59:20','2022-12-21 22:59:20'),(6,1,'Home','We Are Best For Your Agricultural Partner','<div class=\"col-lg-6\">\r\n<div class=\"features-content\">Our Features\r\n<h3 class=\"title\">We Are Best For Your Agricultural Partner</h3>\r\n<div class=\"row features-active\">\r\n<div class=\"col-lg-6\">\r\n<div class=\"features-box text-center mt-30\">\r\n<h5 class=\"title\">Cropping</h5>\r\n<p>We deal in organic crops with quality being one of our main values. The main crops we plant seasonally include Beans, Maize, Soya Beans, Rice, and Cassava</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-6\">\r\n<div class=\"features-box text-center mt-30\">\r\n<h5 class=\"title\">Fish Farming</h5>\r\n<p>At Deezmia, we produce high quality organic fish using sustainable and environmentally friendly methods. We hatchery department which include fingerlings.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-6\">\r\n<div class=\"features-box text-center mt-30\">\r\n<h5 class=\"title\">Piggery</h5>\r\n<p>We have high quality breed of pigs to serve the market needs.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','pages/December2022/VCJn730JA9kXh74epMVJ.jpeg','home','home','home','ACTIVE','2022-12-23 00:48:27','2022-12-23 00:51:28');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2022-05-08 00:20:19','2022-05-08 00:20:19'),(2,'browse_bread',NULL,'2022-05-08 00:20:19','2022-05-08 00:20:19'),(3,'browse_database',NULL,'2022-05-08 00:20:19','2022-05-08 00:20:19'),(4,'browse_media',NULL,'2022-05-08 00:20:19','2022-05-08 00:20:19'),(5,'browse_compass',NULL,'2022-05-08 00:20:19','2022-05-08 00:20:19'),(6,'browse_menus','menus','2022-05-08 00:20:19','2022-05-08 00:20:19'),(7,'read_menus','menus','2022-05-08 00:20:19','2022-05-08 00:20:19'),(8,'edit_menus','menus','2022-05-08 00:20:19','2022-05-08 00:20:19'),(9,'add_menus','menus','2022-05-08 00:20:19','2022-05-08 00:20:19'),(10,'delete_menus','menus','2022-05-08 00:20:19','2022-05-08 00:20:19'),(11,'browse_roles','roles','2022-05-08 00:20:19','2022-05-08 00:20:19'),(12,'read_roles','roles','2022-05-08 00:20:19','2022-05-08 00:20:19'),(13,'edit_roles','roles','2022-05-08 00:20:19','2022-05-08 00:20:19'),(14,'add_roles','roles','2022-05-08 00:20:19','2022-05-08 00:20:19'),(15,'delete_roles','roles','2022-05-08 00:20:19','2022-05-08 00:20:19'),(16,'browse_users','users','2022-05-08 00:20:19','2022-05-08 00:20:19'),(17,'read_users','users','2022-05-08 00:20:19','2022-05-08 00:20:19'),(18,'edit_users','users','2022-05-08 00:20:19','2022-05-08 00:20:19'),(19,'add_users','users','2022-05-08 00:20:19','2022-05-08 00:20:19'),(20,'delete_users','users','2022-05-08 00:20:19','2022-05-08 00:20:19'),(21,'browse_settings','settings','2022-05-08 00:20:19','2022-05-08 00:20:19'),(22,'read_settings','settings','2022-05-08 00:20:19','2022-05-08 00:20:19'),(23,'edit_settings','settings','2022-05-08 00:20:19','2022-05-08 00:20:19'),(24,'add_settings','settings','2022-05-08 00:20:19','2022-05-08 00:20:19'),(25,'delete_settings','settings','2022-05-08 00:20:19','2022-05-08 00:20:19'),(26,'browse_categories','categories','2022-05-08 00:20:20','2022-05-08 00:20:20'),(27,'read_categories','categories','2022-05-08 00:20:20','2022-05-08 00:20:20'),(28,'edit_categories','categories','2022-05-08 00:20:20','2022-05-08 00:20:20'),(29,'add_categories','categories','2022-05-08 00:20:20','2022-05-08 00:20:20'),(30,'delete_categories','categories','2022-05-08 00:20:20','2022-05-08 00:20:20'),(31,'browse_posts','posts','2022-05-08 00:20:20','2022-05-08 00:20:20'),(32,'read_posts','posts','2022-05-08 00:20:20','2022-05-08 00:20:20'),(33,'edit_posts','posts','2022-05-08 00:20:20','2022-05-08 00:20:20'),(34,'add_posts','posts','2022-05-08 00:20:20','2022-05-08 00:20:20'),(35,'delete_posts','posts','2022-05-08 00:20:20','2022-05-08 00:20:20'),(36,'browse_pages','pages','2022-05-08 00:20:20','2022-05-08 00:20:20'),(37,'read_pages','pages','2022-05-08 00:20:20','2022-05-08 00:20:20'),(38,'edit_pages','pages','2022-05-08 00:20:20','2022-05-08 00:20:20'),(39,'add_pages','pages','2022-05-08 00:20:20','2022-05-08 00:20:20'),(40,'delete_pages','pages','2022-05-08 00:20:20','2022-05-08 00:20:20');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (5,1,3,'Crop Farming',NULL,'Organic','<p>NA</p>','posts/December2022/9FNboF0B9rZCbHBqedPC.jpeg','crop-farming',NULL,NULL,'PUBLISHED',0,'2022-12-22 23:33:52','2022-12-22 23:56:31'),(6,1,3,'Fish Farming',NULL,'Fingerlings','<p>Fingerlings</p>','posts/December2022/BAhbAVr7XQihGIyDRBfR.jpg','fish-farming',NULL,NULL,'PUBLISHED',0,'2022-12-22 23:37:21','2022-12-22 23:37:21'),(7,1,3,'Piggery',NULL,'Quality Breed','<p>Quality Breed</p>','posts/December2022/N0Pk7yMMtUIepqmPC7Wa.jpg','piggery',NULL,NULL,'PUBLISHED',0,'2022-12-22 23:38:29','2022-12-22 23:38:29'),(8,1,3,'Cropping',NULL,'Organic','<p>Organic</p>','posts/December2022/FEpQdF7wtAWDMMKcIWzc.jpg','cropping',NULL,NULL,'PUBLISHED',0,'2022-12-22 23:56:01','2022-12-22 23:56:01'),(9,1,2,'Crop Farming',NULL,NULL,'<p>We encourage community involvement through good skillful agricultural practices.</p>','posts/December2022/IkGRD9HL6n8eLpv275hm.jpg','crop-farming_2',NULL,NULL,'PUBLISHED',0,'2022-12-23 00:04:40','2022-12-23 00:04:40'),(10,1,2,'Fish Farming',NULL,NULL,'<p>We produce high quality organic fish using sustainable and environmentally friendly methods</p>','posts/December2022/8JaCtMayXwp83KySD3cd.jpg','fish-farming2',NULL,NULL,'PUBLISHED',0,'2022-12-23 00:06:24','2022-12-23 00:06:24'),(11,1,2,'Piggery',NULL,NULL,'<p>We have high quality breed of pigs to serve&nbsp;&nbsp; the market needs</p>','posts/December2022/MqTsQ3l6AlEIw8yNNIiw.jpg','piggery2',NULL,NULL,'PUBLISHED',0,'2022-12-23 00:07:40','2022-12-23 00:07:40'),(12,1,5,'Header Contact',NULL,'Lujoro Village, Amuru District, Uganda','<div class=\"item\">Phone Number\r\n<p class=\"title\">+256-781-444470</p>\r\n</div>\r\n<div class=\"item\">Email Address\r\n<p class=\"title\">deezmiaagrofarms2021@gmail.com</p>\r\n</div>',NULL,'header-contact',NULL,NULL,'PUBLISHED',0,'2022-12-23 00:56:10','2022-12-24 21:08:11');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2022-05-08 00:20:19','2022-05-08 00:20:19'),(2,'user','Normal User','2022-05-08 00:20:19','2022-05-08 00:20:19');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Deezmia','','text',1,'Site'),(2,'site.description','Site Description','Deezmia','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Deezmia','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Deezmia','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2022-05-08 00:20:20','2022-05-08 00:20:20'),(2,'data_types','display_name_singular',6,'pt','Página','2022-05-08 00:20:20','2022-05-08 00:20:20'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2022-05-08 00:20:20','2022-05-08 00:20:20'),(4,'data_types','display_name_singular',4,'pt','Categoria','2022-05-08 00:20:20','2022-05-08 00:20:20'),(5,'data_types','display_name_singular',2,'pt','Menu','2022-05-08 00:20:20','2022-05-08 00:20:20'),(6,'data_types','display_name_singular',3,'pt','Função','2022-05-08 00:20:20','2022-05-08 00:20:20'),(7,'data_types','display_name_plural',5,'pt','Posts','2022-05-08 00:20:20','2022-05-08 00:20:20'),(8,'data_types','display_name_plural',6,'pt','Páginas','2022-05-08 00:20:20','2022-05-08 00:20:20'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2022-05-08 00:20:20','2022-05-08 00:20:20'),(10,'data_types','display_name_plural',4,'pt','Categorias','2022-05-08 00:20:20','2022-05-08 00:20:20'),(11,'data_types','display_name_plural',2,'pt','Menus','2022-05-08 00:20:20','2022-05-08 00:20:20'),(12,'data_types','display_name_plural',3,'pt','Funções','2022-05-08 00:20:20','2022-05-08 00:20:20'),(13,'categories','slug',1,'pt','categoria-1','2022-05-08 00:20:20','2022-05-08 00:20:20'),(14,'categories','name',1,'pt','Categoria 1','2022-05-08 00:20:20','2022-05-08 00:20:20'),(15,'categories','slug',2,'pt','categoria-2','2022-05-08 00:20:20','2022-05-08 00:20:20'),(16,'categories','name',2,'pt','Categoria 2','2022-05-08 00:20:20','2022-05-08 00:20:20'),(17,'pages','title',1,'pt','Olá Mundo','2022-05-08 00:20:20','2022-05-08 00:20:20'),(18,'pages','slug',1,'pt','ola-mundo','2022-05-08 00:20:20','2022-05-08 00:20:20'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2022-05-08 00:20:20','2022-05-08 00:20:20'),(20,'menu_items','title',1,'pt','Painel de Controle','2022-05-08 00:20:20','2022-05-08 00:20:20'),(21,'menu_items','title',2,'pt','Media','2022-05-08 00:20:20','2022-05-08 00:20:20'),(22,'menu_items','title',12,'pt','Publicações','2022-05-08 00:20:20','2022-05-08 00:20:20'),(23,'menu_items','title',3,'pt','Utilizadores','2022-05-08 00:20:20','2022-05-08 00:20:20'),(24,'menu_items','title',11,'pt','Categorias','2022-05-08 00:20:20','2022-05-08 00:20:20'),(25,'menu_items','title',13,'pt','Páginas','2022-05-08 00:20:20','2022-05-08 00:20:20'),(26,'menu_items','title',4,'pt','Funções','2022-05-08 00:20:20','2022-05-08 00:20:20'),(27,'menu_items','title',5,'pt','Ferramentas','2022-05-08 00:20:20','2022-05-08 00:20:20'),(28,'menu_items','title',6,'pt','Menus','2022-05-08 00:20:20','2022-05-08 00:20:20'),(29,'menu_items','title',7,'pt','Base de dados','2022-05-08 00:20:20','2022-05-08 00:20:20'),(30,'menu_items','title',10,'pt','Configurações','2022-05-08 00:20:20','2022-05-08 00:20:20');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/default.png',NULL,'$2y$10$5otJ2AkatYku42.eq4SMoec.o9u/JjVtE7MOI3qUir/S4mxbVOHni','rSr9WFScz8DufdhYRUL4Cefmw92wpHLAssNGEjAKO0DhGoL6byoc78gxqKDM',NULL,'2022-05-08 00:20:20','2022-05-08 00:20:20'),(2,1,'Alfred','ocakafred@gmail.com','users/default.png',NULL,'$2y$10$VVC0tcE2XzFseSmENi709OXlhThex8.cUE7/9imASLefEp.84Fz0q',NULL,'{\"locale\":\"en\"}','2022-06-12 23:25:28','2022-12-24 21:26:28'),(3,1,'Deezmia','deezmia20@gmail.com','users/default.png',NULL,'$2y$10$JCMAKS..AtaShJOLhn06KOA3H.r5384BG.FoBADBGYu//vakjlWQS',NULL,'{\"locale\":\"en\"}','2022-12-24 21:28:13','2022-12-24 21:28:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-24 11:39:30
