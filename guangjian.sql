/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : guangjian

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-08-05 23:11:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phome_commentmeta
-- ----------------------------
DROP TABLE IF EXISTS `phome_commentmeta`;
CREATE TABLE `phome_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of phome_commentmeta
-- ----------------------------

-- ----------------------------
-- Table structure for phome_comments
-- ----------------------------
DROP TABLE IF EXISTS `phome_comments`;
CREATE TABLE `phome_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of phome_comments
-- ----------------------------
INSERT INTO `phome_comments` VALUES ('1', '1', '一位WordPress评论者', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-02 23:03:06', '2018-08-02 15:03:06', '嗨，这是一条评论。\n要开始审核、编辑及删除评论，请访问仪表盘的“评论”页面。\n评论者头像来自<a href=\"https://gravatar.com\">Gravatar</a>。', '0', '1', '', '', '0', '0');

-- ----------------------------
-- Table structure for phome_links
-- ----------------------------
DROP TABLE IF EXISTS `phome_links`;
CREATE TABLE `phome_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of phome_links
-- ----------------------------

-- ----------------------------
-- Table structure for phome_options
-- ----------------------------
DROP TABLE IF EXISTS `phome_options`;
CREATE TABLE `phome_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of phome_options
-- ----------------------------
INSERT INTO `phome_options` VALUES ('1', 'siteurl', 'http://www.guangjian.com', 'yes');
INSERT INTO `phome_options` VALUES ('2', 'home', 'http://www.guangjian.com', 'yes');
INSERT INTO `phome_options` VALUES ('3', 'blogname', '广建水泥制品有限公司', 'yes');
INSERT INTO `phome_options` VALUES ('4', 'blogdescription', '又一个WordPress站点', 'yes');
INSERT INTO `phome_options` VALUES ('5', 'users_can_register', '0', 'yes');
INSERT INTO `phome_options` VALUES ('6', 'admin_email', '1437368102@qq.com', 'yes');
INSERT INTO `phome_options` VALUES ('7', 'start_of_week', '1', 'yes');
INSERT INTO `phome_options` VALUES ('8', 'use_balanceTags', '0', 'yes');
INSERT INTO `phome_options` VALUES ('9', 'use_smilies', '1', 'yes');
INSERT INTO `phome_options` VALUES ('10', 'require_name_email', '1', 'yes');
INSERT INTO `phome_options` VALUES ('11', 'comments_notify', '1', 'yes');
INSERT INTO `phome_options` VALUES ('12', 'posts_per_rss', '10', 'yes');
INSERT INTO `phome_options` VALUES ('13', 'rss_use_excerpt', '0', 'yes');
INSERT INTO `phome_options` VALUES ('14', 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `phome_options` VALUES ('15', 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `phome_options` VALUES ('16', 'mailserver_pass', 'password', 'yes');
INSERT INTO `phome_options` VALUES ('17', 'mailserver_port', '110', 'yes');
INSERT INTO `phome_options` VALUES ('18', 'default_category', '1', 'yes');
INSERT INTO `phome_options` VALUES ('19', 'default_comment_status', 'open', 'yes');
INSERT INTO `phome_options` VALUES ('20', 'default_ping_status', 'open', 'yes');
INSERT INTO `phome_options` VALUES ('21', 'default_pingback_flag', '1', 'yes');
INSERT INTO `phome_options` VALUES ('22', 'posts_per_page', '10', 'yes');
INSERT INTO `phome_options` VALUES ('23', 'date_format', 'Y年n月j日', 'yes');
INSERT INTO `phome_options` VALUES ('24', 'time_format', 'ag:i', 'yes');
INSERT INTO `phome_options` VALUES ('25', 'links_updated_date_format', 'Y年n月j日ag:i', 'yes');
INSERT INTO `phome_options` VALUES ('26', 'comment_moderation', '0', 'yes');
INSERT INTO `phome_options` VALUES ('27', 'moderation_notify', '1', 'yes');
INSERT INTO `phome_options` VALUES ('28', 'permalink_structure', '', 'yes');
INSERT INTO `phome_options` VALUES ('29', 'rewrite_rules', '', 'yes');
INSERT INTO `phome_options` VALUES ('30', 'hack_file', '0', 'yes');
INSERT INTO `phome_options` VALUES ('31', 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `phome_options` VALUES ('32', 'moderation_keys', '', 'no');
INSERT INTO `phome_options` VALUES ('33', 'active_plugins', 'a:0:{}', 'yes');
INSERT INTO `phome_options` VALUES ('34', 'category_base', '', 'yes');
INSERT INTO `phome_options` VALUES ('35', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `phome_options` VALUES ('36', 'comment_max_links', '2', 'yes');
INSERT INTO `phome_options` VALUES ('37', 'gmt_offset', '0', 'yes');
INSERT INTO `phome_options` VALUES ('38', 'default_email_category', '1', 'yes');
INSERT INTO `phome_options` VALUES ('39', 'recently_edited', '', 'no');
INSERT INTO `phome_options` VALUES ('40', 'template', 'start-magazine', 'yes');
INSERT INTO `phome_options` VALUES ('41', 'stylesheet', 'start-magazine', 'yes');
INSERT INTO `phome_options` VALUES ('42', 'comment_whitelist', '1', 'yes');
INSERT INTO `phome_options` VALUES ('43', 'blacklist_keys', '', 'no');
INSERT INTO `phome_options` VALUES ('44', 'comment_registration', '0', 'yes');
INSERT INTO `phome_options` VALUES ('45', 'html_type', 'text/html', 'yes');
INSERT INTO `phome_options` VALUES ('46', 'use_trackback', '0', 'yes');
INSERT INTO `phome_options` VALUES ('47', 'default_role', 'subscriber', 'yes');
INSERT INTO `phome_options` VALUES ('48', 'db_version', '38590', 'yes');
INSERT INTO `phome_options` VALUES ('49', 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `phome_options` VALUES ('50', 'upload_path', '', 'yes');
INSERT INTO `phome_options` VALUES ('51', 'blog_public', '1', 'yes');
INSERT INTO `phome_options` VALUES ('52', 'default_link_category', '2', 'yes');
INSERT INTO `phome_options` VALUES ('53', 'show_on_front', 'posts', 'yes');
INSERT INTO `phome_options` VALUES ('54', 'tag_base', '', 'yes');
INSERT INTO `phome_options` VALUES ('55', 'show_avatars', '1', 'yes');
INSERT INTO `phome_options` VALUES ('56', 'avatar_rating', 'G', 'yes');
INSERT INTO `phome_options` VALUES ('57', 'upload_url_path', '', 'yes');
INSERT INTO `phome_options` VALUES ('58', 'thumbnail_size_w', '150', 'yes');
INSERT INTO `phome_options` VALUES ('59', 'thumbnail_size_h', '150', 'yes');
INSERT INTO `phome_options` VALUES ('60', 'thumbnail_crop', '1', 'yes');
INSERT INTO `phome_options` VALUES ('61', 'medium_size_w', '300', 'yes');
INSERT INTO `phome_options` VALUES ('62', 'medium_size_h', '300', 'yes');
INSERT INTO `phome_options` VALUES ('63', 'avatar_default', 'mystery', 'yes');
INSERT INTO `phome_options` VALUES ('64', 'large_size_w', '1024', 'yes');
INSERT INTO `phome_options` VALUES ('65', 'large_size_h', '1024', 'yes');
INSERT INTO `phome_options` VALUES ('66', 'image_default_link_type', 'none', 'yes');
INSERT INTO `phome_options` VALUES ('67', 'image_default_size', '', 'yes');
INSERT INTO `phome_options` VALUES ('68', 'image_default_align', '', 'yes');
INSERT INTO `phome_options` VALUES ('69', 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `phome_options` VALUES ('70', 'close_comments_days_old', '14', 'yes');
INSERT INTO `phome_options` VALUES ('71', 'thread_comments', '1', 'yes');
INSERT INTO `phome_options` VALUES ('72', 'thread_comments_depth', '5', 'yes');
INSERT INTO `phome_options` VALUES ('73', 'page_comments', '0', 'yes');
INSERT INTO `phome_options` VALUES ('74', 'comments_per_page', '50', 'yes');
INSERT INTO `phome_options` VALUES ('75', 'default_comments_page', 'newest', 'yes');
INSERT INTO `phome_options` VALUES ('76', 'comment_order', 'asc', 'yes');
INSERT INTO `phome_options` VALUES ('77', 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `phome_options` VALUES ('78', 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('79', 'widget_text', 'a:0:{}', 'yes');
INSERT INTO `phome_options` VALUES ('80', 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO `phome_options` VALUES ('81', 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `phome_options` VALUES ('82', 'timezone_string', 'Asia/Shanghai', 'yes');
INSERT INTO `phome_options` VALUES ('83', 'page_for_posts', '0', 'yes');
INSERT INTO `phome_options` VALUES ('84', 'page_on_front', '0', 'yes');
INSERT INTO `phome_options` VALUES ('85', 'default_post_format', '0', 'yes');
INSERT INTO `phome_options` VALUES ('86', 'link_manager_enabled', '0', 'yes');
INSERT INTO `phome_options` VALUES ('87', 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO `phome_options` VALUES ('88', 'site_icon', '0', 'yes');
INSERT INTO `phome_options` VALUES ('89', 'medium_large_size_w', '768', 'yes');
INSERT INTO `phome_options` VALUES ('90', 'medium_large_size_h', '0', 'yes');
INSERT INTO `phome_options` VALUES ('91', 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO `phome_options` VALUES ('92', 'initial_db_version', '38590', 'yes');
INSERT INTO `phome_options` VALUES ('93', 'phome_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO `phome_options` VALUES ('94', 'fresh_site', '1', 'yes');
INSERT INTO `phome_options` VALUES ('95', 'WPLANG', 'zh_CN', 'yes');
INSERT INTO `phome_options` VALUES ('96', 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('97', 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('98', 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('99', 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('100', 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('101', 'sidebars_widgets', 'a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:32:\"sidebar-header-right-widget-area\";a:0:{}s:34:\"sidebar-front-page-widget-area-top\";a:0:{}s:30:\"sidebar-front-page-widget-area\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `phome_options` VALUES ('110', 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('111', 'cron', 'a:5:{i:1533474194;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1533481394;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1533481425;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533481426;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `phome_options` VALUES ('164', 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"1437368102@qq.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533472924;}', 'no');
INSERT INTO `phome_options` VALUES ('159', '_site_transient_timeout_theme_roots', '1533474650', 'no');
INSERT INTO `phome_options` VALUES ('160', '_site_transient_theme_roots', 'a:4:{s:14:\"start-magazine\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');
INSERT INTO `phome_options` VALUES ('142', '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1533472923;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO `phome_options` VALUES ('143', 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533223388;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes');
INSERT INTO `phome_options` VALUES ('123', '_site_transient_timeout_browser_ee118db00558bcd27b39270e5bf67e34', '1533827027', 'no');
INSERT INTO `phome_options` VALUES ('124', '_site_transient_browser_ee118db00558bcd27b39270e5bf67e34', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"68.0.3440.75\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `phome_options` VALUES ('138', 'can_compress_scripts', '1', 'no');
INSERT INTO `phome_options` VALUES ('102', 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('103', 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('104', 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('105', 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('106', 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('107', 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('108', 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('109', 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('141', 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `phome_options` VALUES ('144', '_transient_is_multi_author', '0', 'yes');
INSERT INTO `phome_options` VALUES ('147', 'current_theme', 'Start Magazine', 'yes');
INSERT INTO `phome_options` VALUES ('148', 'theme_mods_start-magazine', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes');
INSERT INTO `phome_options` VALUES ('149', 'theme_switched', '', 'yes');
INSERT INTO `phome_options` VALUES ('150', 'widget_start-magazine-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('151', 'widget_start-magazine-call-to-action', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('152', 'widget_start-magazine-recent-posts-extended', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('153', 'widget_start-magazine-news-block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('154', 'widget_start-magazine-posts-slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('155', 'widget_start-magazine-tabbed', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `phome_options` VALUES ('156', '_transient_start_magazine_categories', '1', 'yes');
INSERT INTO `phome_options` VALUES ('163', '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1533472923;s:7:\"checked\";a:4:{s:14:\"start-magazine\";s:5:\"1.0.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no');

-- ----------------------------
-- Table structure for phome_postmeta
-- ----------------------------
DROP TABLE IF EXISTS `phome_postmeta`;
CREATE TABLE `phome_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of phome_postmeta
-- ----------------------------
INSERT INTO `phome_postmeta` VALUES ('1', '2', '_wp_page_template', 'default');
INSERT INTO `phome_postmeta` VALUES ('2', '3', '_wp_page_template', 'default');

-- ----------------------------
-- Table structure for phome_posts
-- ----------------------------
DROP TABLE IF EXISTS `phome_posts`;
CREATE TABLE `phome_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of phome_posts
-- ----------------------------
INSERT INTO `phome_posts` VALUES ('1', '1', '2018-08-02 23:03:06', '2018-08-02 15:03:06', '欢迎使用WordPress。这是您的第一篇文章。编辑或删除它，然后开始写作吧！', '世界，您好！', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-08-02 23:03:06', '2018-08-02 15:03:06', '', '0', 'http://www.guangjian.com/?p=1', '0', 'post', '', '1');
INSERT INTO `phome_posts` VALUES ('2', '1', '2018-08-02 23:03:06', '2018-08-02 15:03:06', '这是示范页面。页面和博客文章不同，它的位置是固定的，通常会在站点导航栏显示。很多用户都创建一个“关于”页面，向访客介绍自己。例如：\n\n<blockquote>欢迎！我白天是个邮递员，晚上就是个有抱负的演员。这是我的博客。我住在天朝的帝都，有条叫做Jack的狗。</blockquote>\n\n……或这个：\n\n<blockquote>XYZ Doohickey公司成立于1971年，自从建立以来，我们一直向社会贡献着优秀doohickies。我们的公司总部位于天朝魔都，有着超过两千名员工，对魔都政府税收有着巨大贡献。</blockquote>\n\n而您，作为一个WordPress用户，我们建议您访问<a href=\"http://www.guangjian.com/wp-admin/\">控制板</a>，删除本页面，然后添加您自己的页面。祝您使用愉快！', '示例页面', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-08-02 23:03:06', '2018-08-02 15:03:06', '', '0', 'http://www.guangjian.com/?page_id=2', '0', 'page', '', '0');
INSERT INTO `phome_posts` VALUES ('3', '1', '2018-08-02 23:03:06', '2018-08-02 15:03:06', '<h2>Who we are</h2><p>Our website address is: http://www.guangjian.com.</p><h2>What personal data we collect and why we collect it</h2><h3>评论</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>媒体</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-02 23:03:06', '2018-08-02 15:03:06', '', '0', 'http://www.guangjian.com/?page_id=3', '0', 'page', '', '0');
INSERT INTO `phome_posts` VALUES ('4', '1', '2018-08-02 23:03:47', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-02 23:03:47', '0000-00-00 00:00:00', '', '0', 'http://www.guangjian.com/?p=4', '0', 'post', '', '0');

-- ----------------------------
-- Table structure for phome_termmeta
-- ----------------------------
DROP TABLE IF EXISTS `phome_termmeta`;
CREATE TABLE `phome_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of phome_termmeta
-- ----------------------------

-- ----------------------------
-- Table structure for phome_terms
-- ----------------------------
DROP TABLE IF EXISTS `phome_terms`;
CREATE TABLE `phome_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of phome_terms
-- ----------------------------
INSERT INTO `phome_terms` VALUES ('1', '未分类', 'uncategorized', '0');

-- ----------------------------
-- Table structure for phome_term_relationships
-- ----------------------------
DROP TABLE IF EXISTS `phome_term_relationships`;
CREATE TABLE `phome_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of phome_term_relationships
-- ----------------------------
INSERT INTO `phome_term_relationships` VALUES ('1', '1', '0');

-- ----------------------------
-- Table structure for phome_term_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `phome_term_taxonomy`;
CREATE TABLE `phome_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of phome_term_taxonomy
-- ----------------------------
INSERT INTO `phome_term_taxonomy` VALUES ('1', '1', 'category', '', '0', '1');

-- ----------------------------
-- Table structure for phome_usermeta
-- ----------------------------
DROP TABLE IF EXISTS `phome_usermeta`;
CREATE TABLE `phome_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of phome_usermeta
-- ----------------------------
INSERT INTO `phome_usermeta` VALUES ('1', '1', 'nickname', 'admin');
INSERT INTO `phome_usermeta` VALUES ('2', '1', 'first_name', '');
INSERT INTO `phome_usermeta` VALUES ('3', '1', 'last_name', '');
INSERT INTO `phome_usermeta` VALUES ('4', '1', 'description', '');
INSERT INTO `phome_usermeta` VALUES ('5', '1', 'rich_editing', 'true');
INSERT INTO `phome_usermeta` VALUES ('6', '1', 'syntax_highlighting', 'true');
INSERT INTO `phome_usermeta` VALUES ('7', '1', 'comment_shortcuts', 'false');
INSERT INTO `phome_usermeta` VALUES ('8', '1', 'admin_color', 'fresh');
INSERT INTO `phome_usermeta` VALUES ('9', '1', 'use_ssl', '0');
INSERT INTO `phome_usermeta` VALUES ('10', '1', 'show_admin_bar_front', 'true');
INSERT INTO `phome_usermeta` VALUES ('11', '1', 'locale', '');
INSERT INTO `phome_usermeta` VALUES ('12', '1', 'phome_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `phome_usermeta` VALUES ('13', '1', 'phome_user_level', '10');
INSERT INTO `phome_usermeta` VALUES ('14', '1', 'dismissed_wp_pointers', 'wp496_privacy');
INSERT INTO `phome_usermeta` VALUES ('15', '1', 'show_welcome_panel', '1');
INSERT INTO `phome_usermeta` VALUES ('16', '1', 'session_tokens', 'a:1:{s:64:\"dedc3c92425b9e4551309a3c964fc7a966c733d32915647cc9ad4a477cc7fa07\";a:4:{s:10:\"expiration\";i:1534431824;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.75 Safari/537.36\";s:5:\"login\";i:1533222224;}}');
INSERT INTO `phome_usermeta` VALUES ('17', '1', 'phome_dashboard_quick_press_last_post_id', '4');
INSERT INTO `phome_usermeta` VALUES ('18', '1', 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- ----------------------------
-- Table structure for phome_users
-- ----------------------------
DROP TABLE IF EXISTS `phome_users`;
CREATE TABLE `phome_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of phome_users
-- ----------------------------
INSERT INTO `phome_users` VALUES ('1', 'admin', '$P$BFk3BoVGyFAp9qLXJo.SpriLvEZvNO/', 'admin', '1437368102@qq.com', '', '2018-08-02 15:03:06', '', '0', 'admin');
