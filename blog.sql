-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 22. 10:27
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `Id` varchar(36) COLLATE utf8_hungarian_ci NOT NULL,
  `Title` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `Description` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `CreatedTime` datetime NOT NULL,
  `LastUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`Id`, `Title`, `Description`, `CreatedTime`, `LastUpdated`) VALUES
('00d1ad9b-0d12-4af8-837c-76d0c3a40b6b', 'Szia', 'Csá', '2023-12-05 05:46:24', '2024-04-18 11:04:15'),
('08e8f8ef-1ac4-45f6-a45d-c95a7ff93338', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus', 'eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante', '2023-10-28 09:43:42', '2024-08-31 02:10:48'),
('09aa87c7-f5b2-4300-820f-7caa86183650', 'nullam sit amet turpis elementum ligula vehicula consequat morbi a', 'donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', '2024-08-30 09:29:31', '2024-01-19 22:04:31'),
('0dd86da5-0dad-4003-ac45-2fdf03768715', 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus', 'faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', '2024-03-05 11:14:40', '2024-04-09 09:17:08'),
('11588302-665b-41ab-af5c-81074c6b83cb', 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', 'sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris', '2024-09-24 20:03:13', '2024-04-10 12:40:18'),
('15cdda09-cd64-4916-aff1-bb29ae6c3e25', 'duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non', 'orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu', '2024-09-02 04:03:21', '2024-03-01 23:08:18'),
('19b5cbfc-716a-4aa9-a34d-92157cb4c0c0', 'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis', 'nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc', '2024-08-03 04:22:11', '2024-02-22 20:31:01'),
('1c7c9712-4cc0-4032-95ce-80b424e6acf4', 'nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia', 'lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu', '2024-06-22 00:18:21', '2024-04-01 22:22:32'),
('1f5d9702-7b43-4d88-b47c-71854659fd7f', 'faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', 'tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', '2024-05-28 16:14:12', '2024-02-20 14:48:57'),
('22f9198b-9de1-465b-8ea4-70491ae7303e', 'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in', 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et', '2024-04-18 00:09:00', '2024-06-12 22:23:53'),
('23e7fa6d-72f5-47a3-aa07-2ba430275f1e', 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci', '2024-09-24 23:19:04', '2024-05-26 14:33:25'),
('252b7ad1-afde-4317-98eb-ec23614d87f9', 'non velit donec diam neque vestibulum eget vulputate ut ultrices vel', 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat', '2024-01-10 12:24:29', '2024-06-19 14:54:14'),
('26a57c4c-6ff9-4249-bca2-a90816da2076', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam', '2024-10-11 18:18:22', '2023-11-03 06:07:19'),
('271ccf00-735b-40ef-b5ab-727f4b848ba6', 'morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', 'ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes', '2024-06-28 23:25:09', '2024-01-14 06:49:27'),
('28e10872-2b8b-4385-b7a3-42540c4a2240', 'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque', 'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat', '2023-11-06 22:54:51', '2024-03-23 10:32:06'),
('2b139e81-44a9-4f6a-8cf7-26fac7c2d2cc', 'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in', 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor', '2024-09-09 19:49:35', '2023-11-10 03:59:14'),
('310ad4dc-afb6-4269-8830-68fa32c71a66', 'pede justo lacinia eget tincidunt eget tempus vel pede morbi', 'convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis', '2024-04-23 16:24:29', '2024-02-23 01:27:19'),
('346a6a4e-2abf-40df-a58e-67d779f081f7', 'sodales sed tincidunt eu felis fusce posuere felis sed lacus', 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem', '2024-05-07 09:16:46', '2024-05-22 03:42:34'),
('35796be8-d49a-4d54-b293-575638c7545b', 'velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue', 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus', '2023-10-28 23:32:27', '2023-10-22 12:01:34'),
('3c8d9e9d-393d-459d-a13c-f32a6d5c76c8', 'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', 'nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', '2024-06-05 16:50:32', '2024-09-11 15:52:45'),
('3e014380-0d08-4db3-a7da-30c3e88a18ac', 'ultricies eu nibh quisque id justo sit amet sapien dignissim', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', '2024-02-24 11:30:02', '2024-08-24 08:50:05'),
('3f980f64-4bce-4f57-9106-28f9c755658c', 'et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus', 'at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum', '2024-08-22 06:03:29', '2024-04-09 22:51:39'),
('40373e0c-8eaf-4ccf-81df-9f931ce475a2', 'leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac', 'placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel', '2024-06-12 21:00:30', '2023-10-28 04:58:49'),
('421be040-9860-44f4-b4f0-7c7c26179e63', 'vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula', 'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non', '2024-10-13 04:51:43', '2024-08-17 13:39:52'),
('426dd1e2-4e4a-432b-b3ca-df8462e1a37c', 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in', 'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque', '2024-09-22 00:08:22', '2024-02-27 17:31:27'),
('4952bd9d-67da-4184-8a92-ffdb7b9c6515', 'turpis elementum ligula vehicula consequat morbi a ipsum integer a', 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt', '2024-08-28 22:48:22', '2024-01-03 06:28:14'),
('4b0d68d9-0133-4e8a-86b7-87b50997d0fb', 'id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo', 'et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', '2024-07-12 09:03:05', '2024-01-06 17:12:49'),
('4b3a1386-61e0-4c7b-9c05-c1f259d87fc8', 'ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus', 'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in', '2024-04-20 09:23:05', '2024-01-13 00:33:49'),
('4cf625f9-e0ad-4e4a-9c6d-165af04f9dde', 'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie', 'augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea', '2024-02-26 02:10:57', '2023-12-20 10:09:50'),
('538bfec5-1dbd-44fe-aea6-13b36cd17796', 'ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla', 'nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy', '2024-08-31 07:54:19', '2024-09-21 23:57:56'),
('54361b58-1aff-4c1e-a2fa-c80b1576f634', 'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi', 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor', '2023-11-16 01:21:07', '2024-07-02 22:47:25'),
('551bccd7-d026-49a0-8880-1cef9fa6e9a8', 'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla', 'volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci', '2023-10-25 20:31:43', '2023-11-20 15:38:46'),
('553b52e4-0a24-471c-ba0b-a8e329b13d5e', 'hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque', 'eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam', '2024-04-23 07:00:46', '2024-09-13 05:49:04'),
('55584c41-2216-44a0-8675-42a73cdd2f63', 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor', 'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia', '2024-03-23 23:27:01', '2024-05-11 23:39:54'),
('575b73a3-a1f8-4493-aed9-eb5d9e2a9004', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', 'sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar', '2024-06-02 00:45:57', '2024-10-08 02:55:32'),
('5789027f-313f-4f26-a4ad-ee09eb05e92e', 'sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac', 'ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', '2024-05-28 09:07:12', '2024-07-27 00:02:39'),
('5a7b4262-9c04-4fa7-acd5-268ed18e2541', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet', '2024-09-16 09:00:40', '2024-10-19 09:51:06'),
('5bdcc7aa-8cb7-4200-bad0-bc81492e25b1', 'purus phasellus in felis donec semper sapien a libero nam dui proin', 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean', '2024-01-20 06:33:49', '2023-12-14 15:35:31'),
('5df6bcda-396a-4792-8f6c-bbf74bb54e85', 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', '2024-07-04 10:02:19', '2024-01-30 21:20:08'),
('6229d146-9eeb-49af-a0d9-6aff87b4397f', 'aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', 'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis', '2024-04-13 20:15:00', '2024-01-30 09:38:01'),
('65e1ae5d-f8bc-4bda-ab2b-9e003ea0607c', 'donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed', 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo', '2024-09-07 16:18:59', '2024-08-15 22:27:59'),
('66448cf8-e1b3-4c10-8226-bc22633c95c0', 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet', 'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue', '2024-09-21 00:09:37', '2024-10-15 12:15:58'),
('705514de-584f-4017-8106-3b8d94d683ca', 'ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 'felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at', '2024-06-08 14:36:58', '2023-11-08 14:40:06'),
('71cfae0c-aa67-412e-920a-9f36b5f94504', 'nulla tempus vivamus in felis eu sapien cursus vestibulum proin', 'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus', '2024-04-02 12:36:52', '2023-11-14 12:02:00'),
('726d3a08-799b-416e-83fe-119494a282c2', 'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat', 'morbi non lectus aliquam sit amet diam in magna bibendum', '2024-08-10 03:09:26', '2024-06-04 19:45:42'),
('739b4d6e-7131-41ca-be9b-63163c40e282', 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras', 'sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero', '2023-10-25 17:16:55', '2024-09-15 22:48:00'),
('7533f8c3-2aaf-4619-b478-792eca72f0f3', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat', '2024-04-12 21:43:55', '2023-12-31 00:45:08'),
('75b51451-3f7e-45b2-82a3-b344669f243e', 'eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam', 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque', '2024-02-17 21:33:32', '2024-08-08 08:48:39'),
('77553c51-c27b-42ad-83e6-76cb70f6d9c7', 'vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur', 'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel', '2024-05-08 07:58:51', '2024-08-17 00:24:06'),
('79c3ca6c-1f09-4334-8fd3-f6cae9a19d17', 'cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel', 'eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci', '2024-04-03 02:58:12', '2024-10-13 21:00:11'),
('7b3af086-7184-4fc0-ac44-99517b12ce30', 'morbi quis tortor id nulla ultrices aliquet maecenas leo odio', 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', '2024-02-07 11:13:25', '2024-02-25 06:00:04'),
('7c33abe7-6bc6-4685-81ce-68abbae17e31', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque', 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque', '2024-02-22 23:46:16', '2024-02-27 04:43:31'),
('7f73e55a-bfb9-4c83-8e48-cd4388dd4e61', 'sed magna at nunc commodo placerat praesent blandit nam nulla', 'ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper', '2023-11-16 21:47:52', '2024-04-08 10:15:07'),
('8003b6ad-44d6-4958-8a11-cef8b5031018', 'eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', 'quam nec dui luctus rutrum nulla tellus in sagittis dui', '2024-01-22 11:08:15', '2024-10-05 19:47:13'),
('816bc9be-ca05-469a-bddb-f3a0d3e58919', 'dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut', 'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu', '2024-05-11 17:57:03', '2024-07-11 10:59:05'),
('821362e6-59bd-4f1e-ac0e-ea66442ef693', 'at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio', 'diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus', '2024-04-19 08:32:34', '2024-06-09 17:01:58'),
('82e39e4e-deef-4b43-b9b6-75ce1943615b', 'mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit', 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et', '2024-02-09 19:16:39', '2024-08-06 07:14:47'),
('874c4abb-6d86-4878-ac65-eec0e99c29b2', 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel', 'vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus', '2024-04-13 04:44:50', '2024-01-20 00:38:54'),
('8bb7d47b-117b-426d-bb07-00b548dd47fc', 'quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero', 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar', '2024-07-17 03:29:42', '2024-09-15 09:29:14'),
('8bd7a9b0-44f8-42ff-8f57-ac89fdf1f30a', 'donec quis orci eget orci vehicula condimentum curabitur in libero ut', 'pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti', '2024-08-01 01:14:39', '2024-01-13 06:40:51'),
('8c75461f-b5ee-497a-8d34-6c6cbc0e3836', '3131asdsad', 'safsafsaf', '2024-10-22 10:20:29', '2024-10-22 10:20:29'),
('8de4d737-fb52-4f72-a286-d93c1fa8c6b1', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede', 'viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', '2024-04-19 02:03:15', '2024-01-29 19:26:30'),
('907577e8-9e6a-40a4-a649-44bb8faefeec', 'amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse', 'nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem', '2024-04-09 23:19:50', '2024-01-20 04:53:20'),
('99763214-b7bb-4a67-92cf-05cf61f1586d', 'eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', 'sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in', '2024-01-27 13:47:17', '2024-02-23 22:36:15'),
('9a7a9ec0-695c-4241-9d79-e37c10736c15', 'at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia', 'pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras', '2024-01-10 21:35:18', '2024-04-08 00:54:41'),
('a300bf02-35d0-4548-b337-f6641698e0d2', 'vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit', 'in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis', '2024-02-02 03:37:20', '2023-12-20 15:57:17'),
('a6174981-b214-4ca2-b6b8-01667832a1ce', 'leo odio porttitor id consequat in consequat ut nulla sed', 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat', '2024-01-17 23:01:38', '2024-10-15 10:59:13'),
('a67f400c-52df-46be-9793-557f7e311142', 'rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo', 'tempus semper est quam pharetra magna ac consequat metus sapien', '2024-06-07 03:27:13', '2024-04-08 14:58:38'),
('a76ef37c-2b34-4c29-9fb0-acf8407ae1c3', 'semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero', 'justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula', '2024-05-13 10:55:56', '2024-01-09 17:43:22'),
('a83e6eba-d667-4c64-8f2d-ee687a6960c3', 'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum', 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel', '2024-01-23 09:54:05', '2023-12-18 11:43:10'),
('aa7c73b7-7ab8-4c72-965a-2bb80ed38e7e', 'praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci', 'justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus', '2024-01-18 19:54:55', '2024-06-27 10:16:58'),
('aded4b53-a2a2-4ff4-af90-2cb0527fdb07', 'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac', 'odio in hac habitasse platea dictumst maecenas ut massa quis augue', '2024-05-27 18:16:17', '2024-08-07 16:06:25'),
('b3062991-2e4e-472f-8d68-158b415e24ed', 'rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend', 'pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut', '2024-01-04 12:11:50', '2024-03-22 12:51:44'),
('b416948c-3bdc-4cf2-a9ab-4027bcb7bafb', 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel', '2023-12-15 15:47:36', '2024-07-13 02:10:56'),
('b515d74b-9cdf-4417-befa-716120f14f7f', 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium', 'faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus', '2024-01-22 06:30:47', '2023-11-02 04:13:56'),
('b650ed1e-8cbc-42c7-8f8b-ebae98e61d7c', 'in tempus sit amet sem fusce consequat nulla nisl nunc', 'et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit', '2024-08-15 12:54:12', '2024-05-03 21:11:44'),
('b7c3bc8e-59db-4a24-8801-16442d5ea2aa', 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut', 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut', '2024-09-24 17:54:49', '2024-03-26 05:53:00'),
('bb388b3c-55f8-4517-86db-1e6339b19756', 'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', 'amet lobortis sapien sapien non mi integer ac neque duis bibendum', '2024-09-25 04:20:41', '2024-04-02 13:41:08'),
('bcd1a2ae-edda-4997-b66a-d3c7c19e070f', 'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam', 'maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra', '2023-12-08 23:40:25', '2024-01-08 00:53:26'),
('c01106d6-aabc-404b-92e3-bbf96f42a753', 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat', 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', '2024-08-23 06:46:09', '2024-06-28 11:00:51'),
('c0d0a5f6-499d-4d92-9674-f011620e13f7', 'nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', 'erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst', '2024-07-30 08:24:13', '2023-12-15 23:11:40'),
('c3073c47-e268-4bca-ac54-71a3041ce1c0', 'nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo', 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', '2024-06-09 18:23:14', '2024-08-24 07:34:06'),
('c4c5292a-cc94-44c7-9ee0-f3d193380174', 'velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum', 'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat', '2024-09-17 18:57:56', '2023-12-07 09:17:14'),
('c814d350-8f39-4ac8-9028-95a785327c01', 'sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet', 'vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero', '2024-08-22 01:31:33', '2023-12-18 23:08:08'),
('c85d14bd-89d3-4a8d-b798-8ce4926ade14', 'viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum', 'viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper', '2023-12-09 02:59:23', '2024-09-25 11:19:12'),
('cd3747a8-1554-4873-93ff-812b4fc6899f', 'sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus', 'dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut', '2024-07-01 17:30:54', '2024-02-01 16:14:04'),
('cd669ec8-a5dd-4544-a9c6-6dd1881bf6d1', 'integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla', 'nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim', '2024-05-28 08:17:33', '2023-11-19 06:07:30'),
('ce299e47-055f-42a6-817e-145f8e556412', 'dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti', 'ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', '2024-02-23 10:24:08', '2024-07-21 22:18:26'),
('d3fb0388-8d5d-42e8-b1b6-49b15b29d1a2', 'lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a', 'convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci', '2024-09-29 00:23:23', '2024-07-26 14:17:14'),
('d44485e4-57e9-472f-b6fc-7482d2adf668', 'eu magna vulputate luctus cum sociis natoque penatibus et magnis', 'ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient', '2024-06-11 18:55:50', '2024-04-06 05:06:43'),
('d5dac1bb-1185-4fda-85fe-6da62ef0f236', 'congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', 'congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', '2024-05-07 23:13:25', '2024-09-26 05:28:48'),
('dc26e78f-3933-4c5f-9ca2-dde2a5297621', 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing', 'fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio', '2023-10-24 09:44:50', '2024-04-29 15:04:50'),
('e0d8ad13-039d-4793-8a3a-5adc6af299e5', 'ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id', 'ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at', '2024-05-21 17:33:23', '2024-04-20 10:13:22'),
('e5e2fc2e-978f-43fa-8dde-195357b2a1a8', 'dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est', 'convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat', '2024-02-03 02:48:28', '2024-02-13 00:01:25'),
('e98e2793-4283-40b3-b441-78823234b495', 'dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat', 'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in', '2024-06-01 03:10:49', '2024-03-20 07:15:11'),
('ef2ec55b-9064-40a0-ae66-40db393504a1', 'eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer', 'pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis', '2023-12-12 16:58:16', '2024-06-03 13:47:47'),
('f4d583e3-9dda-4c13-a234-ca2ba0f6ba0e', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan', 'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum', '2024-08-30 21:53:45', '2023-10-23 14:11:53'),
('f55351c4-baa5-4e4b-b810-fe4e8e4ef2c3', 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque', 'eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec', '2024-01-10 22:43:26', '2024-06-17 05:53:13'),
('fb62a9b7-babc-4f40-983b-d7e58f4dd8d2', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis', '2023-11-10 07:51:45', '2024-01-07 13:32:31'),
('fdcea58f-0272-416c-af7b-56ef0dd26982', 'interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue', 'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean', '2024-04-17 22:57:09', '2024-05-31 11:41:41');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
