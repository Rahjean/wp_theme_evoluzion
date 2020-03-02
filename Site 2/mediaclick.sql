-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 02, 2020 at 09:57 AM
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
-- Database: `mediaclick`
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

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-14 07:39:09', '2020-02-14 07:39:09', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

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
(1, 'siteurl', 'http://localhost/media-click', 'yes'),
(2, 'home', 'http://localhost/media-click', 'yes'),
(3, 'blogname', 'media-click', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rah_jean@yahoo.fr', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
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
(40, 'template', 'media', 'yes'),
(41, 'stylesheet', 'media', 'yes'),
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
(93, 'admin_email_lifespan', '1597217943', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1583141953;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1583177953;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1583221151;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583221157;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583221158;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'nonce_key', 'lV+jLy{m ;]ChJv|U_n@:2{vz@35qr,JTRwi^&1%y=@&BusY$}-VouPN[t[LEez]', 'no'),
(111, 'nonce_salt', '[)oyXlDF{~)$O9* GZd_cJi*KWi%j8<p7?y~wI*([&,^Ex)!(,t0|)-eAPLsV2=W', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(117, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1583138402;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(118, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1583138407;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(121, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581667755;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1583138407;s:7:\"checked\";a:5:{s:5:\"media\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(124, 'auth_key', 'p(>>cBjuzGD3S^(cJz|=t=}?yu!T]b_Ni ;#9dG*ERw&:cmJCZ^lxv!92H|3;}#[', 'no'),
(125, 'auth_salt', 'NmMi:J:s?e0#PL;R_X?uO{JfQnE:a|!9%bT:O%rC?Z^L6kB/Y@U*u-RDZGaXD5Od', 'no'),
(126, 'logged_in_key', 'Yen]-n^&=W>o](yGyYE[fzC2R*6fB}A$itSO]9e>GjxpQrOQ:8%AL)oMcSZTq7gd', 'no'),
(127, 'logged_in_salt', 'UHh0C,s}D~*<aTkMt|2Kvw(]xURb5c5@v7g!5@NG`[SMv_|Pf@ j}n]IkQAkGZ[S', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(132, 'current_theme', 'Media click', 'yes'),
(133, 'theme_mods_media click', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:5:\"menu1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581667752;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(137, 'recently_activated', 'a:0:{}', 'yes'),
(138, 'acf_version', '5.8.7', 'yes'),
(139, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(150, 'theme_mods_media', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:5:\"menu1\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(158, '_site_transient_timeout_theme_roots', '1583140205', 'no'),
(159, '_site_transient_theme_roots', 'a:5:{s:5:\"media\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');

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
(9, 7, '_edit_lock', '1581666770:1'),
(10, 9, '_edit_lock', '1581666789:1'),
(11, 11, '_edit_lock', '1581666803:1'),
(12, 13, '_edit_lock', '1581666814:1'),
(13, 15, '_menu_item_type', 'post_type'),
(14, 15, '_menu_item_menu_item_parent', '0'),
(15, 15, '_menu_item_object_id', '13'),
(16, 15, '_menu_item_object', 'page'),
(17, 15, '_menu_item_target', ''),
(18, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(19, 15, '_menu_item_xfn', ''),
(20, 15, '_menu_item_url', ''),
(22, 16, '_menu_item_type', 'post_type'),
(23, 16, '_menu_item_menu_item_parent', '0'),
(24, 16, '_menu_item_object_id', '11'),
(25, 16, '_menu_item_object', 'page'),
(26, 16, '_menu_item_target', ''),
(27, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 16, '_menu_item_xfn', ''),
(29, 16, '_menu_item_url', ''),
(31, 17, '_menu_item_type', 'post_type'),
(32, 17, '_menu_item_menu_item_parent', '0'),
(33, 17, '_menu_item_object_id', '9'),
(34, 17, '_menu_item_object', 'page'),
(35, 17, '_menu_item_target', ''),
(36, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 17, '_menu_item_xfn', ''),
(38, 17, '_menu_item_url', ''),
(40, 18, '_menu_item_type', 'post_type'),
(41, 18, '_menu_item_menu_item_parent', '0'),
(42, 18, '_menu_item_object_id', '7'),
(43, 18, '_menu_item_object', 'page'),
(44, 18, '_menu_item_target', ''),
(45, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 18, '_menu_item_xfn', ''),
(47, 18, '_menu_item_url', ''),
(49, 19, '_edit_last', '1'),
(50, 19, '_edit_lock', '1581671112:1'),
(51, 22, '_edit_last', '1'),
(52, 22, '_edit_lock', '1581669368:1'),
(65, 31, '_wp_attached_file', '2020/02/plante.png'),
(66, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:517;s:6:\"height\";i:407;s:4:\"file\";s:18:\"2020/02/plante.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"plante-300x236.png\";s:5:\"width\";i:300;s:6:\"height\";i:236;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"plante-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 1, '_wp_trash_meta_status', 'publish'),
(91, 1, '_wp_trash_meta_time', '1581669405'),
(92, 1, '_wp_desired_post_slug', 'hello-world'),
(93, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(94, 35, '_edit_lock', '1581669832:1'),
(139, 22, '_wp_trash_meta_status', 'publish'),
(140, 22, '_wp_trash_meta_time', '1581669669'),
(141, 22, '_wp_desired_post_slug', 'group_5e46579896879'),
(142, 23, '_wp_trash_meta_status', 'publish'),
(143, 23, '_wp_trash_meta_time', '1581669670'),
(144, 23, '_wp_desired_post_slug', 'field_5e4657ab4109e'),
(145, 25, '_wp_trash_meta_status', 'publish'),
(146, 25, '_wp_trash_meta_time', '1581669670'),
(147, 25, '_wp_desired_post_slug', 'field_5e4657e7d8b1f'),
(148, 24, '_wp_trash_meta_status', 'publish'),
(149, 24, '_wp_trash_meta_time', '1581669670'),
(150, 24, '_wp_desired_post_slug', 'field_5e4657be4109f'),
(161, 46, '_edit_lock', '1581676143:1'),
(162, 46, '_edit_last', '1'),
(163, 46, 'titre_section_1', 'Assurance Pret'),
(164, 46, '_titre_section_1', 'field_5e46571096fed'),
(165, 46, 'contenusection1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(166, 46, '_contenusection1', 'field_5e46577596fee'),
(167, 46, 'image_section_2', '31'),
(168, 46, '_image_section_2', 'field_5e465d9c1c33c'),
(169, 46, 'titre_section_2', 'Titre section 2'),
(170, 46, '_titre_section_2', 'field_5e465d6882da2'),
(171, 46, 'contenu_section_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit am'),
(172, 46, '_contenu_section_2', 'field_5e465dc78d89a'),
(173, 48, 'titre_section_1', 'Assurance Pret'),
(174, 48, '_titre_section_1', 'field_5e46571096fed'),
(175, 48, 'contenusection1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(176, 48, '_contenusection1', 'field_5e46577596fee'),
(177, 48, 'image_section_2', '31'),
(178, 48, '_image_section_2', 'field_5e465d9c1c33c'),
(179, 48, 'titre_section_2', 'Titre section 2'),
(180, 48, '_titre_section_2', 'field_5e465d6882da2'),
(181, 48, 'contenu_section_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(182, 48, '_contenu_section_2', 'field_5e465dc78d89a'),
(183, 46, 'contenu_section_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum d'),
(184, 46, '_contenu_section_1', 'field_5e46577596fee'),
(185, 49, 'titre_section_1', 'Assurance Pret'),
(186, 49, '_titre_section_1', 'field_5e46571096fed'),
(187, 49, 'contenusection1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(188, 49, '_contenusection1', 'field_5e46577596fee'),
(189, 49, 'image_section_2', '31'),
(190, 49, '_image_section_2', 'field_5e465d9c1c33c'),
(191, 49, 'titre_section_2', 'Titre section 2'),
(192, 49, '_titre_section_2', 'field_5e465d6882da2'),
(193, 49, 'contenu_section_2', 'c'),
(194, 49, '_contenu_section_2', 'field_5e465dc78d89a'),
(195, 49, 'contenu_section_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(196, 49, '_contenu_section_1', 'field_5e46577596fee'),
(197, 50, 'titre_section_1', 'Assurance Pret'),
(198, 50, '_titre_section_1', 'field_5e46571096fed'),
(199, 50, 'contenusection1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(200, 50, '_contenusection1', 'field_5e46577596fee'),
(201, 50, 'image_section_2', '31'),
(202, 50, '_image_section_2', 'field_5e465d9c1c33c'),
(203, 50, 'titre_section_2', 'Titre section 2'),
(204, 50, '_titre_section_2', 'field_5e465d6882da2'),
(205, 50, 'contenu_section_2', 'c'),
(206, 50, '_contenu_section_2', 'field_5e465dc78d89a'),
(207, 50, 'contenu_section_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(208, 50, '_contenu_section_1', 'field_5e46577596fee'),
(209, 51, 'titre_section_1', 'Assurance Pret'),
(210, 51, '_titre_section_1', 'field_5e46571096fed'),
(211, 51, 'contenusection1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(212, 51, '_contenusection1', 'field_5e46577596fee'),
(213, 51, 'image_section_2', '31'),
(214, 51, '_image_section_2', 'field_5e465d9c1c33c'),
(215, 51, 'titre_section_2', 'Titre section 2'),
(216, 51, '_titre_section_2', 'field_5e465d6882da2'),
(217, 51, 'contenu_section_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(218, 51, '_contenu_section_2', 'field_5e465dc78d89a'),
(219, 51, 'contenu_section_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(220, 51, '_contenu_section_1', 'field_5e46577596fee'),
(221, 52, 'titre_section_1', 'Assurance Pret'),
(222, 52, '_titre_section_1', 'field_5e46571096fed'),
(223, 52, 'contenusection1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(224, 52, '_contenusection1', 'field_5e46577596fee'),
(225, 52, 'image_section_2', '31'),
(226, 52, '_image_section_2', 'field_5e465d9c1c33c'),
(227, 52, 'titre_section_2', 'Titre section 2'),
(228, 52, '_titre_section_2', 'field_5e465d6882da2'),
(229, 52, 'contenu_section_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi a'),
(230, 52, '_contenu_section_2', 'field_5e465dc78d89a'),
(231, 52, 'contenu_section_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(232, 52, '_contenu_section_1', 'field_5e46577596fee'),
(233, 53, 'titre_section_1', 'Assurance Pret'),
(234, 53, '_titre_section_1', 'field_5e46571096fed'),
(235, 53, 'contenusection1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(236, 53, '_contenusection1', 'field_5e46577596fee'),
(237, 53, 'image_section_2', '31'),
(238, 53, '_image_section_2', 'field_5e465d9c1c33c'),
(239, 53, 'titre_section_2', 'Titre section 2'),
(240, 53, '_titre_section_2', 'field_5e465d6882da2'),
(241, 53, 'contenu_section_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi a'),
(242, 53, '_contenu_section_2', 'field_5e465dc78d89a'),
(243, 53, 'contenu_section_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(244, 53, '_contenu_section_1', 'field_5e46577596fee'),
(245, 54, 'titre_section_1', 'Assurance Pret'),
(246, 54, '_titre_section_1', 'field_5e46571096fed'),
(247, 54, 'contenusection1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(248, 54, '_contenusection1', 'field_5e46577596fee'),
(249, 54, 'image_section_2', '31'),
(250, 54, '_image_section_2', 'field_5e465d9c1c33c'),
(251, 54, 'titre_section_2', 'Titre section 2'),
(252, 54, '_titre_section_2', 'field_5e465d6882da2'),
(253, 54, 'contenu_section_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit am'),
(254, 54, '_contenu_section_2', 'field_5e465dc78d89a'),
(255, 54, 'contenu_section_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(256, 54, '_contenu_section_1', 'field_5e46577596fee'),
(257, 55, 'titre_section_1', 'Assurance Pret'),
(258, 55, '_titre_section_1', 'field_5e46571096fed'),
(259, 55, 'contenusection1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(260, 55, '_contenusection1', 'field_5e46577596fee'),
(261, 55, 'image_section_2', '31'),
(262, 55, '_image_section_2', 'field_5e465d9c1c33c'),
(263, 55, 'titre_section_2', 'Titre section 2'),
(264, 55, '_titre_section_2', 'field_5e465d6882da2'),
(265, 55, 'contenu_section_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit am'),
(266, 55, '_contenu_section_2', 'field_5e465dc78d89a'),
(267, 55, 'contenu_section_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum d'),
(268, 55, '_contenu_section_1', 'field_5e46577596fee'),
(269, 56, 'titre_section_1', 'Assurance Pret'),
(270, 56, '_titre_section_1', 'field_5e46571096fed'),
(271, 56, 'contenusection1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, soluta'),
(272, 56, '_contenusection1', 'field_5e46577596fee'),
(273, 56, 'image_section_2', '31'),
(274, 56, '_image_section_2', 'field_5e465d9c1c33c'),
(275, 56, 'titre_section_2', 'Titre section 2'),
(276, 56, '_titre_section_2', 'field_5e465d6882da2'),
(277, 56, 'contenu_section_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit am'),
(278, 56, '_contenu_section_2', 'field_5e465dc78d89a'),
(279, 56, 'contenu_section_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum dolorum facilis sapiente consequuntur voluptatum? Reiciendis, solutaLorem ipsum dolor sit amet, consectetur adipisicing elit. Ea animi aliquid, id tenetur officiis non recusandae nemo ipsa. Officia, deleniti natus alias earum d'),
(280, 56, '_contenu_section_1', 'field_5e46577596fee');

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
(1, 1, '2020-02-14 07:39:09', '2020-02-14 07:39:09', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2020-02-14 08:36:45', '2020-02-14 08:36:45', '', 0, 'http://localhost/media-click/?p=1', 0, 'post', '', 1),
(7, 1, '2020-02-14 07:55:00', '2020-02-14 07:55:00', '', 'ASSURANCE PAS CHER', '', 'publish', 'closed', 'closed', '', 'assurance-pas-cher', '', '', '2020-02-14 07:55:00', '2020-02-14 07:55:00', '', 0, 'http://localhost/media-click/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-02-14 07:55:00', '2020-02-14 07:55:00', '', 'ASSURANCE PAS CHER', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-02-14 07:55:00', '2020-02-14 07:55:00', '', 7, 'http://localhost/media-click/2020/02/14/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-02-14 07:55:24', '2020-02-14 07:55:24', '', 'RACHAT DE CREDIT', '', 'publish', 'closed', 'closed', '', 'rachat-de-credit', '', '', '2020-02-14 07:55:24', '2020-02-14 07:55:24', '', 0, 'http://localhost/media-click/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-02-14 07:55:24', '2020-02-14 07:55:24', '', 'RACHAT DE CREDIT', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-02-14 07:55:24', '2020-02-14 07:55:24', '', 9, 'http://localhost/media-click/2020/02/14/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-02-14 07:55:42', '2020-02-14 07:55:42', '', 'SIMULATEUR DE PRET', '', 'publish', 'closed', 'closed', '', 'simulateur-de-pret', '', '', '2020-02-14 07:55:42', '2020-02-14 07:55:42', '', 0, 'http://localhost/media-click/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-02-14 07:55:42', '2020-02-14 07:55:42', '', 'SIMULATEUR DE PRET', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-02-14 07:55:42', '2020-02-14 07:55:42', '', 11, 'http://localhost/media-click/2020/02/14/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-02-14 07:55:55', '2020-02-14 07:55:55', '', 'CONTACT', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-02-14 07:55:55', '2020-02-14 07:55:55', '', 0, 'http://localhost/media-click/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-02-14 07:55:55', '2020-02-14 07:55:55', '', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-02-14 07:55:55', '2020-02-14 07:55:55', '', 13, 'http://localhost/media-click/2020/02/14/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-02-14 07:56:15', '2020-02-14 07:56:15', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2020-02-14 10:50:07', '2020-02-14 10:50:07', '', 0, 'http://localhost/media-click/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2020-02-14 07:56:16', '2020-02-14 07:56:16', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2020-02-14 10:50:07', '2020-02-14 10:50:07', '', 0, 'http://localhost/media-click/?p=16', 3, 'nav_menu_item', '', 0),
(17, 1, '2020-02-14 07:56:16', '2020-02-14 07:56:16', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2020-02-14 10:50:07', '2020-02-14 10:50:07', '', 0, 'http://localhost/media-click/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2020-02-14 07:56:16', '2020-02-14 07:56:16', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-02-14 10:50:07', '2020-02-14 10:50:07', '', 0, 'http://localhost/media-click/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2020-02-14 08:17:03', '2020-02-14 08:17:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"46\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'section', 'section', 'publish', 'closed', 'closed', '', 'group_5e465701c4870', '', '', '2020-02-14 08:49:21', '2020-02-14 08:49:21', '', 0, 'http://localhost/media-click/?post_type=acf-field-group&#038;p=19', 0, 'acf-field-group', '', 0),
(20, 1, '2020-02-14 08:17:03', '2020-02-14 08:17:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'titre_section_1', 'titre_section_1', 'publish', 'closed', 'closed', '', 'field_5e46571096fed', '', '', '2020-02-14 08:42:45', '2020-02-14 08:42:45', '', 19, 'http://localhost/media-click/?post_type=acf-field&#038;p=20', 0, 'acf-field', '', 0),
(21, 1, '2020-02-14 08:17:04', '2020-02-14 08:17:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'contenu_section 1', 'contenu_section_1', 'publish', 'closed', 'closed', '', 'field_5e46577596fee', '', '', '2020-02-14 08:49:21', '2020-02-14 08:49:21', '', 19, 'http://localhost/media-click/?post_type=acf-field&#038;p=21', 1, 'acf-field', '', 0),
(22, 1, '2020-02-14 08:18:15', '2020-02-14 08:18:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"37\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'section_3', 'section_3', 'trash', 'closed', 'closed', '', 'group_5e46579896879__trashed', '', '', '2020-02-14 08:41:10', '2020-02-14 08:41:10', '', 0, 'http://localhost/media-click/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2020-02-14 08:18:15', '2020-02-14 08:18:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'trash', 'closed', 'closed', '', 'field_5e4657ab4109e__trashed', '', '', '2020-02-14 08:41:10', '2020-02-14 08:41:10', '', 22, 'http://localhost/media-click/?post_type=acf-field&#038;p=23', 0, 'acf-field', '', 0),
(24, 1, '2020-02-14 08:18:16', '2020-02-14 08:18:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'contenue', 'contenue', 'trash', 'closed', 'closed', '', 'field_5e4657be4109f__trashed', '', '', '2020-02-14 08:41:10', '2020-02-14 08:41:10', '', 22, 'http://localhost/media-click/?post_type=acf-field&#038;p=24', 2, 'acf-field', '', 0),
(25, 1, '2020-02-14 08:18:52', '2020-02-14 08:18:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'titre', 'titre', 'trash', 'closed', 'closed', '', 'field_5e4657e7d8b1f__trashed', '', '', '2020-02-14 08:41:10', '2020-02-14 08:41:10', '', 22, 'http://localhost/media-click/?post_type=acf-field&#038;p=25', 1, 'acf-field', '', 0),
(31, 1, '2020-02-14 08:34:31', '2020-02-14 08:34:31', '', 'plante', '', 'inherit', 'open', 'closed', '', 'plante', '', '', '2020-02-14 08:48:36', '2020-02-14 08:48:36', '', 46, 'http://localhost/media-click/wp-content/uploads/2020/02/plante.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2020-02-14 08:36:45', '2020-02-14 08:36:45', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-02-14 08:36:45', '2020-02-14 08:36:45', '', 1, 'http://localhost/media-click/2020/02/14/1-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-02-14 08:37:16', '2020-02-14 08:37:16', '', 'section 1', '', 'publish', 'open', 'open', '', 'section-1', '', '', '2020-02-14 08:37:16', '2020-02-14 08:37:16', '', 0, 'http://localhost/media-click/?p=35', 0, 'post', '', 0),
(36, 1, '2020-02-14 08:37:16', '2020-02-14 08:37:16', '', 'section 1', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2020-02-14 08:37:16', '2020-02-14 08:37:16', '', 35, 'http://localhost/media-click/2020/02/14/35-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-02-14 08:42:33', '2020-02-14 08:42:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'titre_section_2', 'titre_section_2', 'publish', 'closed', 'closed', '', 'field_5e465d6882da2', '', '', '2020-02-14 08:44:34', '2020-02-14 08:44:34', '', 19, 'http://localhost/media-click/?post_type=acf-field&#038;p=42', 3, 'acf-field', '', 0),
(43, 1, '2020-02-14 08:43:48', '2020-02-14 08:43:48', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image_section 2', 'image_section_2', 'publish', 'closed', 'closed', '', 'field_5e465d9c1c33c', '', '', '2020-02-14 08:44:34', '2020-02-14 08:44:34', '', 19, 'http://localhost/media-click/?post_type=acf-field&#038;p=43', 2, 'acf-field', '', 0),
(44, 1, '2020-02-14 08:44:06', '2020-02-14 08:44:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'contenu_section 2', 'contenu_section_2', 'publish', 'closed', 'closed', '', 'field_5e465dc78d89a', '', '', '2020-02-14 08:44:06', '2020-02-14 08:44:06', '', 19, 'http://localhost/media-click/?post_type=acf-field&p=44', 4, 'acf-field', '', 0),
(46, 1, '2020-02-14 08:47:10', '2020-02-14 08:47:10', '', 'Acceuil', '', 'publish', 'closed', 'closed', '', 'acceuil', '', '', '2020-02-14 10:29:46', '2020-02-14 10:29:46', '', 0, 'http://localhost/media-click/?page_id=46', 0, 'page', '', 0),
(47, 1, '2020-02-14 08:47:10', '2020-02-14 08:47:10', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-02-14 08:47:10', '2020-02-14 08:47:10', '', 46, 'http://localhost/media-click/2020/02/14/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-02-14 08:48:36', '2020-02-14 08:48:36', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-02-14 08:48:36', '2020-02-14 08:48:36', '', 46, 'http://localhost/media-click/2020/02/14/46-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-02-14 08:50:28', '2020-02-14 08:50:28', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-02-14 08:50:28', '2020-02-14 08:50:28', '', 46, 'http://localhost/media-click/2020/02/14/46-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-02-14 08:50:32', '2020-02-14 08:50:32', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-02-14 08:50:32', '2020-02-14 08:50:32', '', 46, 'http://localhost/media-click/2020/02/14/46-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-02-14 09:00:25', '2020-02-14 09:00:25', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-02-14 09:00:25', '2020-02-14 09:00:25', '', 46, 'http://localhost/media-click/2020/02/14/46-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-02-14 09:07:58', '2020-02-14 09:07:58', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-02-14 09:07:58', '2020-02-14 09:07:58', '', 46, 'http://localhost/media-click/2020/02/14/46-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-02-14 09:08:01', '2020-02-14 09:08:01', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-02-14 09:08:01', '2020-02-14 09:08:01', '', 46, 'http://localhost/media-click/2020/02/14/46-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-02-14 09:08:14', '2020-02-14 09:08:14', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-02-14 09:08:14', '2020-02-14 09:08:14', '', 46, 'http://localhost/media-click/2020/02/14/46-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-02-14 10:29:42', '2020-02-14 10:29:42', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-02-14 10:29:42', '2020-02-14 10:29:42', '', 46, 'http://localhost/media-click/2020/02/14/46-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-02-14 10:29:46', '2020-02-14 10:29:46', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-02-14 10:29:46', '2020-02-14 10:29:46', '', 46, 'http://localhost/media-click/2020/02/14/46-revision-v1/', 0, 'revision', '', 0);

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
(2, 'Menu', 'menu', 0);

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
(1, 1, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(35, 1, 0);

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
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4);

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
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"613badfedf1bf9b991a6f803de1dc95b37e7dbd3dc41ddda9123b77393c248cf\";a:4:{s:10:\"expiration\";i:1581838757;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:68:\"Mozilla/5.0 (X11; Linux x86_64; rv:69.0) Gecko/20100101 Firefox/69.0\";s:5:\"login\";i:1581665957;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1581669289');

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
(1, 'root', '$P$B7OwPKmhpXdzr5Jnm9sE8j/bbnISaa.', 'root', 'rah_jean@yahoo.fr', '', '2020-02-14 07:39:09', '', 0, 'root');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
