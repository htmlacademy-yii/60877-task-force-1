-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 04 2021 г., 17:16
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
-- Структура таблицы `create_task`
--

CREATE TABLE `create_task` (
  `id` int(11) NOT NULL,
  `i_need` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` int(100) NOT NULL,
  `final_date` date NOT NULL,
  `rools_good_deskription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `newtasks`
--

CREATE TABLE `newtasks` (
  `new_task_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_task_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_task_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_task_place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_task_price` int(11) NOT NULL,
  `new_task_time` time(6) NOT NULL,
  `courier_services` int(11) NOT NULL,
  `cargo_moving` tinyint(1) NOT NULL,
  `translations` tinyint(1) NOT NULL,
  `building_fixing` tinyint(1) NOT NULL,
  `walking_animals` tinyint(1) NOT NULL,
  `no_response` tinyint(1) NOT NULL,
  `remote_work` tinyint(1) NOT NULL,
  `period` tinyint(1) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `avatarphoto` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information_about_you` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specializations` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courier_services` tinyint(1) NOT NULL,
  `workphoto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telegram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `newmessage` tinyint(1) NOT NULL,
  `action_to_task` tinyint(1) NOT NULL,
  `newreview` tinyint(1) NOT NULL,
  `show_my_contacts_only_customer` tinyint(1) NOT NULL,
  `do_not_show_my_profile` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `your_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_to_live` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_photo` int(11) NOT NULL,
  `user_name` int(11) NOT NULL,
  `user_country_age` int(11) NOT NULL,
  `user_rating` int(11) NOT NULL,
  `user_time_ago` int(11) NOT NULL,
  `user_done_orders` int(11) NOT NULL,
  `user_got_orders` int(11) NOT NULL,
  `user_deskription` int(11) NOT NULL,
  `user_specializations` int(11) NOT NULL,
  `user_phone_contacts` int(11) NOT NULL,
  `user_email_contacts` int(11) NOT NULL,
  `user_card_photo` int(11) NOT NULL,
  `user_reviews` int(11) NOT NULL,
  `user_reviews_task` int(11) NOT NULL,
  `user_reviews_photo` int(11) NOT NULL,
  `user_reviews_name` int(11) NOT NULL,
  `user_reviews_deskription` int(11) NOT NULL,
  `user_reviews_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `create_task`
--
ALTER TABLE `create_task`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `newtasks`
--
ALTER TABLE `newtasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `create_task`
--
ALTER TABLE `create_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `newtasks`
--
ALTER TABLE `newtasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
