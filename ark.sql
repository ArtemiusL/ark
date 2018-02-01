-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Фев 01 2018 г., 16:16
-- Версия сервера: 5.6.35
-- Версия PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База данных: `ark`
--

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assetfiles`
--

CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assetfiles`
--

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(6, 1, 1, 'bg-colos.jpg', 'image', 1600, 941, 121303, '2018-01-29 20:31:42', '2018-01-29 20:31:42', '2018-01-29 20:31:42', '51ea47bb-618d-4cb7-8cc3-320d7f0cf3fc'),
(7, 1, 1, '2016-02-19-12.33.10.jpg', 'image', 1000, 676, 221832, '2018-01-29 21:18:06', '2018-01-29 21:18:06', '2018-01-29 21:18:06', '13bb1d1d-36ed-44e4-99b0-862b109f44f1'),
(9, 1, 1, 'bicycle.jpg', 'image', 1600, 800, 85219, '2018-01-30 10:17:17', '2018-01-30 10:17:18', '2018-01-30 10:17:18', 'ee4363f6-a6b9-44cc-9ad3-7554b96d3b14'),
(10, 1, 1, 'bicycle-dark.jpg', 'image', 1600, 800, 55865, '2018-01-30 11:27:23', '2018-01-30 11:27:24', '2018-01-30 11:27:24', '1a6e5da4-cb06-4c8a-a13d-029dcc5d315c'),
(12, 1, 1, 'work-6.jpg', 'image', 542, 470, 26884, '2018-01-30 12:49:14', '2018-01-30 12:49:14', '2018-01-30 12:49:14', 'c9f958a2-30f0-48c7-bdce-c7e942595939'),
(13, 1, 1, 'work-5.jpg', 'image', 542, 470, 60685, '2018-01-30 12:49:34', '2018-01-30 12:49:34', '2018-01-30 12:49:34', '8247af2a-be07-4ccf-8141-ed09df2fdbb2'),
(16, 1, 1, 'Img-01.jpg', 'image', 1067, 600, 124681, '2018-01-30 13:19:48', '2018-01-30 13:19:49', '2018-01-30 13:19:49', '9ab75715-6465-4e24-b4af-0cb8f2f01ec6'),
(17, 1, 1, 'Img-02.jpg', 'image', 534, 600, 164105, '2018-01-30 13:19:49', '2018-01-30 13:19:49', '2018-01-30 13:19:49', 'b8d174cf-7c18-44a7-a4c8-024462ab28e2'),
(23, 1, 1, 'saddle.png', 'image', 533, 200, 184443, '2018-02-01 14:51:57', '2018-02-01 14:51:58', '2018-02-01 14:52:18', '5490b762-cfea-4881-9c3a-6ac6eb7a765f'),
(25, 1, 1, 'pokryshka.jpg', 'image', 534, 200, 28210, '2018-02-01 15:00:46', '2018-02-01 15:00:47', '2018-02-01 15:00:47', '85a83dc9-d769-4dbc-a4bf-932d925d2a75'),
(26, 1, 1, 'ramma.jpg', 'image', 533, 600, 59844, '2018-02-01 15:00:47', '2018-02-01 15:00:47', '2018-02-01 15:00:47', '18e9539a-c1f3-4665-9d64-385ee3feab1f');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assetfolders`
--

CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assetfolders`
--

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Image', '', '2018-01-29 20:16:41', '2018-01-29 20:16:41', '85432422-9b4e-43fe-9da5-b1123c6e0603');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assetindexdata`
--

CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assetsources`
--

CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assetsources`
--

