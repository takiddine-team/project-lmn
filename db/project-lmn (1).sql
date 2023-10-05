-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 05, 2023 at 05:00 PM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-lmn`
--

-- --------------------------------------------------------

--
-- Table structure for table `lmnoxp_commentmeta`
--

CREATE TABLE `lmnoxp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lmnoxp_comments`
--

CREATE TABLE `lmnoxp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lmnoxp_links`
--

CREATE TABLE `lmnoxp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lmnoxp_options`
--

CREATE TABLE `lmnoxp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lmnoxp_options`
--

INSERT INTO `lmnoxp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://project-lmn.takiddine.art', 'yes'),
(2, 'home', 'https://project-lmn.takiddine.art', 'yes'),
(3, 'blogname', 'LMN', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'takiddine.job@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:122:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"artistes/?$\";s:28:\"index.php?post_type=artistes\";s:41:\"artistes/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=artistes&feed=$matches[1]\";s:36:\"artistes/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=artistes&feed=$matches[1]\";s:28:\"artistes/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=artistes&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"artistes/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"artistes/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"artistes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"artistes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"artistes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"artistes/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"artistes/([^/]+)/embed/?$\";s:41:\"index.php?artistes=$matches[1]&embed=true\";s:29:\"artistes/([^/]+)/trackback/?$\";s:35:\"index.php?artistes=$matches[1]&tb=1\";s:49:\"artistes/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?artistes=$matches[1]&feed=$matches[2]\";s:44:\"artistes/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?artistes=$matches[1]&feed=$matches[2]\";s:37:\"artistes/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?artistes=$matches[1]&paged=$matches[2]\";s:44:\"artistes/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?artistes=$matches[1]&cpage=$matches[2]\";s:33:\"artistes/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?artistes=$matches[1]&page=$matches[2]\";s:25:\"artistes/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"artistes/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"artistes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"artistes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"artistes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"artistes/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:49:\"category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?artistes_category=$matches[1]&feed=$matches[2]\";s:44:\"category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?artistes_category=$matches[1]&feed=$matches[2]\";s:25:\"category/([^/]+)/embed/?$\";s:50:\"index.php?artistes_category=$matches[1]&embed=true\";s:37:\"category/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?artistes_category=$matches[1]&paged=$matches[2]\";s:19:\"category/([^/]+)/?$\";s:39:\"index.php?artistes_category=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:38:\"post-duplicator/m4c-postduplicator.php\";i:3;s:45:\"search-and-replace/inpsyde-search-replace.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'lmn_webyde', 'yes'),
(41, 'stylesheet', 'lmn_webyde', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '9', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1701282255', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'lmnoxp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '2', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"home_sidebar\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:16:\"footer_widgets_1\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:16:\"footer_widgets_2\";a:0:{}s:16:\"footer_widgets_3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1696519456;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1696530256;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1696530268;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1696530269;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1696653235;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1696703056;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1685730758;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'https_detection_errors', 'a:0:{}', 'yes'),
(152, 'recently_activated', 'a:0:{}', 'yes'),
(161, 'finished_updating_comment_type', '1', 'yes'),
(162, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1696517685;s:7:\"checked\";a:1:{s:10:\"lmn_webyde\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(163, 'current_theme', 'THEME NAME', 'yes'),
(164, 'theme_mods_lmn_webyde', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(166, 'redux_version_upgraded_from', '3.6.8', 'yes'),
(167, 'widget_categories_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(168, 'widget_featured_slider_sidebar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(169, 'widget_tags_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(170, 'widget_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(171, 'widget_social_media_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(172, 'widget_about_me_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(173, 'widget_popular_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'widget_insta_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(175, 'widget_video_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'widget_footerwidgetlads', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'widget_centerwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(178, 'widget_rightwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(179, 'theme_setting', 'a:12:{s:10:\"site-title\";s:10:\"site title\";s:8:\"logo-url\";a:1:{s:3:\"url\";s:87:\"https://project-lmn.takiddine.art-content/themes/lmn_webyde/core/assets/images/logo.png\";}s:11:\"favicon-url\";a:1:{s:3:\"url\";s:86:\"https://project-lmn.takiddine.art-content/themes/lmn_webyde/core/assets/images/fav.png\";}s:18:\"footer_copy_rights\";s:29:\"2018 (c) All rights reserved \";s:8:\"facebook\";s:23:\"http://www.facebook.com\";s:7:\"twitter\";s:22:\"http://www.twitter.com\";s:8:\"linkedin\";s:23:\"http://www.linkedin.com\";s:9:\"pinterest\";s:24:\"http://www.pinitrest.com\";s:9:\"instagram\";s:24:\"http://www.instagram.com\";s:10:\"googleplus\";s:21:\"http://www.google.com\";s:7:\"youtube\";s:22:\"http://www.youtube.com\";s:10:\"soundcloud\";s:22:\"http://www.youtube.com\";}', 'yes'),
(180, 'theme_setting-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1685730758;}', 'yes'),
(183, '_cs_options', 'a:101:{s:14:\"color_picker_1\";s:7:\"#3498db\";s:8:\"number_1\";s:2:\"10\";s:13:\"unique_text_4\";s:30:\"some default value bla bla bla\";s:13:\"unique_text_9\";s:15:\"info@domain.com\";s:14:\"unique_text_10\";s:5:\"Hello\";s:17:\"unique_textarea_4\";s:30:\"some default value bla bla bla\";s:17:\"unique_checkbox_2\";b:1;s:17:\"unique_checkbox_5\";s:3:\"bmw\";s:17:\"unique_checkbox_6\";a:3:{i:0;s:5:\"green\";i:1;s:6:\"yellow\";i:2;s:3:\"red\";}s:14:\"unique_radio_2\";s:7:\"nothing\";s:15:\"unique_select_4\";s:8:\"tertiary\";s:15:\"unique_select_7\";a:3:{i:0;s:3:\"bmw\";i:1;s:8:\"mercedes\";i:2;s:4:\"opel\";}s:17:\"unique_switcher_4\";b:1;s:15:\"unique_number_4\";s:2:\"10\";s:13:\"unique_icon_4\";s:11:\"fa fa-check\";s:14:\"unique_group_2\";a:2:{i:0;a:3:{s:19:\"unique_group_2_text\";s:9:\"Some text\";s:23:\"unique_group_2_switcher\";b:1;s:23:\"unique_group_2_textarea\";s:12:\"Some content\";}i:1;a:3:{s:19:\"unique_group_2_text\";s:11:\"Some text 2\";s:23:\"unique_group_2_switcher\";b:1;s:23:\"unique_group_2_textarea\";s:14:\"Some content 2\";}}s:15:\"unique_upload_4\";s:16:\"screenshot-1.png\";s:19:\"unique_background_3\";a:5:{s:5:\"image\";s:13:\"something.png\";s:6:\"repeat\";s:8:\"repeat-x\";s:8:\"position\";s:13:\"center center\";s:10:\"attachment\";s:5:\"fixed\";s:5:\"color\";s:7:\"#ffbc00\";}s:19:\"unique_background_4\";a:1:{s:5:\"color\";s:4:\"#222\";}s:21:\"unique_color_picker_1\";s:7:\"#dd3333\";s:21:\"unique_color_picker_5\";s:21:\"rgba(0, 0, 255, 0.25)\";s:21:\"unique_color_picker_6\";s:21:\"rgba(0, 255, 0, 0.75)\";s:21:\"unique_image_select_2\";s:7:\"value-2\";s:21:\"unique_image_select_3\";s:7:\"value-3\";s:21:\"unique_image_select_4\";s:7:\"value-2\";s:21:\"unique_image_select_5\";a:4:{i:0;s:7:\"value-3\";i:1;s:7:\"value-4\";i:2;s:7:\"value-5\";i:3;s:7:\"value-6\";}s:19:\"unique_typography_1\";a:3:{s:6:\"family\";s:9:\"Open Sans\";s:4:\"font\";s:6:\"google\";s:7:\"variant\";s:3:\"800\";}s:19:\"unique_typography_2\";a:2:{s:6:\"family\";s:6:\"Ubuntu\";s:4:\"font\";s:6:\"google\";}s:19:\"unique_typography_3\";a:2:{s:6:\"family\";s:5:\"Arial\";s:4:\"font\";s:7:\"websafe\";}s:8:\"sorter_1\";a:2:{s:7:\"enabled\";a:3:{s:3:\"bmw\";s:3:\"BMW\";s:8:\"mercedes\";s:8:\"Mercedes\";s:10:\"volkswagen\";s:10:\"Volkswagen\";}s:8:\"disabled\";a:2:{s:7:\"ferrari\";s:7:\"Ferrari\";s:7:\"mustang\";s:7:\"Mustang\";}}s:8:\"sorter_2\";a:2:{s:7:\"enabled\";a:6:{s:4:\"blue\";s:4:\"Blue\";s:5:\"green\";s:5:\"Green\";s:3:\"red\";s:3:\"Red\";s:6:\"yellow\";s:6:\"Yellow\";s:6:\"orange\";s:6:\"Orange\";s:5:\"ocean\";s:5:\"Ocean\";}s:8:\"disabled\";a:2:{s:5:\"black\";s:5:\"Black\";s:5:\"white\";s:5:\"White\";}}s:10:\"fieldset_2\";a:3:{s:15:\"fieldset_2_text\";s:5:\"Hello\";s:19:\"fieldset_2_checkbox\";b:1;s:19:\"fieldset_2_textarea\";s:8:\"Do stuff\";}s:15:\"validate_text_1\";s:15:\"info@domain.com\";s:14:\"numeric_text_1\";s:6:\"123456\";s:15:\"required_text_1\";s:11:\"lorem ipsum\";s:5:\"dep_4\";s:3:\"yes\";s:9:\"dep_6_alt\";s:4:\"gray\";s:5:\"dep_7\";s:4:\"gray\";s:9:\"dep_7_alt\";s:4:\"gray\";s:6:\"text_1\";s:0:\"\";s:10:\"textarea_1\";s:0:\"\";s:10:\"switcher_1\";b:0;s:10:\"checkbox_1\";b:0;s:14:\"image_select_1\";s:0:\"\";s:6:\"text_2\";s:0:\"\";s:10:\"textarea_2\";s:0:\"\";s:13:\"unique_text_1\";s:0:\"\";s:13:\"unique_text_2\";s:0:\"\";s:13:\"unique_text_3\";s:0:\"\";s:13:\"unique_text_5\";s:0:\"\";s:13:\"unique_text_6\";s:0:\"\";s:13:\"unique_text_7\";s:0:\"\";s:13:\"unique_text_8\";s:0:\"\";s:14:\"unique_text_11\";s:0:\"\";s:14:\"unique_text_12\";s:0:\"\";s:14:\"unique_text_13\";s:0:\"\";s:17:\"unique_textarea_1\";s:0:\"\";s:19:\"unique_textarea_1_1\";s:0:\"\";s:17:\"unique_textarea_2\";s:0:\"\";s:17:\"unique_textarea_3\";s:0:\"\";s:17:\"unique_textarea_5\";s:0:\"\";s:17:\"unique_textarea_6\";s:0:\"\";s:17:\"unique_textarea_7\";s:0:\"\";s:17:\"unique_textarea_8\";s:0:\"\";s:18:\"unique_textarea_13\";s:0:\"\";s:17:\"unique_checkbox_1\";b:0;s:17:\"unique_checkbox_3\";b:0;s:17:\"unique_checkbox_4\";b:0;s:17:\"unique_checkbox_7\";b:0;s:17:\"unique_checkbox_8\";b:0;s:17:\"unique_checkbox_9\";b:0;s:18:\"unique_checkbox_10\";b:0;s:18:\"unique_checkbox_11\";b:0;s:18:\"unique_checkbox_12\";b:0;s:18:\"unique_checkbox_13\";b:0;s:18:\"unique_checkbox_14\";b:0;s:17:\"unique_switcher_1\";b:0;s:17:\"unique_switcher_2\";b:0;s:17:\"unique_switcher_3\";b:0;s:14:\"unique_group_1\";s:0:\"\";s:14:\"unique_group_3\";s:0:\"\";s:14:\"unique_group_4\";s:0:\"\";s:21:\"unique_image_select_1\";s:0:\"\";s:20:\"unique_others_text_1\";s:0:\"\";s:20:\"unique_others_text_2\";s:0:\"\";s:20:\"unique_others_text_3\";s:0:\"\";s:20:\"unique_others_text_4\";s:0:\"\";s:20:\"unique_others_text_5\";s:0:\"\";s:20:\"unique_others_text_6\";s:0:\"\";s:20:\"unique_others_text_7\";s:0:\"\";s:20:\"unique_others_text_8\";s:0:\"\";s:20:\"unique_others_text_9\";s:0:\"\";s:14:\"sanitie_text_1\";s:0:\"\";s:18:\"sanitie_textarea_1\";s:0:\"\";s:5:\"dep_1\";s:0:\"\";s:5:\"dep_2\";b:0;s:5:\"dep_5\";b:0;s:5:\"dep_6\";s:0:\"\";s:6:\"dep_10\";s:0:\"\";s:6:\"dep_11\";s:0:\"\";s:6:\"dep_12\";b:0;}', 'yes'),
(196, '_transient_health-check-site-status-result', '{\"good\":19,\"recommended\":3,\"critical\":1}', 'yes'),
(213, 'recovery_mode_email_last_sent', '1689714525', 'yes'),
(250, 'mtphr_post_duplicator_settings', '', 'yes'),
(253, 'taxonomy_3', 'a:2:{s:19:\"category-background\";s:7:\"#ff7a06\";s:14:\"category-color\";s:7:\"#000000\";}', 'yes'),
(254, 'taxonomy_4', 'a:2:{s:19:\"category-background\";s:7:\"#f846f8\";s:14:\"category-color\";s:0:\"\";}', 'yes'),
(256, 'taxonomy_5', 'a:2:{s:19:\"category-background\";s:7:\"#eeee22\";s:14:\"category-color\";s:7:\"#dd3333\";}', 'yes'),
(264, 'partner_name', 'lmllmLMLM', 'yes'),
(265, 'partner_url', 'MLMLLLLLLLLLLLLLLLLLL', 'yes'),
(268, 'partners_list', 'a:4:{i:4;a:4:{s:2:\"id\";s:1:\"4\";s:5:\"image\";s:66:\"https://project-lmn.takiddine.art/wp-content/uploads/2023/06/1.png\";s:5:\"title\";s:0:\"\";s:4:\"link\";s:0:\"\";}i:5;a:4:{s:2:\"id\";s:1:\"5\";s:5:\"image\";s:66:\"https://project-lmn.takiddine.art/wp-content/uploads/2023/06/1.png\";s:5:\"title\";s:0:\"\";s:4:\"link\";s:0:\"\";}i:6;a:4:{s:2:\"id\";s:1:\"6\";s:5:\"image\";s:66:\"https://project-lmn.takiddine.art/wp-content/uploads/2023/06/1.png\";s:5:\"title\";s:0:\"\";s:4:\"link\";s:0:\"\";}i:3;a:4:{s:2:\"id\";s:1:\"3\";s:5:\"image\";s:66:\"https://project-lmn.takiddine.art/wp-content/uploads/2023/06/1.png\";s:5:\"title\";s:0:\"\";s:4:\"link\";s:0:\"\";}}', 'yes'),
(295, 'lmn_certification_album_single', '25', 'yes'),
(296, 'lmn_cumulative_youtube_views', '352', 'yes'),
(297, 'lmn_instagram_followers', '135', 'yes'),
(298, 'lmn_spotify_streams', '690', 'yes'),
(326, 'category_children', 'a:0:{}', 'yes'),
(347, 'taxonomy_6', 'a:2:{s:19:\"category-background\";s:7:\"#eeee22\";s:14:\"category-color\";s:7:\"#000000\";}', 'yes'),
(380, 'taxonomy_7', 'a:2:{s:19:\"category-background\";s:7:\"#dd3333\";s:14:\"category-color\";s:7:\"#000000\";}', 'yes'),
(453, 'acf_version', '6.1.7', 'yes'),
(459, 'WPLANG', '', 'yes'),
(460, 'new_admin_email', 'takiddine.job@gmail.com', 'yes'),
(465, 'options_partners_0_partner_name', 'title', 'no'),
(466, '_options_partners_0_partner_name', 'field_64b6f83f5117e', 'no'),
(467, 'options_partners_0_logo', '35', 'no'),
(468, '_options_partners_0_logo', 'field_64b6f8a95117f', 'no'),
(469, 'options_partners_1_partner_name', 'title', 'no'),
(470, '_options_partners_1_partner_name', 'field_64b6f83f5117e', 'no'),
(471, 'options_partners_1_logo', '35', 'no'),
(472, '_options_partners_1_logo', 'field_64b6f8a95117f', 'no'),
(473, 'options_partners_2_partner_name', 'title', 'no'),
(474, '_options_partners_2_partner_name', 'field_64b6f83f5117e', 'no'),
(475, 'options_partners_2_logo', '35', 'no'),
(476, '_options_partners_2_logo', 'field_64b6f8a95117f', 'no'),
(477, 'options_partners_3_partner_name', 'title', 'no'),
(478, '_options_partners_3_partner_name', 'field_64b6f83f5117e', 'no'),
(479, 'options_partners_3_logo', '35', 'no'),
(480, '_options_partners_3_logo', 'field_64b6f8a95117f', 'no'),
(481, 'options_partners', '4', 'no'),
(482, '_options_partners', 'field_64b6f8125117d', 'no'),
(483, 'options_facebook_link', 'https://www.facebook.com', 'no'),
(484, '_options_facebook_link', 'field_64b6fa735a224', 'no'),
(485, 'options_twitter_link', 'https://www.twitter.com', 'no'),
(486, '_options_twitter_link', 'field_64b6fa905a225', 'no'),
(487, 'options_youtube_link', 'https://www.youtube.com', 'no'),
(488, '_options_youtube_link', 'field_64b6fa9a5a226', 'no'),
(489, 'options_instagram_link', 'https://instagram.com', 'no'),
(490, '_options_instagram_link', 'field_64b6fabe5a227', 'no'),
(493, 'taxonomy_8', 'a:2:{s:19:\"category-background\";s:7:\"#dd3333\";s:14:\"category-color\";s:0:\"\";}', 'yes'),
(494, 'artistes_category_children', 'a:0:{}', 'yes'),
(587, 'db_upgraded', '1', 'yes'),
(590, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"takiddine.job@gmail.com\";s:7:\"version\";s:5:\"6.3.1\";s:9:\"timestamp\";i:1693629239;}', 'no'),
(670, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.1\";s:7:\"version\";s:5:\"6.3.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1696517684;s:15:\"version_checked\";s:5:\"6.3.1\";s:12:\"translations\";a:0:{}}', 'no'),
(802, '_transient_timeout_acf_plugin_updates', '1696690485', 'no'),
(803, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.2.1.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20230908\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.7\";}}', 'no'),
(804, '_site_transient_timeout_theme_roots', '1696519485', 'no'),
(805, '_site_transient_theme_roots', 'a:1:{s:10:\"lmn_webyde\";s:7:\"/themes\";}', 'no'),
(806, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1696517686;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.2.1.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20230908\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:38:\"post-duplicator/m4c-postduplicator.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/post-duplicator\";s:4:\"slug\";s:15:\"post-duplicator\";s:6:\"plugin\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:11:\"new_version\";s:4:\"2.31\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/post-duplicator/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/post-duplicator.2.31.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588\";s:2:\"1x\";s:70:\"https://ps.w.org/post-duplicator/assets/banner-772x250.png?rev=1587588\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.7\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:4:\"2.31\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.1\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `lmnoxp_postmeta`
--

CREATE TABLE `lmnoxp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lmnoxp_postmeta`
--

INSERT INTO `lmnoxp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(10, 9, '_edit_last', '1'),
(11, 9, '_wp_page_template', 'page_home.php'),
(12, 9, '_edit_lock', '1689711696:1'),
(13, 11, '_edit_last', '1'),
(14, 11, '_wp_page_template', 'page-singers.php'),
(15, 11, '_edit_lock', '1689712302:1'),
(16, 13, '_edit_last', '1'),
(17, 13, '_wp_page_template', 'page-label.php'),
(18, 13, '_edit_lock', '1689710764:1'),
(19, 15, '_edit_last', '1'),
(20, 15, '_wp_page_template', 'default'),
(21, 15, '_edit_lock', '1685994231:1'),
(22, 11, '_custom_page_options', 'a:9:{s:14:\"section_1_text\";s:0:\"\";s:18:\"section_1_textarea\";s:0:\"\";s:16:\"section_1_upload\";s:0:\"\";s:24:\"section_2_color_picker_1\";s:7:\"#2ecc71\";s:24:\"section_2_color_picker_2\";s:7:\"#3498db\";s:24:\"section_2_color_picker_3\";s:7:\"#9b59b6\";s:24:\"section_2_color_picker_4\";s:7:\"#34495e\";s:24:\"section_2_color_picker_5\";s:7:\"#e67e22\";s:18:\"section_1_switcher\";b:0;}'),
(23, 11, '_custom_page_side_options', 'a:3:{s:22:\"section_3_image_select\";s:7:\"value-2\";s:14:\"section_3_text\";s:0:\"\";s:18:\"section_3_switcher\";b:1;}'),
(37, 25, '_wp_attached_file', '2023/06/A_black_image.jpg'),
(38, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:25:\"2023/06/A_black_image.jpg\";s:8:\"filesize\";i:32207;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"A_black_image-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1155;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"A_black_image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:545;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"A_black_image-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16287;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 26, '_wp_attached_file', '2023/06/video-2.jpg'),
(40, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:674;s:6:\"height\";i:388;s:4:\"file\";s:19:\"2023/06/video-2.jpg\";s:8:\"filesize\";i:81968;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"video-2-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6880;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"video-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3308;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 27, '_wp_attached_file', '2023/06/video-3.jpg'),
(42, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:674;s:6:\"height\";i:388;s:4:\"file\";s:19:\"2023/06/video-3.jpg\";s:8:\"filesize\";i:67406;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"video-3-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4808;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"video-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2676;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 28, '_wp_attached_file', '2023/06/video-1.jpg'),
(44, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:674;s:6:\"height\";i:388;s:4:\"file\";s:19:\"2023/06/video-1.jpg\";s:8:\"filesize\";i:92022;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"video-1-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7423;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"video-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3716;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 30, '_wp_attached_file', '2023/06/single.jpg'),
(49, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:812;s:6:\"height\";i:1009;s:4:\"file\";s:18:\"2023/06/single.jpg\";s:8:\"filesize\";i:477473;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"single-241x300.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9472;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"single-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4058;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"single-768x954.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:954;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64446;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 31, '_edit_last', '1'),
(60, 31, '_thumbnail_id', '26'),
(61, 31, 'artistes_videos', 'a:3:{i:0;a:4:{s:10:\"video_link\";s:43:\"https://www.youtube.com/watch?v=zQDAi8tI-cU\";s:11:\"video_title\";s:34:\"Doe Boy & Dej Loaf - Roll The Dice\";s:14:\"video_category\";s:7:\"option2\";s:9:\"thumbnail\";s:72:\"https://project-lmn.takiddine.art/wp-content/uploads/2023/06/video-1.jpg\";}i:1;a:4:{s:10:\"video_link\";s:43:\"https://www.youtube.com/watch?v=zQDAi8tI-cU\";s:11:\"video_title\";s:28:\"Benzz - Je M\'appelle - ALBUM\";s:14:\"video_category\";s:7:\"option3\";s:9:\"thumbnail\";s:72:\"https://project-lmn.takiddine.art/wp-content/uploads/2023/06/video-3.jpg\";}i:2;a:4:{s:10:\"video_link\";s:43:\"https://www.youtube.com/watch?v=zQDAi8tI-cU\";s:11:\"video_title\";s:28:\"Benzz - Je M\'appelle - ALBUM\";s:14:\"video_category\";s:7:\"option1\";s:9:\"thumbnail\";s:72:\"https://project-lmn.takiddine.art/wp-content/uploads/2023/06/video-2.jpg\";}}'),
(62, 31, '_edit_lock', '1686082043:1'),
(63, 31, 'social_media_twitter', 'twitter link'),
(64, 31, 'social_media_facebook', 'facebook link'),
(65, 31, 'social_media_instagram', 'instagram link'),
(66, 31, 'social_media_youtube', 'youtube link'),
(67, 31, 'social_media_spotify', 'Spotify link'),
(86, 35, '_wp_attached_file', '2023/06/1.png'),
(87, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:180;s:6:\"height\";i:158;s:4:\"file\";s:13:\"2023/06/1.png\";s:8:\"filesize\";i:5972;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6944;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 44, '_edit_last', '1'),
(98, 44, '_edit_lock', '1689716650:1'),
(108, 45, '_edit_last', '1'),
(109, 45, '_edit_lock', '1689717241:1'),
(110, 45, 'social_media_twitter', ''),
(111, 45, 'social_media_facebook', ''),
(112, 45, 'social_media_instagram', ''),
(113, 45, 'social_media_youtube', ''),
(114, 45, 'social_media_spotify', ''),
(135, 52, '_edit_last', '1'),
(136, 52, '_edit_lock', '1689710760:1'),
(137, 13, 'page_title', 'LMN RECORDS'),
(138, 13, '_page_title', 'field_64b6eb325d3d0'),
(139, 14, 'page_title', 'LMN RECORDS'),
(140, 14, '_page_title', 'field_64b6eb325d3d0'),
(141, 13, 'description_label', 'Welcome to LMN RECORD, a cutting-edge music record label at the forefront of the industry. With a passion for quality music and an unwavering commitment to artistic excellence, we strive to be the driving force behind the next generation of musical talents. At LMN RECORD, we believe in the power of music to transcend boundaries, connect people, and shape culture. Our mission is to discover and nurture exceptional artists, providing them with a platform to amplify their voices and share their unique stories with the world.'),
(142, 13, '_description_label', 'field_64b6ec70673a7'),
(143, 13, '_0_history_title', 'mlsmldq'),
(144, 13, '__0_history_title', 'field_64b6ecfbb8afd'),
(145, 13, '_0_history_description', 'sqdlsl'),
(146, 13, '__0_history_description', 'field_64b6ed12b8afe'),
(147, 13, '_0_history_year', 'sqmlsdlm'),
(148, 13, '__0_history_year', 'field_64b6ed30b8aff'),
(149, 13, '_1_history_title', 'TITLE'),
(150, 13, '__1_history_title', 'field_64b6ecfbb8afd'),
(151, 13, '_1_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(152, 13, '__1_history_description', 'field_64b6ed12b8afe'),
(153, 13, '_1_history_year', '2023'),
(154, 13, '__1_history_year', 'field_64b6ed30b8aff'),
(155, 13, '_2_history_title', 'TITLE'),
(156, 13, '__2_history_title', 'field_64b6ecfbb8afd'),
(157, 13, '_2_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(158, 13, '__2_history_description', 'field_64b6ed12b8afe'),
(159, 13, '_2_history_year', '2023'),
(160, 13, '__2_history_year', 'field_64b6ed30b8aff'),
(161, 13, '_', 'field_64b6eceab8afc'),
(162, 59, 'page_title', 'LMN RECORDS'),
(163, 59, '_page_title', 'field_64b6eb325d3d0'),
(164, 59, 'description_label', 'Welcome to LMN RECORD, a cutting-edge music record label at the forefront of the industry. With a passion for quality music and an unwavering commitment to artistic excellence, we strive to be the driving force behind the next generation of musical talents. At LMN RECORD, we believe in the power of music to transcend boundaries, connect people, and shape culture. Our mission is to discover and nurture exceptional artists, providing them with a platform to amplify their voices and share their unique stories with the world.'),
(165, 59, '_description_label', 'field_64b6ec70673a7'),
(166, 59, '_0_history_title', 'TITLE'),
(167, 59, '__0_history_title', 'field_64b6ecfbb8afd'),
(168, 59, '_0_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(169, 59, '__0_history_description', 'field_64b6ed12b8afe'),
(170, 59, '_0_history_year', '2023'),
(171, 59, '__0_history_year', 'field_64b6ed30b8aff'),
(172, 59, '_1_history_title', 'TITLE'),
(173, 59, '__1_history_title', 'field_64b6ecfbb8afd'),
(174, 59, '_1_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(175, 59, '__1_history_description', 'field_64b6ed12b8afe'),
(176, 59, '_1_history_year', '2023'),
(177, 59, '__1_history_year', 'field_64b6ed30b8aff'),
(178, 59, '_2_history_title', 'TITLE'),
(179, 59, '__2_history_title', 'field_64b6ecfbb8afd'),
(180, 59, '_2_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(181, 59, '__2_history_description', 'field_64b6ed12b8afe'),
(182, 59, '_2_history_year', '2023'),
(183, 59, '__2_history_year', 'field_64b6ed30b8aff'),
(184, 60, 'page_title', 'LMN RECORDS'),
(185, 60, '_page_title', 'field_64b6eb325d3d0'),
(186, 60, 'description_label', 'Welcome to LMN RECORD, a cutting-edge music record label at the forefront of the industry. With a passion for quality music and an unwavering commitment to artistic excellence, we strive to be the driving force behind the next generation of musical talents. At LMN RECORD, we believe in the power of music to transcend boundaries, connect people, and shape culture. Our mission is to discover and nurture exceptional artists, providing them with a platform to amplify their voices and share their unique stories with the world.'),
(187, 60, '_description_label', 'field_64b6ec70673a7'),
(188, 60, '_0_history_title', 'TITLE'),
(189, 60, '__0_history_title', 'field_64b6ecfbb8afd'),
(190, 60, '_0_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(191, 60, '__0_history_description', 'field_64b6ed12b8afe'),
(192, 60, '_0_history_year', '2023'),
(193, 60, '__0_history_year', 'field_64b6ed30b8aff'),
(194, 60, '_1_history_title', 'TITLE'),
(195, 60, '__1_history_title', 'field_64b6ecfbb8afd'),
(196, 60, '_1_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(197, 60, '__1_history_description', 'field_64b6ed12b8afe'),
(198, 60, '_1_history_year', '2023'),
(199, 60, '__1_history_year', 'field_64b6ed30b8aff'),
(200, 60, '_2_history_title', 'TITLE'),
(201, 60, '__2_history_title', 'field_64b6ecfbb8afd'),
(202, 60, '_2_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(203, 60, '__2_history_description', 'field_64b6ed12b8afe'),
(204, 60, '_2_history_year', '2023'),
(205, 60, '__2_history_year', 'field_64b6ed30b8aff'),
(206, 61, 'page_title', 'LMN RECORDS'),
(207, 61, '_page_title', 'field_64b6eb325d3d0'),
(208, 61, 'description_label', 'Welcome to LMN RECORD, a cutting-edge music record label at the forefront of the industry. With a passion for quality music and an unwavering commitment to artistic excellence, we strive to be the driving force behind the next generation of musical talents. At LMN RECORD, we believe in the power of music to transcend boundaries, connect people, and shape culture. Our mission is to discover and nurture exceptional artists, providing them with a platform to amplify their voices and share their unique stories with the world.'),
(209, 61, '_description_label', 'field_64b6ec70673a7'),
(210, 61, '_0_history_title', 'TITLE'),
(211, 61, '__0_history_title', 'field_64b6ecfbb8afd'),
(212, 61, '_0_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(213, 61, '__0_history_description', 'field_64b6ed12b8afe'),
(214, 61, '_0_history_year', '2023\"\"'),
(215, 61, '__0_history_year', 'field_64b6ed30b8aff'),
(216, 61, '_1_history_title', 'TITLE'),
(217, 61, '__1_history_title', 'field_64b6ecfbb8afd'),
(218, 61, '_1_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(219, 61, '__1_history_description', 'field_64b6ed12b8afe'),
(220, 61, '_1_history_year', '2023\"'),
(221, 61, '__1_history_year', 'field_64b6ed30b8aff'),
(222, 61, '_2_history_title', 'TITLE'),
(223, 61, '__2_history_title', 'field_64b6ecfbb8afd'),
(224, 61, '_2_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(225, 61, '__2_history_description', 'field_64b6ed12b8afe'),
(226, 61, '_2_history_year', '2023e'),
(227, 61, '__2_history_year', 'field_64b6ed30b8aff'),
(228, 62, 'page_title', 'LMN RECORDS'),
(229, 62, '_page_title', 'field_64b6eb325d3d0'),
(230, 62, 'description_label', 'Welcome to LMN RECORD, a cutting-edge music record label at the forefront of the industry. With a passion for quality music and an unwavering commitment to artistic excellence, we strive to be the driving force behind the next generation of musical talents. At LMN RECORD, we believe in the power of music to transcend boundaries, connect people, and shape culture. Our mission is to discover and nurture exceptional artists, providing them with a platform to amplify their voices and share their unique stories with the world.'),
(231, 62, '_description_label', 'field_64b6ec70673a7'),
(232, 62, '_0_history_title', 'TITLES'),
(233, 62, '__0_history_title', 'field_64b6ecfbb8afd'),
(234, 62, '_0_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he stasrted his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(235, 62, '__0_history_description', 'field_64b6ed12b8afe'),
(236, 62, '_0_history_year', '2023s'),
(237, 62, '__0_history_year', 'field_64b6ed30b8aff'),
(238, 62, '_1_history_title', 'TITLE'),
(239, 62, '__1_history_title', 'field_64b6ecfbb8afd'),
(240, 62, '_1_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(241, 62, '__1_history_description', 'field_64b6ed12b8afe'),
(242, 62, '_1_history_year', '2023\"'),
(243, 62, '__1_history_year', 'field_64b6ed30b8aff'),
(244, 62, '_2_history_title', 'TITLE'),
(245, 62, '__2_history_title', 'field_64b6ecfbb8afd'),
(246, 62, '_2_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(247, 62, '__2_history_description', 'field_64b6ed12b8afe'),
(248, 62, '_2_history_year', '2023e'),
(249, 62, '__2_history_year', 'field_64b6ed30b8aff'),
(250, 63, 'page_title', 'LMN RECORDS'),
(251, 63, '_page_title', 'field_64b6eb325d3d0'),
(252, 63, 'description_label', 'Welcome to LMN RECORD, a cutting-edge music record label at the forefront of the industry. With a passion for quality music and an unwavering commitment to artistic excellence, we strive to be the driving force behind the next generation of musical talents. At LMN RECORD, we believe in the power of music to transcend boundaries, connect people, and shape culture. Our mission is to discover and nurture exceptional artists, providing them with a platform to amplify their voices and share their unique stories with the world.'),
(253, 63, '_description_label', 'field_64b6ec70673a7'),
(254, 63, '_0_history_title', 'mlsmldq'),
(255, 63, '__0_history_title', 'field_64b6ecfbb8afd'),
(256, 63, '_0_history_description', 'sqdlsl'),
(257, 63, '__0_history_description', 'field_64b6ed12b8afe'),
(258, 63, '_0_history_year', 'sqmlsdlm'),
(259, 63, '__0_history_year', 'field_64b6ed30b8aff'),
(260, 63, '_1_history_title', 'TITLE'),
(261, 63, '__1_history_title', 'field_64b6ecfbb8afd'),
(262, 63, '_1_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(263, 63, '__1_history_description', 'field_64b6ed12b8afe'),
(264, 63, '_1_history_year', '2023'),
(265, 63, '__1_history_year', 'field_64b6ed30b8aff'),
(266, 63, '_2_history_title', 'TITLE'),
(267, 63, '__2_history_title', 'field_64b6ecfbb8afd'),
(268, 63, '_2_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(269, 63, '__2_history_description', 'field_64b6ed12b8afe'),
(270, 63, '_2_history_year', '2023'),
(271, 63, '__2_history_year', 'field_64b6ed30b8aff'),
(272, 13, 'history_list_0_history_title', 'TITLE'),
(273, 13, '_history_list_0_history_title', 'field_64b6ecfbb8afd'),
(274, 13, 'history_list_0_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(275, 13, '_history_list_0_history_description', 'field_64b6ed12b8afe'),
(276, 13, 'history_list_0_history_year', '2023'),
(277, 13, '_history_list_0_history_year', 'field_64b6ed30b8aff'),
(278, 13, 'history_list_1_history_title', 'TITLE'),
(279, 13, '_history_list_1_history_title', 'field_64b6ecfbb8afd'),
(280, 13, 'history_list_1_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(281, 13, '_history_list_1_history_description', 'field_64b6ed12b8afe'),
(282, 13, 'history_list_1_history_year', '2023'),
(283, 13, '_history_list_1_history_year', 'field_64b6ed30b8aff'),
(284, 13, 'history_list_2_history_title', 'TITLE'),
(285, 13, '_history_list_2_history_title', 'field_64b6ecfbb8afd'),
(286, 13, 'history_list_2_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(287, 13, '_history_list_2_history_description', 'field_64b6ed12b8afe'),
(288, 13, 'history_list_2_history_year', '2023'),
(289, 13, '_history_list_2_history_year', 'field_64b6ed30b8aff'),
(290, 13, 'history_list', '4'),
(291, 13, '_history_list', 'field_64b6eceab8afc'),
(292, 64, 'page_title', 'LMN RECORDS'),
(293, 64, '_page_title', 'field_64b6eb325d3d0'),
(294, 64, 'description_label', 'Welcome to LMN RECORD, a cutting-edge music record label at the forefront of the industry. With a passion for quality music and an unwavering commitment to artistic excellence, we strive to be the driving force behind the next generation of musical talents. At LMN RECORD, we believe in the power of music to transcend boundaries, connect people, and shape culture. Our mission is to discover and nurture exceptional artists, providing them with a platform to amplify their voices and share their unique stories with the world.'),
(295, 64, '_description_label', 'field_64b6ec70673a7'),
(296, 64, '_0_history_title', 'mlsmldq'),
(297, 64, '__0_history_title', 'field_64b6ecfbb8afd'),
(298, 64, '_0_history_description', 'sqdlsl'),
(299, 64, '__0_history_description', 'field_64b6ed12b8afe'),
(300, 64, '_0_history_year', 'sqmlsdlm'),
(301, 64, '__0_history_year', 'field_64b6ed30b8aff'),
(302, 64, '_1_history_title', 'TITLE'),
(303, 64, '__1_history_title', 'field_64b6ecfbb8afd'),
(304, 64, '_1_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(305, 64, '__1_history_description', 'field_64b6ed12b8afe'),
(306, 64, '_1_history_year', '2023'),
(307, 64, '__1_history_year', 'field_64b6ed30b8aff'),
(308, 64, '_2_history_title', 'TITLE'),
(309, 64, '__2_history_title', 'field_64b6ecfbb8afd'),
(310, 64, '_2_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(311, 64, '__2_history_description', 'field_64b6ed12b8afe'),
(312, 64, '_2_history_year', '2023'),
(313, 64, '__2_history_year', 'field_64b6ed30b8aff'),
(314, 64, 'history_list_0_history_title', '1'),
(315, 64, '_history_list_0_history_title', 'field_64b6ecfbb8afd'),
(316, 64, 'history_list_0_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(317, 64, '_history_list_0_history_description', 'field_64b6ed12b8afe'),
(318, 64, 'history_list_0_history_year', '2023'),
(319, 64, '_history_list_0_history_year', 'field_64b6ed30b8aff'),
(320, 64, 'history_list_1_history_title', '3'),
(321, 64, '_history_list_1_history_title', 'field_64b6ecfbb8afd'),
(322, 64, 'history_list_1_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(323, 64, '_history_list_1_history_description', 'field_64b6ed12b8afe'),
(324, 64, 'history_list_1_history_year', '2023'),
(325, 64, '_history_list_1_history_year', 'field_64b6ed30b8aff'),
(326, 64, 'history_list_2_history_title', '2'),
(327, 64, '_history_list_2_history_title', 'field_64b6ecfbb8afd'),
(328, 64, 'history_list_2_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(329, 64, '_history_list_2_history_description', 'field_64b6ed12b8afe'),
(330, 64, 'history_list_2_history_year', '2023'),
(331, 64, '_history_list_2_history_year', 'field_64b6ed30b8aff'),
(332, 64, 'history_list', '3'),
(333, 64, '_history_list', 'field_64b6eceab8afc'),
(334, 65, 'page_title', 'LMN RECORDS'),
(335, 65, '_page_title', 'field_64b6eb325d3d0'),
(336, 65, 'description_label', 'Welcome to LMN RECORD, a cutting-edge music record label at the forefront of the industry. With a passion for quality music and an unwavering commitment to artistic excellence, we strive to be the driving force behind the next generation of musical talents. At LMN RECORD, we believe in the power of music to transcend boundaries, connect people, and shape culture. Our mission is to discover and nurture exceptional artists, providing them with a platform to amplify their voices and share their unique stories with the world.'),
(337, 65, '_description_label', 'field_64b6ec70673a7'),
(338, 65, '_0_history_title', 'mlsmldq'),
(339, 65, '__0_history_title', 'field_64b6ecfbb8afd'),
(340, 65, '_0_history_description', 'sqdlsl'),
(341, 65, '__0_history_description', 'field_64b6ed12b8afe'),
(342, 65, '_0_history_year', 'sqmlsdlm'),
(343, 65, '__0_history_year', 'field_64b6ed30b8aff'),
(344, 65, '_1_history_title', 'TITLE'),
(345, 65, '__1_history_title', 'field_64b6ecfbb8afd'),
(346, 65, '_1_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(347, 65, '__1_history_description', 'field_64b6ed12b8afe'),
(348, 65, '_1_history_year', '2023'),
(349, 65, '__1_history_year', 'field_64b6ed30b8aff'),
(350, 65, '_2_history_title', 'TITLE'),
(351, 65, '__2_history_title', 'field_64b6ecfbb8afd'),
(352, 65, '_2_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(353, 65, '__2_history_description', 'field_64b6ed12b8afe'),
(354, 65, '_2_history_year', '2023'),
(355, 65, '__2_history_year', 'field_64b6ed30b8aff'),
(356, 65, 'history_list_0_history_title', 'TITLE'),
(357, 65, '_history_list_0_history_title', 'field_64b6ecfbb8afd'),
(358, 65, 'history_list_0_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(359, 65, '_history_list_0_history_description', 'field_64b6ed12b8afe'),
(360, 65, 'history_list_0_history_year', '2023'),
(361, 65, '_history_list_0_history_year', 'field_64b6ed30b8aff'),
(362, 65, 'history_list_1_history_title', 'TITLE'),
(363, 65, '_history_list_1_history_title', 'field_64b6ecfbb8afd'),
(364, 65, 'history_list_1_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(365, 65, '_history_list_1_history_description', 'field_64b6ed12b8afe'),
(366, 65, 'history_list_1_history_year', '2023'),
(367, 65, '_history_list_1_history_year', 'field_64b6ed30b8aff'),
(368, 65, 'history_list_2_history_title', 'TITLE'),
(369, 65, '_history_list_2_history_title', 'field_64b6ecfbb8afd'),
(370, 65, 'history_list_2_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(371, 65, '_history_list_2_history_description', 'field_64b6ed12b8afe'),
(372, 65, 'history_list_2_history_year', '2023'),
(373, 65, '_history_list_2_history_year', 'field_64b6ed30b8aff'),
(374, 65, 'history_list', '3'),
(375, 65, '_history_list', 'field_64b6eceab8afc'),
(376, 13, 'history_list_3_history_title', 'TITLE'),
(377, 13, '_history_list_3_history_title', 'field_64b6ecfbb8afd'),
(378, 13, 'history_list_3_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(379, 13, '_history_list_3_history_description', 'field_64b6ed12b8afe'),
(380, 13, 'history_list_3_history_year', '2023'),
(381, 13, '_history_list_3_history_year', 'field_64b6ed30b8aff'),
(382, 66, 'page_title', 'LMN RECORDS'),
(383, 66, '_page_title', 'field_64b6eb325d3d0'),
(384, 66, 'description_label', 'Welcome to LMN RECORD, a cutting-edge music record label at the forefront of the industry. With a passion for quality music and an unwavering commitment to artistic excellence, we strive to be the driving force behind the next generation of musical talents. At LMN RECORD, we believe in the power of music to transcend boundaries, connect people, and shape culture. Our mission is to discover and nurture exceptional artists, providing them with a platform to amplify their voices and share their unique stories with the world.'),
(385, 66, '_description_label', 'field_64b6ec70673a7'),
(386, 66, '_0_history_title', 'mlsmldq'),
(387, 66, '__0_history_title', 'field_64b6ecfbb8afd'),
(388, 66, '_0_history_description', 'sqdlsl'),
(389, 66, '__0_history_description', 'field_64b6ed12b8afe'),
(390, 66, '_0_history_year', 'sqmlsdlm'),
(391, 66, '__0_history_year', 'field_64b6ed30b8aff'),
(392, 66, '_1_history_title', 'TITLE'),
(393, 66, '__1_history_title', 'field_64b6ecfbb8afd'),
(394, 66, '_1_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(395, 66, '__1_history_description', 'field_64b6ed12b8afe'),
(396, 66, '_1_history_year', '2023'),
(397, 66, '__1_history_year', 'field_64b6ed30b8aff'),
(398, 66, '_2_history_title', 'TITLE'),
(399, 66, '__2_history_title', 'field_64b6ecfbb8afd'),
(400, 66, '_2_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(401, 66, '__2_history_description', 'field_64b6ed12b8afe'),
(402, 66, '_2_history_year', '2023'),
(403, 66, '__2_history_year', 'field_64b6ed30b8aff'),
(404, 66, 'history_list_0_history_title', 'TITLE'),
(405, 66, '_history_list_0_history_title', 'field_64b6ecfbb8afd'),
(406, 66, 'history_list_0_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(407, 66, '_history_list_0_history_description', 'field_64b6ed12b8afe'),
(408, 66, 'history_list_0_history_year', '2023'),
(409, 66, '_history_list_0_history_year', 'field_64b6ed30b8aff'),
(410, 66, 'history_list_1_history_title', 'TITLE'),
(411, 66, '_history_list_1_history_title', 'field_64b6ecfbb8afd'),
(412, 66, 'history_list_1_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(413, 66, '_history_list_1_history_description', 'field_64b6ed12b8afe'),
(414, 66, 'history_list_1_history_year', '2023'),
(415, 66, '_history_list_1_history_year', 'field_64b6ed30b8aff'),
(416, 66, 'history_list_2_history_title', 'TITLE'),
(417, 66, '_history_list_2_history_title', 'field_64b6ecfbb8afd'),
(418, 66, 'history_list_2_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(419, 66, '_history_list_2_history_description', 'field_64b6ed12b8afe'),
(420, 66, 'history_list_2_history_year', '2023'),
(421, 66, '_history_list_2_history_year', 'field_64b6ed30b8aff'),
(422, 66, 'history_list', '4'),
(423, 66, '_history_list', 'field_64b6eceab8afc'),
(424, 66, 'history_list_3_history_title', 'TITLE'),
(425, 66, '_history_list_3_history_title', 'field_64b6ecfbb8afd'),
(426, 66, 'history_list_3_history_description', 'Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.'),
(427, 66, '_history_list_3_history_description', 'field_64b6ed12b8afe'),
(428, 66, 'history_list_3_history_year', '2023'),
(429, 66, '_history_list_3_history_year', 'field_64b6ed30b8aff'),
(430, 67, '_edit_last', '1'),
(431, 67, '_edit_lock', '1689711760:1'),
(432, 9, 'certification_album_et_single', '25'),
(433, 9, '_certification_album_et_single', 'field_64b6f14fd49f2'),
(434, 9, 'de_vues_cumulees_sur_youtube', '352'),
(435, 9, '_de_vues_cumulees_sur_youtube', 'field_64b6f176bba49'),
(436, 9, 'dabonnes_sur_instagram', '135'),
(437, 9, '_dabonnes_sur_instagram', 'field_64b6f190bba4a'),
(438, 9, 'streams_sur_spotify', '690'),
(439, 9, '_streams_sur_spotify', 'field_64b6f1a9bba4b'),
(440, 9, 'dernieres_videos_0_video_link', 'Doe Boy & Dej Loaf - Roll The Dice'),
(441, 9, '_dernieres_videos_0_video_link', 'field_64b6f2a51e88c'),
(442, 9, 'dernieres_videos_0_video_thumbnail', '28'),
(443, 9, '_dernieres_videos_0_video_thumbnail', 'field_64b6f2c61e88d'),
(444, 9, 'dernieres_videos_0_video_title', 'Doe Boy & Dej Loaf - Roll The Dice'),
(445, 9, '_dernieres_videos_0_video_title', 'field_64b6f2e61e88e'),
(446, 9, 'dernieres_videos', '3'),
(447, 9, '_dernieres_videos', 'field_64b6f1c71e88b'),
(448, 76, 'certification_album_et_single', '25'),
(449, 76, '_certification_album_et_single', 'field_64b6f14fd49f2'),
(450, 76, 'de_vues_cumulees_sur_youtube', '352'),
(451, 76, '_de_vues_cumulees_sur_youtube', 'field_64b6f176bba49'),
(452, 76, 'dabonnes_sur_instagram', '135'),
(453, 76, '_dabonnes_sur_instagram', 'field_64b6f190bba4a'),
(454, 76, 'streams_sur_spotify', '690'),
(455, 76, '_streams_sur_spotify', 'field_64b6f1a9bba4b'),
(456, 76, 'dernieres_videos_0_video_link', 'Doe Boy & Dej Loaf - Roll The Dice'),
(457, 76, '_dernieres_videos_0_video_link', 'field_64b6f2a51e88c'),
(458, 76, 'dernieres_videos_0_video_thumbnail', '28'),
(459, 76, '_dernieres_videos_0_video_thumbnail', 'field_64b6f2c61e88d'),
(460, 76, 'dernieres_videos_0_video_title', 'Doe Boy & Dej Loaf - Roll The Dice'),
(461, 76, '_dernieres_videos_0_video_title', 'field_64b6f2e61e88e'),
(462, 76, 'dernieres_videos', '1'),
(463, 76, '_dernieres_videos', 'field_64b6f1c71e88b'),
(464, 9, 'dernieres_videos_1_video_link', 'Doe Boy & Dej Loaf - Roll The Dice'),
(465, 9, '_dernieres_videos_1_video_link', 'field_64b6f2a51e88c'),
(466, 9, 'dernieres_videos_1_video_thumbnail', '28'),
(467, 9, '_dernieres_videos_1_video_thumbnail', 'field_64b6f2c61e88d'),
(468, 9, 'dernieres_videos_1_video_title', 'Doe Boy & Dej Loaf - Roll The Dice'),
(469, 9, '_dernieres_videos_1_video_title', 'field_64b6f2e61e88e'),
(470, 9, 'dernieres_videos_2_video_link', 'Doe Boy & Dej Loaf - Roll The Dice'),
(471, 9, '_dernieres_videos_2_video_link', 'field_64b6f2a51e88c'),
(472, 9, 'dernieres_videos_2_video_thumbnail', '28'),
(473, 9, '_dernieres_videos_2_video_thumbnail', 'field_64b6f2c61e88d'),
(474, 9, 'dernieres_videos_2_video_title', 'Doe Boy & Dej Loaf - Roll The Dice'),
(475, 9, '_dernieres_videos_2_video_title', 'field_64b6f2e61e88e'),
(476, 77, 'certification_album_et_single', '25'),
(477, 77, '_certification_album_et_single', 'field_64b6f14fd49f2'),
(478, 77, 'de_vues_cumulees_sur_youtube', '352'),
(479, 77, '_de_vues_cumulees_sur_youtube', 'field_64b6f176bba49'),
(480, 77, 'dabonnes_sur_instagram', '135'),
(481, 77, '_dabonnes_sur_instagram', 'field_64b6f190bba4a'),
(482, 77, 'streams_sur_spotify', '690'),
(483, 77, '_streams_sur_spotify', 'field_64b6f1a9bba4b'),
(484, 77, 'dernieres_videos_0_video_link', 'Doe Boy & Dej Loaf - Roll The Dice'),
(485, 77, '_dernieres_videos_0_video_link', 'field_64b6f2a51e88c'),
(486, 77, 'dernieres_videos_0_video_thumbnail', '28'),
(487, 77, '_dernieres_videos_0_video_thumbnail', 'field_64b6f2c61e88d'),
(488, 77, 'dernieres_videos_0_video_title', 'Doe Boy & Dej Loaf - Roll The Dice'),
(489, 77, '_dernieres_videos_0_video_title', 'field_64b6f2e61e88e'),
(490, 77, 'dernieres_videos', '3'),
(491, 77, '_dernieres_videos', 'field_64b6f1c71e88b'),
(492, 77, 'dernieres_videos_1_video_link', 'Doe Boy & Dej Loaf - Roll The Dice'),
(493, 77, '_dernieres_videos_1_video_link', 'field_64b6f2a51e88c'),
(494, 77, 'dernieres_videos_1_video_thumbnail', '28'),
(495, 77, '_dernieres_videos_1_video_thumbnail', 'field_64b6f2c61e88d'),
(496, 77, 'dernieres_videos_1_video_title', 'Doe Boy & Dej Loaf - Roll The Dice'),
(497, 77, '_dernieres_videos_1_video_title', 'field_64b6f2e61e88e'),
(498, 77, 'dernieres_videos_2_video_link', 'Doe Boy & Dej Loaf - Roll The Dice'),
(499, 77, '_dernieres_videos_2_video_link', 'field_64b6f2a51e88c'),
(500, 77, 'dernieres_videos_2_video_thumbnail', '28'),
(501, 77, '_dernieres_videos_2_video_thumbnail', 'field_64b6f2c61e88d'),
(502, 77, 'dernieres_videos_2_video_title', 'Doe Boy & Dej Loaf - Roll The Dice'),
(503, 77, '_dernieres_videos_2_video_title', 'field_64b6f2e61e88e'),
(504, 81, '_edit_last', '1'),
(505, 81, '_edit_lock', '1689713120:1'),
(506, 85, '_edit_last', '1'),
(507, 85, '_edit_lock', '1689713379:1'),
(508, 90, '_edit_lock', '1689717106:1'),
(509, 90, '_edit_last', '1'),
(510, 96, '_edit_lock', '1689717410:1'),
(511, 96, '_edit_last', '1'),
(512, 102, '_edit_lock', '1689717134:1'),
(513, 102, '_edit_last', '1'),
(514, 44, 'artistes_image', '30'),
(515, 44, '_artistes_image', 'field_64b703babac4a'),
(516, 44, 'facebook_artist', '####'),
(517, 44, '_facebook_artist', 'field_64b70081d987d'),
(518, 44, 'twitter_artist', '#################'),
(519, 44, '_twitter_artist', 'field_64b7021febce1'),
(520, 44, 'instagram_artist', '#############################'),
(521, 44, '_instagram_artist', 'field_64b7022eebce2'),
(522, 44, 'youtube_artist', '####################'),
(523, 44, '_youtube_artist', 'field_64b70243ebce3'),
(524, 44, 'spotify_artist', 'pmqopsq'),
(525, 44, '_spotify_artist', 'field_64b7024debce4'),
(526, 44, 'artistes_videos_0_title', 'Doe Boy & Dej Loaf - Roll The Dice'),
(527, 44, '_artistes_videos_0_title', 'field_64b7029a77360'),
(528, 44, 'artistes_videos_0_thumbnail', '28'),
(529, 44, '_artistes_videos_0_thumbnail', 'field_64b702d277361'),
(530, 44, 'artistes_videos_0_link', 'مكمشمكشكمشكم'),
(531, 44, '_artistes_videos_0_link', 'field_64b702e777362'),
(532, 44, 'artistes_videos_0_category', '4'),
(533, 44, '_artistes_videos_0_category', 'field_64b702f977363'),
(534, 44, 'artistes_videos_1_title', 'Doe Boy & Dej Loaf - Roll The Dice'),
(535, 44, '_artistes_videos_1_title', 'field_64b7029a77360'),
(536, 44, 'artistes_videos_1_thumbnail', '27'),
(537, 44, '_artistes_videos_1_thumbnail', 'field_64b702d277361'),
(538, 44, 'artistes_videos_1_link', 'mlsmls'),
(539, 44, '_artistes_videos_1_link', 'field_64b702e777362'),
(540, 44, 'artistes_videos_1_category', '3'),
(541, 44, '_artistes_videos_1_category', 'field_64b702f977363'),
(542, 44, 'artistes_videos_2_title', 'Doe Boy & Dej Loaf - Roll The Dice'),
(543, 44, '_artistes_videos_2_title', 'field_64b7029a77360'),
(544, 44, 'artistes_videos_2_thumbnail', '26'),
(545, 44, '_artistes_videos_2_thumbnail', 'field_64b702d277361'),
(546, 44, 'artistes_videos_2_link', 'مسمسكمسكم'),
(547, 44, '_artistes_videos_2_link', 'field_64b702e777362'),
(548, 44, 'artistes_videos_2_category', '5'),
(549, 44, '_artistes_videos_2_category', 'field_64b702f977363'),
(558, 44, 'artistes_videos', '3'),
(559, 44, '_artistes_videos', 'field_64b702827735f'),
(560, 45, 'artistes_image', ''),
(561, 45, '_artistes_image', 'field_64b703babac4a'),
(562, 45, 'facebook_artist', 'Id ad suscipit id '),
(563, 45, '_facebook_artist', 'field_64b70081d987d'),
(564, 45, 'twitter_artist', 'Dolor excepturi illo'),
(565, 45, '_twitter_artist', 'field_64b7021febce1'),
(566, 45, 'instagram_artist', 'Ullam consectetur ad'),
(567, 45, '_instagram_artist', 'field_64b7022eebce2'),
(568, 45, 'youtube_artist', 'Sint alias ducimus '),
(569, 45, '_youtube_artist', 'field_64b70243ebce3'),
(570, 45, 'spotify_artist', 'Incididunt dolores p'),
(571, 45, '_spotify_artist', 'field_64b7024debce4'),
(572, 45, 'artistes_videos', ''),
(573, 45, '_artistes_videos', 'field_64b702827735f');

-- --------------------------------------------------------

--
-- Table structure for table `lmnoxp_posts`
--

CREATE TABLE `lmnoxp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lmnoxp_posts`
--

INSERT INTO `lmnoxp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(8, 1, '2023-06-02 18:24:50', '2023-06-02 18:24:50', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2023-06-02 18:24:50', '2023-06-02 18:24:50', '', 0, 'https://lmn.takiddine.art/2023/06/02/wp-global-styles-twentytwentythree/', 0, 'wp_global_styles', '', 0),
(9, 1, '2023-06-02 18:25:41', '2023-06-02 18:25:41', '', 'ACCUEIL', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2023-07-18 20:20:08', '2023-07-18 20:20:08', '', 0, 'https://lmn.takiddine.art/?page_id=9', 0, 'page', '', 0),
(10, 1, '2023-06-02 18:25:41', '2023-06-02 18:25:41', '', 'ACCUEIL', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-06-02 18:25:41', '2023-06-02 18:25:41', '', 9, 'https://lmn.takiddine.art/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-06-02 18:25:49', '2023-06-02 18:25:49', '', 'ARTISTES', '', 'publish', 'closed', 'closed', '', 'les-artistes', '', '', '2023-07-18 20:31:42', '2023-07-18 20:31:42', '', 0, 'https://lmn.takiddine.art/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-06-02 18:25:49', '2023-06-02 18:25:49', '', 'ARTISTES', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-06-02 18:25:49', '2023-06-02 18:25:49', '', 11, 'https://lmn.takiddine.art/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-06-02 18:26:12', '2023-06-02 18:26:12', '', 'LABEL', '', 'publish', 'closed', 'closed', '', 'label', '', '', '2023-07-18 20:07:08', '2023-07-18 20:07:08', '', 0, 'https://lmn.takiddine.art/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-06-02 18:26:12', '2023-06-02 18:26:12', '', 'LABEL', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-02 18:26:12', '2023-06-02 18:26:12', '', 13, 'https://lmn.takiddine.art/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-06-02 18:26:20', '2023-06-02 18:26:20', '', 'CONTACT', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-06-05 19:43:51', '2023-06-05 19:43:51', '', 0, 'https://lmn.takiddine.art/?page_id=15', 0, 'page', '', 0),
(16, 1, '2023-06-02 18:26:20', '2023-06-02 18:26:20', '', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-06-02 18:26:20', '2023-06-02 18:26:20', '', 15, 'https://lmn.takiddine.art/?p=16', 0, 'revision', '', 0),
(25, 1, '2023-06-05 22:56:43', '2023-06-05 22:56:43', '', 'A_black_image', '', 'inherit', 'open', 'closed', '', 'a_black_image', '', '', '2023-06-05 22:56:43', '2023-06-05 22:56:43', '', 0, 'https://lmn.takiddine.art/wp/wp-content/uploads/2023/06/A_black_image.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2023-06-05 22:58:38', '2023-06-05 22:58:38', '', 'video-2', '', 'inherit', 'open', 'closed', '', 'video-2', '', '', '2023-07-18 21:43:57', '2023-07-18 21:43:57', '', 44, 'https://lmn.takiddine.art/wp/wp-content/uploads/2023/06/video-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2023-06-05 22:58:44', '2023-06-05 22:58:44', '', 'video-3', '', 'inherit', 'open', 'closed', '', 'video-3', '', '', '2023-07-18 21:43:57', '2023-07-18 21:43:57', '', 44, 'https://lmn.takiddine.art/wp/wp-content/uploads/2023/06/video-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2023-06-05 22:59:00', '2023-06-05 22:59:00', '', 'video-1', '', 'inherit', 'open', 'closed', '', 'video-1', '', '', '2023-07-18 20:19:37', '2023-07-18 20:19:37', '', 9, 'https://lmn.takiddine.art/wp/wp-content/uploads/2023/06/video-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2023-06-05 23:14:28', '2023-06-05 23:14:28', '', 'single', '', 'inherit', 'open', 'closed', '', 'single', '', '', '2023-06-05 23:14:28', '2023-06-05 23:14:28', '', 0, 'https://lmn.takiddine.art/wp/wp-content/uploads/2023/06/single.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2023-06-06 00:27:36', '2023-06-06 00:27:36', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'zfat', '', 'publish', 'closed', 'closed', '', 'mathieu-chevalier-copy', '', '', '2023-06-06 20:07:23', '2023-06-06 20:07:23', '', 0, 'https://lmn.takiddine.art/wp/artistes/mathieu-chevalier-copy/', 0, 'artistes', '', 0),
(35, 1, '2023-06-06 20:34:35', '2023-06-06 20:34:35', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2023-06-06 20:34:35', '2023-06-06 20:34:35', '', 0, 'https://lmn.takiddine.art/wp/wp-content/uploads/2023/06/1.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2023-07-16 16:17:17', '2023-07-16 16:17:17', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des ap', 'Mathieu Chevalier Copy', '', 'publish', 'closed', 'closed', '', 'copy', '', '', '2023-07-18 21:44:10', '2023-07-18 21:44:10', '', 0, 'https://lmn.takiddine.art/wp/?post_type=artistes&#038;p=44', 0, 'artistes', '', 0),
(45, 1, '2023-07-16 16:18:25', '2023-07-16 16:18:25', 'aeee', 'In et soluta sit et', '', 'publish', 'closed', 'closed', '', 'azzzz', '', '', '2023-07-18 21:48:44', '2023-07-18 21:48:44', '', 0, 'https://lmn.takiddine.art/wp/?post_type=artistes&#038;p=45', 0, 'artistes', '', 0),
(52, 1, '2023-07-18 19:44:19', '2023-07-18 19:44:19', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"page-label.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Label page fields', 'label-page-fields', 'publish', 'closed', 'closed', '', 'group_64b6eb31736d6', '', '', '2023-07-18 20:02:26', '2023-07-18 20:02:26', '', 0, 'https://project-lmn.takiddine.art/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2023-07-18 19:44:19', '2023-07-18 19:44:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:11:\"LMN RECORDS\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'page title', 'page_title', 'publish', 'closed', 'closed', '', 'field_64b6eb325d3d0', '', '', '2023-07-18 19:44:19', '2023-07-18 19:44:19', '', 52, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(54, 1, '2023-07-18 19:48:35', '2023-07-18 19:48:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:527:\"Welcome to LMN RECORD, a cutting-edge music record label at the forefront of the industry. With a passion for quality music and an unwavering commitment to artistic excellence, we strive to be the driving force behind the next generation of musical talents. At LMN RECORD, we believe in the power of music to transcend boundaries, connect people, and shape culture. Our mission is to discover and nurture exceptional artists, providing them with a platform to amplify their voices and share their unique stories with the world.\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'description', 'description_label', 'publish', 'closed', 'closed', '', 'field_64b6ec70673a7', '', '', '2023-07-18 19:48:35', '2023-07-18 19:48:35', '', 52, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=54', 1, 'acf-field', '', 0),
(55, 1, '2023-07-18 19:51:33', '2023-07-18 19:51:33', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'History', 'history_list', 'publish', 'closed', 'closed', '', 'field_64b6eceab8afc', '', '', '2023-07-18 20:02:26', '2023-07-18 20:02:26', '', 52, 'https://project-lmn.takiddine.art/?post_type=acf-field&#038;p=55', 2, 'acf-field', '', 0),
(56, 1, '2023-07-18 19:51:33', '2023-07-18 19:51:33', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:5:\"TITLE\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title', 'history_title', 'publish', 'closed', 'closed', '', 'field_64b6ecfbb8afd', '', '', '2023-07-18 19:51:33', '2023-07-18 19:51:33', '', 55, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2023-07-18 19:51:33', '2023-07-18 19:51:33', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:305:\"Mathieu Chevalier is a multi-talented french musician hailing from the vibrant city of paris. born with a deep passion for music, mathieu discovered his love for melodies and rhythms at a young age. he started his musical journey by learning to play the guitar, which soon became an extension of his soul.\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'DESCRIPTION', 'history_description', 'publish', 'closed', 'closed', '', 'field_64b6ed12b8afe', '', '', '2023-07-18 19:51:33', '2023-07-18 19:51:33', '', 55, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=57', 1, 'acf-field', '', 0),
(58, 1, '2023-07-18 19:51:33', '2023-07-18 19:51:33', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:2023;s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Year', 'history_year', 'publish', 'closed', 'closed', '', 'field_64b6ed30b8aff', '', '', '2023-07-18 19:51:33', '2023-07-18 19:51:33', '', 55, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=58', 2, 'acf-field', '', 0),
(59, 1, '2023-07-18 19:51:51', '2023-07-18 19:51:51', '', 'LABEL', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-07-18 19:51:51', '2023-07-18 19:51:51', '', 13, 'https://project-lmn.takiddine.art/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-07-18 19:59:33', '2023-07-18 19:59:33', '', 'LABEL', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-07-18 19:59:33', '2023-07-18 19:59:33', '', 13, 'https://project-lmn.takiddine.art/?p=60', 0, 'revision', '', 0),
(61, 1, '2023-07-18 19:59:54', '2023-07-18 19:59:54', '', 'LABEL', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-07-18 19:59:54', '2023-07-18 19:59:54', '', 13, 'https://project-lmn.takiddine.art/?p=61', 0, 'revision', '', 0),
(62, 1, '2023-07-18 20:00:07', '2023-07-18 20:00:07', '', 'LABEL', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-07-18 20:00:07', '2023-07-18 20:00:07', '', 13, 'https://project-lmn.takiddine.art/?p=62', 0, 'revision', '', 0),
(63, 1, '2023-07-18 20:01:21', '2023-07-18 20:01:21', '', 'LABEL', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-07-18 20:01:21', '2023-07-18 20:01:21', '', 13, 'https://project-lmn.takiddine.art/?p=63', 0, 'revision', '', 0),
(64, 1, '2023-07-18 20:02:47', '2023-07-18 20:02:47', '', 'LABEL', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-07-18 20:02:47', '2023-07-18 20:02:47', '', 13, 'https://project-lmn.takiddine.art/?p=64', 0, 'revision', '', 0),
(65, 1, '2023-07-18 20:03:05', '2023-07-18 20:03:05', '', 'LABEL', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-07-18 20:03:05', '2023-07-18 20:03:05', '', 13, 'https://project-lmn.takiddine.art/?p=65', 0, 'revision', '', 0),
(66, 1, '2023-07-18 20:07:08', '2023-07-18 20:07:08', '', 'LABEL', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-07-18 20:07:08', '2023-07-18 20:07:08', '', 13, 'https://project-lmn.takiddine.art/?p=66', 0, 'revision', '', 0),
(67, 1, '2023-07-18 20:08:56', '2023-07-18 20:08:56', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page_home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home Page Field', 'home-page-field', 'publish', 'closed', 'closed', '', 'group_64b6f14ee8046', '', '', '2023-07-18 20:19:09', '2023-07-18 20:19:09', '', 0, 'https://project-lmn.takiddine.art/?post_type=acf-field-group&#038;p=67', 0, 'acf-field-group', '', 0),
(68, 1, '2023-07-18 20:08:56', '2023-07-18 20:08:56', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:25;s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Certification Album Et Single', 'certification_album_et_single', 'publish', 'closed', 'closed', '', 'field_64b6f14fd49f2', '', '', '2023-07-18 20:10:28', '2023-07-18 20:10:28', '', 67, 'https://project-lmn.takiddine.art/?post_type=acf-field&#038;p=68', 0, 'acf-field', '', 0),
(69, 1, '2023-07-18 20:10:28', '2023-07-18 20:10:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:352;s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'De Vues Cumulées Sur Youtube', 'de_vues_cumulees_sur_youtube', 'publish', 'closed', 'closed', '', 'field_64b6f176bba49', '', '', '2023-07-18 20:10:28', '2023-07-18 20:10:28', '', 67, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=69', 1, 'acf-field', '', 0),
(70, 1, '2023-07-18 20:10:28', '2023-07-18 20:10:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:135;s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'D\'abonnés Sur Instagram', 'dabonnes_sur_instagram', 'publish', 'closed', 'closed', '', 'field_64b6f190bba4a', '', '', '2023-07-18 20:10:28', '2023-07-18 20:10:28', '', 67, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=70', 2, 'acf-field', '', 0),
(71, 1, '2023-07-18 20:10:28', '2023-07-18 20:10:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:690;s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Streams Sur Spotify', 'streams_sur_spotify', 'publish', 'closed', 'closed', '', 'field_64b6f1a9bba4b', '', '', '2023-07-18 20:10:28', '2023-07-18 20:10:28', '', 67, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=71', 3, 'acf-field', '', 0),
(72, 1, '2023-07-18 20:15:50', '2023-07-18 20:15:50', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'DERNIERES VIDEOS', 'dernieres_videos', 'publish', 'closed', 'closed', '', 'field_64b6f1c71e88b', '', '', '2023-07-18 20:18:13', '2023-07-18 20:18:13', '', 67, 'https://project-lmn.takiddine.art/?post_type=acf-field&#038;p=72', 4, 'acf-field', '', 0),
(73, 1, '2023-07-18 20:15:50', '2023-07-18 20:15:50', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'video link : youtube / vimeo', 'video_link', 'publish', 'closed', 'closed', '', 'field_64b6f2a51e88c', '', '', '2023-07-18 20:19:09', '2023-07-18 20:19:09', '', 72, 'https://project-lmn.takiddine.art/?post_type=acf-field&#038;p=73', 0, 'acf-field', '', 0),
(74, 1, '2023-07-18 20:15:50', '2023-07-18 20:15:50', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'video thumbnail', 'video_thumbnail', 'publish', 'closed', 'closed', '', 'field_64b6f2c61e88d', '', '', '2023-07-18 20:15:50', '2023-07-18 20:15:50', '', 72, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=74', 1, 'acf-field', '', 0),
(75, 1, '2023-07-18 20:15:50', '2023-07-18 20:15:50', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'video title', 'video_title', 'publish', 'closed', 'closed', '', 'field_64b6f2e61e88e', '', '', '2023-07-18 20:15:50', '2023-07-18 20:15:50', '', 72, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=75', 2, 'acf-field', '', 0),
(76, 1, '2023-07-18 20:19:37', '2023-07-18 20:19:37', '', 'ACCUEIL', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-07-18 20:19:37', '2023-07-18 20:19:37', '', 9, 'https://project-lmn.takiddine.art/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-07-18 20:20:08', '2023-07-18 20:20:08', '', 'ACCUEIL', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-07-18 20:20:08', '2023-07-18 20:20:08', '', 9, 'https://project-lmn.takiddine.art/?p=77', 0, 'revision', '', 0),
(81, 1, '2023-07-18 20:40:37', '2023-07-18 20:40:37', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:19:\"acf-options-partner\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Partners', 'partners', 'publish', 'closed', 'closed', '', 'group_64b6f812b032d', '', '', '2023-07-18 20:46:19', '2023-07-18 20:46:19', '', 0, 'https://project-lmn.takiddine.art/?post_type=acf-field-group&#038;p=81', 0, 'acf-field-group', '', 0),
(82, 1, '2023-07-18 20:40:37', '2023-07-18 20:40:37', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'partners logos', 'partners', 'publish', 'closed', 'closed', '', 'field_64b6f8125117d', '', '', '2023-07-18 20:42:10', '2023-07-18 20:42:10', '', 81, 'https://project-lmn.takiddine.art/?post_type=acf-field&#038;p=82', 0, 'acf-field', '', 0),
(83, 1, '2023-07-18 20:40:37', '2023-07-18 20:40:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'partner name', 'partner_name', 'publish', 'closed', 'closed', '', 'field_64b6f83f5117e', '', '', '2023-07-18 20:40:37', '2023-07-18 20:40:37', '', 82, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=83', 0, 'acf-field', '', 0),
(84, 1, '2023-07-18 20:40:37', '2023-07-18 20:40:37', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'logo', 'logo', 'publish', 'closed', 'closed', '', 'field_64b6f8a95117f', '', '', '2023-07-18 20:45:05', '2023-07-18 20:45:05', '', 82, 'https://project-lmn.takiddine.art/?post_type=acf-field&#038;p=84', 1, 'acf-field', '', 0),
(85, 1, '2023-07-18 20:49:18', '2023-07-18 20:49:18', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:31:\"acf-options-footer-social-media\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Social Media Footer', 'social-media-footer', 'publish', 'closed', 'closed', '', 'group_64b6fa7342026', '', '', '2023-07-18 20:50:25', '2023-07-18 20:50:25', '', 0, 'https://project-lmn.takiddine.art/?post_type=acf-field-group&#038;p=85', 0, 'acf-field-group', '', 0),
(86, 1, '2023-07-18 20:49:18', '2023-07-18 20:49:18', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:16:\"www.facebook.com\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'facebook', 'facebook_link', 'publish', 'closed', 'closed', '', 'field_64b6fa735a224', '', '', '2023-07-18 20:50:25', '2023-07-18 20:50:25', '', 85, 'https://project-lmn.takiddine.art/?post_type=acf-field&#038;p=86', 0, 'acf-field', '', 0),
(87, 1, '2023-07-18 20:49:18', '2023-07-18 20:49:18', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:7:\"twitter\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'twitter', 'twitter_link', 'publish', 'closed', 'closed', '', 'field_64b6fa905a225', '', '', '2023-07-18 20:50:25', '2023-07-18 20:50:25', '', 85, 'https://project-lmn.takiddine.art/?post_type=acf-field&#038;p=87', 1, 'acf-field', '', 0),
(88, 1, '2023-07-18 20:49:18', '2023-07-18 20:49:18', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:15:\"www.youtube.com\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'youtube', 'youtube_link', 'publish', 'closed', 'closed', '', 'field_64b6fa9a5a226', '', '', '2023-07-18 20:50:25', '2023-07-18 20:50:25', '', 85, 'https://project-lmn.takiddine.art/?post_type=acf-field&#038;p=88', 2, 'acf-field', '', 0),
(89, 1, '2023-07-18 20:49:18', '2023-07-18 20:49:18', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:13:\"instagram.com\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'instagram', 'instagram_link', 'publish', 'closed', 'closed', '', 'field_64b6fabe5a227', '', '', '2023-07-18 20:50:25', '2023-07-18 20:50:25', '', 85, 'https://project-lmn.takiddine.art/?post_type=acf-field&#038;p=89', 3, 'acf-field', '', 0),
(90, 1, '2023-07-18 21:13:53', '2023-07-18 21:13:53', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"artistes\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'artistes social media', 'artistes-social-media', 'publish', 'closed', 'closed', '', 'group_64b700816205f', '', '', '2023-07-18 21:21:55', '2023-07-18 21:21:55', '', 0, 'https://project-lmn.takiddine.art/?post_type=acf-field-group&#038;p=90', 0, 'acf-field-group', '', 0),
(91, 1, '2023-07-18 21:13:53', '2023-07-18 21:13:53', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'facebook', 'facebook_artist', 'publish', 'closed', 'closed', '', 'field_64b70081d987d', '', '', '2023-07-18 21:21:37', '2023-07-18 21:21:37', '', 90, 'https://project-lmn.takiddine.art/?post_type=acf-field&#038;p=91', 0, 'acf-field', '', 0),
(92, 1, '2023-07-18 21:21:37', '2023-07-18 21:21:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'twitter', 'twitter_artist', 'publish', 'closed', 'closed', '', 'field_64b7021febce1', '', '', '2023-07-18 21:21:37', '2023-07-18 21:21:37', '', 90, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=92', 1, 'acf-field', '', 0),
(93, 1, '2023-07-18 21:21:37', '2023-07-18 21:21:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Instagram', 'instagram_artist', 'publish', 'closed', 'closed', '', 'field_64b7022eebce2', '', '', '2023-07-18 21:21:37', '2023-07-18 21:21:37', '', 90, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=93', 2, 'acf-field', '', 0),
(94, 1, '2023-07-18 21:21:37', '2023-07-18 21:21:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Youtube', 'youtube_artist', 'publish', 'closed', 'closed', '', 'field_64b70243ebce3', '', '', '2023-07-18 21:21:37', '2023-07-18 21:21:37', '', 90, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=94', 3, 'acf-field', '', 0),
(95, 1, '2023-07-18 21:21:37', '2023-07-18 21:21:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Spotify', 'spotify_artist', 'publish', 'closed', 'closed', '', 'field_64b7024debce4', '', '', '2023-07-18 21:21:37', '2023-07-18 21:21:37', '', 90, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=95', 4, 'acf-field', '', 0),
(96, 1, '2023-07-18 21:25:21', '2023-07-18 21:25:21', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"artistes\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'artistes videos', 'artistes-videos', 'publish', 'closed', 'closed', '', 'group_64b7028230a5d', '', '', '2023-07-18 21:26:35', '2023-07-18 21:26:35', '', 0, 'https://project-lmn.takiddine.art/?post_type=acf-field-group&#038;p=96', 0, 'acf-field-group', '', 0),
(97, 1, '2023-07-18 21:25:21', '2023-07-18 21:25:21', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'artistes videos', 'artistes_videos', 'publish', 'closed', 'closed', '', 'field_64b702827735f', '', '', '2023-07-18 21:25:21', '2023-07-18 21:25:21', '', 96, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=97', 0, 'acf-field', '', 0),
(98, 1, '2023-07-18 21:25:21', '2023-07-18 21:25:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_64b7029a77360', '', '', '2023-07-18 21:25:21', '2023-07-18 21:25:21', '', 97, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=98', 0, 'acf-field', '', 0),
(99, 1, '2023-07-18 21:25:21', '2023-07-18 21:25:21', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'thumbnail', 'thumbnail', 'publish', 'closed', 'closed', '', 'field_64b702d277361', '', '', '2023-07-18 21:25:21', '2023-07-18 21:25:21', '', 97, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=99', 1, 'acf-field', '', 0),
(100, 1, '2023-07-18 21:25:21', '2023-07-18 21:25:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_64b702e777362', '', '', '2023-07-18 21:25:21', '2023-07-18 21:25:21', '', 97, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=100', 2, 'acf-field', '', 0),
(101, 1, '2023-07-18 21:25:21', '2023-07-18 21:25:21', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:17:\"artistes_category\";s:8:\"add_term\";i:0;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:6:\"object\";s:10:\"field_type\";s:6:\"select\";s:10:\"allow_null\";i:1;s:8:\"multiple\";i:0;}', 'category', 'category', 'publish', 'closed', 'closed', '', 'field_64b702f977363', '', '', '2023-07-18 21:26:35', '2023-07-18 21:26:35', '', 97, 'https://project-lmn.takiddine.art/?post_type=acf-field&#038;p=101', 3, 'acf-field', '', 0),
(102, 1, '2023-07-18 21:27:52', '2023-07-18 21:27:52', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"artistes\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'artistes image', 'artistes-image', 'publish', 'closed', 'closed', '', 'group_64b703b9a60c1', '', '', '2023-07-18 21:27:59', '2023-07-18 21:27:59', '', 0, 'https://project-lmn.takiddine.art/?post_type=acf-field-group&#038;p=102', 0, 'acf-field-group', '', 0),
(103, 1, '2023-07-18 21:27:52', '2023-07-18 21:27:52', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'artistes image', 'artistes_image', 'publish', 'closed', 'closed', '', 'field_64b703babac4a', '', '', '2023-07-18 21:27:52', '2023-07-18 21:27:52', '', 102, 'https://project-lmn.takiddine.art/?post_type=acf-field&p=103', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lmnoxp_termmeta`
--

CREATE TABLE `lmnoxp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lmnoxp_terms`
--

CREATE TABLE `lmnoxp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lmnoxp_terms`
--

INSERT INTO `lmnoxp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentythree', 'twentytwentythree', 0),
(3, 'R &amp; B', 'r-b', 0),
(4, 'POP', 'pop', 0),
(5, 'ROCK', 'rock', 0),
(7, 'RAP', 'rap', 0),
(8, 'FREE STYLE', 'free-style', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lmnoxp_term_relationships`
--

CREATE TABLE `lmnoxp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lmnoxp_term_relationships`
--

INSERT INTO `lmnoxp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(8, 2, 0),
(31, 5, 0),
(45, 4, 0),
(45, 5, 0),
(45, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lmnoxp_term_taxonomy`
--

CREATE TABLE `lmnoxp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lmnoxp_term_taxonomy`
--

INSERT INTO `lmnoxp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'artistes_category', '', 0, 0),
(4, 4, 'artistes_category', '', 0, 1),
(5, 5, 'artistes_category', '', 0, 2),
(7, 7, 'artistes_category', '', 0, 0),
(8, 8, 'artistes_category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lmnoxp_usermeta`
--

CREATE TABLE `lmnoxp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lmnoxp_usermeta`
--

INSERT INTO `lmnoxp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'lmn-user'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'lmnoxp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'lmnoxp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'lmnoxp_dashboard_quick_press_last_post_id', '39'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"102.78.217.0\";}'),
(19, 1, 'lmnoxp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-06-02T18:30:16.210Z\";}'),
(20, 1, 'lmnoxp_user-settings', 'libraryContent=browse'),
(21, 1, 'lmnoxp_user-settings-time', '1686005940'),
(22, 1, 'session_tokens', 'a:2:{s:64:\"1f13bdac4f19511d3f3a0d03d470aba70fd88d27fd203c8d5d871f37b8ce7211\";a:4:{s:10:\"expiration\";i:1690686017;s:2:\"ip\";s:13:\"41.251.90.127\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1689476417;}s:64:\"2424d1f5a6f3f0299bac8be463cf400060639fdc7ef048f8b99046c82afa7c7e\";a:4:{s:10:\"expiration\";i:1690918488;s:2:\"ip\";s:12:\"102.78.217.7\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1689708888;}}'),
(23, 1, 'closedpostboxes_artistes', 'a:0:{}'),
(24, 1, 'metaboxhidden_artistes', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:62:\"submitdiv,pageparentdiv,_custom_page_side_options,postimagediv\";s:6:\"normal\";s:91:\"page_metabox,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv,_custom_page_options\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_page', '2'),
(27, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(28, 1, 'acf_user_settings', 'a:2:{s:19:\"post-type-first-run\";b:1;s:20:\"taxonomies-first-run\";b:1;}'),
(29, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(30, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(31, 1, 'metaboxhidden_acf-post-type', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
(32, 2, 'nickname', 'supper_lmn_admin'),
(33, 2, 'first_name', 'soulaimane'),
(34, 2, 'last_name', 'takiddine'),
(35, 2, 'description', ''),
(36, 2, 'rich_editing', 'true'),
(37, 2, 'syntax_highlighting', 'true'),
(38, 2, 'comment_shortcuts', 'false'),
(39, 2, 'admin_color', 'fresh'),
(40, 2, 'use_ssl', '0'),
(41, 2, 'show_admin_bar_front', 'true'),
(42, 2, 'locale', ''),
(43, 2, 'lmnoxp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(44, 2, 'lmnoxp_user_level', '10'),
(45, 2, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Table structure for table `lmnoxp_users`
--

CREATE TABLE `lmnoxp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lmnoxp_users`
--

INSERT INTO `lmnoxp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'lmn-user', '$P$B4QCpPGc64KP1UM0ix59lFLC0R4pp5.', 'lmn-user', 'takiddine.job@gmail.com', 'https://lmn.takiddine.art', '2023-06-02 18:24:16', '', 0, 'lmn-user'),
(2, 'supper_lmn_admin', '$P$BtKiiUBPa1b4wXNld10QCGfIHFyPuM0', 'supper_lmn_admin', 'contact@takiddine.com', '', '2023-07-18 21:06:59', '', 0, 'soulaimane takiddine');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lmnoxp_commentmeta`
--
ALTER TABLE `lmnoxp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `lmnoxp_comments`
--
ALTER TABLE `lmnoxp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `lmnoxp_links`
--
ALTER TABLE `lmnoxp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `lmnoxp_options`
--
ALTER TABLE `lmnoxp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `lmnoxp_postmeta`
--
ALTER TABLE `lmnoxp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `lmnoxp_posts`
--
ALTER TABLE `lmnoxp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `lmnoxp_termmeta`
--
ALTER TABLE `lmnoxp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `lmnoxp_terms`
--
ALTER TABLE `lmnoxp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `lmnoxp_term_relationships`
--
ALTER TABLE `lmnoxp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `lmnoxp_term_taxonomy`
--
ALTER TABLE `lmnoxp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `lmnoxp_usermeta`
--
ALTER TABLE `lmnoxp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `lmnoxp_users`
--
ALTER TABLE `lmnoxp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lmnoxp_commentmeta`
--
ALTER TABLE `lmnoxp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lmnoxp_comments`
--
ALTER TABLE `lmnoxp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lmnoxp_links`
--
ALTER TABLE `lmnoxp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lmnoxp_options`
--
ALTER TABLE `lmnoxp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=807;

--
-- AUTO_INCREMENT for table `lmnoxp_postmeta`
--
ALTER TABLE `lmnoxp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT for table `lmnoxp_posts`
--
ALTER TABLE `lmnoxp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `lmnoxp_termmeta`
--
ALTER TABLE `lmnoxp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lmnoxp_terms`
--
ALTER TABLE `lmnoxp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lmnoxp_term_taxonomy`
--
ALTER TABLE `lmnoxp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lmnoxp_usermeta`
--
ALTER TABLE `lmnoxp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `lmnoxp_users`
--
ALTER TABLE `lmnoxp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
