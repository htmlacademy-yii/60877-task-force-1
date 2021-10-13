-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 13 2021 г., 20:18
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `taskforce`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `user_id`) VALUES
(1, 'Переводы', 'translation', 0),
(2, 'Уборка', 'clean', 0),
(3, 'Переезды', 'cargo', 0),
(4, 'Компьютерная помощь', 'neo', 0),
(5, 'Ремонт квартирный', 'flat', 0),
(6, 'Ремонт техники', 'repair', 0),
(7, 'Красота', 'beauty', 0),
(8, 'Фото', 'photo', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city` varchar(30) DEFAULT NULL,
  `lat` float NOT NULL,
  `long` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `favourites`
--

CREATE TABLE `favourites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `client_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1632688191),
('m130524_201442_init', 1632688206),
('m190124_110200_add_verification_token_column_to_user_table', 1632688207);

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `creation_time` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `task_id` int(11) NOT NULL,
  `is_view` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `opinions`
--

CREATE TABLE `opinions` (
  `id` int(11) NOT NULL,
  `dt_add` date NOT NULL,
  `rate` int(11) NOT NULL,
  `deskription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `opinions`
--

INSERT INTO `opinions` (`id`, `dt_add`, `rate`, `deskription`) VALUES
(1, '2019-08-19', 3, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus '),
(2, '2019-02-22', 2, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nulla'),
(3, '2019-07-11', 2, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.'),
(4, '2018-10-07', 2, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec '),
(5, '2018-12-01', 1, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.'),
(6, '2018-11-09', 3, 'In congue. Etiam justo. Etiam pretium iaculis justo.'),
(7, '2018-12-10', 5, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accum'),
(8, '2018-10-20', 2, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placera'),
(9, '2018-10-27', 2, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.'),
(10, '2019-06-14', 4, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.');

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `portfolio`
--

INSERT INTO `portfolio` (`id`, `user_id`, `photo`) VALUES
(1, 1, './img/man-glasses.jpg'),
(2, 2, './img/man-glasses.jpg'),
(3, 1, './img/man-glasses.jpg'),
(4, 2, './img/man-glasses.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `bd` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `skype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profiles`
--

INSERT INTO `profiles` (`id`, `address`, `bd`, `about`, `phone`, `skype`) VALUES
(1, '38737 Moose Avenue', '1989-11-11', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 2147483647, 'high-level'),
(2, '738 Hagan Lane', '1989-03-05', 'Pellentesque ultrices mattis odio.', 2147483647, 'mobile'),
(3, '758 Old Shore Parkway', '1989-12-30', 'Morbi a ipsum. Integer a nibh. In quis justo.', 2147483647, 'Re-engineered'),
(4, '11 Dovetail Junction', '0629-03-03', 'Suspendisse potenti.', 2147483647, 'Grass-roots'),
(5, '050 Bowman Alley', '1989-04-08', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 2147483647, 'fault-tolerant'),
(6, '5 Iowa Avenue', '1989-04-18', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 2147483647, 'Team-oriented'),
(7, '87119 Northland Hill', '1989-03-20', 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 2147483647, 'portal'),
(8, '6823 Lillian Point', '1989-12-13', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 2147483647, 'intermediate'),
(9, '43 Marquette Plaza', '1989-01-14', 'Morbi ut odio.', 2147483647, 'local area network'),
(10, '5303 Village Green Hill', '1989-02-03', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 2147483647, 'upward-trending'),
(11, '67399 Reindahl Place', '1989-05-23', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 2147483647, 'grid-enabled'),
(12, '45 Twin Pines Hill', '1989-07-06', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.', 2147483647, 'background'),
(13, '46 Sheridan Place', '1903-04-16', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', 2147483647, 'challenge'),
(14, '73 Kedzie Terrace', '1989-11-07', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 2147483647, 'coherent'),
(15, '85509 Ludington Drive', '1989-02-13', 'Cras pellentesque volutpat dui.', 2147483647, 'neutral'),
(16, '67 Northwestern Center', '1989-07-07', 'Aliquam erat volutpat. In congue.', 2147483647, 'Programmable'),
(17, '725 Eagle Crest Hill', '1989-09-29', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', 2147483647, 'encompassing'),
(18, '507 Graceland Junction', '1989-03-19', 'Suspendisse potenti.', 2147483647, 'knowledge base'),
(19, '92 Gina Park', '1989-09-29', 'Phasellus sit amet erat.', 2147483647, 'dynamic'),
(20, '8 Ridgeview Trail', '1989-12-21', 'Cras pellentesque volutpat dui.', 2147483647, 'solution');

-- --------------------------------------------------------

--
-- Структура таблицы `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `dt_add` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `deskription` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `replies`
--

INSERT INTO `replies` (`id`, `dt_add`, `rate`, `deskription`, `user_id`) VALUES
(1, 20190509, 1, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placera', '2'),
(2, 20181027, 4, 'Fusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, ', '1'),
(3, 20181102, 5, 'Fusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, ', '3'),
(4, 20190604, 3, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nul', '4'),
(5, 20181009, 3, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '4'),
(6, 20190716, 4, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo', NULL),
(7, 20190122, 5, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', NULL),
(8, 20190611, 4, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\r\n\r\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum', NULL),
(49, 20190216, 3, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\r\n\r\nDuis consequat dui nec nisi volutpat eleifend. ', NULL),
(50, 20190716, 5, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', NULL),
(51, 20181111, 4, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', NULL),
(52, 20181101, 5, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec ', NULL),
(53, 20181005, 1, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue', NULL),
(54, 20190228, 3, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\r\n\r\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', NULL),
(55, 20190704, 3, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultri', NULL),
(56, 20190730, 3, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', NULL),
(57, 20190710, 4, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', NULL),
(58, 20190915, 2, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', NULL),
(59, 20181016, 3, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\r\n\r\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', NULL),
(60, 20190213, 4, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tags_attributes`
--

CREATE TABLE `tags_attributes` (
  `id` int(100) NOT NULL,
  `attributes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tags_attributes`
--

INSERT INTO `tags_attributes` (`id`, `attributes`) VALUES
(1, 'Ремонт'),
(2, 'Оператор ПК'),
(3, 'Программист'),
(5, 'Алкоголик'),
(6, 'Дизайн домов');

-- --------------------------------------------------------

--
-- Структура таблицы `tags_attribution`
--

CREATE TABLE `tags_attribution` (
  `user_id` int(255) DEFAULT NULL,
  `attributes_id` int(255) DEFAULT NULL,
  `id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tags_attribution`
--

INSERT INTO `tags_attribution` (`user_id`, `attributes_id`, `id`) VALUES
(1, 2, 2),
(1, 3, 3),
(2, 4, 4),
(3, 5, 5),
(3, 6, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `dt_add` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `deskription` varchar(255) NOT NULL,
  `final_date` date DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `budget` int(11) NOT NULL,
  `lat` float NOT NULL,
  `long` float NOT NULL,
  `task_address` varchar(255) DEFAULT NULL,
  `user_id` int(100) DEFAULT NULL,
  `task_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `start_date`, `dt_add`, `category_id`, `deskription`, `final_date`, `name`, `address`, `budget`, `lat`, `long`, `task_address`, `user_id`, `task_status`) VALUES
(1, '2021-09-20 00:00:00', 12, 12, 'Значимость этих проблем настолько очевидна, что начало повседневной работы по формированию позиции требуют определения и уточнения позиций…\r\n\r\n', '2021-09-20', 'Перевести войну и мир на клингонский', 'Санкт-Петербург, Центральный район', 3400, 1.5, 1.6, 'Санкт-Петербург, Центральный район', 1, '1'),
(2, '2021-09-25 00:00:00', 123, 123, 'Значимость этих проблем настолько очевидна, что начало повседневной работы по формированию позиции требуют определения и уточнения позиций…\r\n\r\n', '2021-09-28', 'Убраться в квартире после вписки', 'Санкт-Петербург, Центральный район', 1500, 1.6, 1, 'Санкт-Петербург, Центральный район', 2, '1'),
(3, '2021-09-06 00:00:00', 123233, 10, 'Значимость этих проблем настолько очевидна, что начало повседневной работы по формированию позиции требуют определения и уточнения позиций…\r\n\r\n', '2021-09-03', 'Перевезти груз на новое место', 'Москва, Центральный район', 3000, 1.9, 10.45, 'Москва, Центральный район\r\n\r\n', 3, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reply_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `task_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`, `reply_id`, `task_id`) VALUES
(1, 'Астахов Павел', '', '', NULL, 'kbuttress0@1und1.de', 1, 1, 1, NULL, NULL, '1'),
(2, 'Крючков Василий', '', '', NULL, 'baymer1@hp.com', 1, 1, 1, NULL, NULL, '2'),
(3, 'Миронов Алексей', '', '', NULL, 'zboulding2@macromedi', 1, 1, 1, NULL, NULL, '3');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dt_add` date NOT NULL,
  `task_id` int(100) DEFAULT NULL,
  `user_stars` int(100) DEFAULT NULL,
  `user_rating` int(100) DEFAULT NULL,
  `user_search_content` varchar(255) DEFAULT NULL,
  `user_was_on_site` datetime DEFAULT NULL,
  `user_search_link` varchar(255) DEFAULT NULL,
  `user_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `dt_add`, `task_id`, `user_stars`, `user_rating`, `user_search_content`, `user_was_on_site`, `user_search_link`, `user_img`) VALUES
(1, 'kbuttress0@1und1.de', 'Астахов Павел', 'JcfoKBYAB4k', '2019-08-10', 1, 1, 1, 'Сложно сказать, почему элементы политического процесса лишь добавляют фракционных разногласий и рассмотрены исключительно в разрезе маркетинговых и финансовых предпосылок.\r\n\r\n', '2021-09-08 00:15:00', 'Ремонт, Оператор ПК', './img/man-glasses.jpg'),
(2, 'baymer1@hp.com', 'Крючков Василий', 'ZEE54kg', '2018-12-21', 2, 2, 2, 'Как принято считать, акционеры крупнейших компаний формируют глобальную экономическую сеть и при этом - рассмотрены исключительно в разрезе маркетинговых и финансовых предпосылок\r\n\r\n', '2021-09-07 00:15:00', 'Курьер', './img/user-man2.jpg'),
(3, 'zboulding2@macromedi', 'Миронов Алексей', 'VJyMV1Zat', '2019-07-25', 3, 3, 3, 'Как принято считать, акционеры крупнейших компаний формируют глобальную экономическую сеть и при этом - рассмотрены исключительно в разрезе маркетинговых и финансовых предпосылок\r\n\r\n', '2021-09-06 00:00:00', 'Оператор ПК', './img/user-man.jpg'),
(4, 'emollon3@bloglovin.c', 'Emalee Mollon', 'XUIeJ693h', '2018-11-13', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(5, 'mmulberry4@cmu.edu', 'Maria Mulberry', 'oWspnl', '2019-07-20', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(6, 'lby5@mozilla.com', 'Levey By', 'GdtcUU', '2019-02-12', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(7, 'beates6@last.fm', 'Baron Eates', 'UQw6VeA', '2019-05-03', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(8, 'tvink7@fotki.com', 'Trip Vink', '49znXd7haFGz', '2019-01-13', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(9, 'bterbeck8@about.me', 'Миронов Алексей', 'unCjJTF7sjs', '2019-09-15', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(10, 'atraviss9@auda.org.a', 'Alonzo Traviss', 'dLuVMAg', '2018-12-19', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(11, 'nwitteringa@google.c', 'Natassia Wittering', 'tQlUG4n', '2019-03-24', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(12, 'fbrookeb@nba.com', 'Астахов Павел', 's9y9Mcfgy1g', '2019-09-27', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(13, 'cviccaryc@amazon.co.', 'Carlen Viccary', '9qd747vh', '2018-12-06', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(14, 'hgethingsd@sogou.com', 'Hendrik Gethings', 'zzN5c4', '2018-11-18', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(15, 'dgirodiase@stanford.', 'Dunc Girodias', 'j9QW6GQI', '2018-10-14', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(16, 'btanmanf@smh.com.au', 'Bibbie Tanman', '1aukKNEIneq', '2019-05-03', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(17, 'bbartolettig@simplem', 'Barnabas Bartoletti', '3chTNtqhoo', '2018-12-25', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(18, 'nculliph@fc2.com', 'Nixie Cullip', '2UdKIR2f', '2019-04-07', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(19, 'mpimblotti@xing.com', 'Matilde Pimblott', 'nGZ8disdg', '2019-07-18', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg'),
(20, 'askurrayj@un.org', 'Al Skurray', 'bL9tAf', '2018-11-25', NULL, NULL, NULL, NULL, NULL, NULL, './img/man-glasses.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `opinions`
--
ALTER TABLE `opinions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags_attribution`
--
ALTER TABLE `tags_attribution`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `opinions`
--
ALTER TABLE `opinions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `tags_attribution`
--
ALTER TABLE `tags_attribution`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