INSERT INTO `craft_assetsources` (`id`, `name`, `handle`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Image', 'image', 'Local', '{\"path\":\"static\\/images\\/\",\"publicURLs\":\"1\",\"url\":\"http:\\/\\/localhost\\/static\\/images\\/\"}', 1, 15, '2018-01-29 20:16:41', '2018-01-29 20:31:34', 'd9ed4de0-d63a-4774-97b2-7fe33900015e');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assettransformindex`
--

CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_assettransformindex`
--

INSERT INTO `craft_assettransformindex` (`id`, `fileId`, `filename`, `format`, `location`, `sourceId`, `fileExists`, `inProgress`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 12, NULL, NULL, '_AUTOxAUTO_crop_center-center', 1, 0, 1, '2018-01-30 13:13:40', '2018-01-30 13:13:40', '2018-01-30 13:15:10', '9f97bde9-8512-43dc-ba10-ace9121df3ed'),
(2, 13, 'work-5.jpg', NULL, '_300xAUTO_crop_center-center', 1, 1, 0, '2018-01-30 13:13:40', '2018-01-30 13:13:40', '2018-01-30 13:13:41', 'dc327f5a-bd1f-497c-a8f2-ba85bdcad625'),
(3, 12, 'work-6.jpg', NULL, '_AUTOx300_crop_center-center', 1, 1, 0, '2018-01-30 13:14:04', '2018-01-30 13:14:04', '2018-01-30 13:14:05', 'e205833c-15c1-40ce-bfb1-07675d289095'),
(4, 13, 'work-5.jpg', NULL, '_300x300_crop_center-center', 1, 1, 0, '2018-01-30 13:14:04', '2018-01-30 13:14:04', '2018-01-30 13:14:05', '910c70ca-6757-43b4-b2eb-5311e044dd76'),
(5, 12, 'work-6.jpg', NULL, '_1x300_crop_center-center', 1, 1, 0, '2018-01-30 13:15:39', '2018-01-30 13:15:39', '2018-01-30 13:15:40', '7a8e63d0-bd70-4cf6-9fe7-fe2ca66effc0'),
(6, 13, 'work-5.jpg', NULL, '_301x300_crop_center-center', 1, 1, 0, '2018-01-30 13:15:39', '2018-01-30 13:15:39', '2018-01-30 13:15:40', '295c1afe-3da6-4498-ae7b-a91c6b33510e'),
(7, 12, 'work-6.jpg', NULL, '_300x300_crop_center-center', 1, 1, 0, '2018-01-30 13:16:31', '2018-01-30 13:16:31', '2018-01-30 13:16:32', 'd5864877-6ce8-4662-a54b-f2b6df7d71d9'),
(8, 13, 'work-5.jpg', NULL, '_600x300_crop_center-center', 1, 1, 0, '2018-01-30 13:16:31', '2018-01-30 13:16:31', '2018-01-30 13:16:32', '765f43d3-550e-4a2c-850b-57972c1e7565'),
(9, 16, 'Img-01.jpg', NULL, '_300x300_crop_center-center', 1, 1, 0, '2018-01-30 13:22:06', '2018-01-30 13:22:06', '2018-01-30 13:22:06', 'bbc21906-92fb-4f56-b560-6ee1c467c0f5'),
(10, 17, 'Img-02.jpg', NULL, '_600x300_crop_center-center', 1, 1, 0, '2018-01-30 13:22:06', '2018-01-30 13:22:06', '2018-01-30 13:22:06', '0f313828-d91a-4f52-98de-f1487a535f76'),
(11, 16, 'Img-01.jpg', NULL, '_1067x600_crop_center-center', 1, 1, 0, '2018-01-30 13:23:18', '2018-01-30 13:23:18', '2018-01-30 13:23:19', '26906c25-d550-453e-b233-79c784e8719a'),
(12, 17, 'Img-02.jpg', NULL, '_534x600_crop_center-center', 1, 1, 0, '2018-01-30 13:23:18', '2018-01-30 13:23:18', '2018-01-30 13:23:19', 'eba9ff81-7c36-4ec6-925f-f497b8301edf'),
(13, 16, 'Img-01.jpg', NULL, '_967x550_crop_center-center', 1, 1, 0, '2018-02-01 11:00:03', '2018-02-01 11:00:03', '2018-02-01 11:00:05', '49efed54-c6d6-4c96-b72a-067397c6de70'),
(14, 17, 'Img-02.jpg', NULL, '_1067x600_crop_center-center', 1, 1, 0, '2018-02-01 12:33:30', '2018-02-01 12:33:30', '2018-02-01 12:33:33', 'fa6a33b4-8329-41f8-8b24-e6b157f3ecc8'),
(15, 17, 'Img-02.jpg', NULL, '_34x600_crop_center-center', 1, 1, 0, '2018-02-01 12:33:56', '2018-02-01 12:33:56', '2018-02-01 12:33:59', '0bcadb22-ddfc-4297-beec-9b1dc8dea716'),
(16, 16, 'Img-01.jpg', NULL, '_534x600_crop_center-center', 1, 1, 0, '2018-02-01 14:24:54', '2018-02-01 14:24:54', '2018-02-01 14:24:55', '7d70d790-3266-4173-a5cc-c5e8dd8aad5b');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_assettransforms`
--

CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_categories`
--

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_categorygroups`
--

CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_categorygroups_i18n`
--

CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_content`
--

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_plainText` text COLLATE utf8_unicode_ci,
  `field_screenTitle` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_screenCaption` text COLLATE utf8_unicode_ci,
  `field_radioButtons` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'medium',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `field_plainText`, `field_screenTitle`, `field_screenCaption`, `field_radioButtons`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en', NULL, NULL, NULL, NULL, NULL, 'medium', '2018-01-29 17:21:03', '2018-01-29 17:21:03', 'f123162d-4916-4b26-9955-48ee30554d5c'),
(2, 2, 'en', 'Homepage', '<p>It’s true, this site doesn’t have a whole lot of content yet, but don’t worry. Our web developers have just installed the CMS, and they’re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.</p>', NULL, 'I want to feel what you wanted. ', 'Trent from punchy pint when lets get some snag. Get a dog up ya moolah piece of piss trent from punchy slaps. Shazza got us some chuck a sickie heaps he hasn\'t got a kindie. As stands out like bush telly with as stands out like porky. She\'ll be right pretty spiffy trent from punchy cab sav.', 'medium', '2018-01-29 17:21:08', '2018-01-29 22:51:58', '3f7e53f9-99f6-4ee2-a2a0-45d285e1f557'),
(3, 3, 'en', 'We just installed Craft!', '<p>Craft is the CMS that’s powering Localhost. It’s beautiful, powerful, flexible, and easy-to-use, and it’s made by Pixel &amp; Tonic. We can’t wait to dive in and see what it’s capable of!</p><!--pagebreak--><p>This is even more captivating content, which you couldn’t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.</p><p>Craft: a nice alternative to Word, if you’re making a website.</p>', NULL, NULL, NULL, 'medium', '2018-01-29 17:21:08', '2018-01-29 17:21:08', '877f1b5a-d5f4-4008-ac06-fb26e638a64e'),
(4, 4, 'en', NULL, NULL, 'Artem Konovalov development', NULL, NULL, 'medium', '2018-01-29 17:28:25', '2018-01-30 11:39:54', '1ef82ac0-8cbf-436f-81c2-5bfe510363da'),
(5, 6, 'en', 'Bg Colos', NULL, NULL, NULL, NULL, 'medium', '2018-01-29 20:31:42', '2018-01-29 20:31:59', 'b0e1d110-e329-45c8-a36e-1bd6d7c82a93'),
(6, 7, 'en', '2016 02 19 12 33 10', NULL, NULL, NULL, NULL, 'medium', '2018-01-29 21:18:06', '2018-01-29 21:18:06', '6e5703d3-7d22-4263-990b-5356d29e38d6'),
(7, 8, 'en', 'Portfolio', NULL, NULL, 'Мы умеем управлять разработкой', 'Посмотрите наши проекты и убедитесь в этом сами!', 'medium', '2018-01-30 10:10:06', '2018-02-01 15:07:19', '0d008e7c-1b53-413d-997e-24e0551bb994'),
(8, 9, 'en', 'Bicycle', NULL, NULL, NULL, NULL, 'medium', '2018-01-30 10:17:18', '2018-01-30 10:17:18', 'd8bcb5f4-4431-423e-a263-46b575276c06'),
(9, 10, 'en', 'Bicycle Dark', NULL, NULL, NULL, NULL, 'medium', '2018-01-30 11:27:23', '2018-01-30 11:27:23', '4b748c2f-3be4-4ba0-81bb-3a8dc9f8e4f1'),
(10, 12, 'en', 'Work 6', NULL, NULL, NULL, NULL, 'medium', '2018-01-30 12:49:14', '2018-01-30 12:49:14', '2074f789-cd1d-4dcb-a499-cff76f4bf5d5'),
(11, 13, 'en', 'Work 5', NULL, NULL, NULL, NULL, 'medium', '2018-01-30 12:49:34', '2018-01-30 12:49:34', '2ccfe5c5-fc5b-4094-9eae-111173c73688'),
(12, 16, 'en', 'Img 01', NULL, NULL, NULL, NULL, 'medium', '2018-01-30 13:19:49', '2018-01-30 13:19:49', 'c427601e-99ee-400d-b309-2451204204e1'),
(13, 17, 'en', 'Img 02', NULL, NULL, NULL, NULL, 'medium', '2018-01-30 13:19:49', '2018-01-30 13:19:49', 'd794c4db-34f6-44a8-938e-ed7ede09c301'),
(14, 23, 'en', 'saddle', NULL, NULL, NULL, NULL, 'medium', '2018-02-01 14:51:57', '2018-02-01 14:52:18', 'bf27b08e-4ecc-4466-b2ec-16accb7acbdb'),
(15, 25, 'en', 'Pokryshka', NULL, NULL, NULL, NULL, 'medium', '2018-02-01 15:00:47', '2018-02-01 15:00:47', '7c1ad1d5-a6a4-406e-8c18-f0e76af16e84'),
(16, 26, 'en', 'Ramma', NULL, NULL, NULL, NULL, 'medium', '2018-02-01 15:00:47', '2018-02-01 15:00:47', '5b1b87a0-c7f2-488e-be2e-29ac36ee9904');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_deprecationerrors`
--

CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) UNSIGNED DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_elementindexsettings`
--

CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_elements`
--

CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2018-01-29 17:21:03', '2018-01-29 17:21:03', '9c9eb241-9bf5-48e7-bb7a-0326121291d5'),
(2, 'Entry', 1, 0, '2018-01-29 17:21:08', '2018-01-29 22:51:58', 'fbdf3a35-a41b-4610-a86e-9daab0ec294f'),
(3, 'Entry', 1, 0, '2018-01-29 17:21:08', '2018-01-29 17:21:08', '83248193-953a-434e-81d9-66ab980a303c'),
(4, 'GlobalSet', 1, 0, '2018-01-29 17:28:25', '2018-01-30 11:39:54', '08e6151a-fa94-41fd-8c19-f4a599ec6cb8'),
(5, 'MatrixBlock', 1, 0, '2018-01-29 17:42:48', '2018-01-30 11:39:54', 'ab017dc9-f24c-4be6-a312-c6492bfe00aa'),
(6, 'Asset', 1, 0, '2018-01-29 20:31:42', '2018-01-29 20:31:59', 'cb2f7ebe-28a9-4650-8774-61e67ef5bb35'),
(7, 'Asset', 1, 0, '2018-01-29 21:18:06', '2018-01-29 21:18:06', '140ae59b-0ec5-4670-b0c4-fe1c0168576a'),
(8, 'Entry', 1, 0, '2018-01-30 10:10:06', '2018-02-01 15:07:19', '9ee8d8a5-c07c-4f96-83a1-79987fa96d1e'),
(9, 'Asset', 1, 0, '2018-01-30 10:17:18', '2018-01-30 10:17:18', '5de3c17a-3cc5-41e6-8473-623f78d2ddaa'),
(10, 'Asset', 1, 0, '2018-01-30 11:27:23', '2018-01-30 11:27:23', 'da33e524-bbca-4aa2-89d4-390f460b92d4'),
(11, 'MatrixBlock', 1, 0, '2018-01-30 11:36:55', '2018-01-30 11:39:54', '7154f684-82b5-4701-8d29-5c86ec3c9613'),
(12, 'Asset', 1, 0, '2018-01-30 12:49:14', '2018-01-30 12:49:14', '74e33505-7811-44d2-9a6d-f577abb6e748'),
(13, 'Asset', 1, 0, '2018-01-30 12:49:34', '2018-01-30 12:49:34', '5e6daec9-07e7-4d67-9fd8-953bbe9f2b84'),
(16, 'Asset', 1, 0, '2018-01-30 13:19:49', '2018-01-30 13:19:49', '28f15b91-65b7-4d6e-9cf2-7fcba239687b'),
(17, 'Asset', 1, 0, '2018-01-30 13:19:49', '2018-01-30 13:19:49', 'e23716f2-0d05-4c0e-b2ed-8c70dea915d7'),
(18, 'MatrixBlock', 1, 0, '2018-02-01 12:14:42', '2018-02-01 15:07:19', 'e50ecc3d-3ed7-4db7-9b0c-27b346de204e'),
(20, 'MatrixBlock', 1, 0, '2018-02-01 12:33:28', '2018-02-01 15:07:19', '167e172f-7ba2-4048-ad2c-aec0d6a7c6fd'),
(21, 'MatrixBlock', 1, 0, '2018-02-01 12:40:59', '2018-02-01 15:07:19', 'bc50211f-8d67-4324-af18-5e8785956a7c'),
(22, 'MatrixBlock', 1, 0, '2018-02-01 12:40:59', '2018-02-01 15:07:19', '45b7ccbb-e48f-41e6-aa07-5bd758c8a341'),
(23, 'Asset', 1, 0, '2018-02-01 14:51:57', '2018-02-01 14:52:18', 'e4aaefb5-715d-4219-b3d8-fb4a79331f46'),
(24, 'MatrixBlock', 1, 0, '2018-02-01 14:52:31', '2018-02-01 15:07:19', '01000e12-6980-4f22-a6b7-48151126268e'),
(25, 'Asset', 1, 0, '2018-02-01 15:00:47', '2018-02-01 15:00:47', '52147397-dc65-4c69-9669-923e6d60efb3'),
(26, 'Asset', 1, 0, '2018-02-01 15:00:47', '2018-02-01 15:00:47', '359cd4a3-f3f6-4659-af80-eca695704bd9'),
(27, 'MatrixBlock', 1, 0, '2018-02-01 15:01:29', '2018-02-01 15:07:19', '64211f3c-a6f9-4a09-a664-a59663ad63cf'),
(28, 'MatrixBlock', 1, 0, '2018-02-01 15:01:29', '2018-02-01 15:07:19', 'd8590fc6-43f1-4fd8-a83e-1132574b802c');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_elements_i18n`
--

CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_elements_i18n`
--

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en', '', NULL, 1, '2018-01-29 17:21:04', '2018-01-29 17:21:04', '4973102e-d74b-4210-96b9-aa4fe4f36707'),
(2, 2, 'en', 'homepage', '__home__', 1, '2018-01-29 17:21:08', '2018-01-29 22:51:58', '57d1f791-123b-4b70-815d-7926d675dc4e'),
(3, 3, 'en', 'we-just-installed-craft', 'news/2018/we-just-installed-craft', 1, '2018-01-29 17:21:08', '2018-01-29 17:21:08', 'fff7dfbe-cbf5-4589-80ed-0b78a0054560'),
(4, 4, 'en', '', NULL, 1, '2018-01-29 17:28:25', '2018-01-30 11:39:54', 'bd96a438-f079-46f7-b6b1-fe05a3bc0290'),
(5, 5, 'en', '', NULL, 1, '2018-01-29 17:42:48', '2018-01-30 11:39:54', '0449b8ef-b7f6-4879-beac-7a7c9f55212f'),
(6, 6, 'en', 'bg-colos', NULL, 1, '2018-01-29 20:31:42', '2018-01-29 20:31:59', '8764d453-2937-4756-883f-5190ff6264e2'),
(7, 7, 'en', '2016-02-19-12-33-10', NULL, 1, '2018-01-29 21:18:06', '2018-01-29 21:18:06', '3d982788-6afe-4787-b4f7-5de5075e503d'),
(8, 8, 'en', 'portfolio', 'portfolio', 1, '2018-01-30 10:10:06', '2018-02-01 15:07:19', 'cdb3b677-7e5e-4d67-93ea-ba188e60e2cc'),
(9, 9, 'en', 'bicycle', NULL, 1, '2018-01-30 10:17:18', '2018-01-30 10:17:18', 'a143932c-3147-4349-957a-f909c09051d1'),
(10, 10, 'en', 'bicycle-dark', NULL, 1, '2018-01-30 11:27:24', '2018-01-30 11:27:24', '1fe668af-33a9-45e4-bd1f-e38b025fabb7'),
(11, 11, 'en', '', NULL, 1, '2018-01-30 11:36:55', '2018-01-30 11:39:54', '41b08e2c-7218-43d6-873e-055def99b7be'),
(12, 12, 'en', 'work-6', NULL, 1, '2018-01-30 12:49:14', '2018-01-30 12:49:14', '8331888e-008f-4064-889a-bc0674f3b153'),
(13, 13, 'en', 'work-5', NULL, 1, '2018-01-30 12:49:34', '2018-01-30 12:49:34', 'cfeaf0e6-c980-409c-93fc-729176bf1b12'),
(16, 16, 'en', 'img-01', NULL, 1, '2018-01-30 13:19:49', '2018-01-30 13:19:49', '72540362-b122-4741-b554-559b39e4e185'),
(17, 17, 'en', 'img-02', NULL, 1, '2018-01-30 13:19:49', '2018-01-30 13:19:49', 'a54cacb6-48d6-45be-afbf-114758e8047c'),
(18, 18, 'en', '', NULL, 1, '2018-02-01 12:14:42', '2018-02-01 15:07:19', '09f42411-1b62-4508-8b78-97772a9b77e4'),
(20, 20, 'en', '', NULL, 1, '2018-02-01 12:33:28', '2018-02-01 15:07:19', '66de2b3a-a6fe-498b-978b-5f43d97957f5'),
(21, 21, 'en', '', NULL, 1, '2018-02-01 12:40:59', '2018-02-01 15:07:19', '71bf6cd1-7e83-4c1e-b890-cfdf39eedd00'),
(22, 22, 'en', '', NULL, 1, '2018-02-01 12:40:59', '2018-02-01 15:07:19', '945415cd-cab1-495f-af2e-a00edc4e98b9'),
(23, 23, 'en', 'small-image', NULL, 1, '2018-02-01 14:51:58', '2018-02-01 14:52:18', '09ea3bc2-aa68-45c5-84fa-4a8c53884f66'),
(24, 24, 'en', '', NULL, 1, '2018-02-01 14:52:31', '2018-02-01 15:07:19', '65b378c0-9e41-4dd9-8ecd-5cf725841637'),
(25, 25, 'en', 'pokryshka', NULL, 1, '2018-02-01 15:00:47', '2018-02-01 15:00:47', '761bda8e-3a50-420b-b82d-751e7e49b560'),
(26, 26, 'en', 'ramma', NULL, 1, '2018-02-01 15:00:47', '2018-02-01 15:00:47', 'b0dfa62b-14ff-434f-8120-c363aeeaba1e'),
(27, 27, 'en', '', NULL, 1, '2018-02-01 15:01:29', '2018-02-01 15:07:19', '07b66b5e-7936-4eee-8160-09310e05aec0'),
(28, 28, 'en', '', NULL, 1, '2018-02-01 15:01:29', '2018-02-01 15:07:19', '17d75b35-afd4-4963-92f4-4249b565e381');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_emailmessages`
--

CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_entries`
--

CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, 1, NULL, '2018-01-29 21:55:59', NULL, '2018-01-29 17:21:08', '2018-01-29 22:51:58', '9490cb8b-342c-41a5-854c-c242cf8f9e79'),
(3, 2, 2, 1, '2018-01-29 17:21:08', NULL, '2018-01-29 17:21:08', '2018-01-29 17:21:08', '3fbca04a-40ed-41ce-bc2c-52a981c2aa55'),
(8, 3, 3, NULL, '2018-01-30 10:21:39', NULL, '2018-01-30 10:10:06', '2018-02-01 15:07:19', 'f008e1e9-4ffe-40b3-8e14-d54d7a1785d4');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_entrydrafts`
--

CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_entrytypes`
--

CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 33, 'Homepage', 'homepage', 1, 'Title', NULL, 1, '2018-01-29 17:21:08', '2018-01-29 22:51:46', '468cac21-f1d9-4844-b21e-3bc872e595da'),
(2, 2, 5, 'News', 'news', 1, 'Title', NULL, 1, '2018-01-29 17:21:08', '2018-01-29 17:21:08', 'c78fdebd-e409-45a4-835d-453fe49b7d43'),
(3, 3, 38, 'Portfolio', 'portfolio', 1, '', NULL, 1, '2018-01-30 10:10:06', '2018-01-30 12:48:17', '95d7c0d1-2771-4520-b86c-2723b2543cf2');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_entryversions`
--

CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) UNSIGNED NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_entryversions`
--

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 1, 1, 'en', 1, NULL, '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1517246468,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}', '2018-01-29 17:21:08', '2018-01-29 17:21:08', 'fb64b853-70ec-4a82-a6a7-c147217af144'),
(2, 2, 1, 1, 'en', 2, NULL, '{\"typeId\":null,\"authorId\":null,\"title\":\"Welcome to Localhost!\",\"slug\":\"homepage\",\"postDate\":1517246468,\"expiryDate\":null,\"enabled\":\"1\",\"parentId\":null,\"fields\":{\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\"}}', '2018-01-29 17:21:08', '2018-01-29 17:21:08', 'f756ae6f-785e-443f-8e8b-317df22724e0'),
(3, 3, 2, 1, 'en', 1, NULL, '{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"We just installed Craft!\",\"slug\":\"we-just-installed-craft\",\"postDate\":1517246468,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}', '2018-01-29 17:21:08', '2018-01-29 17:21:08', '2dc14c10-7f53-4aa5-978e-3264090dba7b'),
(4, 2, 1, 1, 'en', 3, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Welcome to Localhost!\",\"slug\":\"homepage\",\"postDate\":1517246816,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\"}}', '2018-01-29 17:45:40', '2018-01-29 17:45:40', '65950b62-25c7-4088-8457-22fc41849791'),
(5, 2, 1, 1, 'en', 4, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1517246816,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>Trent from punchy pint when lets get some snag. Get a dog up ya moolah piece of piss trent from punchy slaps. Shazza got us some chuck a sickie heaps he hasn\'t got a kindie. As stands out like bush telly with as stands out like porky. She\'ll be right pretty spiffy trent from punchy cab sav.<\\/p>\",\"15\":\"I want to feel what you wanted.\",\"11\":\"\"}}', '2018-01-29 20:42:07', '2018-01-29 20:42:07', '7b386de4-8c0a-40a7-a48d-83e805da4468'),
(6, 2, 1, 1, 'en', 5, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1517246816,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\",\"11\":[\"6\"]}}', '2018-01-29 20:44:43', '2018-01-29 20:44:43', 'dcad7ebc-e8da-4655-a24e-c6771bb7856b'),
(7, 2, 1, 1, 'en', 6, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1517246816,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"16\":{\"new0\":{\"modified\":\"1\",\"type\":\"background\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"background\":[\"6\"]}},\"new1\":{\"modified\":\"1\",\"type\":\"screenTitle\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"screenTitle\":\"I want to feel what you wanted.\"}},\"new2\":{\"modified\":\"1\",\"type\":\"body\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"body\":\"<p>Trent from punchy pint when lets get some snag. Get a dog up ya moolah piece of piss trent from punchy slaps. Shazza got us some chuck a sickie heaps he hasn\'t got a kindie. As stands out like bush telly with as stands out like porky. She\'ll be right pretty spiffy trent from punchy cab sav.<\\/p>\"}}}}}', '2018-01-29 21:37:05', '2018-01-29 21:37:05', 'f0045d86-9407-4550-9131-6041f6436a8e'),
(8, 2, 1, 1, 'en', 7, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1517246816,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"16\":{\"new0\":{\"modified\":\"1\",\"type\":\"background\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"background\":[\"6\"]}},\"new1\":{\"modified\":\"1\",\"type\":\"screenTitle\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"screenTitle\":\"I want to feel what you wanted.\"}},\"new2\":{\"modified\":\"1\",\"type\":\"body\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"body\":\"<p>Trent from punchy pint when lets get some snag. Get a dog up ya moolah piece of piss trent from punchy slaps. Shazza got us some chuck a sickie heaps he hasn\'t got a kindie. As stands out like bush telly with as stands out like porky. She\'ll be right pretty spiffy trent from punchy cab sav.<\\/p>\"}}}}}', '2018-01-29 21:37:07', '2018-01-29 21:37:07', '5e39a696-4610-42cd-999e-4cc6567dede1'),
(9, 2, 1, 1, 'en', 8, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1517246816,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"16\":{\"11\":{\"modified\":\"1\",\"type\":\"background\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"background\":[\"6\"]}},\"12\":{\"modified\":\"1\",\"type\":\"screenTitle\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"screenTitle\":\"I want to feel what you wanted.\"}},\"13\":{\"modified\":\"1\",\"type\":\"body\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"body\":\"\"}}}}}', '2018-01-29 21:39:10', '2018-01-29 21:39:10', 'fe6b0161-724c-408c-beeb-8fcf4a681a0d'),
(10, 2, 1, 1, 'en', 9, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1517246816,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"16\":{\"11\":{\"modified\":\"1\",\"type\":\"background\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"background\":[\"6\"]}},\"12\":{\"modified\":\"1\",\"type\":\"screenTitle\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"screenTitle\":\"I want to feel what you wanted.\"}},\"13\":{\"modified\":\"1\",\"type\":\"body\",\"enabled\":\"1\",\"collapsed\":\"0\",\"level\":\"0\",\"fields\":{\"body\":\"<p>\\u042d\\u0442\\u043e \\u0442\\u0435\\u043b\\u043e \\u043c\\u043e\\u0435\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b<\\/p>\"}}}}}', '2018-01-29 21:43:47', '2018-01-29 21:43:47', '44617cb5-ab95-4ee6-94e0-57421e7dec9c'),
(11, 2, 1, 1, 'en', 10, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1517262959,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"6\"],\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\",\"17\":\"I want to feel what you wanted. \"}}', '2018-01-29 22:18:16', '2018-01-29 22:18:16', '9a3e469e-f42a-447c-b986-3a5a4951b245'),
(12, 2, 1, 1, 'en', 11, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1517262959,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"6\"],\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\",\"17\":\"I want to feel what you wanted. \"}}', '2018-01-29 22:22:26', '2018-01-29 22:22:26', '5df9e576-121a-4d81-bd83-ea5c70d5be5d'),
(13, 2, 1, 1, 'en', 12, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1517262959,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"6\"],\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\",\"17\":\"I want to feel what you wanted. \"}}', '2018-01-29 22:51:13', '2018-01-29 22:51:13', 'ab72f916-9e91-4a0f-85fc-b54d08894ed0'),
(14, 2, 1, 1, 'en', 13, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1517262959,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"6\"],\"18\":\"Trent from punchy pint when lets get some snag. Get a dog up ya moolah piece of piss trent from punchy slaps. Shazza got us some chuck a sickie heaps he hasn\'t got a kindie. As stands out like bush telly with as stands out like porky. She\'ll be right pretty spiffy trent from punchy cab sav.\",\"17\":\"I want to feel what you wanted. \"}}', '2018-01-29 22:51:58', '2018-01-29 22:51:58', '52a06e44-bc6f-465e-841b-aac9d12def83'),
(15, 8, 3, 1, 'en', 1, NULL, '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307006,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}', '2018-01-30 10:10:06', '2018-01-30 10:10:06', '357946f7-f233-4a01-9635-ae49d28abb9e'),
(16, 8, 3, 1, 'en', 2, '', '{\"typeId\":null,\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307006,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"9\"],\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-01-30 10:18:28', '2018-01-30 10:18:28', '3f406294-f431-4f29-8f2b-515c8ec221d8'),
(17, 8, 3, 1, 'en', 3, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-01-30 11:27:27', '2018-01-30 11:27:27', '863cf1e0-56d2-4b21-b80f-365acfead16a'),
(18, 8, 3, 1, 'en', 4, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"new1\":{\"type\":\"items\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"12\"]}},\"new2\":{\"type\":\"items\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"13\"]}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-01-30 12:49:39', '2018-01-30 12:49:39', '5533dc0d-26dd-49fa-b42b-c8108db62fc7'),
(19, 8, 3, 1, 'en', 5, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"14\":{\"type\":\"items\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"12\"]}},\"15\":{\"type\":\"items\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"13\"]}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-01-30 12:51:08', '2018-01-30 12:51:08', 'e08e8760-7986-4859-92e6-01456f998d1b'),
(20, 8, 3, 1, 'en', 6, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"14\":{\"type\":\"items\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"16\"],\"widthImage\":\"1067\",\"heightImage\":\"600\"}},\"15\":{\"type\":\"items\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"17\"],\"widthImage\":\"534\",\"heightImage\":\"600\"}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-01-30 13:22:03', '2018-01-30 13:22:03', '033bc5df-6566-44ed-aa36-0b0f599c9f0c'),
(21, 8, 3, 1, 'en', 7, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"14\":{\"type\":\"items\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"16\"],\"widthImage\":\"967\",\"heightImage\":\"550\"}},\"15\":{\"type\":\"items\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"17\"],\"widthImage\":\"534\",\"heightImage\":\"600\"}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-02-01 11:00:01', '2018-02-01 11:00:01', 'bfeb5ad0-992b-46cb-96c5-4106988f60bf'),
(22, 8, 3, 1, 'en', 8, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"14\":{\"type\":\"items\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"16\"],\"sizeImage\":\"1\"}},\"15\":{\"type\":\"items\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"17\"],\"sizeImage\":\"\"}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-02-01 12:10:45', '2018-02-01 12:10:45', '2929ce43-ddac-43c3-acef-066cb38b3150'),
(23, 8, 3, 1, 'en', 9, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"new1\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"16\"],\"sizeImage\":\"1\"}},\"new2\":{\"type\":\"itemText\",\"enabled\":\"1\",\"fields\":{\"gridlink\":[\"8\"],\"gridTitle\":\"dcwfwe\",\"gridParagraf\":\"wefwef\"}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-02-01 12:14:42', '2018-02-01 12:14:42', 'e7f4bf2c-1dc7-49ac-8b30-271b7da27810'),
(24, 8, 3, 1, 'en', 10, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"18\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"16\"],\"sizeImage\":\"1\"}},\"new1\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"17\"],\"sizeImage\":\"1\"}},\"19\":{\"type\":\"itemText\",\"enabled\":\"1\",\"fields\":{\"gridlink\":[\"8\"],\"gridTitle\":\"dcwfwe\",\"gridParagraf\":\"wefwef\"}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-02-01 12:33:28', '2018-02-01 12:33:28', '1baa62b8-bddd-4e61-ba9e-8bd622fc15a6'),
(25, 8, 3, 1, 'en', 11, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"18\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"16\"],\"sizeImage\":\"1\"}},\"20\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"17\"],\"sizeImage\":\"\"}},\"19\":{\"type\":\"itemText\",\"enabled\":\"1\",\"fields\":{\"gridlink\":[\"8\"],\"gridTitle\":\"dcwfwe\",\"gridParagraf\":\"wefwef\"}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-02-01 12:33:54', '2018-02-01 12:33:54', '99578459-6b24-4087-bbfa-f337670e66b7'),
(26, 8, 3, 1, 'en', 12, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"18\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"16\"],\"sizeImage\":\"1\"}},\"20\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"17\"],\"sizeImage\":\"\"}},\"new1\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"16\"],\"sizeImage\":\"1\"}},\"new2\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"17\"],\"sizeImage\":\"\"}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-02-01 12:40:59', '2018-02-01 12:40:59', '1a33cca8-a0ac-4b9d-a906-0b8f268043f7'),
(27, 8, 3, 1, 'en', 13, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"18\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"16\"],\"sizeImage\":\"large\"}},\"20\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"17\"],\"sizeImage\":\"small\"}},\"21\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"16\"],\"sizeImage\":\"large\"}},\"22\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"17\"],\"sizeImage\":\"small\"}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-02-01 14:38:45', '2018-02-01 14:38:45', '9a66de51-487e-4a4b-a93d-dcc5e8f93f90'),
(28, 8, 3, 1, 'en', 14, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"18\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"16\"],\"sizeImage\":\"full\"}},\"20\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"17\"],\"sizeImage\":\"small\"}},\"21\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"16\"],\"sizeImage\":\"large\"}},\"22\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"17\"],\"sizeImage\":\"medium\"}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-02-01 14:42:58', '2018-02-01 14:42:58', 'fbc893a7-248e-4624-9c4d-19e7409a78f9'),
(29, 8, 3, 1, 'en', 15, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"18\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"16\"],\"sizeImage\":\"full\"}},\"20\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"17\"],\"sizeImage\":\"small\"}},\"21\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"16\"],\"sizeImage\":\"large\"}},\"22\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"17\"],\"sizeImage\":\"medium\"}},\"new1\":{\"type\":\"itemText\",\"enabled\":\"1\",\"fields\":{\"gridlink\":[\"3\"],\"gridTitle\":\"Bicycle\",\"gridParagraf\":\"\\u0412\\u0430\\u0448 \\u0432\\u0435\\u043b\\u043e\\u0441\\u0438\\u043f\\u0435\\u0434 \\u0435\\u0449\\u0451 \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0435 \\u0431\\u044b\\u043b \\u0442\\u0430\\u043a\\u0438\\u043c \\u043a\\u0440\\u0430\\u0441\\u0438\\u0432\\u044b\\u043c \\u0438 \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c! \\u0421\\u0430\\u0439\\u0442 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0433\\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0430 \\u0432\\u0435\\u043b\\u043e\\u0441\\u0438\\u043f\\u0435\\u0434\\u043e\\u0432.\",\"gridImage\":[\"23\"]}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-02-01 14:52:31', '2018-02-01 14:52:31', '0ab843ee-f5ce-40ed-81b2-468172a5ea2a'),
(30, 8, 3, 1, 'en', 16, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"18\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"16\"],\"sizeImage\":\"large\"}},\"20\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"17\"],\"sizeImage\":\"medium\"}},\"21\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"16\"],\"sizeImage\":\"large\"}},\"22\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"17\"],\"sizeImage\":\"medium\"}},\"24\":{\"type\":\"itemText\",\"enabled\":\"1\",\"fields\":{\"gridlink\":[\"3\"],\"gridTitle\":\"Bicycle\",\"gridParagraf\":\"\\u0412\\u0430\\u0448 \\u0432\\u0435\\u043b\\u043e\\u0441\\u0438\\u043f\\u0435\\u0434 \\u0435\\u0449\\u0451 \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0435 \\u0431\\u044b\\u043b \\u0442\\u0430\\u043a\\u0438\\u043c \\u043a\\u0440\\u0430\\u0441\\u0438\\u0432\\u044b\\u043c \\u0438 \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c! \\u0421\\u0430\\u0439\\u0442 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0433\\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0430 \\u0432\\u0435\\u043b\\u043e\\u0441\\u0438\\u043f\\u0435\\u0434\\u043e\\u0432.\",\"gridImage\":[\"23\"]}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-02-01 14:54:31', '2018-02-01 14:54:31', 'a7bdc458-b73a-46b8-83b1-aa5fbb8bd2fc'),
(31, 8, 3, 1, 'en', 17, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"18\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"16\"],\"sizeImage\":\"large\"}},\"20\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"17\"],\"sizeImage\":\"medium\"}},\"21\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"16\"],\"sizeImage\":\"large\"}},\"22\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"17\"],\"sizeImage\":\"medium\"}},\"24\":{\"type\":\"itemText\",\"enabled\":\"1\",\"fields\":{\"gridlink\":[\"3\"],\"gridTitle\":\"Bicycle\",\"gridParagraf\":\"\\u0412\\u0430\\u0448 \\u0432\\u0435\\u043b\\u043e\\u0441\\u0438\\u043f\\u0435\\u0434 \\u0435\\u0449\\u0451 \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0435 \\u0431\\u044b\\u043b \\u0442\\u0430\\u043a\\u0438\\u043c \\u043a\\u0440\\u0430\\u0441\\u0438\\u0432\\u044b\\u043c \\u0438 \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c! \\u0421\\u0430\\u0439\\u0442 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0433\\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0430 \\u0432\\u0435\\u043b\\u043e\\u0441\\u0438\\u043f\\u0435\\u0434\\u043e\\u0432.\",\"gridImage\":[\"23\"]}},\"new1\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"26\"],\"sizeImage\":\"medium\"}},\"new2\":{\"type\":\"itemText\",\"enabled\":\"1\",\"fields\":{\"gridlink\":[\"3\"],\"gridTitle\":\"\\u0434\\u0440\\u0443\\u0433\\u043e\\u0439 \\u0441\\u0430\\u0439\\u0442\",\"gridParagraf\":\"\\u0432\\u0441\\u0451 \\u043e\\u0447\\u0435\\u043d\\u044c \\u043a\\u0440\\u0443\\u0442\\u043e \\u043f\\u043e-\\u043f\\u0430\\u043f\\u043a\\u0438\\u043d\\u0441\\u043a\\u0438\",\"gridImage\":[\"25\"]}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-02-01 15:01:29', '2018-02-01 15:01:29', '42f7dcad-a01c-450c-8dae-2efbbb958ff6'),
(32, 8, 3, 1, 'en', 18, '', '{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Portfolio\",\"slug\":\"portfolio\",\"postDate\":1517307699,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"11\":[\"10\"],\"19\":{\"18\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"16\"],\"sizeImage\":\"large\"}},\"20\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"3\"],\"gridImage\":[\"17\"],\"sizeImage\":\"medium\"}},\"21\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"16\"],\"sizeImage\":\"large\"}},\"22\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"8\"],\"gridImage\":[\"17\"],\"sizeImage\":\"medium\"}},\"24\":{\"type\":\"itemText\",\"enabled\":\"1\",\"fields\":{\"gridlink\":[\"3\"],\"gridTitle\":\"Bicycle\",\"gridParagraf\":\"\\u0412\\u0430\\u0448 \\u0432\\u0435\\u043b\\u043e\\u0441\\u0438\\u043f\\u0435\\u0434 \\u0435\\u0449\\u0451 \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0435 \\u0431\\u044b\\u043b \\u0442\\u0430\\u043a\\u0438\\u043c \\u043a\\u0440\\u0430\\u0441\\u0438\\u0432\\u044b\\u043c \\u0438 \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c! \\u0421\\u0430\\u0439\\u0442 \\u043b\\u0443\\u0447\\u0448\\u0435\\u0433\\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0430 \\u0432\\u0435\\u043b\\u043e\\u0441\\u0438\\u043f\\u0435\\u0434\\u043e\\u0432.\",\"gridImage\":[\"23\"]}},\"28\":{\"type\":\"itemText\",\"enabled\":\"1\",\"fields\":{\"gridlink\":[\"3\"],\"gridTitle\":\"\\u0434\\u0440\\u0443\\u0433\\u043e\\u0439 \\u0441\\u0430\\u0439\\u0442\",\"gridParagraf\":\"\\u0432\\u0441\\u0451 \\u043e\\u0447\\u0435\\u043d\\u044c \\u043a\\u0440\\u0443\\u0442\\u043e \\u043f\\u043e-\\u043f\\u0430\\u043f\\u043a\\u0438\\u043d\\u0441\\u043a\\u0438\",\"gridImage\":[\"25\"]}},\"27\":{\"type\":\"itemPhoto\",\"enabled\":\"1\",\"fields\":{\"gridLink\":[\"2\"],\"gridImage\":[\"26\"],\"sizeImage\":\"medium\"}}},\"18\":\"\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u0438 \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u0441\\u044c \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u0430\\u043c\\u0438!\",\"17\":\"\\u041c\\u044b \\u0443\\u043c\\u0435\\u0435\\u043c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u043e\\u0439\"}}', '2018-02-01 15:07:19', '2018-02-01 15:07:19', '8e06cfe8-b04e-489a-9d84-451d2170aafd');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fieldgroups`
--

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2018-01-29 17:21:07', '2018-01-29 17:21:07', '5de05ff3-89a9-43b4-95a4-95128ebcbbb9'),
(2, 'Screen', '2018-01-29 21:08:39', '2018-01-29 21:08:39', '96ac2287-b15e-4b34-b0e0-a4898c281b61');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fieldlayoutfields`
--

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 5, 2, 1, 1, 1, '2018-01-29 17:21:08', '2018-01-29 17:21:08', '073004a0-eb66-4989-a127-fd1c7b1db802'),
(3, 5, 2, 2, 0, 2, '2018-01-29 17:21:08', '2018-01-29 17:21:08', '92cf6d34-2062-424e-b42a-da221fcb5225'),
(7, 8, 4, 3, 0, 1, '2018-01-29 17:41:33', '2018-01-29 17:41:33', 'dd1bdb97-a437-4cf6-83e2-8b2e9f968f5e'),
(8, 8, 4, 4, 0, 2, '2018-01-29 17:41:33', '2018-01-29 17:41:33', '2cba200a-56e8-400b-9196-63327ce251ae'),
(15, 11, 7, 5, 1, 1, '2018-01-29 17:47:00', '2018-01-29 17:47:00', '81db66bc-f7fc-4f5c-9d9b-244c334d9c61'),
(16, 11, 7, 6, 1, 2, '2018-01-29 17:47:00', '2018-01-29 17:47:00', '4a55ca5b-ba58-434d-b43d-152a7f933557'),
(17, 11, 7, 7, 0, 3, '2018-01-29 17:47:00', '2018-01-29 17:47:00', 'a0db2721-71e9-4600-a5ff-5520e6ca8eda'),
(18, 12, 8, 8, 1, 1, '2018-01-29 17:47:01', '2018-01-29 17:47:01', 'b652c3b0-f737-46d8-a3ee-fd8d121d5603'),
(19, 12, 8, 9, 0, 2, '2018-01-29 17:47:01', '2018-01-29 17:47:01', '8628a540-4e5f-46e1-9d58-470d75beeb2b'),
(20, 12, 8, 10, 0, 3, '2018-01-29 17:47:01', '2018-01-29 17:47:01', '29410833-a1a8-4770-81f1-49f26674d87d'),
(21, 16, 9, 12, 1, 1, '2018-01-29 20:37:42', '2018-01-29 20:37:42', '125da004-2b76-4674-9f4d-c60f6a1d8581'),
(22, 16, 9, 13, 1, 2, '2018-01-29 20:37:42', '2018-01-29 20:37:42', '5bf04a32-812b-4d25-96b6-6659eb0918e9'),
(23, 16, 9, 14, 0, 3, '2018-01-29 20:37:42', '2018-01-29 20:37:42', '9859a6bc-d694-41e5-a16a-3dc375aec1da'),
(47, 33, 26, 17, 1, 1, '2018-01-29 22:51:46', '2018-01-29 22:51:46', '43708905-ce5b-4aca-b40c-789e6c1ec18c'),
(48, 33, 26, 11, 1, 2, '2018-01-29 22:51:46', '2018-01-29 22:51:46', '9f6201a6-6b6d-47f7-b478-7eb529c4bd8d'),
(49, 33, 26, 18, 0, 3, '2018-01-29 22:51:46', '2018-01-29 22:51:46', '409ce106-3d47-4cfe-adb7-2a25681d9a7b'),
(58, 38, 30, 11, 0, 1, '2018-01-30 12:48:17', '2018-01-30 12:48:17', 'c1958c25-4aa4-4b37-8dd4-585686f959ba'),
(59, 38, 30, 18, 0, 2, '2018-01-30 12:48:17', '2018-01-30 12:48:17', 'ad008b35-679a-4cb7-af0c-37a0cd0191fa'),
(60, 38, 30, 17, 0, 3, '2018-01-30 12:48:17', '2018-01-30 12:48:17', '031ae20b-2bd9-47d3-9a18-0b1635e989e9'),
(61, 38, 30, 19, 0, 4, '2018-01-30 12:48:17', '2018-01-30 12:48:17', '6f1490b9-07fb-42dc-ad66-7a6cd3792515'),
(134, 63, 55, 20, 1, 1, '2018-02-01 14:49:28', '2018-02-01 14:49:28', '3e320509-affc-4617-8fa5-5501380ede4e'),
(135, 63, 55, 21, 1, 2, '2018-02-01 14:49:28', '2018-02-01 14:49:28', 'acc155c2-3b55-4c3e-aad1-54c91932e52d'),
(136, 63, 55, 27, 0, 3, '2018-02-01 14:49:28', '2018-02-01 14:49:28', '48b87d8c-f6e4-4039-bc50-521a2d537699'),
(137, 64, 56, 26, 1, 1, '2018-02-01 14:49:28', '2018-02-01 14:49:28', '33c74893-09af-42e1-9e8d-5f2a7cff5aa4'),
(138, 64, 56, 24, 1, 2, '2018-02-01 14:49:28', '2018-02-01 14:49:28', 'fb2644c5-150d-465b-bc47-c89368be1052'),
(139, 64, 56, 25, 1, 3, '2018-02-01 14:49:28', '2018-02-01 14:49:28', '85ef35cd-f8bf-4a24-b416-5673cdcdf334'),
(140, 64, 56, 29, 1, 4, '2018-02-01 14:49:28', '2018-02-01 14:49:28', '6b3b05b9-5ae1-4e84-9665-cde682a2a557');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fieldlayouts`
--

CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Tag', '2018-01-29 17:21:07', '2018-01-29 17:21:07', '32356013-3132-4d2a-bb8c-7438f2574f9b'),
(5, 'Entry', '2018-01-29 17:21:08', '2018-01-29 17:21:08', '22d5d81d-adaa-45c0-b282-d4888676a6a1'),
(8, 'GlobalSet', '2018-01-29 17:41:33', '2018-01-29 17:41:33', '1c03eae2-9834-45c0-804b-2642c45384c5'),
(11, 'MatrixBlock', '2018-01-29 17:47:00', '2018-01-29 17:47:00', '5a22915f-22fe-43bb-94e2-e9844d6b9ec2'),
(12, 'MatrixBlock', '2018-01-29 17:47:01', '2018-01-29 17:47:01', '6b45e4b3-2277-4c94-af73-e09a6a0bf840'),
(15, 'Asset', '2018-01-29 20:31:34', '2018-01-29 20:31:34', 'c18a777d-2c21-4b41-9592-69b189a2ce6d'),
(16, 'SuperTable_Block', '2018-01-29 20:37:42', '2018-01-29 20:37:42', '81c6d3e1-f4bf-4d02-bce2-960a23b7da44'),
(33, 'Entry', '2018-01-29 22:51:46', '2018-01-29 22:51:46', '8ae34630-e543-4e35-99ed-f0ba14027204'),
(38, 'Entry', '2018-01-30 12:48:17', '2018-01-30 12:48:17', '63cdceac-3e49-4412-81f5-7ddedbba180c'),
(63, 'MatrixBlock', '2018-02-01 14:49:28', '2018-02-01 14:49:28', '61d9bdcc-d49f-42d3-a766-10b928efedd9'),
(64, 'MatrixBlock', '2018-02-01 14:49:28', '2018-02-01 14:49:28', '72da584c-e9ca-4656-baed-442336f1f9a6');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fieldlayouttabs`
--

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 5, 'Content', 1, '2018-01-29 17:21:08', '2018-01-29 17:21:08', '5b68702f-472e-47e8-91b6-2588dd67372c'),
(4, 8, 'Content', 1, '2018-01-29 17:41:33', '2018-01-29 17:41:33', '906f142f-6353-414b-832f-c08d999f699a'),
(7, 11, 'Content', 1, '2018-01-29 17:47:00', '2018-01-29 17:47:00', 'c3ef89dc-a265-426a-86f9-86a107526d1d'),
(8, 12, 'Content', 1, '2018-01-29 17:47:01', '2018-01-29 17:47:01', '6e4c0ad7-9bf7-48f0-beca-e9bc222ba9f6'),
(9, 16, 'Content', 1, '2018-01-29 20:37:42', '2018-01-29 20:37:42', '06b474f8-2e06-41ac-8189-b9c32e1981a9'),
(26, 33, 'Screen', 1, '2018-01-29 22:51:46', '2018-01-29 22:51:46', 'bc1ff2ec-b67b-4cbe-a589-b4eecbb99391'),
(30, 38, 'Screen', 1, '2018-01-30 12:48:17', '2018-01-30 12:48:17', '44a00cb4-11b8-4b51-adaa-955a53788077'),
(55, 63, 'Content', 1, '2018-02-01 14:49:28', '2018-02-01 14:49:28', 'e835ca1d-1258-46e7-8e75-adf40bf1a629'),
(56, 64, 'Content', 1, '2018-02-01 14:49:28', '2018-02-01 14:49:28', 'a05cf4b6-8d60-41cd-8362-e157709e7744');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_fields`
--

CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', NULL, 1, 'RichText', '{\"configFile\":\"Standard.json\",\"columnType\":\"text\"}', '2018-01-29 17:21:08', '2018-01-29 17:21:08', 'ce26efc2-3700-4f67-b435-c36d7bf10ca4'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{\"source\":\"taggroup:1\"}', '2018-01-29 17:21:08', '2018-01-29 17:21:08', '0720d4d9-6748-47ac-bcf3-746b3817f81a'),
(3, 1, 'Plain Text', 'plainText', 'global', '', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2018-01-29 17:29:09', '2018-01-29 17:29:09', '47a5787b-6102-46b5-893d-dac6e2638738'),
(4, 1, 'Menu', 'menu', 'global', '', 0, 'Matrix', '{\"maxBlocks\":null}', '2018-01-29 17:41:18', '2018-01-29 17:47:00', 'c134ff13-8d2b-4b89-89ba-6405def59bfb'),
(5, NULL, 'Entry', 'entry', 'matrixBlockType:1', '', 0, 'Entries', '{\"sources\":\"*\",\"limit\":\"1\",\"selectionLabel\":\"\"}', '2018-01-29 17:41:20', '2018-01-29 17:47:00', '69017c85-7436-4161-acf9-0591ce4ddc76'),
(6, NULL, 'Link Title', 'linkTitle', 'matrixBlockType:1', '', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2018-01-29 17:41:20', '2018-01-29 17:47:00', '2963fdf0-295f-41db-8f06-46f48f7ae138'),
(7, NULL, 'Open On New Tab', 'openOnNewTab', 'matrixBlockType:1', '', 0, 'Lightswitch', '{\"default\":\"1\"}', '2018-01-29 17:41:20', '2018-01-29 17:47:00', '4ea7a4da-fa8b-4dd9-a6cc-b02adde3825e'),
(8, NULL, 'Outer Url', 'outerUrl', 'matrixBlockType:2', '', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2018-01-29 17:44:34', '2018-01-29 17:47:00', '8fb0eb2c-e996-468a-8797-33b4a4130faa'),
(9, NULL, 'Link Title', 'linkTitle', 'matrixBlockType:2', '', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2018-01-29 17:44:35', '2018-01-29 17:47:01', '5b58c664-50e7-48ba-8836-36e837de184f'),
(10, NULL, 'Open On New Tab', 'openOnNewTab', 'matrixBlockType:2', '', 0, 'Lightswitch', '{\"default\":\"1\"}', '2018-01-29 17:44:35', '2018-01-29 17:47:01', '6684d1be-7629-4dbe-84cd-18bec280e08f'),
(11, 2, 'Background', 'background', 'global', '', 0, 'Assets', '{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}', '2018-01-29 20:37:41', '2018-01-29 21:18:30', 'db217322-3501-4aff-8042-1d3209d84ea2'),
(12, NULL, 'Background', 'background', 'superTableBlockType:1', '', 0, 'Assets', '{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}', '2018-01-29 20:37:42', '2018-01-29 20:37:42', '12b41948-1ed5-4598-a78d-de83bdede054'),
(13, NULL, 'Page Title', 'pageTitle', 'superTableBlockType:1', '', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"50\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2018-01-29 20:37:42', '2018-01-29 20:37:42', '44f4147b-95ec-4b92-91bd-c17deadbe16c'),
(14, NULL, 'Page Caption', 'pageCaption', 'superTableBlockType:1', '', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"300\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2018-01-29 20:37:42', '2018-01-29 20:37:42', '783f076f-4c11-4987-857a-12ac98dd87b7'),
(17, 2, 'Screen Title', 'screenTitle', 'global', '', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"60\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2018-01-29 22:17:25', '2018-01-29 22:17:25', 'f9794a0b-ad94-4431-998a-28559fd0fe1e'),
(18, 2, 'Screen Caption', 'screenCaption', 'global', '', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"400\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2018-01-29 22:51:05', '2018-01-29 22:51:05', '738c934f-35ef-49bc-ae52-94c3f615994e'),
(19, 1, 'Grid Layout', 'gridLayout', 'global', '', 0, 'Matrix', '{\"maxBlocks\":null}', '2018-01-30 12:48:04', '2018-02-01 14:49:27', '90f1e986-47f9-4a03-a8a4-c21c599dda58'),
(20, NULL, 'GridLink', 'gridLink', 'matrixBlockType:3', '', 0, 'Entries', '{\"sources\":\"*\",\"limit\":\"1\",\"selectionLabel\":\"\"}', '2018-01-30 12:48:05', '2018-02-01 14:49:28', 'ab10b627-e0a3-4d4c-bbee-576b99ff3aa0'),
(21, NULL, 'Grid Image', 'gridImage', 'matrixBlockType:3', '', 0, 'Assets', '{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}', '2018-01-30 12:48:05', '2018-02-01 14:49:28', 'e4b6eb64-1354-469d-9c35-10aa46c45b19'),
(24, NULL, 'Grid Title', 'gridTitle', 'matrixBlockType:4', '', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"20\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2018-02-01 11:37:25', '2018-02-01 14:49:28', '990b746e-b758-4172-939d-b9a7caea9aad'),
(25, NULL, 'Grid paragraf', 'gridParagraf', 'matrixBlockType:4', '', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"250\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2018-02-01 11:37:25', '2018-02-01 14:49:28', '20704e9b-d775-4006-80e9-e3eae89c366f'),
(26, NULL, 'GridLink', 'gridlink', 'matrixBlockType:4', '', 0, 'Entries', '{\"sources\":\"*\",\"limit\":\"1\",\"selectionLabel\":\"\"}', '2018-02-01 11:41:39', '2018-02-01 14:49:28', '5c620089-08b0-4776-913c-27cde2c0f162'),
(27, NULL, 'Size image', 'sizeImage', 'matrixBlockType:3', 'You can choose image size', 0, 'RadioButtons', '{\"options\":[{\"label\":\"full\",\"value\":\"full\",\"default\":\"\"},{\"label\":\"large\",\"value\":\"large\",\"default\":\"\"},{\"label\":\"medium\",\"value\":\"medium\",\"default\":\"1\"},{\"label\":\"small\",\"value\":\"small\",\"default\":\"\"}]}', '2018-02-01 11:44:10', '2018-02-01 14:49:28', '2ba9a101-a710-4953-b783-3c7a7128c9d4'),
(28, 1, 'radio buttons', 'radioButtons', 'global', '', 0, 'RadioButtons', '{\"options\":[{\"label\":\"full\",\"value\":\"full\",\"default\":\"\"},{\"label\":\"large\",\"value\":\"large\",\"default\":\"\"},{\"label\":\"medium\",\"value\":\"medium\",\"default\":\"1\"},{\"label\":\"small\",\"value\":\"small\",\"default\":\"\"}]}', '2018-02-01 14:36:31', '2018-02-01 14:36:31', '186b0d64-dd4e-4328-b71e-efad360fdc35'),
(29, NULL, 'Grid Image', 'gridImage', 'matrixBlockType:4', '', 0, 'Assets', '{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}', '2018-02-01 14:49:28', '2018-02-01 14:49:28', 'e10b4ef9-9905-499c-9db2-1781cc948d44');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_globalsets`
--

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_globalsets`
--

INSERT INTO `craft_globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 'Header', 'header', 8, '2018-01-29 17:28:25', '2018-01-29 17:41:33', 'a3ec522a-83f9-4b70-b027-a7f81d00643d');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_info`
--

CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `edition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '2.6.3003', '2.6.13', 0, 'Artem Konovalov dev', 'http://localhost', 'UTC', 1, 0, '2018-01-29 17:20:58', '2018-01-29 17:20:58', '009c1790-0dbd-4a92-b196-2b79de3ccd69');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_locales`
--

CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_locales`
--

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
('en', 1, '2018-01-29 17:21:01', '2018-01-29 17:21:01', 'e7fc8b4d-5969-4408-ab72-9016e451322e');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_matrixblocks`
--

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_matrixblocks`
--

INSERT INTO `craft_matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `ownerLocale`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 4, 4, 1, 1, NULL, '2018-01-29 17:42:49', '2018-01-30 11:39:54', '86019e51-573c-48c0-aa81-b3fb8c820c5b'),
(11, 4, 4, 1, 2, NULL, '2018-01-30 11:36:55', '2018-01-30 11:39:54', '90cf03db-89dd-41e7-95c0-c38ccbfdfb36'),
(18, 8, 19, 3, 1, NULL, '2018-02-01 12:14:42', '2018-02-01 15:07:19', '57088d6e-9910-403b-a00c-35a61ee3fa08'),
(20, 8, 19, 3, 2, NULL, '2018-02-01 12:33:28', '2018-02-01 15:07:19', '934b1f5a-edce-4dbb-b6ce-0f06bd35b300'),
(21, 8, 19, 3, 3, NULL, '2018-02-01 12:40:59', '2018-02-01 15:07:19', '242be158-6b01-4724-8ba2-9ce306354a5a'),
(22, 8, 19, 3, 4, NULL, '2018-02-01 12:40:59', '2018-02-01 15:07:19', '79b78a85-6235-4b14-9f47-1db941df2cf2'),
(24, 8, 19, 4, 5, NULL, '2018-02-01 14:52:31', '2018-02-01 15:07:19', 'a54bec70-7d15-4db9-85bd-9fc5a869fdc6'),
(27, 8, 19, 3, 7, NULL, '2018-02-01 15:01:29', '2018-02-01 15:07:19', '013bb18b-c5df-4b4f-978b-0bbb27e42da6'),
(28, 8, 19, 4, 6, NULL, '2018-02-01 15:01:29', '2018-02-01 15:07:19', '65d0331b-003e-4b1a-9f02-8429fcb0ad8a');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_matrixblocktypes`
--

CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_matrixblocktypes`
--

INSERT INTO `craft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 4, 11, 'EntryLink', 'entryLink', 1, '2018-01-29 17:41:20', '2018-01-29 17:47:00', '4e87ad27-24be-443e-b4d1-e0517ac1707d'),
(2, 4, 12, 'Outer Link', 'outerLink', 2, '2018-01-29 17:44:34', '2018-01-29 17:47:01', 'b5a21773-c47b-4ebb-8b93-a2a714bc957b'),
(3, 19, 63, 'ItemPhoto', 'itemPhoto', 1, '2018-01-30 12:48:05', '2018-02-01 14:49:28', 'f90cd9a5-ecb1-42b1-bee3-2d4f5cfc05d8'),
(4, 19, 64, 'itemText', 'itemText', 2, '2018-02-01 11:37:25', '2018-02-01 14:49:28', '705b302b-70e1-4abd-b728-c5d19157dce0');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_matrixcontent_gridlayout`
--

CREATE TABLE `craft_matrixcontent_gridlayout` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_itemText_gridTitle` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_itemText_gridParagraf` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_itemPhoto_sizeImage` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'medium',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_matrixcontent_gridlayout`
--

INSERT INTO `craft_matrixcontent_gridlayout` (`id`, `elementId`, `locale`, `field_itemText_gridTitle`, `field_itemText_gridParagraf`, `field_itemPhoto_sizeImage`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 18, 'en', NULL, NULL, 'large', '2018-02-01 12:14:42', '2018-02-01 15:07:19', '76cc0d65-4f0e-4e36-b85a-70a0d94d9097'),
(5, 20, 'en', NULL, NULL, 'medium', '2018-02-01 12:33:28', '2018-02-01 15:07:19', '710f0d3c-fc73-4af0-a2d1-b0fada062d6b'),
(6, 21, 'en', NULL, NULL, 'large', '2018-02-01 12:40:59', '2018-02-01 15:07:19', 'e25bd02f-2688-4352-9891-77c7a3f545dd'),
(7, 22, 'en', NULL, NULL, 'medium', '2018-02-01 12:40:59', '2018-02-01 15:07:19', 'a8d4c3c6-442f-415b-b4a7-cee1ef41ac9b'),
(8, 24, 'en', 'Bicycle', 'Ваш велосипед ещё никогда не был таким красивым и привлекательным! Сайт лучшего магазина велосипедов.', NULL, '2018-02-01 14:52:31', '2018-02-01 15:07:19', 'a61bb7c4-2548-4762-a09e-ca7af8f635fe'),
(9, 27, 'en', NULL, NULL, 'medium', '2018-02-01 15:01:29', '2018-02-01 15:07:19', '6d3975ec-8f20-49be-97f8-d62b1ba1f6c1'),
(10, 28, 'en', 'другой сайт', 'всё очень круто по-папкински', NULL, '2018-02-01 15:01:29', '2018-02-01 15:07:19', '5851de2d-c346-4d51-8725-bf725c277501');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_matrixcontent_menu`
--

CREATE TABLE `craft_matrixcontent_menu` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_entryLink_linkTitle` text COLLATE utf8_unicode_ci,
  `field_entryLink_openOnNewTab` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_outerLink_outerUrl` text COLLATE utf8_unicode_ci,
  `field_outerLink_linkTitle` text COLLATE utf8_unicode_ci,
  `field_outerLink_openOnNewTab` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_matrixcontent_menu`
--

INSERT INTO `craft_matrixcontent_menu` (`id`, `elementId`, `locale`, `field_entryLink_linkTitle`, `field_entryLink_openOnNewTab`, `field_outerLink_outerUrl`, `field_outerLink_linkTitle`, `field_outerLink_openOnNewTab`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 5, 'en', 'Главная', 0, NULL, NULL, 0, '2018-01-29 17:42:48', '2018-01-30 11:39:54', '4f40aea9-e0e7-4ad9-8452-c7e6993fb897'),
(2, 11, 'en', 'Портфолио', 0, NULL, NULL, 0, '2018-01-30 11:36:55', '2018-01-30 11:39:54', '10d400d4-c471-4e56-90ce-e06a194477c4');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_migrations`
--

CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'm000000_000000_base', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'e5cf877d-5b00-40e3-ab01-4b7c57a64b04'),
(2, NULL, 'm140730_000001_add_filename_and_format_to_transformindex', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '19351ea1-52a6-498e-b79a-52d1a483ee3e'),
(3, NULL, 'm140815_000001_add_format_to_transforms', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '72a8f055-54cc-44a5-8293-620f25ab9775'),
(4, NULL, 'm140822_000001_allow_more_than_128_items_per_field', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '627474c9-53a1-4bd4-8935-461e1c7eec7e'),
(5, NULL, 'm140829_000001_single_title_formats', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2616981b-f17d-4a5c-bec5-91a5b5ea2ca8'),
(6, NULL, 'm140831_000001_extended_cache_keys', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '5ac43940-3d73-4cf7-abc1-0685d16a8444'),
(7, NULL, 'm140922_000001_delete_orphaned_matrix_blocks', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '9452e440-f776-49e0-b34e-c6cc9c9f4ea4'),
(8, NULL, 'm141008_000001_elements_index_tune', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'de833fd8-dc60-4d8d-901d-8e22963d5fac'),
(9, NULL, 'm141009_000001_assets_source_handle', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '97373923-4942-4b90-9058-0265ec1374c9'),
(10, NULL, 'm141024_000001_field_layout_tabs', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'c4644048-2fd8-424d-abd2-91b5dfc61d52'),
(11, NULL, 'm141030_000000_plugin_schema_versions', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '68b00f81-2cb2-4427-bc72-ea919bea237c'),
(12, NULL, 'm141030_000001_drop_structure_move_permission', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'fa902e53-a1f5-453a-9c9d-37c55d78cbb5'),
(13, NULL, 'm141103_000001_tag_titles', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'deb62b84-b527-4719-9f5a-251ef309895a'),
(14, NULL, 'm141109_000001_user_status_shuffle', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'a231fa76-83c4-40cd-954d-a13ef1a5d101'),
(15, NULL, 'm141126_000001_user_week_start_day', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '9e54661e-60ce-46d8-952c-4dc8210cf642'),
(16, NULL, 'm150210_000001_adjust_user_photo_size', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'b3d3892c-4514-402f-899e-a10a61b627b6'),
(17, NULL, 'm150724_000001_adjust_quality_settings', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'b483d05f-398b-4291-a60b-27b76a4a646b'),
(18, NULL, 'm150827_000000_element_index_settings', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'f30a58d2-9eb7-4e29-aaf7-7ccb7bdcdf0c'),
(19, NULL, 'm150918_000001_add_colspan_to_widgets', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'ea1c9a1b-52ac-4e77-89f9-6ced2abbb1b1'),
(20, NULL, 'm151007_000000_clear_asset_caches', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '9e9ae8bd-0a0f-4ee9-86c9-4b86d3da3780'),
(21, NULL, 'm151109_000000_text_url_formats', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'db0103b2-aef1-4b2f-9171-d74b0d090545'),
(22, NULL, 'm151110_000000_move_logo', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '9dea001e-8978-4dd7-aaf1-663fd0c795a8'),
(23, NULL, 'm151117_000000_adjust_image_widthheight', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'fe86300a-9948-489c-bccc-4f43c3d0195f'),
(24, NULL, 'm151127_000000_clear_license_key_status', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'f784e2ba-7c52-4c67-96e5-c4ad5b10833a'),
(25, NULL, 'm151127_000000_plugin_license_keys', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '0cab75a7-fc71-406e-9e67-14b00a428b40'),
(26, NULL, 'm151130_000000_update_pt_widget_feeds', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'a662896a-cff1-4f45-9e28-8499c2f66715'),
(27, NULL, 'm160114_000000_asset_sources_public_url_default_true', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '4bd030b1-2dc3-441d-9c68-8449d49b3cda'),
(28, NULL, 'm160223_000000_sortorder_to_smallint', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2a043802-8abe-4c0e-8f4f-81a4b66b2093'),
(29, NULL, 'm160229_000000_set_default_entry_statuses', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'd6a04474-d63f-4be5-91df-87f74dbc10a4'),
(30, NULL, 'm160304_000000_client_permissions', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'f3b3df11-e65b-4995-aa73-86909f510f8f'),
(31, NULL, 'm160322_000000_asset_filesize', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'f3669c97-51a7-4228-a844-3abc528a426f'),
(32, NULL, 'm160503_000000_orphaned_fieldlayouts', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '808d591f-82fa-4e78-aa42-87a784ac5b4f'),
(33, NULL, 'm160510_000000_tasksettings', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '08dff6fc-eb87-46fb-b392-b5bd035122fc'),
(34, NULL, 'm160829_000000_pending_user_content_cleanup', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'c28e2691-a8cf-4bf6-afc2-2d139d147730'),
(35, NULL, 'm160830_000000_asset_index_uri_increase', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '88593280-e58b-44d9-8048-aafd2aac6438'),
(36, NULL, 'm160919_000000_usergroup_handle_title_unique', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '1414410e-6bf4-4f7d-aa97-e6040f93026e'),
(37, NULL, 'm161108_000000_new_version_format', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'ef4e5679-9477-4faa-9f0e-0be9e5320e7c'),
(38, NULL, 'm161109_000000_index_shuffle', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'dfb9bafc-26ad-4ad3-b376-41f32a0e4b83'),
(39, NULL, 'm170612_000000_route_index_shuffle', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '3ecbb731-2037-487a-91a6-616eddfeaf09'),
(40, NULL, 'm171107_000000_assign_group_permissions', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '017dc487-1b4c-4a2a-8588-fa437400ef16'),
(41, NULL, 'm171117_000001_templatecache_index_tune', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2e9b3432-0c2d-45f7-95a3-491e865b7d89'),
(42, NULL, 'm171204_000001_templatecache_index_tune_deux', '2018-01-29 17:21:00', '2018-01-29 17:21:00', '2018-01-29 17:21:00', 'd6ec7e1a-0e0a-4fa9-9522-3f134e55ab24'),
(43, 2, 'm160428_202308_Neo_UpdateBlockLevels', '2018-01-29 17:30:03', '2018-01-29 17:30:03', '2018-01-29 17:30:03', '59a7b3b3-b3ec-4b56-946d-1c122662ff45'),
(44, 2, 'm160515_005002_Neo_UpdateBlockStructure', '2018-01-29 17:30:03', '2018-01-29 17:30:03', '2018-01-29 17:30:03', '6bd1bdd4-5bf9-41d0-8cee-a5f5375b24d3'),
(45, 2, 'm160605_191540_Neo_UpdateBlockStructureLocales', '2018-01-29 17:30:03', '2018-01-29 17:30:03', '2018-01-29 17:30:03', '9f68b98f-5d30-4953-bfa8-1edd3de7579a'),
(46, 2, 'm161029_230849_Neo_AddMaxChildBlocksSetting', '2018-01-29 17:30:03', '2018-01-29 17:30:03', '2018-01-29 17:30:03', '8c3d497e-7e97-467e-b3ed-505970b002a5'),
(47, 4, 'm150901_144609_superTable_fixForContentTables', '2018-01-29 17:30:08', '2018-01-29 17:30:08', '2018-01-29 17:30:08', '6e4d82dc-e2a8-43a6-b4ea-f2f3a0118d66');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_neoblocks`
--

CREATE TABLE `craft_neoblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `collapsed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_neoblockstructures`
--

CREATE TABLE `craft_neoblockstructures` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_neoblocktypes`
--

CREATE TABLE `craft_neoblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maxBlocks` int(10) DEFAULT '0',
  `maxChildBlocks` int(10) DEFAULT '0',
  `childBlocks` text COLLATE utf8_unicode_ci,
  `topLevel` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_neogroups`
--

CREATE TABLE `craft_neogroups` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_plugins`
--

CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_plugins`
--

INSERT INTO `craft_plugins` (`id`, `class`, `version`, `schemaVersion`, `licenseKey`, `licenseKeyStatus`, `enabled`, `settings`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'CheatSheet', '1.2.1', NULL, NULL, 'unknown', 1, NULL, '2018-01-29 17:30:02', '2018-01-29 17:30:02', '2018-01-31 20:43:27', '13893226-a649-4ab1-a8be-fa5ace75d525'),
(2, 'Neo', '1.5.0', '1.5.0', NULL, 'unknown', 1, NULL, '2018-01-29 17:30:03', '2018-01-29 17:30:03', '2018-01-31 20:43:27', '102997c0-1118-45d0-8e11-92d665c400f8'),
(3, 'QuickField', '0.3.4', '1.0.0', NULL, 'unknown', 1, NULL, '2018-01-29 17:30:08', '2018-01-29 17:30:08', '2018-01-31 20:43:27', 'e3783149-8f63-4728-aecb-4a24cacf1a5b'),
(4, 'SuperTable', '1.0.6', '1.0.0', NULL, 'unknown', 1, NULL, '2018-01-29 17:30:08', '2018-01-29 17:30:08', '2018-01-31 20:43:27', 'fbbb21b2-de65-4181-8511-b254f0f6cb3b');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_rackspaceaccess`
--

CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_relations`
--

CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(10, 11, 2, NULL, 6, 1, '2018-01-29 22:51:58', '2018-01-29 22:51:58', '1367fad3-4905-4023-9b4f-f467abf2867a'),
(15, 5, 5, NULL, 2, 1, '2018-01-30 11:39:54', '2018-01-30 11:39:54', '7d3595cc-701f-4748-88f7-5a465220d3f1'),
(16, 5, 11, NULL, 8, 1, '2018-01-30 11:39:54', '2018-01-30 11:39:54', '7f3268c4-fe20-47da-b9a9-36286aeb9d4b'),
(118, 11, 8, NULL, 10, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', 'c709f522-d4d7-4930-a6fa-67a87cef6fa4'),
(119, 20, 18, NULL, 2, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', '69b83cfb-2736-442b-a628-131e20b3ca2c'),
(120, 21, 18, NULL, 16, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', 'dac970cc-b96c-4ca7-96f3-51143d95d661'),
(121, 20, 20, NULL, 3, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', 'bbd485fe-20bc-4b4c-8a11-23a75c2425bc'),
(122, 21, 20, NULL, 17, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', '6aa9a0d3-1dd9-44ba-9298-542378984506'),
(123, 20, 21, NULL, 8, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', '159518b8-a6f5-44c8-a452-42a81295b713'),
(124, 21, 21, NULL, 16, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', '5689e284-31c9-486d-a931-23089068fb7f'),
(125, 20, 22, NULL, 8, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', '04904651-e85b-4107-9632-397cbc6c83b4'),
(126, 21, 22, NULL, 17, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', '3a8ca999-3e57-48a6-ab6d-c201abbd177d'),
(127, 26, 24, NULL, 3, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', '3c96cbe7-37d2-491d-9e74-e45e4cc53255'),
(128, 29, 24, NULL, 23, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', '4ce111dc-6ed6-4641-86c7-cc1c36c05037'),
(129, 26, 28, NULL, 3, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', '1b0314cd-5fa0-4e59-92e6-d6310e5846d5'),
(130, 29, 28, NULL, 25, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', 'd589c9a6-3b83-4245-827f-ecf3dbe8715f'),
(131, 20, 27, NULL, 2, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', '69a09b3b-6b51-44b0-b478-d9b74ef90d2d'),
(132, 21, 27, NULL, 26, 1, '2018-02-01 15:07:19', '2018-02-01 15:07:19', 'd903c0f7-4eca-4565-b9d3-714d878f1ac6');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_routes`
--

CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_searchindex`
--

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(1, 'username', 0, 'en', ' artem '),
(1, 'firstname', 0, 'en', ''),
(1, 'lastname', 0, 'en', ''),
(1, 'fullname', 0, 'en', ''),
(1, 'email', 0, 'en', ' lamber95 icloud com '),
(1, 'slug', 0, 'en', ''),
(2, 'slug', 0, 'en', ' homepage '),
(2, 'title', 0, 'en', ' homepage '),
(2, 'field', 1, 'en', ' it s true this site doesn t have a whole lot of content yet but don t worry our web developers have just installed the cms and they re setting things up for the content editors this very moment soon localhost will be an oasis of fresh perspectives sharp analyses and astute opinions that will keep you coming back again and again '),
(7, 'filename', 0, 'en', ' 2016 02 19 12 33 10 jpg '),
(3, 'field', 1, 'en', ' craft is the cms that s powering localhost it s beautiful powerful flexible and easy to use and it s made by pixel tonic we can t wait to dive in and see what it s capable of this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page craft a nice alternative to word if you re making a website '),
(3, 'field', 2, 'en', ''),
(3, 'slug', 0, 'en', ' we just installed craft '),
(3, 'title', 0, 'en', ' we just installed craft '),
(4, 'slug', 0, 'en', ''),
(4, 'field', 3, 'en', ' artem konovalov development '),
(4, 'field', 4, 'en', ' homepage главная 0 portfolio портфолио 0 '),
(5, 'field', 5, 'en', ' homepage '),
(5, 'field', 6, 'en', ' главная '),
(5, 'field', 7, 'en', ' 0 '),
(5, 'slug', 0, 'en', ''),
(6, 'filename', 0, 'en', ' bg colos jpg '),
(6, 'extension', 0, 'en', ' jpg '),
(6, 'kind', 0, 'en', ' image '),
(6, 'slug', 0, 'en', ' bg colos '),
(6, 'title', 0, 'en', ' bg colos '),
(2, 'field', 15, 'en', ' i want to feel what you wanted '),
(2, 'field', 11, 'en', ' bg colos '),
(7, 'extension', 0, 'en', ' jpg '),
(7, 'kind', 0, 'en', ' image '),
(7, 'slug', 0, 'en', ' 2016 02 19 12 33 10 '),
(7, 'title', 0, 'en', ' 2016 02 19 12 33 10 '),
(2, 'field', 16, 'en', ''),
(8, 'field', 18, 'en', ' посмотрите наши проекты и убедитесь в этом сами '),
(8, 'field', 11, 'en', ' bicycle dark '),
(8, 'title', 0, 'en', ' portfolio '),
(9, 'filename', 0, 'en', ' bicycle jpg '),
(9, 'extension', 0, 'en', ' jpg '),
(9, 'kind', 0, 'en', ' image '),
(9, 'slug', 0, 'en', ' bicycle '),
(9, 'title', 0, 'en', ' bicycle '),
(8, 'slug', 0, 'en', ' portfolio '),
(2, 'field', 18, 'en', ' trent from punchy pint when lets get some snag get a dog up ya moolah piece of piss trent from punchy slaps shazza got us some chuck a sickie heaps he hasn t got a kindie as stands out like bush telly with as stands out like porky she ll be right pretty spiffy trent from punchy cab sav '),
(2, 'field', 17, 'en', ' i want to feel what you wanted '),
(8, 'field', 17, 'en', ' мы умеем управлять разработкой '),
(10, 'filename', 0, 'en', ' bicycle dark jpg '),
(10, 'extension', 0, 'en', ' jpg '),
(10, 'kind', 0, 'en', ' image '),
(10, 'slug', 0, 'en', ' bicycle dark '),
(10, 'title', 0, 'en', ' bicycle dark '),
(11, 'field', 5, 'en', ' portfolio '),
(11, 'field', 6, 'en', ' портфолио '),
(11, 'field', 7, 'en', ' 0 '),
(11, 'slug', 0, 'en', ''),
(12, 'filename', 0, 'en', ' work 6 jpg '),
(12, 'extension', 0, 'en', ' jpg '),
(12, 'kind', 0, 'en', ' image '),
(12, 'slug', 0, 'en', ' work 6 '),
(12, 'title', 0, 'en', ' work 6 '),
(13, 'filename', 0, 'en', ' work 5 jpg '),
(13, 'extension', 0, 'en', ' jpg '),
(13, 'kind', 0, 'en', ' image '),
(13, 'slug', 0, 'en', ' work 5 '),
(13, 'title', 0, 'en', ' work 5 '),
(8, 'field', 19, 'en', ' img 01 homepage large img 02 we just installed craft medium img 01 portfolio large img 02 portfolio medium saddle ваш велосипед ещё никогда не был таким красивым и привлекательным сайт лучшего магазина велосипедов bicycle we just installed craft pokryshka всё очень круто по папкински другой сайт we just installed craft ramma homepage medium '),
(18, 'slug', 0, 'en', ''),
(18, 'field', 27, 'en', ' large '),
(18, 'field', 20, 'en', ' homepage '),
(16, 'filename', 0, 'en', ' img 01 jpg '),
(16, 'extension', 0, 'en', ' jpg '),
(16, 'kind', 0, 'en', ' image '),
(16, 'slug', 0, 'en', ' img 01 '),
(16, 'title', 0, 'en', ' img 01 '),
(17, 'filename', 0, 'en', ' img 02 jpg '),
(17, 'extension', 0, 'en', ' jpg '),
(17, 'kind', 0, 'en', ' image '),
(17, 'slug', 0, 'en', ' img 02 '),
(17, 'title', 0, 'en', ' img 02 '),
(23, 'filename', 0, 'en', ' saddle png '),
(18, 'field', 21, 'en', ' img 01 '),
(20, 'field', 20, 'en', ' we just installed craft '),
(20, 'field', 21, 'en', ' img 02 '),
(20, 'field', 27, 'en', ' medium '),
(20, 'slug', 0, 'en', ''),
(21, 'field', 20, 'en', ' portfolio '),
(21, 'field', 21, 'en', ' img 01 '),
(21, 'field', 27, 'en', ' large '),
(21, 'slug', 0, 'en', ''),
(22, 'field', 20, 'en', ' portfolio '),
(22, 'field', 21, 'en', ' img 02 '),
(22, 'field', 27, 'en', ' medium '),
(22, 'slug', 0, 'en', ''),
(23, 'extension', 0, 'en', ' png '),
(23, 'kind', 0, 'en', ' image '),
(23, 'slug', 0, 'en', ' small image '),
(23, 'title', 0, 'en', ' saddle '),
(24, 'field', 26, 'en', ' we just installed craft '),
(24, 'field', 24, 'en', ' bicycle '),
(24, 'field', 25, 'en', ' ваш велосипед ещё никогда не был таким красивым и привлекательным сайт лучшего магазина велосипедов '),
(24, 'field', 29, 'en', ' saddle '),
(24, 'slug', 0, 'en', ''),
(25, 'filename', 0, 'en', ' pokryshka jpg '),
(25, 'extension', 0, 'en', ' jpg '),
(25, 'kind', 0, 'en', ' image '),
(25, 'slug', 0, 'en', ' pokryshka '),
(25, 'title', 0, 'en', ' pokryshka '),
(26, 'filename', 0, 'en', ' ramma jpg '),
(26, 'extension', 0, 'en', ' jpg '),
(26, 'kind', 0, 'en', ' image '),
(26, 'slug', 0, 'en', ' ramma '),
(26, 'title', 0, 'en', ' ramma '),
(27, 'field', 20, 'en', ' homepage '),
(27, 'field', 21, 'en', ' ramma '),
(27, 'field', 27, 'en', ' medium '),
(27, 'slug', 0, 'en', ''),
(28, 'field', 26, 'en', ' we just installed craft '),
(28, 'field', 24, 'en', ' другой сайт '),
(28, 'field', 25, 'en', ' всё очень круто по папкински '),
(28, 'field', 29, 'en', ' pokryshka '),
(28, 'slug', 0, 'en', '');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_sections`
--

CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, '_pages/home', 1, '2018-01-29 17:21:08', '2018-01-29 21:55:59', '702199d7-7bab-46c9-8789-9479373a5e42'),
(2, NULL, 'News', 'news', 'channel', 1, 'news/_entry', 1, '2018-01-29 17:21:08', '2018-01-29 17:21:08', '64e33e36-24c0-4adb-9efc-bc1823e3936f'),
(3, NULL, 'Portfolio', 'portfolio', 'single', 1, '_pages/portfolio', 1, '2018-01-30 10:10:06', '2018-01-30 10:21:39', '7611d822-99df-4cd3-a1bb-d3f83f19d7c3');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_sections_i18n`
--

CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_sections_i18n`
--

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en', 1, '__home__', NULL, '2018-01-29 17:21:08', '2018-01-29 17:21:08', '83e61f19-26f6-417d-bca8-41737a5f4beb'),
(2, 2, 'en', 1, 'news/{postDate.year}/{slug}', NULL, '2018-01-29 17:21:08', '2018-01-29 17:21:08', '9c5eff8a-ad96-4575-b3f5-f965b860cad2'),
(3, 3, 'en', 1, 'portfolio', NULL, '2018-01-30 10:10:06', '2018-01-30 10:21:07', '73612e15-ac8a-436e-a0e2-95fc9d452d1d');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_sessions`
--

CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'c660947d9ed8f6f43f82dcca1b9614a05ddcb83dczozMjoiQnU4djVmQWswWk16UGNtRmhXbVBHOW1QdGhjS3lkWEYiOw==', '2018-01-29 17:21:07', '2018-01-29 17:21:07', '681fc3d5-6278-4ca5-9655-e10b73b93a97'),
(2, 1, '0967287ab8f6408b259528c3f66ad76a2996bf64czozMjoiWHdVWnl3cnVVa0xUc2VtRFNnbHBRaGtaTjQ2N2JqY08iOw==', '2018-01-30 10:06:25', '2018-01-30 10:06:25', '3fb18429-586c-45d7-a6fa-73234c52d7aa'),
(3, 1, 'd729aa6538ae270c2e2fa4f9c8eedd5d35916a7fczozMjoiR0ljS3FxNTZJcEFTMmRpTUFTYktKdEN0ZjZNQUp6c1MiOw==', '2018-01-31 20:43:12', '2018-01-31 20:43:12', '564e997b-9efb-4902-a551-70b699cc9bbd'),
(4, 1, 'f9c1fa325986537925f6380c0254d11d8c96b108czozMjoiUHJsS3djbEpBZE9VTkJpSVVkeUI4T0hNUXM2TVpHVHUiOw==', '2018-02-01 10:06:42', '2018-02-01 10:06:42', 'c2d4290e-4f54-4988-9179-193dbb638f1b'),
(5, 1, 'd49d92518f38469b514ccddf8cf06ae81d716bd7czozMjoiSkNmb0FLelZsUGtjQU5ZUHJ6T2t4VFhueFExaXlFSFUiOw==', '2018-02-01 10:06:46', '2018-02-01 10:06:46', 'b9f1d808-6440-4978-a741-a145a3ec2246');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_shunnedmessages`
--

CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_structureelements`
--

CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_structureelements`
--

INSERT INTO `craft_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(13, 4, NULL, 13, 1, 2, 0, '2018-01-29 21:43:47', '2018-01-29 21:43:47', '942b5049-e40f-47bc-a5ad-5f6c516899e6');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_structures`
--

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_structures`
--

INSERT INTO `craft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, NULL, '2018-01-29 21:43:47', '2018-01-29 21:43:47', '0765e238-dea0-4e54-ac8a-de5ce08ffefe');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_supertableblocks`
--

CREATE TABLE `craft_supertableblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_supertableblocktypes`
--

CREATE TABLE `craft_supertableblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_supertableblocktypes`
--

INSERT INTO `craft_supertableblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 11, 16, '2018-01-29 20:37:42', '2018-01-29 20:37:42', '79bea28b-c86d-458d-b700-3ee8bf472960');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_supertablecontent_welcomescreen`
--

CREATE TABLE `craft_supertablecontent_welcomescreen` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_pageTitle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_pageCaption` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_systemsettings`
--

CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_systemsettings`
--

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'email', '{\"protocol\":\"php\",\"emailAddress\":\"lamber95@icloud.com\",\"senderName\":\"Artem Konovalov dev\"}', '2018-01-29 17:21:07', '2018-01-29 17:21:07', 'ba6f0ee5-0475-43ae-bf7f-d8ad190a98d9');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_taggroups`
--

CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_taggroups`
--

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', 'default', 1, '2018-01-29 17:21:07', '2018-01-29 17:21:07', '32deb305-f52e-4660-90d0-b941d20dda6f');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_tags`
--

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_tasks`
--

CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `currentStep` int(11) UNSIGNED DEFAULT NULL,
  `totalSteps` int(11) UNSIGNED DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_templatecachecriteria`
--

CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_templatecacheelements`
--

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_templatecaches`
--

CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_tokens`
--

CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_usergroups`
--

CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_usergroups_users`
--

CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_userpermissions`
--

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_userpermissions_usergroups`
--

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_userpermissions_users`
--

CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `craft_users`
--

CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `client` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `suspended` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pending` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Artem', NULL, NULL, NULL, 'lamber95@icloud.com', '$2y$13$ODM0pRC5qm8W9VSvCP2fF.CDYXbZ1yL4tr12JP.Y6bHsqDbgD1wO.', NULL, 0, 1, 0, 0, 0, 0, 0, '2018-02-01 10:06:46', '::1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-01-29 17:21:03', '2018-01-29 17:21:04', '2018-02-01 10:06:46', '2fe95b88-e61a-4072-a8bc-a558fb587a73');

-- --------------------------------------------------------

--
-- Структура таблицы `craft_widgets`
--

CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(4) UNSIGNED DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'RecentEntries', 1, NULL, NULL, 1, '2018-01-29 17:21:20', '2018-01-29 17:21:20', 'a14d770c-f0a0-4706-a1e8-5e7fae16b4a9'),
(2, 1, 'GetHelp', 2, NULL, NULL, 1, '2018-01-29 17:21:20', '2018-01-29 17:21:20', 'c358413d-54a1-4df5-abb3-524eb20dcda8'),
(3, 1, 'Updates', 3, NULL, NULL, 1, '2018-01-29 17:21:20', '2018-01-29 17:21:20', '2a11ed12-9bfc-407b-99c9-436665680148'),
(4, 1, 'Feed', 4, NULL, '{\"url\":\"https:\\/\\/craftcms.com\\/news.rss\",\"title\":\"Craft News\"}', 1, '2018-01-29 17:21:20', '2018-01-29 17:21:20', '434a27d3-7cc3-4c50-81b4-bd45b04645fb');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  ADD KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  ADD KEY `craft_assetfiles_folderId_fk` (`folderId`);

--
-- Индексы таблицы `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  ADD KEY `craft_assetfolders_parentId_fk` (`parentId`),
  ADD KEY `craft_assetfolders_sourceId_fk` (`sourceId`);

--
-- Индексы таблицы `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  ADD KEY `craft_assetindexdata_sourceId_fk` (`sourceId`);

--
-- Индексы таблицы `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  ADD KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`);

--
-- Индексы таблицы `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`);

--
-- Индексы таблицы `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_categories_groupId_fk` (`groupId`);

--
-- Индексы таблицы `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_categorygroups_structureId_fk` (`structureId`),
  ADD KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  ADD KEY `craft_categorygroups_i18n_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_content`
--
ALTER TABLE `craft_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_content_title_idx` (`title`),
  ADD KEY `craft_content_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Индексы таблицы `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`);

--
-- Индексы таблицы `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_elements_type_idx` (`type`),
  ADD KEY `craft_elements_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`);

--
-- Индексы таблицы `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  ADD KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  ADD KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_i18n_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  ADD KEY `craft_emailmessages_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entries_sectionId_idx` (`sectionId`),
  ADD KEY `craft_entries_typeId_idx` (`typeId`),
  ADD KEY `craft_entries_postDate_idx` (`postDate`),
  ADD KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `craft_entries_authorId_fk` (`authorId`);

--
-- Индексы таблицы `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entrydrafts_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  ADD UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  ADD KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entryversions_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`);

--
-- Индексы таблицы `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  ADD KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`);

--
-- Индексы таблицы `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouts_type_idx` (`type`);

--
-- Индексы таблицы `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`);

--
-- Индексы таблицы `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `craft_fields_context_idx` (`context`),
  ADD KEY `craft_fields_groupId_fk` (`groupId`);

--
-- Индексы таблицы `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  ADD KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_info`
--
ALTER TABLE `craft_info`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `craft_locales`
--
ALTER TABLE `craft_locales`
  ADD PRIMARY KEY (`locale`),
  ADD KEY `craft_locales_sortOrder_idx` (`sortOrder`);

--
-- Индексы таблицы `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`);

--
-- Индексы таблицы `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_matrixcontent_gridlayout`
--
ALTER TABLE `craft_matrixcontent_gridlayout`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixcontent_gridlayout_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_matrixcontent_gridlayout_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_matrixcontent_menu`
--
ALTER TABLE `craft_matrixcontent_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixcontent_menu_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_matrixcontent_menu_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  ADD KEY `craft_migrations_pluginId_fk` (`pluginId`);

--
-- Индексы таблицы `craft_neoblocks`
--
ALTER TABLE `craft_neoblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_neoblocks_ownerId_idx` (`ownerId`),
  ADD KEY `craft_neoblocks_fieldId_idx` (`fieldId`),
  ADD KEY `craft_neoblocks_typeId_idx` (`typeId`),
  ADD KEY `craft_neoblocks_collapsed_idx` (`collapsed`),
  ADD KEY `craft_neoblocks_ownerLocale_fk` (`ownerLocale`);

--
-- Индексы таблицы `craft_neoblockstructures`
--
ALTER TABLE `craft_neoblockstructures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_neoblockstructures_structureId_idx` (`structureId`),
  ADD KEY `craft_neoblockstructures_ownerId_idx` (`ownerId`),
  ADD KEY `craft_neoblockstructures_fieldId_idx` (`fieldId`),
  ADD KEY `craft_neoblockstructures_ownerLocale_fk` (`ownerLocale`);

--
-- Индексы таблицы `craft_neoblocktypes`
--
ALTER TABLE `craft_neoblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_neoblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `craft_neoblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `craft_neoblocktypes_fieldId_fk` (`fieldId`),
  ADD KEY `craft_neoblocktypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_neogroups`
--
ALTER TABLE `craft_neogroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_neogroups_fieldId_fk` (`fieldId`);

--
-- Индексы таблицы `craft_plugins`
--
ALTER TABLE `craft_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`);

--
-- Индексы таблицы `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  ADD KEY `craft_relations_sourceId_fk` (`sourceId`),
  ADD KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  ADD KEY `craft_relations_targetId_fk` (`targetId`);

--
-- Индексы таблицы `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_routes_locale_idx` (`locale`),
  ADD KEY `craft_routes_urlPattern_idx` (`urlPattern`);

--
-- Индексы таблицы `craft_searchindex`
--
ALTER TABLE `craft_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`);
ALTER TABLE `craft_searchindex` ADD FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`);

--
-- Индексы таблицы `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  ADD KEY `craft_sections_structureId_fk` (`structureId`);

--
-- Индексы таблицы `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  ADD KEY `craft_sections_i18n_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_sessions_uid_idx` (`uid`),
  ADD KEY `craft_sessions_token_idx` (`token`),
  ADD KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `craft_sessions_userId_fk` (`userId`);

--
-- Индексы таблицы `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Индексы таблицы `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `craft_structureelements_root_idx` (`root`),
  ADD KEY `craft_structureelements_lft_idx` (`lft`),
  ADD KEY `craft_structureelements_rgt_idx` (`rgt`),
  ADD KEY `craft_structureelements_level_idx` (`level`),
  ADD KEY `craft_structureelements_elementId_fk` (`elementId`);

--
-- Индексы таблицы `craft_structures`
--
ALTER TABLE `craft_structures`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `craft_supertableblocks`
--
ALTER TABLE `craft_supertableblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_supertableblocks_ownerId_idx` (`ownerId`),
  ADD KEY `craft_supertableblocks_fieldId_idx` (`fieldId`),
  ADD KEY `craft_supertableblocks_typeId_idx` (`typeId`),
  ADD KEY `craft_supertableblocks_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_supertableblocks_ownerLocale_fk` (`ownerLocale`);

--
-- Индексы таблицы `craft_supertableblocktypes`
--
ALTER TABLE `craft_supertableblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_supertableblocktypes_fieldId_fk` (`fieldId`),
  ADD KEY `craft_supertableblocktypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_supertablecontent_welcomescreen`
--
ALTER TABLE `craft_supertablecontent_welcomescreen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_supertablecontent_welcomescreen_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_supertablecontent_welcomescreen_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`);

--
-- Индексы таблицы `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tags_groupId_fk` (`groupId`);

--
-- Индексы таблицы `craft_tasks`
--
ALTER TABLE `craft_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tasks_root_idx` (`root`),
  ADD KEY `craft_tasks_lft_idx` (`lft`),
  ADD KEY `craft_tasks_rgt_idx` (`rgt`),
  ADD KEY `craft_tasks_level_idx` (`level`);

--
-- Индексы таблицы `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecachecriteria_type_idx` (`type`);

--
-- Индексы таблицы `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecacheelements_elementId_fk` (`elementId`);

--
-- Индексы таблицы `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecaches_cacheKey_locale_expiryDate_path_idx` (`cacheKey`,`locale`,`expiryDate`,`path`),
  ADD KEY `craft_templatecaches_cacheKey_locale_expiryDate_idx` (`cacheKey`,`locale`,`expiryDate`),
  ADD KEY `craft_templatecaches_locale_fk` (`locale`);

--
-- Индексы таблицы `craft_tokens`
--
ALTER TABLE `craft_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  ADD KEY `craft_tokens_expiryDate_idx` (`expiryDate`);

--
-- Индексы таблицы `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`);

--
-- Индексы таблицы `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `craft_usergroups_users_userId_fk` (`userId`);

--
-- Индексы таблицы `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`);

