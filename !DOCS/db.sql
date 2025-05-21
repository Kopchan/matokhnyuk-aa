-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 21 2025 г., 11:07
-- Версия сервера: 8.0.30
-- Версия PHP: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `matokhnyuk-aa2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `material_types`
--

CREATE TABLE `material_types` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `marriage` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `material_types`
--

INSERT INTO `material_types` (`id`, `name`, `marriage`) VALUES
(1, 'Тип материала 1', '0.10'),
(2, 'Тип материала 2', '0.95'),
(3, 'Тип материала 3', '0.28'),
(4, 'Тип материала 4', '0.55'),
(5, 'Тип материала 5', '0.34');

-- --------------------------------------------------------

--
-- Структура таблицы `partners`
--

CREATE TABLE `partners` (
  `id` int NOT NULL,
  `type_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `ceo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `inn` varchar(255) NOT NULL,
  `rating` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `partners`
--

INSERT INTO `partners` (`id`, `type_id`, `name`, `ceo`, `email`, `phone`, `address`, `inn`, `rating`) VALUES
(1, 1, 'База Строитель', 'Иванова Александра Ивановна', 'aleksandraivanova@ml.ru', '493 123 45 67', '652050, Кемеровская область, город Юрга, ул. Лесная, 15', '2222455179', 7),
(2, 2, 'Паркет 29', 'Петров Василий Петрович', 'vppetrov@vl.ru', '987 123 56 78', '164500, Архангельская область, город Северодвинск, ул. Строителей, 18', '3333888520', 7),
(3, 3, 'Стройсервис', 'Соловьев Андрей Николаевич', 'ansolovev@st.ru', '812 223 32 00', '188910, Ленинградская область, город Приморск, ул. Парковая, 21', '4440391035', 7),
(4, 4, 'Ремонт и отделка', 'Воробьева Екатерина Валерьевна', 'ekaterina.vorobeva@ml.ru', '444 222 33 11', '143960, Московская область, город Реутов, ул. Свободы, 51', '1111520857', 5),
(5, 1, 'МонтажПро', 'Степанов Степан Сергеевич', 'stepanov@stepan.ru', '912 888 33 33', '309500, Белгородская область, город Старый Оскол, ул. Рабочая, 122', '5552431140', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `partner_products`
--

CREATE TABLE `partner_products` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `partner_id` int NOT NULL,
  `quantity` int NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `partner_products`
--

INSERT INTO `partner_products` (`id`, `product_id`, `partner_id`, `quantity`, `date`) VALUES
(1, 1, 1, 15500, '2023-03-23 00:00:00'),
(2, 3, 1, 12350, '2023-12-18 00:00:00'),
(3, 4, 1, 37400, '2024-06-07 00:00:00'),
(4, 2, 2, 35000, '2022-12-02 00:00:00'),
(5, 5, 2, 1250, '2023-05-17 00:00:00'),
(6, 3, 2, 1000, '2024-06-07 00:00:00'),
(7, 1, 2, 7550, '2024-07-01 00:00:00'),
(8, 1, 3, 7250, '2023-01-22 00:00:00'),
(9, 2, 3, 2500, '2024-07-05 00:00:00'),
(10, 4, 4, 59050, '2023-03-20 00:00:00'),
(11, 3, 4, 37200, '2024-03-12 00:00:00'),
(12, 5, 4, 4500, '2024-05-14 00:00:00'),
(13, 3, 5, 50000, '2023-09-19 00:00:00'),
(14, 4, 5, 670000, '2023-11-10 00:00:00'),
(15, 1, 5, 35000, '2024-04-15 00:00:00'),
(16, 2, 5, 25000, '2024-06-12 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `partner_types`
--

CREATE TABLE `partner_types` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `partner_types`
--

INSERT INTO `partner_types` (`id`, `name`) VALUES
(1, 'ЗАО'),
(2, 'ООО'),
(3, 'ПАО'),
(4, 'ОАО');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `type_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `article` varchar(255) NOT NULL,
  `price` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `type_id`, `name`, `article`, `price`) VALUES
(1, 3, 'Паркетная доска Ясень темный однополосная 14 мм', '8758385', '4456.90'),
(2, 3, 'Инженерная доска Дуб Французская елка однополосная 12 мм', '8858958', '7330.99'),
(3, 1, 'Ламинат Дуб дымчато-белый 33 класс 12 мм', '7750282', '1799.33'),
(4, 1, 'Ламинат Дуб серый 32 класс 8 мм с фаской', '7028748', '3890.41'),
(5, 4, 'Пробковое напольное клеевое покрытие 32 класс 4 мм', '5012543', '5450.59');

-- --------------------------------------------------------

--
-- Структура таблицы `product_types`
--

CREATE TABLE `product_types` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `coef` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product_types`
--

INSERT INTO `product_types` (`id`, `name`, `coef`) VALUES
(1, 'Ламинат', '2.35'),
(2, 'Массивная доска', '5.15'),
(3, 'Паркетная доска', '4.34'),
(4, 'Пробковое покрытие', '1.50');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `material_types`
--
ALTER TABLE `material_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `partners_index_0` (`type_id`);

--
-- Индексы таблицы `partner_products`
--
ALTER TABLE `partner_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `partner_products_index_0` (`product_id`),
  ADD KEY `partner_products_index_1` (`partner_id`);

--
-- Индексы таблицы `partner_types`
--
ALTER TABLE `partner_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `products_index_0` (`type_id`);

--
-- Индексы таблицы `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `material_types`
--
ALTER TABLE `material_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `partner_products`
--
ALTER TABLE `partner_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `partner_types`
--
ALTER TABLE `partner_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `partners`
--
ALTER TABLE `partners`
  ADD CONSTRAINT `partners_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `partner_types` (`id`);

--
-- Ограничения внешнего ключа таблицы `partner_products`
--
ALTER TABLE `partner_products`
  ADD CONSTRAINT `partner_products_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`),
  ADD CONSTRAINT `partner_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `product_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
