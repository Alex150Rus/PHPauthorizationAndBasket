-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Дек 16 2018 г., 01:19
-- Версия сервера: 5.7.23
-- Версия PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gallery`
--

-- --------------------------------------------------------

--
-- Структура таблицы `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(3) NOT NULL,
  `author` varchar(15) NOT NULL,
  `text` varchar(750) NOT NULL,
  `productId` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `author`, `text`, `productId`) VALUES
(2, 'Александер', 'Здорово!', 4),
(5, 'Богдан', 'Я люблю кофе. Меньше чем Родину, но всяко больше пельменей без майонезика. До Бальзака, который потреблял 50 чашек в день, а потом еще и хрустел молотым мне пока далеко, но две чашки капучино в день - минимальная доза, отличающая меня от прямоходящих приматов.', 4),
(9, 'Алекс', 'Жила-была у меня кофемашинка Delonghi 4200. Зерна молола, кофе варила, пар подавала. И все в ней было (и есть, кстати у некоего Богдана из Самары) замечательно, но вот сама она капучино делать не умела.', 4),
(25, 'Катя', 'Прикольная картинка))', 4),
(26, 'Саша', 'Прикольный зал!', 5),
(27, 'Вика', 'Классные подушки', 5),
(31, 'Витя', 'Крутая картинка!', 4),
(32, 'Вика', 'Хочу туда!', 5),
(33, 'Ксюша', 'Мяу))!', 3),
(34, 'Витя', 'Киска - что надо))', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(3) NOT NULL,
  `altName` varchar(15) NOT NULL,
  `MiniFileName` varchar(25) NOT NULL,
  `LargeJpgFileName` varchar(16) NOT NULL,
  `counter` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `altName`, `MiniFileName`, `LargeJpgFileName`, `counter`) VALUES
(3, 'cat', 'catMini.jpg', 'catLarge.jpg', 28),
(4, 'softDeveloper', 'jsMini.jpg', 'jsLarge.jpg', 12),
(5, 'mailRu', 'mailRuMini.jpg', 'MailRuLarge.jpg', 31);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `login` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `role`) VALUES
(1, 'user', 'd9b1d7db4cd6e70935368a1efb10e377', 'user'),
(4, 'ww', '74be16979710d4c4e7c6647856088456', 'user'),
(6, 'sdds', '3bdda894403fabfa8bce1d466ac266a3', 'user'),
(7, 'dfdfd', '64cf9601989168f7ced3aeea9064c411', 'user'),
(8, '', '74be16979710d4c4e7c6647856088456', 'user'),
(9, '', '74be16979710d4c4e7c6647856088456', 'user'),
(10, '', '74be16979710d4c4e7c6647856088456', 'user'),
(11, '', '74be16979710d4c4e7c6647856088456', 'user'),
(12, 'sddss', '77a6f2095d735f80548a369276e5ffa6', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