--
-- Индексы таблицы `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`);

--
-- Индексы таблицы `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `craft_userpermissions_users_userId_fk` (`userId`);

--
-- Индексы таблицы `craft_users`
--
ALTER TABLE `craft_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  ADD UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  ADD KEY `craft_users_verificationCode_idx` (`verificationCode`),
  ADD KEY `craft_users_uid_idx` (`uid`),
  ADD KEY `craft_users_preferredLocale_fk` (`preferredLocale`);

--
-- Индексы таблицы `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_widgets_userId_fk` (`userId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_content`
--
ALTER TABLE `craft_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_elements`
--
ALTER TABLE `craft_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT для таблицы `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT для таблицы `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT для таблицы `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT для таблицы `craft_fields`
--
ALTER TABLE `craft_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT для таблицы `craft_info`
--
ALTER TABLE `craft_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `craft_matrixcontent_gridlayout`
--
ALTER TABLE `craft_matrixcontent_gridlayout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `craft_matrixcontent_menu`
--
ALTER TABLE `craft_matrixcontent_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `craft_migrations`
--
ALTER TABLE `craft_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT для таблицы `craft_neoblockstructures`
--
ALTER TABLE `craft_neoblockstructures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_neoblocktypes`
--
ALTER TABLE `craft_neoblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_neogroups`
--
ALTER TABLE `craft_neogroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_plugins`
--
ALTER TABLE `craft_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_relations`
--
ALTER TABLE `craft_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT для таблицы `craft_routes`
--
ALTER TABLE `craft_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_sections`
--
ALTER TABLE `craft_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `craft_sessions`
--
ALTER TABLE `craft_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `craft_structures`
--
ALTER TABLE `craft_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `craft_supertableblocktypes`
--
ALTER TABLE `craft_supertableblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_supertablecontent_welcomescreen`
--
ALTER TABLE `craft_supertablecontent_welcomescreen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `craft_tasks`
--
ALTER TABLE `craft_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_tokens`
--
ALTER TABLE `craft_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `craft_widgets`
--
ALTER TABLE `craft_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_matrixcontent_gridlayout`
--
ALTER TABLE `craft_matrixcontent_gridlayout`
  ADD CONSTRAINT `craft_matrixcontent_gridlayout_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_gridlayout_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_matrixcontent_menu`
--
ALTER TABLE `craft_matrixcontent_menu`
  ADD CONSTRAINT `craft_matrixcontent_menu_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_menu_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_neoblocks`
--
ALTER TABLE `craft_neoblocks`
  ADD CONSTRAINT `craft_neoblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_neoblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_neoblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_neoblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_neoblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_neoblocktypes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_neoblockstructures`
--
ALTER TABLE `craft_neoblockstructures`
  ADD CONSTRAINT `craft_neoblockstructures_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_neoblockstructures_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_neoblockstructures_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_neoblockstructures_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_neoblocktypes`
--
ALTER TABLE `craft_neoblocktypes`
  ADD CONSTRAINT `craft_neoblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_neoblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_neogroups`
--
ALTER TABLE `craft_neogroups`
  ADD CONSTRAINT `craft_neogroups_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_supertableblocks`
--
ALTER TABLE `craft_supertableblocks`
  ADD CONSTRAINT `craft_supertableblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_supertableblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_supertableblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_supertableblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_supertableblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_supertableblocktypes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_supertableblocktypes`
--
ALTER TABLE `craft_supertableblocktypes`
  ADD CONSTRAINT `craft_supertableblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_supertableblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_supertablecontent_welcomescreen`
--
ALTER TABLE `craft_supertablecontent_welcomescreen`
  ADD CONSTRAINT `craft_supertablecontent_welcomescreen_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_supertablecontent_welcomescreen_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;
