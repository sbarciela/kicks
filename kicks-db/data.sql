-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 04-06-2021 a las 19:34:46
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kicks_db`
--

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'Elegí'),
(2, 'Adidas'),
(3, 'Nike'),
(4, 'Puma'),
(5, 'New Balance'),
(6, 'Vans'),
(7, 'Converse');

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Elegí'),
(2, 'En oferta'),
(3, 'Últimos agregados'),
(4, 'Destacados'),
(5, 'Otros');

--
-- Volcado de datos para la tabla `colors`
--

INSERT INTO `colors` (`id`, `name`) VALUES
(1, 'Elegí'),
(2, 'Blanco'),
(3, 'Negro'),
(4, 'Rojo'),
(5, 'Azul'),
(6, 'Verde'),
(7, 'Naranja'),
(8, 'Marron'),
(9, 'Violeta'),
(10, 'Amarillo'),
(11, 'Gris');

--
-- Volcado de datos para la tabla `gendersusers`
--

INSERT INTO `gendersusers` (`id`, `name`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Otros');

--
-- Volcado de datos para la tabla `genresproducts`
--

INSERT INTO `genresproducts` (`id`, `name`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Niños');

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `discount`, `image`, `size`, `genre_id`, `brands_id`, `colors_id`, `category_id`) VALUES
(1, 'Nike Air Force 1 Low White', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 11499, 0, 'image-1619540092754.png', '[\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\"]', 1, 3, 2, 4),
(2, 'Vans Old Skool Black White', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 12000, 5, 'image-1619540109977.png', '[\"37\",\"38\",\"39\",\"40\",\"41\",\"42\"]', 2, 6, 3, 2),
(3, 'Puma Future Rider NES', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 22000, 15, 'image-1619540120867.png', '[\"39\",\"40\",\"41\",\"42\",\"43\"]', 3, 4, 11, 5),
(4, 'adidas Ozweego Orange (Youth)', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 22000, 0, 'image-1619540126919.png', '[\"37\",\"38\",\"39\",\"40\"]', 3, 2, 7, 5),
(5, 'Nike Air Max 90 Infrared (2020)', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 21700, 30, 'image-1619540190661.png', '[\"38\",\"39\",\"40\",\"42\",\"44\"]', 2, 3, 2, 5),
(6, 'New Balance 1300 Levi\'s', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 21700, 20, 'image-1619540241232.png', '[\"37\",\"38\",\"39\",\"40\"]', 2, 5, 8, 2),
(7, 'adidas Nite Jogger 3M Navy', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 14000, 0, 'image-1619540100565.png', '[\"37\",\"38\",\"39\",\"40\"]', 1, 2, 5, 4),
(8, 'Puma RS-X Toys Bonnie Blue (W)', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 20000, 0, 'image-1619540201574.png', '[\"37\",\"38\",\"39\"]', 2, 4, 9, 5),
(9, 'Nike Air Max 95 OG Neon (2020)', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 26000, 0, 'image-1619540233034.png', '[\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\"]', 1, 3, 11, 5),
(10, 'New Balance 327 Casablanca Green Logo', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 21700, 20, 'image-1619540210391.png', '[\"37\",\"38\",\"39\",\"40\"]', 2, 5, 2, 5),
(11, 'New Balance 997 Sport Chinese New Year', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 15500, 10, 'image-1619540247296.png', '[\"37\",\"39\",\"40\",\"42\",\"43\"]', 3, 5, 11, 3),
(12, 'Adidas Deerupt Solar Red Bluebird', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 11200, 5, 'image-1619540254662.png', '[\"37\",\"38\",\"39\",\"40\"]', 3, 2, 4, 5),
(13, 'Converse Chuck Taylor All-Star 70s', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 15000, 5, 'image-1619540223798.png', '[\"37\",\"38\",\"39\"]', 3, 7, 2, 5),
(14, 'adidas Yeezy Boost 350 V2 Zebra', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 25000, 10, 'image-1619540157515.png', '[\"38\",\"39\",\"40\",\"41\",\"42\"]', 1, 2, 2, 2),
(15, 'Vans Old Skool Checkerboard Racing Red', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 10500, 0, 'image-1619540173015.png', '[\"37\",\"38\",\"39\",\"40\"]', 3, 6, 4, 4),
(16, 'Nike Air Max 720 Black Mesh', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 19000, 10, 'image-1619540217115.png', '[\"37\",\"39\",\"41\",\"43\",\"45\"]', 1, 3, 3, 2),
(17, 'Nike React Element 55 PRM Sunset', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 12000, 0, 'image-1619540590888.png', '[\"37\",\"38\",\"39\",\"40\"]', 1, 3, 9, 3),
(18, 'New Balance 992 Grey', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 24000, 0, 'image-1619544973432.png', '[\"37\",\"38\",\"39\",\"40\",\"41\",\"42\"]', 1, 5, 11, 4),
(19, 'Vans Sk8-Hi True White Leather', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 12000, 0, 'image-1619546267043.png', '[\"37\",\"38\",\"39\",\"40\"]', 2, 6, 2, 3),
(20, 'Converse Chuck Taylor All-Star 70s', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 15000, 5, 'image-1619546327683.png', '[\"37\",\"38\",\"39\",\"40\"]', 2, 7, 3, 3),
(21, 'Jordan 4 Retro Off-White Sail (W)', 'Forro interno textil. Suela de caucho. Exterior de malla con revestimientos de gamuza y TPU. Amortiguación Adiprene+ en el antepié. Mediasuela de EVA liviana. Amortiguación Adiprene en el talón', 35000, 0, 'image-1619546442206.png', '[\"37\",\"38\",\"39\",\"40\",\"41\"]', 2, 3, 10, 5);

--
-- Volcado de datos para la tabla `product_cart`
--

INSERT INTO `product_cart` (`id`, `size`, `price`, `amount`, `name`, `user_id`, `product_id`) VALUES
(1, '40', 11499, 1, 'Nike Air Force 1 Low White', 2, 1),
(2, '41', 35000, 1, 'Jordan 4 Retro Off-White Sail (W)', 2, 21),
(3, '37', 22000, 1, 'adidas Ozweego Orange (Youth)', 1, 4),
(4, '40', 17360, 1, 'New Balance 327 Casablanca Green Logo', 1, 10),
(5, '37', 10500, 1, 'Vans Old Skool Checkerboard Racing Red', 3, 15),
(6, '40', 12000, 1, 'Vans Sk8-Hi True White Leather', 3, 19);

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `birthday`, `image`, `email`, `password`, `checkPassword`, `terms`, `offers`, `isAdmin`, `gender_id`) VALUES
(1, 'Sebastian', 'Barciela', '2021-04-30', 'image-1619909626669.jpg', 'barcielasebastian@gmail.com', '$2a$10$nPjhvTNe9i2voJFc1MCK0OD99urneHGIN8YSPRXQfJuemgwp7a7IO', '$2a$10$eCv2NM8iYSP621GsornQ7eGV7IErYlpgVe5uURi51VqVMv7KVW1vm', 'terms', 'offers', 1, 1),
(2, 'Ramiro', 'Tanquias Cornejo', '2002-05-06', 'image-1619909594939.jpg', 'ramitanquias@hotmail.com', '$2a$10$Ffydw3OWn12PH9yAohZMiOiVbkwiWw3KdaSZxr6NnTYCsaw5h0K.a', '$2a$10$F4t6SdFPWkl9eTECpHS5JOA5uw.6fZcE/9VxepGseBLWfSpt4d9l.', 'terms', 'offers', 1, 1),
(3, 'Santiago', 'Di Fiore', '1998-06-11', 'image-1619909560075.jpg', 'santidifiore@gmail.com', '$2a$10$GO235cSCScBlRho2b8jV..j57ha9GDbMSbEDmkI4IZkyM9h9ji7f2', '$2a$10$hXvT4Sf67MFdXmrYjKLecOQ0ocRI/k8UFcG9/YB6ZGYV5oxMh5VfS', 'terms', 'offers', 1, 1),
(4, 'Prueba', 'Pruebas', '2021-04-26', 'image-1619909846601.png', 'prueba@gmail.com', '$2a$10$w/zf2FvlPVJH6vlHowbzxO.WqxnwEdZvSiJSQepW1edRWjhmco5si', '$2a$10$HmC6ByeyjRj.3mfQWpkOzumplV53Qtd/USF87ic7hJ2p84.hDuCcG', 'terms', NULL, 0, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
