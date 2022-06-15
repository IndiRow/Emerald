-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220612.30bcc6535a
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 13 2022 г., 23:13
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `loginsystem`
--

-- --------------------------------------------------------

--
-- Структура таблицы `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwdResetId` int(11) NOT NULL,
  `pwdResetEmail` text NOT NULL,
  `pwdResetSelector` text NOT NULL,
  `pwdResetToken` longtext NOT NULL,
  `pwdResetExpires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `pwdreset`
--

INSERT INTO `pwdreset` (`pwdResetId`, `pwdResetEmail`, `pwdResetSelector`, `pwdResetToken`, `pwdResetExpires`) VALUES
(1, 'ilshatn2000@gmail.com', '01d01cbfeb87af46', '$2y$10$t0hjeXTQ4.rw2rmdwRX8BOs9Fhsinj4KsZO4h7VmSIkFx1b.eCj2O', '1654527290');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `usersID` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `password2` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`usersID`, `username`, `email`, `password`, `password2`) VALUES
(4, 'RavenRow', 'ilshatn2000@gmail.com', '$2y$10$vEUUNTLQfZTOaXJnYktsaONNA21NmFVpnWo0GAtyhHjs5M0cDkb4u', ''),
(5, 'niyazov260', 'wdjandw@gmail.com', '$2y$10$U5s5dqwQQDQhzTKnlq5wGOxsWE51UIQ47BEcjEnhjeDHj3do/tO52', ''),
(6, 'wadgawaf', 'bwdwau@gmail.com', '$2y$10$TrJjvuWoc5BexywHt9PD9eqyo30l5QTx6oz50qjXLE.LRCYpLftjK', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwdResetId`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwdResetId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



