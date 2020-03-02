-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 02, 2020 at 09:48 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formation`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'formation', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rah_jean@yahoo.fr', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '1', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:135:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:8:\"trano/?$\";s:25:\"index.php?post_type=trano\";s:38:\"trano/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=trano&feed=$matches[1]\";s:33:\"trano/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=trano&feed=$matches[1]\";s:25:\"trano/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=trano&paged=$matches[1]\";s:15:\"mpanofatrano/?$\";s:32:\"index.php?post_type=mpanofatrano\";s:45:\"mpanofatrano/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=mpanofatrano&feed=$matches[1]\";s:40:\"mpanofatrano/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=mpanofatrano&feed=$matches[1]\";s:32:\"mpanofatrano/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=mpanofatrano&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"trano/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"trano/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"trano/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"trano/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"trano/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"trano/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"trano/([^/]+)/embed/?$\";s:38:\"index.php?trano=$matches[1]&embed=true\";s:26:\"trano/([^/]+)/trackback/?$\";s:32:\"index.php?trano=$matches[1]&tb=1\";s:46:\"trano/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?trano=$matches[1]&feed=$matches[2]\";s:41:\"trano/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?trano=$matches[1]&feed=$matches[2]\";s:34:\"trano/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?trano=$matches[1]&paged=$matches[2]\";s:41:\"trano/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?trano=$matches[1]&cpage=$matches[2]\";s:30:\"trano/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?trano=$matches[1]&page=$matches[2]\";s:22:\"trano/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"trano/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"trano/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"trano/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"trano/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"trano/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"mpanofatrano/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"mpanofatrano/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"mpanofatrano/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"mpanofatrano/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"mpanofatrano/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"mpanofatrano/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"mpanofatrano/([^/]+)/embed/?$\";s:45:\"index.php?mpanofatrano=$matches[1]&embed=true\";s:33:\"mpanofatrano/([^/]+)/trackback/?$\";s:39:\"index.php?mpanofatrano=$matches[1]&tb=1\";s:53:\"mpanofatrano/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?mpanofatrano=$matches[1]&feed=$matches[2]\";s:48:\"mpanofatrano/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?mpanofatrano=$matches[1]&feed=$matches[2]\";s:41:\"mpanofatrano/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?mpanofatrano=$matches[1]&paged=$matches[2]\";s:48:\"mpanofatrano/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?mpanofatrano=$matches[1]&cpage=$matches[2]\";s:37:\"mpanofatrano/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?mpanofatrano=$matches[1]&page=$matches[2]\";s:29:\"mpanofatrano/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"mpanofatrano/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"mpanofatrano/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"mpanofatrano/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"mpanofatrano/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"mpanofatrano/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'formation', 'yes'),
(41, 'stylesheet', 'formation', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1594785573', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:16:\"widget recherche\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"blog-sidebar\";a:3:{i:0;s:8:\"search-3\";i:1;s:7:\"pages-2\";i:2;s:13:\"media_image-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1583139580;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1583164780;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1583207980;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583207994;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583207996;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:2:{i:2;a:3:{s:5:\"title\";s:12:\"widget pages\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:2:{i:2;a:15:{s:4:\"size\";s:4:\"full\";s:5:\"width\";i:259;s:6:\"height\";i:194;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:89;s:3:\"url\";s:64:\"http://localhost/wordpress/wp-content/uploads/2020/01/index.jpeg\";s:5:\"title\";s:4:\"sary\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1583138457;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579235120;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(127, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'Rah jean', 'yes'),
(141, 'theme_mods_formation', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:4:\"main\";i:0;s:5:\"menu1\";i:25;s:5:\"menu2\";i:0;s:5:\"menu3\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(164, 'recently_activated', 'a:0:{}', 'yes'),
(167, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:9:\"localhost\";s:8:\"username\";s:4:\"root\";s:15:\"connection_type\";s:4:\"ftps\";}', 'yes'),
(170, 'acf_version', '5.8.7', 'yes'),
(283, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(325, 'category_children', 'a:0:{}', 'yes'),
(340, 'recovery_mode_email_last_sent', '1579763692', 'yes'),
(413, '_site_transient_timeout_theme_roots', '1583140260', 'no'),
(414, '_site_transient_theme_roots', 'a:5:{s:9:\"formation\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(415, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1583138464;s:7:\"checked\";a:5:{s:9:\"formation\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:1:{s:9:\"formation\";a:6:{s:5:\"theme\";s:9:\"formation\";s:11:\"new_version\";s:5:\"2.4.4\";s:3:\"url\";s:39:\"https://wordpress.org/themes/formation/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/formation.2.4.4.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(416, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1583138466;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:6:\"1.0.11\";}s:8:\"response\";a:1:{s:31:\"wp-migrate-db/wp-migrate-db.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wp-migrate-db\";s:4:\"slug\";s:13:\"wp-migrate-db\";s:6:\"plugin\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:11:\"new_version\";s:6:\"1.0.12\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-migrate-db/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-migrate-db.1.0.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-256x256.jpg?rev=1809889\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-128x128.jpg?rev=1809889\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-migrate-db/assets/banner-1544x500.jpg?rev=1809889\";s:2:\"1x\";s:68:\"https://ps.w.org/wp-migrate-db/assets/banner-772x250.jpg?rev=1809889\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(5, 7, '_wp_attached_file', '2020/01/Capture-du-2020-01-15-16-12-39.png'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:42:\"2020/01/Capture-du-2020-01-15-16-12-39.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"Capture-du-2020-01-15-16-12-39-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"Capture-du-2020-01-15-16-12-39-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"Capture-du-2020-01-15-16-12-39-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"Capture-du-2020-01-15-16-12-39-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:43:\"Capture-du-2020-01-15-16-12-39-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 16, '_edit_last', '1'),
(25, 16, '_edit_lock', '1581669265:1'),
(67, 29, '_edit_lock', '1581668905:1'),
(68, 29, '_edit_last', '1'),
(69, 29, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(70, 29, '_resultat', 'field_5e219a5e1da89'),
(71, 29, 'nom_boutique', 'za'),
(72, 29, '_nom_boutique', 'field_5e2159f3b43c0'),
(73, 29, 'gerant', 'za'),
(74, 29, '_gerant', 'field_5e215a38b43c1'),
(75, 29, 'date', '20200117'),
(76, 29, '_date', 'field_5e215a56b43c2'),
(77, 29, 'effectif', '7'),
(78, 29, '_effectif', 'field_5e215adab43c3'),
(79, 29, 'image', '34'),
(80, 29, '_image', 'field_5e21601ba6bf2'),
(81, 30, 'resultat', 'Bon'),
(82, 30, '_resultat', 'field_5e215903b43bf'),
(83, 30, 'nom_boutique', ''),
(84, 30, '_nom_boutique', 'field_5e2159f3b43c0'),
(85, 30, 'gerant', ''),
(86, 30, '_gerant', 'field_5e215a38b43c1'),
(87, 30, 'date', ''),
(88, 30, '_date', 'field_5e215a56b43c2'),
(89, 30, 'effectif', ''),
(90, 30, '_effectif', 'field_5e215adab43c3'),
(91, 30, 'image', ''),
(92, 30, '_image', 'field_5e21601ba6bf2'),
(93, 29, '_wp_page_template', 'accueil.php'),
(94, 31, 'resultat', 'Bon'),
(95, 31, '_resultat', 'field_5e215903b43bf'),
(96, 31, 'nom_boutique', 'za'),
(97, 31, '_nom_boutique', 'field_5e2159f3b43c0'),
(98, 31, 'gerant', 'za'),
(99, 31, '_gerant', 'field_5e215a38b43c1'),
(100, 31, 'date', '20200117'),
(101, 31, '_date', 'field_5e215a56b43c2'),
(102, 31, 'effectif', '7'),
(103, 31, '_effectif', 'field_5e215adab43c3'),
(104, 31, 'image', ''),
(105, 31, '_image', 'field_5e21601ba6bf2'),
(118, 34, '_wp_attached_file', '2020/01/New-Project3.png'),
(119, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:73;s:6:\"height\";i:73;s:4:\"file\";s:24:\"2020/01/New-Project3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 35, 'resultat', 'Bon'),
(121, 35, '_resultat', 'field_5e215903b43bf'),
(122, 35, 'nom_boutique', 'za'),
(123, 35, '_nom_boutique', 'field_5e2159f3b43c0'),
(124, 35, 'gerant', 'za'),
(125, 35, '_gerant', 'field_5e215a38b43c1'),
(126, 35, 'date', '20200117'),
(127, 35, '_date', 'field_5e215a56b43c2'),
(128, 35, 'effectif', '7'),
(129, 35, '_effectif', 'field_5e215adab43c3'),
(130, 35, 'image', '34'),
(131, 35, '_image', 'field_5e21601ba6bf2'),
(132, 36, '_edit_lock', '1579494829:1'),
(133, 37, '_wp_attached_file', '2020/01/New-Project2.png'),
(134, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:73;s:6:\"height\";i:73;s:4:\"file\";s:24:\"2020/01/New-Project2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 36, '_edit_last', '1'),
(136, 36, 'resultat', 'a:1:{i:0;s:3:\"Bon\";}'),
(137, 36, '_resultat', 'field_5e219a5e1da89'),
(138, 36, 'nom_boutique', 'cas 2'),
(139, 36, '_nom_boutique', 'field_5e2159f3b43c0'),
(140, 36, 'gerant', 'za'),
(141, 36, '_gerant', 'field_5e215a38b43c1'),
(142, 36, 'date', '20200117'),
(143, 36, '_date', 'field_5e215a56b43c2'),
(144, 36, 'effectif', '5'),
(145, 36, '_effectif', 'field_5e215adab43c3'),
(146, 36, 'image', '37'),
(147, 36, '_image', 'field_5e21601ba6bf2'),
(148, 39, 'resultat', 'Bon'),
(149, 39, '_resultat', 'field_5e215903b43bf'),
(150, 39, 'nom_boutique', 'cas 2'),
(151, 39, '_nom_boutique', 'field_5e2159f3b43c0'),
(152, 39, 'gerant', 'za'),
(153, 39, '_gerant', 'field_5e215a38b43c1'),
(154, 39, 'date', '20200117'),
(155, 39, '_date', 'field_5e215a56b43c2'),
(156, 39, 'effectif', '5'),
(157, 39, '_effectif', 'field_5e215adab43c3'),
(158, 39, 'image', '37'),
(159, 39, '_image', 'field_5e21601ba6bf2'),
(160, 36, '_wp_page_template', 'accueil.php'),
(161, 40, 'resultat', 'Bon'),
(162, 40, '_resultat', 'field_5e215903b43bf'),
(163, 40, 'nom_boutique', 'cas 2'),
(164, 40, '_nom_boutique', 'field_5e2159f3b43c0'),
(165, 40, 'gerant', 'za'),
(166, 40, '_gerant', 'field_5e215a38b43c1'),
(167, 40, 'date', '20200117'),
(168, 40, '_date', 'field_5e215a56b43c2'),
(169, 40, 'effectif', '5'),
(170, 40, '_effectif', 'field_5e215adab43c3'),
(171, 40, 'image', '37'),
(172, 40, '_image', 'field_5e21601ba6bf2'),
(173, 29, 'titre', 'Blabla'),
(174, 29, '_titre', 'field_5e219a441da88'),
(175, 29, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla'),
(176, 29, '_extrait_contenue', 'field_5e219a8e1da8a'),
(177, 44, 'resultat', 'a:1:{i:0;s:3:\"Bon\";}'),
(178, 44, '_resultat', 'field_5e219a5e1da89'),
(179, 44, 'nom_boutique', 'za'),
(180, 44, '_nom_boutique', 'field_5e2159f3b43c0'),
(181, 44, 'gerant', 'za'),
(182, 44, '_gerant', 'field_5e215a38b43c1'),
(183, 44, 'date', '20200117'),
(184, 44, '_date', 'field_5e215a56b43c2'),
(185, 44, 'effectif', '7'),
(186, 44, '_effectif', 'field_5e215adab43c3'),
(187, 44, 'image', '34'),
(188, 44, '_image', 'field_5e21601ba6bf2'),
(189, 44, 'titre', 'Blabla'),
(190, 44, '_titre', 'field_5e219a441da88'),
(191, 44, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla'),
(192, 44, '_extrait_contenue', 'field_5e219a8e1da8a'),
(205, 36, 'titre', 'Pazzapa'),
(206, 36, '_titre', 'field_5e219a441da88'),
(207, 36, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla'),
(208, 36, '_extrait_contenue', 'field_5e219a8e1da8a'),
(209, 52, 'resultat', 'a:1:{i:0;s:3:\"Bon\";}'),
(210, 52, '_resultat', 'field_5e219a5e1da89'),
(211, 52, 'nom_boutique', 'cas 2'),
(212, 52, '_nom_boutique', 'field_5e2159f3b43c0'),
(213, 52, 'gerant', 'za'),
(214, 52, '_gerant', 'field_5e215a38b43c1'),
(215, 52, 'date', '20200117'),
(216, 52, '_date', 'field_5e215a56b43c2'),
(217, 52, 'effectif', '5'),
(218, 52, '_effectif', 'field_5e215adab43c3'),
(219, 52, 'image', '37'),
(220, 52, '_image', 'field_5e21601ba6bf2'),
(221, 52, 'titre', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla'),
(222, 52, '_titre', 'field_5e219a441da88'),
(223, 52, 'extrait_contenue', ''),
(224, 52, '_extrait_contenue', 'field_5e219a8e1da8a'),
(225, 53, 'resultat', 'a:1:{i:0;s:3:\"Bon\";}'),
(226, 53, '_resultat', 'field_5e219a5e1da89'),
(227, 53, 'nom_boutique', 'cas 2'),
(228, 53, '_nom_boutique', 'field_5e2159f3b43c0'),
(229, 53, 'gerant', 'za'),
(230, 53, '_gerant', 'field_5e215a38b43c1'),
(231, 53, 'date', '20200117'),
(232, 53, '_date', 'field_5e215a56b43c2'),
(233, 53, 'effectif', '5'),
(234, 53, '_effectif', 'field_5e215adab43c3'),
(235, 53, 'image', '37'),
(236, 53, '_image', 'field_5e21601ba6bf2'),
(237, 53, 'titre', 'Pazzapa'),
(238, 53, '_titre', 'field_5e219a441da88'),
(239, 53, 'extrait_contenue', ''),
(240, 53, '_extrait_contenue', 'field_5e219a8e1da8a'),
(241, 54, 'resultat', 'a:1:{i:0;s:3:\"Bon\";}'),
(242, 54, '_resultat', 'field_5e219a5e1da89'),
(243, 54, 'nom_boutique', 'cas 2'),
(244, 54, '_nom_boutique', 'field_5e2159f3b43c0'),
(245, 54, 'gerant', 'za'),
(246, 54, '_gerant', 'field_5e215a38b43c1'),
(247, 54, 'date', '20200117'),
(248, 54, '_date', 'field_5e215a56b43c2'),
(249, 54, 'effectif', '5'),
(250, 54, '_effectif', 'field_5e215adab43c3'),
(251, 54, 'image', '37'),
(252, 54, '_image', 'field_5e21601ba6bf2'),
(253, 54, 'titre', 'Pazzapa'),
(254, 54, '_titre', 'field_5e219a441da88'),
(255, 54, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla'),
(256, 54, '_extrait_contenue', 'field_5e219a8e1da8a'),
(257, 55, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(258, 55, '_resultat', 'field_5e219a5e1da89'),
(259, 55, 'nom_boutique', 'za'),
(260, 55, '_nom_boutique', 'field_5e2159f3b43c0'),
(261, 55, 'gerant', 'za'),
(262, 55, '_gerant', 'field_5e215a38b43c1'),
(263, 55, 'date', '20200117'),
(264, 55, '_date', 'field_5e215a56b43c2'),
(265, 55, 'effectif', '7'),
(266, 55, '_effectif', 'field_5e215adab43c3'),
(267, 55, 'image', '34'),
(268, 55, '_image', 'field_5e21601ba6bf2'),
(269, 55, 'titre', 'Blabla'),
(270, 55, '_titre', 'field_5e219a441da88'),
(271, 55, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla'),
(272, 55, '_extrait_contenue', 'field_5e219a8e1da8a'),
(273, 29, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Faible\";}'),
(274, 29, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(275, 57, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(276, 57, '_resultat', 'field_5e219a5e1da89'),
(277, 57, 'nom_boutique', 'za'),
(278, 57, '_nom_boutique', 'field_5e2159f3b43c0'),
(279, 57, 'gerant', 'za'),
(280, 57, '_gerant', 'field_5e215a38b43c1'),
(281, 57, 'date', '20200117'),
(282, 57, '_date', 'field_5e215a56b43c2'),
(283, 57, 'effectif', '7'),
(284, 57, '_effectif', 'field_5e215adab43c3'),
(285, 57, 'image', '34'),
(286, 57, '_image', 'field_5e21601ba6bf2'),
(287, 57, 'titre', 'Blabla'),
(288, 57, '_titre', 'field_5e219a441da88'),
(289, 57, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla'),
(290, 57, '_extrait_contenue', 'field_5e219a8e1da8a'),
(291, 57, 'mise_en_oeuvre', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla'),
(292, 57, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(293, 29, 'cout', 'a:1:{i:0;s:6:\"Modere\";}'),
(294, 29, '_cout', 'field_5e21a9f648e6c'),
(295, 59, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(296, 59, '_resultat', 'field_5e219a5e1da89'),
(297, 59, 'nom_boutique', 'za'),
(298, 59, '_nom_boutique', 'field_5e2159f3b43c0'),
(299, 59, 'gerant', 'za'),
(300, 59, '_gerant', 'field_5e215a38b43c1'),
(301, 59, 'date', '20200117'),
(302, 59, '_date', 'field_5e215a56b43c2'),
(303, 59, 'effectif', '7'),
(304, 59, '_effectif', 'field_5e215adab43c3'),
(305, 59, 'image', '34'),
(306, 59, '_image', 'field_5e21601ba6bf2'),
(307, 59, 'titre', 'Blabla'),
(308, 59, '_titre', 'field_5e219a441da88'),
(309, 59, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla'),
(310, 59, '_extrait_contenue', 'field_5e219a8e1da8a'),
(311, 59, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Faible\";}'),
(312, 59, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(313, 59, 'cout', 'a:1:{i:0;s:6:\"Medere\";}'),
(314, 59, '_cout', 'field_5e21a9f648e6c'),
(315, 60, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(316, 60, '_resultat', 'field_5e219a5e1da89'),
(317, 60, 'nom_boutique', 'za'),
(318, 60, '_nom_boutique', 'field_5e2159f3b43c0'),
(319, 60, 'gerant', 'za'),
(320, 60, '_gerant', 'field_5e215a38b43c1'),
(321, 60, 'date', '20200117'),
(322, 60, '_date', 'field_5e215a56b43c2'),
(323, 60, 'effectif', '7'),
(324, 60, '_effectif', 'field_5e215adab43c3'),
(325, 60, 'image', '34'),
(326, 60, '_image', 'field_5e21601ba6bf2'),
(327, 60, 'titre', 'Blabla'),
(328, 60, '_titre', 'field_5e219a441da88'),
(329, 60, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla'),
(330, 60, '_extrait_contenue', 'field_5e219a8e1da8a'),
(331, 60, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Faible\";}'),
(332, 60, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(333, 60, 'cout', 'a:1:{i:0;s:6:\"Modere\";}'),
(334, 60, '_cout', 'field_5e21a9f648e6c'),
(335, 36, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Simple\";}'),
(336, 36, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(337, 36, 'cout', 'a:1:{i:0;s:5:\"Eleve\";}'),
(338, 36, '_cout', 'field_5e21a9f648e6c'),
(339, 61, 'resultat', 'a:1:{i:0;s:3:\"Bon\";}'),
(340, 61, '_resultat', 'field_5e219a5e1da89'),
(341, 61, 'nom_boutique', 'cas 2'),
(342, 61, '_nom_boutique', 'field_5e2159f3b43c0'),
(343, 61, 'gerant', 'za'),
(344, 61, '_gerant', 'field_5e215a38b43c1'),
(345, 61, 'date', '20200117'),
(346, 61, '_date', 'field_5e215a56b43c2'),
(347, 61, 'effectif', '5'),
(348, 61, '_effectif', 'field_5e215adab43c3'),
(349, 61, 'image', '37'),
(350, 61, '_image', 'field_5e21601ba6bf2'),
(351, 61, 'titre', 'Pazzapa'),
(352, 61, '_titre', 'field_5e219a441da88'),
(353, 61, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla'),
(354, 61, '_extrait_contenue', 'field_5e219a8e1da8a'),
(355, 61, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Simple\";}'),
(356, 61, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(357, 61, 'cout', 'a:1:{i:0;s:5:\"Eleve\";}'),
(358, 61, '_cout', 'field_5e21a9f648e6c'),
(359, 62, 'resultat', 'a:1:{i:0;s:3:\"Bon\";}'),
(360, 62, '_resultat', 'field_5e219a5e1da89'),
(361, 62, 'nom_boutique', 'cas 2'),
(362, 62, '_nom_boutique', 'field_5e2159f3b43c0'),
(363, 62, 'gerant', 'za'),
(364, 62, '_gerant', 'field_5e215a38b43c1'),
(365, 62, 'date', '20200117'),
(366, 62, '_date', 'field_5e215a56b43c2'),
(367, 62, 'effectif', '5'),
(368, 62, '_effectif', 'field_5e215adab43c3'),
(369, 62, 'image', '37'),
(370, 62, '_image', 'field_5e21601ba6bf2'),
(371, 62, 'titre', 'Pazzapa'),
(372, 62, '_titre', 'field_5e219a441da88'),
(373, 62, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla'),
(374, 62, '_extrait_contenue', 'field_5e219a8e1da8a'),
(375, 62, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Simple\";}'),
(376, 62, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(377, 62, 'cout', 'a:1:{i:0;s:5:\"Eleve\";}'),
(378, 62, '_cout', 'field_5e21a9f648e6c'),
(388, 64, '_edit_lock', '1581674953:1'),
(391, 64, '_edit_last', '1'),
(394, 64, 'resultat', 'a:1:{i:0;s:7:\"Mauvais\";}'),
(395, 64, '_resultat', 'field_5e219a5e1da89'),
(396, 64, 'nom_boutique', 'Boutique 1'),
(397, 64, '_nom_boutique', 'field_5e2159f3b43c0'),
(398, 64, 'gerant', 'Gerant 1'),
(399, 64, '_gerant', 'field_5e215a38b43c1'),
(400, 64, 'date', '20200120'),
(401, 64, '_date', 'field_5e215a56b43c2'),
(402, 64, 'effectif', '3'),
(403, 64, '_effectif', 'field_5e215adab43c3'),
(404, 64, 'image', ''),
(405, 64, '_image', 'field_5e21601ba6bf2'),
(406, 64, 'extrait_contenue', 'sa'),
(407, 64, '_extrait_contenue', 'field_5e219a8e1da8a'),
(408, 64, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Simple\";}'),
(409, 64, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(410, 64, 'cout', 'a:1:{i:0;s:6:\"Modere\";}'),
(411, 64, '_cout', 'field_5e21a9f648e6c'),
(412, 66, 'resultat', 'a:1:{i:0;s:7:\"Mauvais\";}'),
(413, 66, '_resultat', 'field_5e219a5e1da89'),
(414, 66, 'nom_boutique', 'Boutique 1'),
(415, 66, '_nom_boutique', 'field_5e2159f3b43c0'),
(416, 66, 'gerant', 'Gerant 1'),
(417, 66, '_gerant', 'field_5e215a38b43c1'),
(418, 66, 'date', '20200120'),
(419, 66, '_date', 'field_5e215a56b43c2'),
(420, 66, 'effectif', '3'),
(421, 66, '_effectif', 'field_5e215adab43c3'),
(422, 66, 'image', '34'),
(423, 66, '_image', 'field_5e21601ba6bf2'),
(424, 66, 'extrait_contenue', 'sa'),
(425, 66, '_extrait_contenue', 'field_5e219a8e1da8a'),
(426, 66, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Simple\";}'),
(427, 66, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(428, 66, 'cout', 'a:1:{i:0;s:6:\"Modere\";}'),
(429, 66, '_cout', 'field_5e21a9f648e6c'),
(432, 67, 'resultat', 'a:1:{i:0;s:7:\"Mauvais\";}'),
(433, 67, '_resultat', 'field_5e219a5e1da89'),
(434, 67, 'nom_boutique', 'Boutique 1'),
(435, 67, '_nom_boutique', 'field_5e2159f3b43c0'),
(436, 67, 'gerant', 'Gerant 1'),
(437, 67, '_gerant', 'field_5e215a38b43c1'),
(438, 67, 'date', '20200120'),
(439, 67, '_date', 'field_5e215a56b43c2'),
(440, 67, 'effectif', '3'),
(441, 67, '_effectif', 'field_5e215adab43c3'),
(442, 67, 'image', '34'),
(443, 67, '_image', 'field_5e21601ba6bf2'),
(444, 67, 'extrait_contenue', 'sa'),
(445, 67, '_extrait_contenue', 'field_5e219a8e1da8a'),
(446, 67, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Simple\";}'),
(447, 67, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(448, 67, 'cout', 'a:1:{i:0;s:6:\"Modere\";}'),
(449, 67, '_cout', 'field_5e21a9f648e6c'),
(472, 69, '_edit_lock', '1579588310:1'),
(475, 69, '_edit_last', '1'),
(478, 69, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(479, 69, '_resultat', 'field_5e219a5e1da89'),
(480, 69, 'nom_boutique', 'jean'),
(481, 69, '_nom_boutique', 'field_5e2159f3b43c0'),
(482, 69, 'gerant', 'jean'),
(483, 69, '_gerant', 'field_5e215a38b43c1'),
(484, 69, 'date', '20200120'),
(485, 69, '_date', 'field_5e215a56b43c2'),
(486, 69, 'effectif', '56'),
(487, 69, '_effectif', 'field_5e215adab43c3'),
(488, 69, 'image', '89'),
(489, 69, '_image', 'field_5e21601ba6bf2'),
(490, 69, 'extrait_contenue', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(491, 69, '_extrait_contenue', 'field_5e219a8e1da8a'),
(492, 69, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(493, 69, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(494, 69, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(495, 69, '_cout', 'field_5e21a9f648e6c'),
(496, 71, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(497, 71, '_resultat', 'field_5e219a5e1da89'),
(498, 71, 'nom_boutique', 'jean'),
(499, 71, '_nom_boutique', 'field_5e2159f3b43c0'),
(500, 71, 'gerant', 'jean'),
(501, 71, '_gerant', 'field_5e215a38b43c1'),
(502, 71, 'date', '20200120'),
(503, 71, '_date', 'field_5e215a56b43c2'),
(504, 71, 'effectif', '56'),
(505, 71, '_effectif', 'field_5e215adab43c3'),
(506, 71, 'image', ''),
(507, 71, '_image', 'field_5e21601ba6bf2'),
(508, 71, 'extrait_contenue', ''),
(509, 71, '_extrait_contenue', 'field_5e219a8e1da8a'),
(510, 71, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(511, 71, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(512, 71, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(513, 71, '_cout', 'field_5e21a9f648e6c'),
(516, 72, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(517, 72, '_resultat', 'field_5e219a5e1da89'),
(518, 72, 'nom_boutique', 'jean'),
(519, 72, '_nom_boutique', 'field_5e2159f3b43c0'),
(520, 72, 'gerant', 'jean'),
(521, 72, '_gerant', 'field_5e215a38b43c1'),
(522, 72, 'date', '20200120'),
(523, 72, '_date', 'field_5e215a56b43c2'),
(524, 72, 'effectif', '56'),
(525, 72, '_effectif', 'field_5e215adab43c3'),
(526, 72, 'image', ''),
(527, 72, '_image', 'field_5e21601ba6bf2'),
(528, 72, 'extrait_contenue', ''),
(529, 72, '_extrait_contenue', 'field_5e219a8e1da8a'),
(530, 72, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(531, 72, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(532, 72, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(533, 72, '_cout', 'field_5e21a9f648e6c'),
(536, 73, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(537, 73, '_resultat', 'field_5e219a5e1da89'),
(538, 73, 'nom_boutique', 'jean'),
(539, 73, '_nom_boutique', 'field_5e2159f3b43c0'),
(540, 73, 'gerant', 'jean'),
(541, 73, '_gerant', 'field_5e215a38b43c1'),
(542, 73, 'date', '20200120'),
(543, 73, '_date', 'field_5e215a56b43c2'),
(544, 73, 'effectif', '56'),
(545, 73, '_effectif', 'field_5e215adab43c3'),
(546, 73, 'image', ''),
(547, 73, '_image', 'field_5e21601ba6bf2'),
(548, 73, 'extrait_contenue', ''),
(549, 73, '_extrait_contenue', 'field_5e219a8e1da8a'),
(550, 73, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(551, 73, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(552, 73, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(553, 73, '_cout', 'field_5e21a9f648e6c'),
(556, 74, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(557, 74, '_resultat', 'field_5e219a5e1da89'),
(558, 74, 'nom_boutique', 'jean'),
(559, 74, '_nom_boutique', 'field_5e2159f3b43c0'),
(560, 74, 'gerant', 'jean'),
(561, 74, '_gerant', 'field_5e215a38b43c1'),
(562, 74, 'date', '20200120'),
(563, 74, '_date', 'field_5e215a56b43c2'),
(564, 74, 'effectif', '56'),
(565, 74, '_effectif', 'field_5e215adab43c3'),
(566, 74, 'image', ''),
(567, 74, '_image', 'field_5e21601ba6bf2'),
(568, 74, 'extrait_contenue', ''),
(569, 74, '_extrait_contenue', 'field_5e219a8e1da8a'),
(570, 74, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(571, 74, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(572, 74, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(573, 74, '_cout', 'field_5e21a9f648e6c'),
(576, 64, '_thumbnail_id', '34'),
(581, 69, '_thumbnail_id', '37'),
(589, 76, 'resultat', 'a:1:{i:0;s:7:\"Mauvais\";}'),
(590, 76, '_resultat', 'field_5e219a5e1da89'),
(591, 76, 'nom_boutique', 'Boutique 1'),
(592, 76, '_nom_boutique', 'field_5e2159f3b43c0'),
(593, 76, 'gerant', 'Gerant 1'),
(594, 76, '_gerant', 'field_5e215a38b43c1'),
(595, 76, 'date', '20200120'),
(596, 76, '_date', 'field_5e215a56b43c2'),
(597, 76, 'effectif', '3'),
(598, 76, '_effectif', 'field_5e215adab43c3'),
(599, 76, 'image', '34'),
(600, 76, '_image', 'field_5e21601ba6bf2'),
(601, 76, 'extrait_contenue', 'sa'),
(602, 76, '_extrait_contenue', 'field_5e219a8e1da8a'),
(603, 76, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Simple\";}'),
(604, 76, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(605, 76, 'cout', 'a:1:{i:0;s:6:\"Modere\";}'),
(606, 76, '_cout', 'field_5e21a9f648e6c'),
(609, 77, 'resultat', 'a:1:{i:0;s:7:\"Mauvais\";}'),
(610, 77, '_resultat', 'field_5e219a5e1da89'),
(611, 77, 'nom_boutique', 'Boutique 1'),
(612, 77, '_nom_boutique', 'field_5e2159f3b43c0'),
(613, 77, 'gerant', 'Gerant 1'),
(614, 77, '_gerant', 'field_5e215a38b43c1'),
(615, 77, 'date', '20200120'),
(616, 77, '_date', 'field_5e215a56b43c2'),
(617, 77, 'effectif', '3'),
(618, 77, '_effectif', 'field_5e215adab43c3'),
(619, 77, 'image', ''),
(620, 77, '_image', 'field_5e21601ba6bf2'),
(621, 77, 'extrait_contenue', 'sa'),
(622, 77, '_extrait_contenue', 'field_5e219a8e1da8a'),
(623, 77, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Simple\";}'),
(624, 77, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(625, 77, 'cout', 'a:1:{i:0;s:6:\"Modere\";}'),
(626, 77, '_cout', 'field_5e21a9f648e6c'),
(629, 78, 'resultat', 'a:1:{i:0;s:7:\"Mauvais\";}'),
(630, 78, '_resultat', 'field_5e219a5e1da89'),
(631, 78, 'nom_boutique', 'Boutique 1'),
(632, 78, '_nom_boutique', 'field_5e2159f3b43c0'),
(633, 78, 'gerant', 'Gerant 1'),
(634, 78, '_gerant', 'field_5e215a38b43c1'),
(635, 78, 'date', '20200120'),
(636, 78, '_date', 'field_5e215a56b43c2'),
(637, 78, 'effectif', '3'),
(638, 78, '_effectif', 'field_5e215adab43c3'),
(639, 78, 'image', '37'),
(640, 78, '_image', 'field_5e21601ba6bf2'),
(641, 78, 'extrait_contenue', 'sa'),
(642, 78, '_extrait_contenue', 'field_5e219a8e1da8a'),
(643, 78, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Simple\";}'),
(644, 78, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(645, 78, 'cout', 'a:1:{i:0;s:6:\"Modere\";}'),
(646, 78, '_cout', 'field_5e21a9f648e6c'),
(651, 79, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(652, 79, '_resultat', 'field_5e219a5e1da89'),
(653, 79, 'nom_boutique', 'jean'),
(654, 79, '_nom_boutique', 'field_5e2159f3b43c0'),
(655, 79, 'gerant', 'jean'),
(656, 79, '_gerant', 'field_5e215a38b43c1'),
(657, 79, 'date', '20200120'),
(658, 79, '_date', 'field_5e215a56b43c2'),
(659, 79, 'effectif', '56'),
(660, 79, '_effectif', 'field_5e215adab43c3'),
(661, 79, 'image', '34'),
(662, 79, '_image', 'field_5e21601ba6bf2'),
(663, 79, 'extrait_contenue', ''),
(664, 79, '_extrait_contenue', 'field_5e219a8e1da8a'),
(665, 79, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(666, 79, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(667, 79, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(668, 79, '_cout', 'field_5e21a9f648e6c'),
(671, 80, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(672, 80, '_resultat', 'field_5e219a5e1da89'),
(673, 80, 'nom_boutique', 'jean'),
(674, 80, '_nom_boutique', 'field_5e2159f3b43c0'),
(675, 80, 'gerant', 'jean'),
(676, 80, '_gerant', 'field_5e215a38b43c1'),
(677, 80, 'date', '20200120'),
(678, 80, '_date', 'field_5e215a56b43c2'),
(679, 80, 'effectif', '56'),
(680, 80, '_effectif', 'field_5e215adab43c3'),
(681, 80, 'image', '34'),
(682, 80, '_image', 'field_5e21601ba6bf2'),
(683, 80, 'extrait_contenue', ''),
(684, 80, '_extrait_contenue', 'field_5e219a8e1da8a'),
(685, 80, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(686, 80, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(687, 80, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(688, 80, '_cout', 'field_5e21a9f648e6c'),
(691, 82, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(692, 82, '_resultat', 'field_5e219a5e1da89'),
(693, 82, 'nom_boutique', 'jean'),
(694, 82, '_nom_boutique', 'field_5e2159f3b43c0'),
(695, 82, 'gerant', 'jean'),
(696, 82, '_gerant', 'field_5e215a38b43c1'),
(697, 82, 'date', '20200120'),
(698, 82, '_date', 'field_5e215a56b43c2'),
(699, 82, 'effectif', '56'),
(700, 82, '_effectif', 'field_5e215adab43c3'),
(701, 82, 'image', '34'),
(702, 82, '_image', 'field_5e21601ba6bf2'),
(703, 82, 'extrait_contenue', ''),
(704, 82, '_extrait_contenue', 'field_5e219a8e1da8a'),
(705, 82, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(706, 82, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(707, 82, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(708, 82, '_cout', 'field_5e21a9f648e6c'),
(711, 83, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(712, 83, '_resultat', 'field_5e219a5e1da89'),
(713, 83, 'nom_boutique', 'jean'),
(714, 83, '_nom_boutique', 'field_5e2159f3b43c0'),
(715, 83, 'gerant', 'jean'),
(716, 83, '_gerant', 'field_5e215a38b43c1'),
(717, 83, 'date', '20200120'),
(718, 83, '_date', 'field_5e215a56b43c2'),
(719, 83, 'effectif', '56'),
(720, 83, '_effectif', 'field_5e215adab43c3'),
(721, 83, 'image', '34'),
(722, 83, '_image', 'field_5e21601ba6bf2'),
(723, 83, 'extrait_contenue', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(724, 83, '_extrait_contenue', 'field_5e219a8e1da8a'),
(725, 83, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(726, 83, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(727, 83, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(728, 83, '_cout', 'field_5e21a9f648e6c'),
(731, 84, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(732, 84, '_resultat', 'field_5e219a5e1da89'),
(733, 84, 'nom_boutique', 'jean'),
(734, 84, '_nom_boutique', 'field_5e2159f3b43c0'),
(735, 84, 'gerant', 'jean'),
(736, 84, '_gerant', 'field_5e215a38b43c1'),
(737, 84, 'date', '20200120'),
(738, 84, '_date', 'field_5e215a56b43c2'),
(739, 84, 'effectif', '56'),
(740, 84, '_effectif', 'field_5e215adab43c3'),
(741, 84, 'image', '34'),
(742, 84, '_image', 'field_5e21601ba6bf2'),
(743, 84, 'extrait_contenue', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(744, 84, '_extrait_contenue', 'field_5e219a8e1da8a'),
(745, 84, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(746, 84, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(747, 84, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(748, 84, '_cout', 'field_5e21a9f648e6c'),
(751, 85, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(752, 85, '_resultat', 'field_5e219a5e1da89'),
(753, 85, 'nom_boutique', 'jean'),
(754, 85, '_nom_boutique', 'field_5e2159f3b43c0'),
(755, 85, 'gerant', 'jean'),
(756, 85, '_gerant', 'field_5e215a38b43c1'),
(757, 85, 'date', '20200120'),
(758, 85, '_date', 'field_5e215a56b43c2'),
(759, 85, 'effectif', '56'),
(760, 85, '_effectif', 'field_5e215adab43c3'),
(761, 85, 'image', ''),
(762, 85, '_image', 'field_5e21601ba6bf2'),
(763, 85, 'extrait_contenue', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(764, 85, '_extrait_contenue', 'field_5e219a8e1da8a'),
(765, 85, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(766, 85, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(767, 85, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(768, 85, '_cout', 'field_5e21a9f648e6c'),
(771, 69, 'logo', '34'),
(772, 69, '_logo', 'field_5e2690db2ee85'),
(773, 87, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(774, 87, '_resultat', 'field_5e219a5e1da89'),
(775, 87, 'nom_boutique', 'jean'),
(776, 87, '_nom_boutique', 'field_5e2159f3b43c0'),
(777, 87, 'gerant', 'jean'),
(778, 87, '_gerant', 'field_5e215a38b43c1'),
(779, 87, 'date', '20200120'),
(780, 87, '_date', 'field_5e215a56b43c2'),
(781, 87, 'effectif', '56'),
(782, 87, '_effectif', 'field_5e215adab43c3'),
(783, 87, 'image', ''),
(784, 87, '_image', 'field_5e21601ba6bf2'),
(785, 87, 'extrait_contenue', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(786, 87, '_extrait_contenue', 'field_5e219a8e1da8a'),
(787, 87, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(788, 87, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(789, 87, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(790, 87, '_cout', 'field_5e21a9f648e6c'),
(791, 87, 'logo', '34'),
(792, 87, '_logo', 'field_5e2690db2ee85'),
(797, 64, 'logo', '37'),
(798, 64, '_logo', 'field_5e2690db2ee85'),
(799, 88, 'resultat', 'a:1:{i:0;s:7:\"Mauvais\";}'),
(800, 88, '_resultat', 'field_5e219a5e1da89'),
(801, 88, 'nom_boutique', 'Boutique 1'),
(802, 88, '_nom_boutique', 'field_5e2159f3b43c0'),
(803, 88, 'gerant', 'Gerant 1'),
(804, 88, '_gerant', 'field_5e215a38b43c1'),
(805, 88, 'date', '20200120'),
(806, 88, '_date', 'field_5e215a56b43c2'),
(807, 88, 'effectif', '3'),
(808, 88, '_effectif', 'field_5e215adab43c3'),
(809, 88, 'image', '37'),
(810, 88, '_image', 'field_5e21601ba6bf2'),
(811, 88, 'extrait_contenue', 'sa'),
(812, 88, '_extrait_contenue', 'field_5e219a8e1da8a'),
(813, 88, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Simple\";}'),
(814, 88, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(815, 88, 'cout', 'a:1:{i:0;s:6:\"Modere\";}'),
(816, 88, '_cout', 'field_5e21a9f648e6c'),
(817, 88, 'logo', '37'),
(818, 88, '_logo', 'field_5e2690db2ee85'),
(819, 89, '_wp_attached_file', '2020/01/index.jpeg'),
(820, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:18:\"2020/01/index.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"index-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(825, 90, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(826, 90, '_resultat', 'field_5e219a5e1da89'),
(827, 90, 'nom_boutique', 'jean'),
(828, 90, '_nom_boutique', 'field_5e2159f3b43c0'),
(829, 90, 'gerant', 'jean'),
(830, 90, '_gerant', 'field_5e215a38b43c1'),
(831, 90, 'date', '20200120'),
(832, 90, '_date', 'field_5e215a56b43c2'),
(833, 90, 'effectif', '56'),
(834, 90, '_effectif', 'field_5e215adab43c3'),
(835, 90, 'image', '89'),
(836, 90, '_image', 'field_5e21601ba6bf2'),
(837, 90, 'extrait_contenue', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(838, 90, '_extrait_contenue', 'field_5e219a8e1da8a'),
(839, 90, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(840, 90, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(841, 90, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(842, 90, '_cout', 'field_5e21a9f648e6c'),
(843, 90, 'logo', '34'),
(844, 90, '_logo', 'field_5e2690db2ee85'),
(845, 91, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(846, 91, '_resultat', 'field_5e219a5e1da89'),
(847, 91, 'nom_boutique', 'jean'),
(848, 91, '_nom_boutique', 'field_5e2159f3b43c0'),
(849, 91, 'gerant', 'jean'),
(850, 91, '_gerant', 'field_5e215a38b43c1'),
(851, 91, 'date', '20200120'),
(852, 91, '_date', 'field_5e215a56b43c2'),
(853, 91, 'effectif', '56'),
(854, 91, '_effectif', 'field_5e215adab43c3'),
(855, 91, 'image', '89'),
(856, 91, '_image', 'field_5e21601ba6bf2'),
(857, 91, 'extrait_contenue', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(858, 91, '_extrait_contenue', 'field_5e219a8e1da8a'),
(859, 91, 'mise_en_oeuvre', 'a:1:{i:0;s:8:\"Complexe\";}'),
(860, 91, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(861, 91, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(862, 91, '_cout', 'field_5e21a9f648e6c'),
(863, 91, 'logo', '34'),
(864, 91, '_logo', 'field_5e2690db2ee85'),
(869, 92, 'resultat', 'a:1:{i:0;s:7:\"Mauvais\";}'),
(870, 92, '_resultat', 'field_5e219a5e1da89'),
(871, 92, 'nom_boutique', 'Boutique 1'),
(872, 92, '_nom_boutique', 'field_5e2159f3b43c0'),
(873, 92, 'gerant', 'Gerant 1'),
(874, 92, '_gerant', 'field_5e215a38b43c1'),
(875, 92, 'date', '20200120'),
(876, 92, '_date', 'field_5e215a56b43c2'),
(877, 92, 'effectif', '3'),
(878, 92, '_effectif', 'field_5e215adab43c3'),
(879, 92, 'image', ''),
(880, 92, '_image', 'field_5e21601ba6bf2'),
(881, 92, 'extrait_contenue', 'sa'),
(882, 92, '_extrait_contenue', 'field_5e219a8e1da8a'),
(883, 92, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Simple\";}'),
(884, 92, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(885, 92, 'cout', 'a:1:{i:0;s:6:\"Modere\";}'),
(886, 92, '_cout', 'field_5e21a9f648e6c'),
(887, 92, 'logo', '37'),
(888, 92, '_logo', 'field_5e2690db2ee85'),
(891, 94, 'resultat', 'a:1:{i:0;s:7:\"Mauvais\";}'),
(892, 94, '_resultat', 'field_5e219a5e1da89'),
(893, 94, 'nom_boutique', 'Boutique 1'),
(894, 94, '_nom_boutique', 'field_5e2159f3b43c0'),
(895, 94, 'gerant', 'Gerant 1'),
(896, 94, '_gerant', 'field_5e215a38b43c1'),
(897, 94, 'date', '20200120'),
(898, 94, '_date', 'field_5e215a56b43c2'),
(899, 94, 'effectif', '3'),
(900, 94, '_effectif', 'field_5e215adab43c3'),
(901, 94, 'image', ''),
(902, 94, '_image', 'field_5e21601ba6bf2'),
(903, 94, 'extrait_contenue', 'sa'),
(904, 94, '_extrait_contenue', 'field_5e219a8e1da8a'),
(905, 94, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Simple\";}'),
(906, 94, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(907, 94, 'cout', 'a:1:{i:0;s:6:\"Modere\";}'),
(908, 94, '_cout', 'field_5e21a9f648e6c'),
(909, 94, 'logo', '37'),
(910, 94, '_logo', 'field_5e2690db2ee85'),
(917, 95, '_edit_lock', '1581668919:1'),
(918, 96, '_wp_attached_file', '2020/01/maison.jpeg'),
(919, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:264;s:6:\"height\";i:191;s:4:\"file\";s:19:\"2020/01/maison.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"maison-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(922, 95, '_edit_last', '1'),
(923, 95, 'logo', '100'),
(924, 95, '_logo', 'field_5e2690db2ee85'),
(925, 95, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(926, 95, '_resultat', 'field_5e219a5e1da89'),
(927, 95, 'nom_boutique', 'xxxx'),
(928, 95, '_nom_boutique', 'field_5e2159f3b43c0'),
(929, 95, 'gerant', 'xxx'),
(930, 95, '_gerant', 'field_5e215a38b43c1'),
(931, 95, 'date', '20200121'),
(932, 95, '_date', 'field_5e215a56b43c2'),
(933, 95, 'effectif', '25'),
(934, 95, '_effectif', 'field_5e215adab43c3'),
(935, 95, 'image', '96'),
(936, 95, '_image', 'field_5e21601ba6bf2'),
(937, 95, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. '),
(938, 95, '_extrait_contenue', 'field_5e219a8e1da8a'),
(939, 95, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Faible\";}'),
(940, 95, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(941, 95, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(942, 95, '_cout', 'field_5e21a9f648e6c'),
(943, 98, 'logo', ''),
(944, 98, '_logo', 'field_5e2690db2ee85'),
(945, 98, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(946, 98, '_resultat', 'field_5e219a5e1da89'),
(947, 98, 'nom_boutique', 'xxxx'),
(948, 98, '_nom_boutique', 'field_5e2159f3b43c0'),
(949, 98, 'gerant', 'xxx'),
(950, 98, '_gerant', 'field_5e215a38b43c1'),
(951, 98, 'date', '20200121'),
(952, 98, '_date', 'field_5e215a56b43c2'),
(953, 98, 'effectif', '25'),
(954, 98, '_effectif', 'field_5e215adab43c3'),
(955, 98, 'image', '96'),
(956, 98, '_image', 'field_5e21601ba6bf2'),
(957, 98, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. '),
(958, 98, '_extrait_contenue', 'field_5e219a8e1da8a'),
(959, 98, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Faible\";}'),
(960, 98, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(961, 98, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(962, 98, '_cout', 'field_5e21a9f648e6c'),
(963, 99, 'logo', ''),
(964, 99, '_logo', 'field_5e2690db2ee85'),
(965, 99, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(966, 99, '_resultat', 'field_5e219a5e1da89'),
(967, 99, 'nom_boutique', 'xxxx'),
(968, 99, '_nom_boutique', 'field_5e2159f3b43c0'),
(969, 99, 'gerant', 'xxx'),
(970, 99, '_gerant', 'field_5e215a38b43c1'),
(971, 99, 'date', '20200121'),
(972, 99, '_date', 'field_5e215a56b43c2'),
(973, 99, 'effectif', '25'),
(974, 99, '_effectif', 'field_5e215adab43c3'),
(975, 99, 'image', '96'),
(976, 99, '_image', 'field_5e21601ba6bf2'),
(977, 99, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. '),
(978, 99, '_extrait_contenue', 'field_5e219a8e1da8a'),
(979, 99, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Faible\";}'),
(980, 99, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(981, 99, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(982, 99, '_cout', 'field_5e21a9f648e6c'),
(983, 100, '_wp_attached_file', '2020/01/sary5.png'),
(984, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:73;s:6:\"height\";i:73;s:4:\"file\";s:17:\"2020/01/sary5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(987, 95, '_pingme', '1'),
(988, 95, '_encloseme', '1'),
(989, 101, 'logo', '100'),
(990, 101, '_logo', 'field_5e2690db2ee85'),
(991, 101, 'resultat', 'a:1:{i:0;s:5:\"Moyen\";}'),
(992, 101, '_resultat', 'field_5e219a5e1da89'),
(993, 101, 'nom_boutique', 'xxxx'),
(994, 101, '_nom_boutique', 'field_5e2159f3b43c0'),
(995, 101, 'gerant', 'xxx'),
(996, 101, '_gerant', 'field_5e215a38b43c1'),
(997, 101, 'date', '20200121'),
(998, 101, '_date', 'field_5e215a56b43c2'),
(999, 101, 'effectif', '25'),
(1000, 101, '_effectif', 'field_5e215adab43c3'),
(1001, 101, 'image', '96'),
(1002, 101, '_image', 'field_5e21601ba6bf2'),
(1003, 101, 'extrait_contenue', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. '),
(1004, 101, '_extrait_contenue', 'field_5e219a8e1da8a'),
(1005, 101, 'mise_en_oeuvre', 'a:1:{i:0;s:6:\"Faible\";}'),
(1006, 101, '_mise_en_oeuvre', 'field_5e21a884ddf8b'),
(1007, 101, 'cout', 'a:1:{i:0;s:6:\"Faible\";}'),
(1008, 101, '_cout', 'field_5e21a9f648e6c'),
(1165, 120, '_menu_item_type', 'taxonomy'),
(1166, 120, '_menu_item_menu_item_parent', '0'),
(1167, 120, '_menu_item_object_id', '16'),
(1168, 120, '_menu_item_object', 'category'),
(1169, 120, '_menu_item_target', ''),
(1170, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1171, 120, '_menu_item_xfn', ''),
(1172, 120, '_menu_item_url', ''),
(1173, 120, '_menu_item_orphaned', '1579686264'),
(1174, 121, '_menu_item_type', 'taxonomy'),
(1175, 121, '_menu_item_menu_item_parent', '0'),
(1176, 121, '_menu_item_object_id', '17'),
(1177, 121, '_menu_item_object', 'category'),
(1178, 121, '_menu_item_target', ''),
(1179, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1180, 121, '_menu_item_xfn', ''),
(1181, 121, '_menu_item_url', ''),
(1182, 121, '_menu_item_orphaned', '1579686265'),
(1183, 122, '_menu_item_type', 'taxonomy'),
(1184, 122, '_menu_item_menu_item_parent', '0'),
(1185, 122, '_menu_item_object_id', '18'),
(1186, 122, '_menu_item_object', 'category'),
(1187, 122, '_menu_item_target', ''),
(1188, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1189, 122, '_menu_item_xfn', ''),
(1190, 122, '_menu_item_url', ''),
(1191, 122, '_menu_item_orphaned', '1579686265'),
(1192, 123, '_menu_item_type', 'taxonomy'),
(1193, 123, '_menu_item_menu_item_parent', '0'),
(1194, 123, '_menu_item_object_id', '16'),
(1195, 123, '_menu_item_object', 'category'),
(1196, 123, '_menu_item_target', ''),
(1197, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1198, 123, '_menu_item_xfn', ''),
(1199, 123, '_menu_item_url', ''),
(1201, 124, '_menu_item_type', 'taxonomy'),
(1202, 124, '_menu_item_menu_item_parent', '0'),
(1203, 124, '_menu_item_object_id', '17'),
(1204, 124, '_menu_item_object', 'category'),
(1205, 124, '_menu_item_target', ''),
(1206, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1207, 124, '_menu_item_xfn', ''),
(1208, 124, '_menu_item_url', ''),
(1210, 125, '_menu_item_type', 'taxonomy'),
(1211, 125, '_menu_item_menu_item_parent', '0'),
(1212, 125, '_menu_item_object_id', '18'),
(1213, 125, '_menu_item_object', 'category'),
(1214, 125, '_menu_item_target', ''),
(1215, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1216, 125, '_menu_item_xfn', ''),
(1217, 125, '_menu_item_url', ''),
(1219, 127, '_edit_last', '1'),
(1220, 127, '_edit_lock', '1579698973:1'),
(1221, 135, '_edit_last', '1'),
(1222, 135, '_edit_lock', '1579852730:1'),
(1223, 141, '_edit_last', '1'),
(1224, 141, '_edit_lock', '1579851632:1'),
(1225, 141, 'anarana', 'koto'),
(1226, 141, '_anarana', 'field_5e2a9ae3aa8db'),
(1227, 141, 'olona_anatiny_trano', '15'),
(1228, 141, '_olona_anatiny_trano', 'field_5e2a9aecaa8dc'),
(1229, 142, '_edit_last', '1'),
(1230, 142, '_edit_lock', '1579850522:1'),
(1231, 142, 'anarana', 'jean'),
(1232, 142, '_anarana', 'field_5e2a9ae3aa8db'),
(1233, 142, 'olona_anatiny_trano', '8'),
(1234, 142, '_olona_anatiny_trano', 'field_5e2a9aecaa8dc'),
(1235, 144, '_edit_last', '1'),
(1236, 144, '_edit_lock', '1579868245:1'),
(1237, 147, '_edit_last', '1'),
(1238, 147, '_edit_lock', '1579850661:1'),
(1239, 147, 'hofa_trano', '500.000 fmg'),
(1240, 147, '_hofa_trano', 'field_5e2a9bfe178cc'),
(1241, 147, 'abehany', '250 * 500'),
(1242, 147, '_abehany', 'field_5e2a9c08178cd'),
(1243, 148, '_edit_last', '1'),
(1244, 148, '_edit_lock', '1579852724:1'),
(1245, 148, 'hofa_trano', '1.000.000 fmg'),
(1246, 148, '_hofa_trano', 'field_5e2a9bfe178cc'),
(1247, 148, 'abehany', '500 * 500'),
(1248, 148, '_abehany', 'field_5e2a9c08178cd'),
(1249, 148, 'mpanofa_trano', '141'),
(1250, 148, '_mpanofa_trano', 'field_5e2aa2f27892b');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(7, 1, '2020-01-17 05:47:01', '2020-01-17 05:47:01', '', 'Capture du 2020-01-15 16-12-39', '', 'inherit', 'open', 'closed', '', 'capture-du-2020-01-15-16-12-39', '', '', '2020-01-17 05:47:01', '2020-01-17 05:47:01', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/01/Capture-du-2020-01-15-16-12-39.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2020-01-17 07:00:09', '2020-01-17 07:00:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Champs personnalisé', 'champs-personnalise', 'publish', 'closed', 'closed', '', 'group_5e2158c24dae8', '', '', '2020-01-21 05:52:25', '2020-01-21 05:52:25', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2020-01-17 07:00:09', '2020-01-17 07:00:09', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:3:\"Bon\";s:3:\"Bon\";s:5:\"Moyen\";s:5:\"Moyen\";s:7:\"Mauvais\";s:7:\"Mauvais\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:13:\"return_format\";s:5:\"value\";s:17:\"save_other_choice\";i:0;}', 'resultat', 'resultat', 'publish', 'closed', 'closed', '', 'field_5e215903b43bf', '', '', '2020-01-21 05:51:14', '2020-01-21 05:51:14', '', 16, 'http://localhost/wordpress/?post_type=acf-field&#038;p=17', 1, 'acf-field', '', 0),
(18, 1, '2020-01-17 07:00:09', '2020-01-17 07:00:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nom boutique', 'nom_boutique', 'publish', 'closed', 'closed', '', 'field_5e2159f3b43c0', '', '', '2020-01-21 05:51:14', '2020-01-21 05:51:14', '', 16, 'http://localhost/wordpress/?post_type=acf-field&#038;p=18', 2, 'acf-field', '', 0),
(19, 1, '2020-01-17 07:00:09', '2020-01-17 07:00:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Gerant', 'gerant', 'publish', 'closed', 'closed', '', 'field_5e215a38b43c1', '', '', '2020-01-21 05:51:14', '2020-01-21 05:51:14', '', 16, 'http://localhost/wordpress/?post_type=acf-field&#038;p=19', 3, 'acf-field', '', 0),
(20, 1, '2020-01-17 07:00:09', '2020-01-17 07:00:09', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"m/Y\";s:9:\"first_day\";i:1;}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'field_5e215a56b43c2', '', '', '2020-01-21 05:51:14', '2020-01-21 05:51:14', '', 16, 'http://localhost/wordpress/?post_type=acf-field&#038;p=20', 4, 'acf-field', '', 0),
(21, 1, '2020-01-17 07:00:09', '2020-01-17 07:00:09', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:8:\"Personne\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Effectif', 'effectif', 'publish', 'closed', 'closed', '', 'field_5e215adab43c3', '', '', '2020-01-21 05:51:14', '2020-01-21 05:51:14', '', 16, 'http://localhost/wordpress/?post_type=acf-field&#038;p=21', 5, 'acf-field', '', 0),
(25, 1, '2020-01-17 07:20:21', '2020-01-17 07:20:21', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5e21601ba6bf2', '', '', '2020-01-21 05:52:25', '2020-01-21 05:52:25', '', 16, 'http://localhost/wordpress/?post_type=acf-field&#038;p=25', 6, 'acf-field', '', 0),
(29, 1, '2020-01-17 11:01:17', '2020-01-17 11:01:17', '', 'Acceuil', '', 'publish', 'closed', 'closed', '', 'acceuil', '', '', '2020-01-20 04:31:54', '2020-01-20 04:31:54', '', 0, 'http://localhost/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2020-01-17 11:01:17', '2020-01-17 11:01:17', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-01-17 11:01:17', '2020-01-17 11:01:17', '', 29, 'http://localhost/wordpress/2020/01/17/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-01-17 11:03:39', '2020-01-17 11:03:39', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-01-17 11:03:39', '2020-01-17 11:03:39', '', 29, 'http://localhost/wordpress/2020/01/17/29-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-01-17 11:16:47', '2020-01-17 11:16:47', '', 'New Project(3)', '', 'inherit', 'open', 'closed', '', 'new-project3', '', '', '2020-01-17 11:16:47', '2020-01-17 11:16:47', '', 29, 'http://localhost/wordpress/wp-content/uploads/2020/01/New-Project3.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2020-01-17 11:16:53', '2020-01-17 11:16:53', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-01-17 11:16:53', '2020-01-17 11:16:53', '', 29, 'http://localhost/wordpress/2020/01/17/29-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-01-17 11:18:30', '2020-01-17 11:18:30', '', 'Menuisier', '', 'publish', 'closed', 'closed', '', 'menuisier', '', '', '2020-01-20 04:32:41', '2020-01-20 04:32:41', '', 0, 'http://localhost/wordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2020-01-17 11:18:12', '2020-01-17 11:18:12', '', 'New Project(2)', '', 'inherit', 'open', 'closed', '', 'new-project2', '', '', '2020-01-17 11:18:12', '2020-01-17 11:18:12', '', 36, 'http://localhost/wordpress/wp-content/uploads/2020/01/New-Project2.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2020-01-17 11:18:30', '2020-01-17 11:18:30', '', 'Menuisier', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-01-17 11:18:30', '2020-01-17 11:18:30', '', 36, 'http://localhost/wordpress/2020/01/17/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-01-17 11:18:30', '2020-01-17 11:18:30', '', 'Menuisier', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-01-17 11:18:30', '2020-01-17 11:18:30', '', 36, 'http://localhost/wordpress/2020/01/17/36-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-01-17 11:18:38', '2020-01-17 11:18:38', '', 'Menuisier', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-01-17 11:18:38', '2020-01-17 11:18:38', '', 36, 'http://localhost/wordpress/2020/01/17/36-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-01-17 11:29:44', '2020-01-17 11:29:44', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:3:\"Bon\";s:3:\"Bon\";s:5:\"Moyen\";s:5:\"Moyen\";s:7:\"Mauvais\";s:7:\"Mauvais\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}', 'Resultat', 'resultat', 'publish', 'closed', 'closed', '', 'field_5e219a5e1da89', '', '', '2020-01-21 05:51:14', '2020-01-21 05:51:14', '', 16, 'http://localhost/wordpress/?post_type=acf-field&#038;p=42', 7, 'acf-field', '', 0),
(43, 1, '2020-01-17 11:29:44', '2020-01-17 11:29:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Extrait contenue', 'extrait_contenue', 'publish', 'closed', 'closed', '', 'field_5e219a8e1da8a', '', '', '2020-01-21 05:51:14', '2020-01-21 05:51:14', '', 16, 'http://localhost/wordpress/?post_type=acf-field&#038;p=43', 8, 'acf-field', '', 0),
(44, 1, '2020-01-17 11:53:47', '2020-01-17 11:53:47', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-01-17 11:53:47', '2020-01-17 11:53:47', '', 29, 'http://localhost/wordpress/2020/01/17/29-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-01-17 12:07:40', '2020-01-17 12:07:40', '', 'Menuisier', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-01-17 12:07:40', '2020-01-17 12:07:40', '', 36, 'http://localhost/wordpress/2020/01/17/36-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-01-17 12:08:04', '2020-01-17 12:08:04', '', 'Menuisier', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-01-17 12:08:04', '2020-01-17 12:08:04', '', 36, 'http://localhost/wordpress/2020/01/17/36-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-01-17 12:08:27', '2020-01-17 12:08:27', '', 'Menuisier', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-01-17 12:08:27', '2020-01-17 12:08:27', '', 36, 'http://localhost/wordpress/2020/01/17/36-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-01-17 12:20:46', '2020-01-17 12:20:46', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-01-17 12:20:46', '2020-01-17 12:20:46', '', 29, 'http://localhost/wordpress/2020/01/17/29-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-01-17 12:29:13', '2020-01-17 12:29:13', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:6:\"Simple\";s:6:\"Simple\";s:6:\"Faible\";s:6:\"Faible\";s:8:\"Complexe\";s:8:\"Complexe\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}', 'Mise en oeuvre', 'mise_en_oeuvre', 'publish', 'closed', 'closed', '', 'field_5e21a884ddf8b', '', '', '2020-01-21 05:51:14', '2020-01-21 05:51:14', '', 16, 'http://localhost/wordpress/?post_type=acf-field&#038;p=56', 9, 'acf-field', '', 0),
(57, 1, '2020-01-17 12:33:14', '2020-01-17 12:33:14', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-01-17 12:33:14', '2020-01-17 12:33:14', '', 29, 'http://localhost/wordpress/2020/01/17/29-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-01-17 12:35:32', '2020-01-17 12:35:32', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:6:\"Faible\";s:6:\"Faible\";s:6:\"Modere\";s:6:\"Modere\";s:5:\"Eleve\";s:5:\"Eleve\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}', 'Cout', 'cout', 'publish', 'closed', 'closed', '', 'field_5e21a9f648e6c', '', '', '2020-01-21 05:51:14', '2020-01-21 05:51:14', '', 16, 'http://localhost/wordpress/?post_type=acf-field&#038;p=58', 10, 'acf-field', '', 0),
(59, 1, '2020-01-17 12:37:12', '2020-01-17 12:37:12', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-01-17 12:37:12', '2020-01-17 12:37:12', '', 29, 'http://localhost/wordpress/2020/01/17/29-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-01-20 04:31:54', '2020-01-20 04:31:54', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-01-20 04:31:54', '2020-01-20 04:31:54', '', 29, 'http://localhost/wordpress/2020/01/20/29-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-01-20 04:32:32', '2020-01-20 04:32:32', '', 'Menuisier', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-01-20 04:32:32', '2020-01-20 04:32:32', '', 36, 'http://localhost/wordpress/2020/01/20/36-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-01-20 04:32:41', '2020-01-20 04:32:41', '', 'Menuisier', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-01-20 04:32:41', '2020-01-20 04:32:41', '', 36, 'http://localhost/wordpress/2020/01/20/36-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-01-20 04:41:31', '2020-01-20 04:41:31', '<!-- wp:paragraph -->\n<p>Extratit...................</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">set_post_thumbnail_size( 150, 150, true ); // default Post Thumbnail dimensions (cropped)\n\n    // additional image sizes\n    // delete the next line if you do not need additional i</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:paragraph -->\n<p>Extratit...................</p>\n<!-- /wp:paragraph -->', 'Article 1', '', 'publish', 'open', 'open', '', 'article-1', '', '', '2020-01-21 06:31:14', '2020-01-21 06:31:14', '', 0, 'http://localhost/wordpress/?p=64', 0, 'post', '', 0),
(65, 1, '2020-01-20 04:41:31', '2020-01-20 04:41:31', '', 'Article 1', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-20 04:41:31', '2020-01-20 04:41:31', '', 64, 'http://localhost/wordpress/2020/01/20/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-01-20 04:41:33', '2020-01-20 04:41:33', '', 'Article 1', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-20 04:41:33', '2020-01-20 04:41:33', '', 64, 'http://localhost/wordpress/2020/01/20/64-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-01-20 04:46:58', '2020-01-20 04:46:58', '<!-- wp:paragraph -->\n<p>Extratit...................</p>\n<!-- /wp:paragraph -->', 'Article 1', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-20 04:46:58', '2020-01-20 04:46:58', '', 64, 'http://localhost/wordpress/2020/01/20/64-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-01-20 05:53:49', '2020-01-20 05:53:49', '<!-- wp:paragraph -->\n<p>but below is a quick semantic alteration (swapping your use of <code>$tag</code> singular and</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'publish', 'open', 'open', '', 'article-2', '', '', '2020-01-21 06:31:49', '2020-01-21 06:31:49', '', 0, 'http://localhost/wordpress/?p=69', 0, 'post', '', 0),
(70, 1, '2020-01-20 05:53:49', '2020-01-20 05:53:49', '<!-- wp:paragraph -->\n<p>balabala article 2</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-20 05:53:49', '2020-01-20 05:53:49', '', 69, 'http://localhost/wordpress/2020/01/20/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-01-20 05:53:51', '2020-01-20 05:53:51', '<!-- wp:paragraph -->\n<p>balabala article 2</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-20 05:53:51', '2020-01-20 05:53:51', '', 69, 'http://localhost/wordpress/2020/01/20/69-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-01-20 05:54:19', '2020-01-20 05:54:19', '<!-- wp:paragraph -->\n<p>balabala article 2</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-20 05:54:19', '2020-01-20 05:54:19', '', 69, 'http://localhost/wordpress/2020/01/20/69-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-01-20 06:07:59', '2020-01-20 06:07:59', '<!-- wp:paragraph -->\n<p>balabala article 2</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-20 06:07:59', '2020-01-20 06:07:59', '', 69, 'http://localhost/wordpress/2020/01/20/69-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-01-20 06:08:17', '2020-01-20 06:08:17', '<!-- wp:paragraph -->\n<p>balabala article 2</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-20 06:08:17', '2020-01-20 06:08:17', '', 69, 'http://localhost/wordpress/2020/01/20/69-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-01-20 06:13:34', '2020-01-20 06:13:34', '<!-- wp:paragraph -->\n<p>Extratit...................</p>\n<!-- /wp:paragraph -->', 'Article 1', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-20 06:13:34', '2020-01-20 06:13:34', '', 64, 'http://localhost/wordpress/2020/01/20/64-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-01-20 06:13:54', '2020-01-20 06:13:54', '<!-- wp:paragraph -->\n<p>Extratit...................</p>\n<!-- /wp:paragraph -->', 'Article 1', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-20 06:13:54', '2020-01-20 06:13:54', '', 64, 'http://localhost/wordpress/2020/01/20/64-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-01-20 06:14:09', '2020-01-20 06:14:09', '<!-- wp:paragraph -->\n<p>Extratit...................</p>\n<!-- /wp:paragraph -->', 'Article 1', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-20 06:14:09', '2020-01-20 06:14:09', '', 64, 'http://localhost/wordpress/2020/01/20/64-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-01-20 06:14:58', '2020-01-20 06:14:58', '<!-- wp:paragraph -->\n<p>balabala article 2</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-20 06:14:58', '2020-01-20 06:14:58', '', 69, 'http://localhost/wordpress/2020/01/20/69-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-01-20 06:19:07', '2020-01-20 06:19:07', '<!-- wp:paragraph -->\n<p>balabala article 2</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-20 06:19:07', '2020-01-20 06:19:07', '', 69, 'http://localhost/wordpress/2020/01/20/69-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-01-20 06:22:06', '2020-01-20 06:22:06', '<!-- wp:paragraph -->\n<p>but below is a quick semantic alteration (swapping your use of <code>$tag</code> singular and</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-20 06:22:06', '2020-01-20 06:22:06', '', 69, 'http://localhost/wordpress/2020/01/20/69-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-01-20 06:22:08', '2020-01-20 06:22:08', '<!-- wp:paragraph -->\n<p>but below is a quick semantic alteration (swapping your use of <code>$tag</code> singular and</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-20 06:22:08', '2020-01-20 06:22:08', '', 69, 'http://localhost/wordpress/2020/01/20/69-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-01-21 04:50:13', '2020-01-21 04:50:13', '<!-- wp:paragraph -->\n<p>but below is a quick semantic alteration (swapping your use of <code>$tag</code> singular and</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-21 04:50:13', '2020-01-21 04:50:13', '', 69, 'http://localhost/wordpress/2020/01/21/69-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-01-21 04:50:21', '2020-01-21 04:50:21', '<!-- wp:paragraph -->\n<p>but below is a quick semantic alteration (swapping your use of <code>$tag</code> singular and</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-21 04:50:21', '2020-01-21 04:50:21', '', 69, 'http://localhost/wordpress/2020/01/21/69-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-01-21 05:47:15', '2020-01-21 05:47:15', '<!-- wp:paragraph -->\n<p>but below is a quick semantic alteration (swapping your use of <code>$tag</code> singular and</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-21 05:47:15', '2020-01-21 05:47:15', '', 69, 'http://localhost/wordpress/2020/01/21/69-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-01-21 05:49:19', '2020-01-21 05:49:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5e2690db2ee85', '', '', '2020-01-21 05:51:14', '2020-01-21 05:51:14', '', 16, 'http://localhost/wordpress/?post_type=acf-field&#038;p=86', 0, 'acf-field', '', 0),
(87, 1, '2020-01-21 05:51:34', '2020-01-21 05:51:34', '<!-- wp:paragraph -->\n<p>but below is a quick semantic alteration (swapping your use of <code>$tag</code> singular and</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-21 05:51:34', '2020-01-21 05:51:34', '', 69, 'http://localhost/wordpress/2020/01/21/69-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-01-21 05:51:56', '2020-01-21 05:51:56', '<!-- wp:paragraph -->\n<p>Extratit...................</p>\n<!-- /wp:paragraph -->', 'Article 1', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-21 05:51:56', '2020-01-21 05:51:56', '', 64, 'http://localhost/wordpress/2020/01/21/64-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-01-21 05:54:43', '2020-01-21 05:54:43', '', 'index', '', 'inherit', 'open', 'closed', '', 'index', '', '', '2020-01-21 05:54:43', '2020-01-21 05:54:43', '', 69, 'http://localhost/wordpress/wp-content/uploads/2020/01/index.jpeg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2020-01-21 05:54:53', '2020-01-21 05:54:53', '<!-- wp:paragraph -->\n<p>but below is a quick semantic alteration (swapping your use of <code>$tag</code> singular and</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-21 05:54:53', '2020-01-21 05:54:53', '', 69, 'http://localhost/wordpress/2020/01/21/69-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-01-21 05:54:58', '2020-01-21 05:54:58', '<!-- wp:paragraph -->\n<p>but below is a quick semantic alteration (swapping your use of <code>$tag</code> singular and</p>\n<!-- /wp:paragraph -->', 'Article 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-01-21 05:54:58', '2020-01-21 05:54:58', '', 69, 'http://localhost/wordpress/2020/01/21/69-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2020-01-21 05:56:09', '2020-01-21 05:56:09', '<!-- wp:paragraph -->\n<p>Extratit...................</p>\n<!-- /wp:paragraph -->', 'Article 1', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-21 05:56:09', '2020-01-21 05:56:09', '', 64, 'http://localhost/wordpress/2020/01/21/64-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-01-21 05:56:20', '2020-01-21 05:56:20', '<!-- wp:paragraph -->\n<p>Extratit...................</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">set_post_thumbnail_size( 150, 150, true ); // default Post Thumbnail dimensions (cropped)\n\n    // additional image sizes\n    // delete the next line if you do not need additional i</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:paragraph -->\n<p>Extratit...................</p>\n<!-- /wp:paragraph -->', 'Article 1', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-21 05:56:20', '2020-01-21 05:56:20', '', 64, 'http://localhost/wordpress/2020/01/21/64-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-01-21 05:56:22', '2020-01-21 05:56:22', '<!-- wp:paragraph -->\n<p>Extratit...................</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">set_post_thumbnail_size( 150, 150, true ); // default Post Thumbnail dimensions (cropped)\n\n    // additional image sizes\n    // delete the next line if you do not need additional i</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:paragraph -->\n<p>Extratit...................</p>\n<!-- /wp:paragraph -->', 'Article 1', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-21 05:56:22', '2020-01-21 05:56:22', '', 64, 'http://localhost/wordpress/2020/01/21/64-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2020-01-21 07:19:29', '2020-01-21 07:19:29', '<!-- wp:paragraph -->\n<p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé  dans la composition et la mise en page avant impression. Le Lorem Ipsum  est le faux texte standard de l\'imprimerie depuis les années 1500, quand  un imprimeur anonyme assembla ensemble des morceaux de texte pour  réaliser un livre spécimen de polices de texte. Il n\'a pas fait que  survivre cinq siècles, mais s\'est aussi adapté à la bureautique  informatique, sans que son contenu n\'en soit modifié. Il a été  popularisé dans les années 1960 grâce à la vente de feuilles Letraset  contenant des passages du Lorem Ipsum, et, plus récemment, par son  inclusion dans des applications de mise en page de t</p>\n<!-- /wp:paragraph -->', 'Article 3', '', 'publish', 'open', 'open', '', 'article-3', '', '', '2020-01-21 07:49:20', '2020-01-21 07:49:20', '', 0, 'http://localhost/wordpress/?p=95', 0, 'post', '', 0),
(96, 1, '2020-01-21 07:18:41', '2020-01-21 07:18:41', '', 'maison', '', 'inherit', 'open', 'closed', '', 'maison', '', '', '2020-01-21 07:18:41', '2020-01-21 07:18:41', '', 95, 'http://localhost/wordpress/wp-content/uploads/2020/01/maison.jpeg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2020-01-21 07:19:29', '2020-01-21 07:19:29', '<!-- wp:paragraph -->\n<p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé  dans la composition et la mise en page avant impression. Le Lorem Ipsum  est le faux texte standard de l\'imprimerie depuis les années 1500, quand  un imprimeur anonyme assembla ensemble des morceaux de texte pour  réaliser un livre spécimen de polices de texte. Il n\'a pas fait que  survivre cinq siècles, mais s\'est aussi adapté à la bureautique  informatique, sans que son contenu n\'en soit modifié. Il a été  popularisé dans les années 1960 grâce à la vente de feuilles Letraset  contenant des passages du Lorem Ipsum, et, plus récemment, par son  inclusion dans des applications de mise en page de t</p>\n<!-- /wp:paragraph -->', 'Article 3', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2020-01-21 07:19:29', '2020-01-21 07:19:29', '', 95, 'http://localhost/wordpress/2020/01/21/95-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2020-01-21 07:19:30', '2020-01-21 07:19:30', '<!-- wp:paragraph -->\n<p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé  dans la composition et la mise en page avant impression. Le Lorem Ipsum  est le faux texte standard de l\'imprimerie depuis les années 1500, quand  un imprimeur anonyme assembla ensemble des morceaux de texte pour  réaliser un livre spécimen de polices de texte. Il n\'a pas fait que  survivre cinq siècles, mais s\'est aussi adapté à la bureautique  informatique, sans que son contenu n\'en soit modifié. Il a été  popularisé dans les années 1960 grâce à la vente de feuilles Letraset  contenant des passages du Lorem Ipsum, et, plus récemment, par son  inclusion dans des applications de mise en page de t</p>\n<!-- /wp:paragraph -->', 'Article 3', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2020-01-21 07:19:30', '2020-01-21 07:19:30', '', 95, 'http://localhost/wordpress/2020/01/21/95-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2020-01-21 07:20:03', '2020-01-21 07:20:03', '<!-- wp:paragraph -->\n<p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé  dans la composition et la mise en page avant impression. Le Lorem Ipsum  est le faux texte standard de l\'imprimerie depuis les années 1500, quand  un imprimeur anonyme assembla ensemble des morceaux de texte pour  réaliser un livre spécimen de polices de texte. Il n\'a pas fait que  survivre cinq siècles, mais s\'est aussi adapté à la bureautique  informatique, sans que son contenu n\'en soit modifié. Il a été  popularisé dans les années 1960 grâce à la vente de feuilles Letraset  contenant des passages du Lorem Ipsum, et, plus récemment, par son  inclusion dans des applications de mise en page de t</p>\n<!-- /wp:paragraph -->', 'Article 3', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2020-01-21 07:20:03', '2020-01-21 07:20:03', '', 95, 'http://localhost/wordpress/2020/01/21/95-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-01-21 07:49:15', '2020-01-21 07:49:15', '', 'sary5', '', 'inherit', 'open', 'closed', '', 'sary5', '', '', '2020-01-21 07:49:15', '2020-01-21 07:49:15', '', 95, 'http://localhost/wordpress/wp-content/uploads/2020/01/sary5.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2020-01-21 07:49:20', '2020-01-21 07:49:20', '<!-- wp:paragraph -->\n<p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé  dans la composition et la mise en page avant impression. Le Lorem Ipsum  est le faux texte standard de l\'imprimerie depuis les années 1500, quand  un imprimeur anonyme assembla ensemble des morceaux de texte pour  réaliser un livre spécimen de polices de texte. Il n\'a pas fait que  survivre cinq siècles, mais s\'est aussi adapté à la bureautique  informatique, sans que son contenu n\'en soit modifié. Il a été  popularisé dans les années 1960 grâce à la vente de feuilles Letraset  contenant des passages du Lorem Ipsum, et, plus récemment, par son  inclusion dans des applications de mise en page de t</p>\n<!-- /wp:paragraph -->', 'Article 3', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2020-01-21 07:49:20', '2020-01-21 07:49:20', '', 95, 'http://localhost/wordpress/2020/01/21/95-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2020-01-22 09:44:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-01-22 09:44:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=120', 1, 'nav_menu_item', '', 0),
(121, 1, '2020-01-22 09:44:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-01-22 09:44:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=121', 1, 'nav_menu_item', '', 0),
(122, 1, '2020-01-22 09:44:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-01-22 09:44:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=122', 1, 'nav_menu_item', '', 0),
(123, 1, '2020-01-22 09:46:02', '2020-01-22 09:46:02', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2020-01-22 09:46:02', '2020-01-22 09:46:02', '', 0, 'http://localhost/wordpress/?p=123', 1, 'nav_menu_item', '', 0),
(124, 1, '2020-01-22 09:46:03', '2020-01-22 09:46:03', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2020-01-22 09:46:03', '2020-01-22 09:46:03', '', 0, 'http://localhost/wordpress/?p=124', 2, 'nav_menu_item', '', 0),
(125, 1, '2020-01-22 09:46:03', '2020-01-22 09:46:03', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2020-01-22 09:46:03', '2020-01-22 09:46:03', '', 0, 'http://localhost/wordpress/?p=125', 3, 'nav_menu_item', '', 0),
(127, 1, '2020-01-22 13:03:20', '2020-01-22 13:03:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Image_cat', 'image_cat', 'publish', 'closed', 'closed', '', 'group_5e2847c23a9b8', '', '', '2020-01-22 13:03:20', '2020-01-22 13:03:20', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=127', 0, 'acf-field-group', '', 0),
(128, 1, '2020-01-22 13:03:20', '2020-01-22 13:03:20', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image_cat', 'image_cat', 'publish', 'closed', 'closed', '', 'field_5e2847f5b9093', '', '', '2020-01-22 13:03:20', '2020-01-22 13:03:20', '', 127, 'http://localhost/wordpress/?post_type=acf-field&p=128', 0, 'acf-field', '', 0),
(135, 1, '2020-01-24 07:21:36', '2020-01-24 07:21:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"mpanofatrano\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Mpanofa trano', 'mpanofa-trano', 'publish', 'closed', 'closed', '', 'group_5e2a9aab98f40', '', '', '2020-01-24 07:22:09', '2020-01-24 07:22:09', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=135', 0, 'acf-field-group', '', 0),
(136, 1, '2020-01-24 07:21:37', '2020-01-24 07:21:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'anarana', 'anarana', 'publish', 'closed', 'closed', '', 'field_5e2a9ae3aa8db', '', '', '2020-01-24 07:21:37', '2020-01-24 07:21:37', '', 135, 'http://localhost/wordpress/?post_type=acf-field&p=136', 0, 'acf-field', '', 0),
(137, 1, '2020-01-24 07:21:37', '2020-01-24 07:21:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'olona anatiny trano', 'olona_anatiny_trano', 'publish', 'closed', 'closed', '', 'field_5e2a9aecaa8dc', '', '', '2020-01-24 07:21:37', '2020-01-24 07:21:37', '', 135, 'http://localhost/wordpress/?post_type=acf-field&p=137', 1, 'acf-field', '', 0),
(141, 1, '2020-01-24 07:23:33', '2020-01-24 07:23:33', '', 'mpanofa 1', '', 'publish', 'closed', 'closed', '', 'mpanofa-1', '', '', '2020-01-24 07:23:33', '2020-01-24 07:23:33', '', 0, 'http://localhost/wordpress/?post_type=mpanofatrano&#038;p=141', 0, 'mpanofatrano', '', 0),
(142, 1, '2020-01-24 07:24:04', '2020-01-24 07:24:04', '', 'mpanofa 2', '', 'publish', 'closed', 'closed', '', 'mpanofa-2', '', '', '2020-01-24 07:24:04', '2020-01-24 07:24:04', '', 0, 'http://localhost/wordpress/?post_type=mpanofatrano&#038;p=142', 0, 'mpanofatrano', '', 0),
(144, 1, '2020-01-24 07:26:12', '2020-01-24 07:26:12', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"trano\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'trano', 'trano', 'publish', 'closed', 'closed', '', 'group_5e2a9bf51f255', '', '', '2020-01-24 07:58:23', '2020-01-24 07:58:23', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=144', 0, 'acf-field-group', '', 0),
(145, 1, '2020-01-24 07:26:12', '2020-01-24 07:26:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'hofa_trano', 'hofa_trano', 'publish', 'closed', 'closed', '', 'field_5e2a9bfe178cc', '', '', '2020-01-24 07:26:12', '2020-01-24 07:26:12', '', 144, 'http://localhost/wordpress/?post_type=acf-field&p=145', 0, 'acf-field', '', 0),
(146, 1, '2020-01-24 07:26:12', '2020-01-24 07:26:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Abehany', 'abehany', 'publish', 'closed', 'closed', '', 'field_5e2a9c08178cd', '', '', '2020-01-24 07:26:12', '2020-01-24 07:26:12', '', 144, 'http://localhost/wordpress/?post_type=acf-field&p=146', 1, 'acf-field', '', 0),
(147, 1, '2020-01-24 07:26:42', '2020-01-24 07:26:42', '', 'Trano 1', '', 'publish', 'closed', 'closed', '', 'trano-1', '', '', '2020-01-24 07:26:42', '2020-01-24 07:26:42', '', 0, 'http://localhost/wordpress/?post_type=trano&#038;p=147', 0, 'trano', '', 0),
(148, 1, '2020-01-24 07:27:09', '2020-01-24 07:27:09', '', 'Trano 2', '', 'publish', 'closed', 'closed', '', 'trano-2', '', '', '2020-01-24 07:59:50', '2020-01-24 07:59:50', '', 0, 'http://localhost/wordpress/?post_type=trano&#038;p=148', 0, 'trano', '', 0),
(149, 1, '2020-01-24 07:58:23', '2020-01-24 07:58:23', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:12:\"mpanofatrano\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:2:\"id\";s:2:\"ui\";i:1;}', 'Mpanofa trano', 'mpanofa_trano', 'publish', 'closed', 'closed', '', 'field_5e2aa2f27892b', '', '', '2020-01-24 07:58:23', '2020-01-24 07:58:23', '', 144, 'http://localhost/wordpress/?post_type=acf-field&p=149', 2, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 18, 'image_cat', '100'),
(2, 18, '_image_cat', 'field_5e2847f5b9093'),
(3, 16, 'image_cat', '37'),
(4, 16, '_image_cat', 'field_5e2847f5b9093'),
(5, 17, 'image_cat', '34'),
(6, 17, '_image_cat', 'field_5e2847f5b9093');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'test', 'test', 0),
(3, 'post-format-gallery', 'post-format-gallery', 0),
(4, 'tage1', 'tage1', 0),
(5, 'Bois', 'bois', 0),
(6, 'Brique', 'brique', 0),
(7, 'terre', 'terre', 0),
(8, 'jean', 'jean', 0),
(9, 'marc', 'marc', 0),
(10, 'gagy', 'gagy', 0),
(11, 'olona', 'olona', 0),
(12, 'zefa', 'zefa', 0),
(13, 'koto', 'koto', 0),
(14, 'nandra', 'nandra', 0),
(15, 'sanina', 'sanina', 0),
(16, 'Reseau', 'reseau', 0),
(17, 'Sponsoring', 'sponsoring', 0),
(18, 'Promotion', 'promotion', 0),
(19, 'trano', 'trano', 0),
(20, 'tany', 'tany', 0),
(21, 'rivotra', 'rivotra', 0),
(25, 'Menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(64, 5, 0),
(64, 6, 0),
(64, 7, 0),
(64, 16, 0),
(69, 8, 0),
(69, 9, 0),
(69, 11, 0),
(69, 12, 0),
(69, 13, 0),
(69, 14, 0),
(69, 15, 0),
(69, 18, 0),
(95, 17, 0),
(95, 19, 0),
(95, 20, 0),
(95, 21, 0),
(123, 25, 0),
(124, 25, 0),
(125, 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0),
(3, 3, 'post_format', '', 0, 0),
(4, 4, 'post_tag', '', 0, 0),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 0),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'post_tag', '', 0, 1),
(16, 16, 'category', '', 0, 1),
(17, 17, 'category', '', 0, 1),
(18, 18, 'category', '', 0, 1),
(19, 19, 'post_tag', '', 0, 1),
(20, 20, 'post_tag', '', 0, 1),
(21, 21, 'post_tag', '', 0, 1),
(25, 25, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '150'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1579240032'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(23, 1, 'nav_menu_recently_edited', '25'),
(24, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(25, 1, 'session_tokens', 'a:1:{s:64:\"2c486cff6559ad8fe90d18ce82b4cbdf59bce5ce27c2731fff1ebfefbd7f8fc3\";a:4:{s:10:\"expiration\";i:1581841831;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:68:\"Mozilla/5.0 (X11; Linux x86_64; rv:69.0) Gecko/20100101 Firefox/69.0\";s:5:\"login\";i:1581669031;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BiAnmUHGC15rZtF43yfDQ1RFPwIxA4/', 'root', 'rah_jean@yahoo.fr', '', '2020-01-17 03:59:38', '', 0, 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1251;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
