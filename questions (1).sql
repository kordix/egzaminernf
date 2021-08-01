-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 28 Lip 2021, 18:08
-- Wersja serwera: 5.7.27-0ubuntu0.18.04.1
-- Wersja PHP: 7.3.24-3+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `egzaminer`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'DE',
  `partofspeech` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rodzajnik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `fav` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `language`, `partofspeech`, `tags`, `rodzajnik`, `fav`, `level`, `created_at`, `updated_at`) VALUES
(1, 'niski', 'bajo', 'SP', 'przymiotnik', 'człowiek', '', '', 'basic', NULL, NULL),
(2, 'wysoki', 'alto', 'SP', 'przymiotnik', 'człowiek', '', '', 'basic', NULL, NULL),
(3, 'szczupły', 'delgado', 'SP', 'przymiotnik', 'człowiek', '', '', 'basic', NULL, NULL),
(4, 'chciwy', 'codicioso', 'SP', 'przymiotnik', 'człowiek', '', '', 'basic', NULL, NULL),
(5, 'fajny', 'fresco', 'SP', 'przymiotnik', 'braktagu', '', '', 'basic', NULL, NULL),
(6, 'ciekawy', 'curioso', 'SP', 'przymiotnik', 'braktagu', '', '', 'basic', NULL, NULL),
(7, 'zabawny', 'divertido', 'SP', 'przymiotnik', 'człowiek', '', '', 'basic', NULL, NULL),
(8, 'głupi', 'estúpido', 'SP', 'przymiotnik', 'człowiek', '', '', 'basic', NULL, NULL),
(9, 'lodówka', 'nevera', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(10, 'zima', 'invierno', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(11, 'lato', 'verano', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(12, 'jesień', 'otoño', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(13, 'ale', 'pero', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(14, 'nadal', 'aún', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(15, 'nawet', 'aun', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(16, 'jeśli', 'si', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(17, 'oprócz', 'excepto', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(18, 'już', 'ya', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(19, 'de nuevo', 'znowu', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(20, 'jeszcze raz', 'una vez más', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(21, 'tyle', 'tanta', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(22, 'czytać', 'leer', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(23, 'pisać', 'escritura', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(24, 'robić', 'hacer', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(25, 'ćwiczyć', 'práctica', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(26, 'uczyć się', 'aprender', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(27, 'grać', 'jugar', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(28, 'there is', 'haber', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(29, 'że', 'que', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(30, 'do', 'al', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(31, 'przez', 'por', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(32, 'jego', 'su', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(33, 'wszystko', 'todo', 'SP', 'zwroty', 'braktagu', '', '', 'basic', NULL, NULL),
(34, 'dla', 'para', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(35, 'lub', 'o', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(36, 'móc', 'poder', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(37, 'powiedzieć', 'decir', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(38, 'inny', 'otro', 'SP', 'przymiotnik', 'braktagu', '', '', 'basic', NULL, NULL),
(39, 'bez', 'sin', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(40, 'widzieć', 'ver', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(41, 'między', 'entre', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(42, 'bardzo', 'muy', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(43, 'tak samo', 'mismo', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(44, 'ponieważ', 'porque', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(45, 'również', 'también', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(46, 'że', 'aquel', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(47, 'wyglądać', 'parecer', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(48, 'chcieć', 'querer', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(49, 'ani', 'ni', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(50, 'przechodzić', 'pasar', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(51, 'przybyć', 'llegar', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(52, 'więc', 'tan', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(53, 'musieć', 'deber', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(54, 'czas', 'tiempo', 'SP', 'rzeczownik', 'braktagu', '', '', 'basic', NULL, NULL),
(55, 'od', 'desde', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(56, 'nasz', 'nuestro', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(57, 'kłaść', 'poner', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(58, 'opuszczać', 'dejar', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(59, 'teraz', 'ahora', 'SP', 'przyimek', 'czas', '', '', 'basic', NULL, NULL),
(60, 'trochę', 'poco', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(61, 'zawsze', 'siempre', 'SP', 'przyimek', 'czas', '', '', 'basic', NULL, NULL),
(62, 'tamten', 'eso', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(63, 'wziąć', 'llevar', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(64, 'zostać', 'quedar', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(65, 'rzecz', 'cosa', 'SP', 'rzeczownik', 'braktagu', '', '', 'basic', NULL, NULL),
(66, 'dobrze', 'bien', 'SP', 'przymiotnik', 'braktagu', '', '', 'basic', NULL, NULL),
(67, 'nic', 'nada', 'SP', 'zwroty', 'braktagu', '', '', 'basic', NULL, NULL),
(68, 'część', 'parte', 'SP', 'zwroty', 'braktagu', '', '', 'basic', NULL, NULL),
(69, 'najlepszy', 'mejor', 'SP', 'przymiotnik', 'braktagu', '', '', 'basic', NULL, NULL),
(70, 'lepszy', 'meor', 'SP', 'przymiotnik', 'braktagu', '', '', 'basic', NULL, NULL),
(71, 'gorszy', 'peor', 'SP', 'przymiotnik', 'braktagu', '', '', 'basic', NULL, NULL),
(72, 'najgrorszy', 'lo peor', 'SP', 'przymiotnik', 'braktagu', '', '', 'basic', NULL, NULL),
(73, 'płyn', 'líquido', 'SP', 'rzeczownik', 'braktagu', '', '', 'basic', NULL, NULL),
(74, 'chociaż', 'aunque', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(75, 'śledzić', 'seguir', 'SP', 'czasownik', 'braktagu', '', '', 'mid', NULL, NULL),
(76, 'coś', 'algo', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(77, 'gdzie', 'donde', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(78, 'wrócić', 'volver', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(79, 'znaleźć', 'encontrar', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(80, 'myśleć', 'pensar', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(81, 'ostatni', 'último', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(82, 'więcej', 'más', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(83, 'mniej', 'menos', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(84, 'rok', 'año', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(85, 'miesiąc', 'mes', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(86, 'tydzień', 'semana', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(87, 'dzień', 'día', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(88, 'godzina', 'hora', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(89, 'wcześnie', 'temprano', 'SP', 'przymiotnik', 'czas', '', '', 'basic', NULL, NULL),
(90, 'późno', 'tarde', 'SP', 'przymiotnik', 'czas', '', '', 'basic', NULL, NULL),
(91, 'wczoraj', 'ayer', 'SP', 'przyimek', 'czas', '', '', 'basic', NULL, NULL),
(92, 'młody', 'joven', 'SP', 'przymiotnik', 'człowiek', '', '', 'basic', NULL, NULL),
(93, 'stary', 'viejo', 'SP', 'przymiotnik', 'człowiek', '', '', 'basic', NULL, NULL),
(94, 'nosić', 'llevar', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(95, 'przybyć', 'llegar', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(96, 'poniedziałek', 'lunes', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(97, 'wtorek', 'martes', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(98, 'środa', 'Miércoles', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(99, 'czwartek', 'Jueves', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(100, 'piątek', 'Viernes', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(101, 'sobota', 'Sábado', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(102, 'niedziela', 'Domingo', 'SP', 'rzeczownik', 'czas', '', '', 'basic', NULL, NULL),
(103, 'since', 'desde', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(104, 'care', 'cuidar', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(105, 'pływać', 'nadar', 'SP', 'czasownik', 'ruch', '', '', 'basic', NULL, NULL),
(106, 'komputer', 'ordenador', 'SP', 'rzeczownik', 'biuro', '', '', 'basic', NULL, NULL),
(107, 'demasiado', 'za dużo', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(108, 'za mało', 'no es suficiente', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(109, 'życzyć', 'deseo', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(110, 'invitar', 'zapraszać', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(111, 'wołać', 'llamar', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(112, 'który', 'quien', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(113, 'dowolny', 'alguno', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(114, 'prawie', 'casi', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(115, 'średni', 'medio', 'SP', 'przymiotnik', 'braktagu', '', '', 'basic', NULL, NULL),
(116, 'przypadek', 'caso', 'SP', 'rzeczownik', 'braktagu', '', '', 'basic', NULL, NULL),
(117, 'venir', 'przyjść', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(118, 'prawda', 'cierto', 'SP', 'rzeczownik', 'braktagu', '', '', 'basic', NULL, NULL),
(119, 'nieprawda', 'mentira', 'SP', 'rzeczownik', 'braktagu', '', '', 'basic', NULL, NULL),
(120, 'podłoga', 'piso', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(121, 'sufit', 'techo', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(122, 'ściana', 'pared', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(123, 'kaloryfer', 'radiador', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(124, 'okno', 'ventana', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(125, 'łazienka', 'cuarto de baño', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(126, 'rura', 'pipa', 'SP', 'rzeczownik', 'dom', '', '', 'extra', NULL, NULL),
(127, 'kuchnia', 'cocina', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(128, 'stół', 'mesa', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(129, 'syn', 'hijo', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(130, 'ciotka', 'tía', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(131, 'wujek', 'tío', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(132, 'parapet', 'antepecho', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(133, 'łóżko', 'cama', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(134, 'korytarz', 'corredor', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(135, 'pokój', 'habitación', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(136, 'zamieszkać', 'ocupar', 'SP', 'czasownik', 'dom', '', '', 'basic', NULL, NULL),
(137, 'spać', 'sueño', 'SP', 'czasownik', 'dom', '', '', 'basic', NULL, NULL),
(138, 'sypialnia', 'dormitorio', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(139, 'szafa', 'armario', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(140, 'półka', 'estante', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(141, 'książka', 'libro', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(142, 'lecz', 'sino', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(143, 'przed', 'ante', 'SP', 'przyimek', 'braktagu', '', '', 'basic', NULL, NULL),
(144, 'lewo', 'izquierda', 'SP', 'przyimek', 'miejsce', '', '', 'basic', NULL, NULL),
(145, 'prawo', 'derecho', 'SP', 'przyimek', 'miejsce', '', '', 'basic', NULL, NULL),
(146, 'behind', 'detrás', 'SP', 'przyimek', 'miejsce', '', '', 'basic', NULL, NULL),
(147, 'back', 'espalda', 'SP', 'przyimek', 'miejsce', '', '', 'basic', NULL, NULL),
(148, 'front', 'frente', 'SP', 'przyimek', 'miejsce', '', '', 'basic', NULL, NULL),
(149, 'under', 'debajo', 'SP', 'przyimek', 'miejsce', '', '', 'basic', NULL, NULL),
(150, 'over', 'encima arriba', 'SP', 'przyimek', 'miejsce', '', '', 'basic', NULL, NULL),
(151, 'in the background', 'en el fondo', 'SP', 'przyimek', 'miejsce', '', '', 'basic', NULL, NULL),
(152, 'in the foreground', 'en primer plano', 'SP', 'przyimek', 'miejsce', '', '', 'basic', NULL, NULL),
(153, 'babcia', 'abuela', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(154, 'nazywać', 'llamas', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(155, 'where are you from', 'de donde eres', 'SP', 'zwroty', 'braktagu', '', '', 'basic', NULL, NULL),
(156, 'urodziny', 'cumpleaños', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(157, 'seem', 'parece', 'SP', 'czasownik', 'braktagu', '', '', 'basic', NULL, NULL),
(158, 'dziewczyna', 'chica', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(159, 'chłopiec', 'chico', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(160, 'kobieta', 'mujer', 'SP', 'rzeczownik', 'dom', '', '', 'basic', NULL, NULL),
(161, 'sierota', 'huérfano', 'SP', 'rzeczownik', 'braktagu', '', '', 'extra', NULL, NULL),
(162, 'sierota', 'Waise', 'DE', 'rzeczownik', 'braktagu', '', '', 'basic', NULL, NULL),
(163, 'retarded', 'Verzögert', 'DE', 'przymiotnik', 'braktagu', '', '', 'basic', NULL, NULL),
(164, 'retarted', 'retrasado', 'SP', 'przymiotnik', 'braktagu', '', '', 'basic', NULL, NULL),
(165, 'niepełnosprawny', 'behindert', 'DE', 'rzeczownik', 'braktagu', '', '', 'basic', NULL, NULL),
(166, 'niepełnosprawny', 'discapacitado', 'SP', 'rzeczownik', 'braktagu', '', '', 'basic', NULL, NULL),
(167, 'aceite', 'olej', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, '2020-08-09 10:46:27'),
(168, 'czosnek', 'ajo', 'SP', 'rzeczownik', 'kuchnia', NULL, '', 'basic', NULL, '2020-08-14 13:40:13'),
(169, 'morela', 'albaricoque', 'SP', 'rzeczownik', 'kuchnia', NULL, '', 'basic', NULL, '2020-08-14 13:40:24'),
(170, 'Amargo ', ' gorzki', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(171, 'apio ', ' seler', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(172, 'aromático ', ' aromatyczny', 'SP', 'przymiotnik', 'kuchnia', '', '', 'basic', NULL, NULL),
(173, 'arroz ', ' ryż', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(174, 'Asar ', ' upiec', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(175, 'azúcar ', ' cukier', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(176, 'beber ', ' pić', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(177, 'bebida ', ' napój', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(178, 'berenjena ', ' bakłażan', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(179, 'café ', ' kawa', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(180, 'caliente ', ' ciepły, gorący', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(181, 'carne ', ' mięso', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(182, 'carta ', ' menu', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(183, 'cebol', ' cebula', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(184, 'cena ', ' kolacja', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(185, 'cerdo ', ' wieprzowina', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(186, 'cerveza ', ' piwo', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(187, 'champiñón ', ' grzyb', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(188, 'chocolate ', ' czekolada', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(189, 'cirue', ' śliwka', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(190, 'cocinar ', ' gotować', 'SP', 'czasownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(191, 'col ', ' kapusta', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(192, 'coliflor ', ' kalafior', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(193, 'comer ', ' jeść', 'SP', 'czasownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(194, 'congelado ', ' zamrożony', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(195, 'cordero ', ' jagnięcina', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(196, 'crudo ', ' surowy', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(197, 'los cubiertos ', ' sztućce', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(198, 'cuchara ', ' łyżka', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(199, 'cuchillo ', ' nóż', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(200, 'cuenta ', ' rachunek', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(201, 'desayuno ', ' śniadanie', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(202, 'dulce ', ' słodki', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(203, 'duro ', ' twardy', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(204, 'ensalada ', ' sałatka', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(205, 'especia ', ' przyprawa', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(206, 'las espinacas ', ' szpinak', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(207, 'flojo ', ' słaby', 'SP', 'przymiotnik', 'kuchnia', '', '', 'basic', NULL, NULL),
(208, 'frambuesa ', ' malina', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(209, 'fregar los platos ', ' zmywać (naczynia)', 'SP', 'czasownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(210, 'freír ', ' smażyć', 'SP', 'czasownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(211, 'fresa ', ' truskawka', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(212, 'fresco ', ' świeży', 'SP', 'przymiotnik', 'kuchnia', '', '', 'basic', NULL, NULL),
(213, 'fuerte ', ' mocny', 'SP', 'przymiotnik', 'kuchnia', '', '', 'basic', NULL, NULL),
(214, 'gaseosa ', ' lemoniada', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(215, 'guisante ', ' groszek', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(216, 'harina ', ' mąka', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(217, 'hervir ', ' wrzeć', 'SP', 'czasownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(218, 'hierba ', ' zioło', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(219, 'huevo ', ' jajko', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(220, 'jamón ', ' szynka', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(221, 'judía ', ' fasola', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(222, 'lata ', ' puszka', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(223, 'leche ', ' mleko', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(224, 'lechuga ', ' sałata', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(225, 'limón ', ' cytryna', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(226, 'maíz ', ' kukurydza', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(227, 'mantequil', ' masło', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(228, 'manzana ', ' jabłko', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(229, 'melocotón ', ' brzoskwinia', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(230, 'melón ', ' melon', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(231, 'mermelada ', ' dżem', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(232, 'mi', ' miód', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(233, 'mostaza ', ' musztarda', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(234, 'naranja ', ' pomarańcza', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(235, 'nuez ', ' orzech', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(236, 'pan ', ' chleb', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(237, 'patata ', ' ziemniak', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(238, 'pepino ', ' ogórek', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(239, 'pera ', ' gruszka', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(240, 'pescado ', ' ryba', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(241, 'picante ', ' pikantny', 'SP', 'przymiotnik', 'kuchnia', '', '', 'basic', NULL, NULL),
(242, 'pimienta ', ' pieprz', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(243, 'pimiento ', ' papryka', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(244, 'piña ', ' ananas', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(245, 'plátano ', ' banan', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(246, 'plato principal ', ' danie główne', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(247, 'pollo ', ' kurczak', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(248, 'pomelo ', ' grejpfrut', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(249, 'poner mesa ', ' nakryć do stołu', 'SP', 'czasownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(250, 'postre ', ' deser', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(251, 'probar ', ' próbować', 'SP', 'czasownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(252, 'queso ', ' ser', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(253, 'remolacha ', ' burak', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(254, 'sal ', ' sól', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(255, 'salado ', ' słony', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(256, 'salchicha ', ' kiełbasa', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(257, 'salsa ', ' sos', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(258, 'sartén ', ' patelnia', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(259, 'sopa ', ' zupa', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(260, 'tarta ', ' ciasto, tarta', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(261, 'taza ', ' kubek', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(262, 'té ', ' herbata', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(263, 'tenedor ', ' widelec', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(264, 'tomate ', ' pomidor', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(265, 'vinagre ', ' ocet', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(266, 'vino ', ' wino', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(267, 'zanahoria ', ' marchewka', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(268, 'zumo ', ' sok', 'SP', 'rzeczownik', 'kuchnia', '', '', 'basic', NULL, NULL),
(269, 'coś', 'algo', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:39:34', '2020-08-12 16:39:34'),
(270, 'prawda', 'verdad', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:40:11', '2020-08-12 16:40:11'),
(271, 'przepraszam', 'lo siento', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:40:27', '2020-08-12 16:40:27'),
(272, 'ktoś', 'alguien', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:40:42', '2020-08-12 16:40:42'),
(273, 'inny', 'otra', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:41:00', '2020-08-12 16:41:00'),
(274, 'później', 'después', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:41:19', '2020-08-12 16:41:19'),
(275, 'nie ma za co', 'de nada', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:43:24', '2020-08-12 16:43:24'),
(276, 'słowo', 'palabra', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:44:09', '2020-08-12 16:44:09'),
(277, 'zachwycano', 'encantado', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:44:28', '2020-08-12 16:44:28'),
(278, 'żaden', 'ninguno', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:45:10', '2020-08-12 16:45:10'),
(279, 'sąsiad', 'vecino', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:45:21', '2020-08-12 16:45:21'),
(280, 'klucz', 'llave', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:45:39', '2020-08-12 16:45:39'),
(281, 'dywano', 'alfombra', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:45:58', '2020-08-12 16:45:58'),
(282, 'brud', 'suciedad', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:46:23', '2020-08-12 16:46:23'),
(283, 'brudny', 'sucio', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:46:30', '2020-08-12 16:46:30'),
(284, 'ile', 'cuanto', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:47:10', '2020-08-12 16:47:10'),
(285, 'siedem', 'siete', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:47:21', '2020-08-12 16:47:21'),
(286, 'osiem', 'ocho', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:47:26', '2020-08-12 16:47:26'),
(287, 'dziewieć', 'nueve', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:47:34', '2020-08-12 16:47:34'),
(288, 'jedenaście', 'once', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:47:42', '2020-08-12 16:47:42'),
(289, 'dwanaście', 'doce', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:47:50', '2020-08-12 16:47:50'),
(290, 'trzynaście', 'trece', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:47:54', '2020-08-12 16:47:54'),
(291, 'czternaście', 'catorce', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:48:04', '2020-08-12 16:48:04'),
(292, 'piętnaście', 'quince', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:48:10', '2020-08-12 16:48:10'),
(293, 'szesnaście', 'dieciséis', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:48:15', '2020-08-12 16:48:15'),
(294, 'treinta', 'trzydzieści', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:49:05', '2020-08-12 16:49:05'),
(295, 'czterdzieści', 'cuarenta', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:49:11', '2020-08-12 16:49:11'),
(296, 'pięćdziesiąt', 'cincuenta', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:49:20', '2020-08-12 16:49:20'),
(297, 'sześćdziesiąt', 'sesenta', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:49:23', '2020-08-12 16:49:23'),
(298, 'siedemdziesiąt', 'setenta', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:49:29', '2020-08-12 16:49:29'),
(299, 'dziewięćdziesiąt', 'noventa', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:49:35', '2020-08-12 16:49:35'),
(300, 'osiemdziesiąt', 'ochenta', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:49:39', '2020-08-12 16:49:39'),
(301, 'przed', 'antes', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:51:51', '2020-08-12 16:51:51'),
(302, 'po, potem', 'después', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:52:03', '2020-08-12 16:52:03'),
(303, 'lekki', 'ligero', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:53:57', '2020-08-12 16:53:57'),
(304, 'ciężki', 'pesado', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:54:02', '2020-08-12 16:54:02'),
(305, 'pełny', 'lleno', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:54:09', '2020-08-12 16:54:09'),
(306, 'pusty', 'vacío', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:54:15', '2020-08-12 16:54:15'),
(307, 'puszka', 'lata', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:54:30', '2020-08-12 16:54:30'),
(308, 'długi', 'largo', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:54:49', '2020-08-12 16:54:49'),
(309, 'głowa', 'cabeza', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:55:03', '2020-08-12 16:55:03'),
(310, 'twarz', 'cara', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:55:18', '2020-08-12 16:55:18'),
(311, 'oko', 'ojo', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:55:29', '2020-08-12 16:55:29'),
(312, 'ucho', 'oreja', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:55:37', '2020-08-12 16:55:37'),
(313, 'nos', 'nariz', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:55:45', '2020-08-12 16:55:45'),
(314, 'usta', 'boca', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:55:49', '2020-08-12 16:55:49'),
(315, 'gardło', 'garganta', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:55:59', '2020-08-12 16:55:59'),
(316, 'klatka', 'pecho', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:56:10', '2020-08-12 16:56:10'),
(317, 'sangre', 'krew', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:56:20', '2020-08-12 16:56:20'),
(318, 'ręka', 'mano', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:56:36', '2020-08-12 16:56:36'),
(319, 'ręka', 'dedo', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:56:42', '2020-08-12 16:56:42'),
(320, 'brzuch', 'vientre', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:56:48', '2020-08-12 16:56:48'),
(321, 'żołądek', 'estómago', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:56:52', '2020-08-12 16:56:52'),
(322, 'noga', 'pierna', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:56:57', '2020-08-12 16:56:57'),
(323, 'kolano', 'rodilla', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:57:02', '2020-08-12 16:57:02'),
(324, 'stopa', 'pie', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:57:07', '2020-08-12 16:57:07'),
(325, 'skóra', 'piel', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:57:12', '2020-08-12 16:57:12'),
(326, 'list', 'carta', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:57:25', '2020-08-12 16:57:25'),
(327, 'uprzejmy', 'amable', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:57:59', '2020-08-12 16:57:59'),
(328, 'nieśmiały', 'tímido', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:58:17', '2020-08-12 16:58:17'),
(329, 'podróż', 'viaje', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:58:32', '2020-08-12 16:58:32'),
(330, 'torba', 'bolsa', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:58:45', '2020-08-12 16:58:45'),
(331, 'brać', 'tomar', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:59:20', '2020-08-12 16:59:20'),
(332, 'przyjemny', 'agradable', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:59:30', '2020-08-12 16:59:30'),
(333, 'powrót', 'la vuelta', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 16:59:46', '2020-08-12 16:59:46'),
(334, 'bułka', 'panecillo', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:02:50', '2020-08-12 17:02:50'),
(335, 'kroić', 'cortar', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:02:58', '2020-08-12 17:02:58'),
(336, 'masło', 'mantequilla', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:03:06', '2020-08-12 17:03:06'),
(337, 'miód', 'la miel', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:03:16', '2020-08-12 17:03:16'),
(338, 'szynka', 'jamón', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:03:36', '2020-08-12 17:03:36'),
(339, 'kiełbasa', 'salchicha', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:03:41', '2020-08-12 17:03:41'),
(340, 'frytki', 'las patatas fritas', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:04:05', '2020-08-12 17:04:05'),
(341, 'smażyć', 'freír', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:04:10', '2020-08-12 17:04:10'),
(342, 'tapa', 'przekąska', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:05:33', '2020-08-12 17:05:33'),
(343, 'pilny', 'aplicado', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:06:40', '2020-08-12 17:06:40'),
(344, 'leniwy', 'vago', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:06:45', '2020-08-12 17:06:45'),
(345, 'uniwerek', 'la universidad', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:07:03', '2020-08-12 17:07:03'),
(346, 'uczęszczać', 'asistir', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:07:14', '2020-08-12 17:07:14'),
(347, 'renunciar', 'rezygnować', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-08-12 17:15:07', '2020-08-12 17:15:07'),
(349, 'nieprzygotowany', 'desprevenido', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-09-14 16:27:12', '2020-09-14 16:27:12'),
(350, 'zagrożenie', 'peligro', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-09-14 16:27:52', '2020-09-14 16:27:52'),
(351, 'nagle', 'repentinamente', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-09-14 16:28:55', '2020-09-14 16:28:55'),
(352, 'zdenerwowany', 'enojado', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-09-14 16:29:18', '2020-09-14 16:29:18'),
(353, 'zaskoczyć', 'sorpresa', 'SP', 'nieprzypisane', 'nieprzypisane', '', '', '', '2020-09-14 16:30:49', '2020-09-14 16:30:49'),
(354, 'buntować się', 'aufzubegehren', 'DE', 'czasownik', 'nieprzypisane', '', '', '', '2021-05-25 19:02:18', '2021-05-25 19:02:18'),
(355, 'w końcu', 'schließlich', 'DE', 'nieprzypisane', 'nieprzypisane', '', '', '', '2021-06-13 10:54:33', '2021-06-13 10:54:33'),
(356, 'sondaże', 'Umfragewerte', 'DE', 'nieprzypisane', 'nieprzypisane', '', '', '', '2021-06-13 10:54:40', '2021-06-13 10:54:40'),
(357, 'wyjątek', 'Ausnahme', 'DE', 'nieprzypisane', 'nieprzypisane', '', '', '', '2021-06-13 10:54:52', '2021-06-13 10:54:52'),
(358, 'przyzwyczajony', 'gewohnen', 'DE', 'nieprzypisane', 'nieprzypisane', '', '', '', '2021-06-13 10:55:06', '2021-06-13 10:55:06'),
(359, 'reklama', 'Werbung', 'DE', 'nieprzypisane', 'nieprzypisane', '', '', '', '2021-06-13 10:55:38', '2021-06-13 10:55:38'),
(360, 'przeżywać', 'erleben', 'DE', 'nieprzypisane', 'nieprzypisane', '', '', '', '2021-06-13 11:00:17', '2021-06-13 11:00:17'),
(361, 'wymknąć się spod kontroli', 'aus den Fugen geraten', 'DE', 'nieprzypisane', 'nieprzypisane', '', '', '', '2021-06-13 11:02:41', '2021-06-13 11:02:41'),
(362, 'za wszelką cenę', 'um jeden Preis', 'DE', 'nieprzypisane', 'nieprzypisane', '', '', '', '2021-06-13 11:03:49', '2021-06-13 11:03:49'),
(363, 'wyrazić', 'äußern', 'DE', 'czasownik', 'człowiek', '', '', '', '2021-06-26 04:54:52', '2021-06-26 04:54:52'),
(364, 'przeciętny', 'mittelmäßig', 'DE', 'przymiotnik', 'nieprzypisane', '', '', '', '2021-06-26 04:58:31', '2021-06-26 04:58:31'),
(365, 'transferować', 'überweisen', 'DE', 'czasownik', 'nieprzypisane', '', '', '', '2021-06-26 05:01:37', '2021-06-26 05:01:37'),
(366, 'zaskakujący', 'verwunderlich', 'DE', 'przymiotnik', 'nieprzypisane', '', '', '', '2021-06-26 05:03:54', '2021-06-26 05:03:54'),
(367, 'odrzucić', 'ablehnen', 'DE', 'przymiotnik', 'nieprzypisane', '', '', '', '2021-06-26 05:05:26', '2021-06-26 05:05:26'),
(368, 'wzbronić się', 'sich weigern', 'DE', 'czasownik', 'nieprzypisane', '', '', '', '2021-06-26 05:07:50', '2021-06-26 05:07:50'),
(369, 'zawieść', 'versagen', 'DE', 'czasownik', 'nieprzypisane', '', '', '', '2021-07-05 12:19:39', '2021-07-05 12:19:39'),
(370, 'dym', 'Rauch', 'DE', 'rzeczownik', 'nieprzypisane', 'der', '', '', '2021-07-27 15:57:11', '2021-07-27 15:57:11'),
(371, 'wyczerpany', 'erschöpft', 'DE', 'przymiotnik', 'człowiek', '', '', '', '2021-07-27 16:12:56', '2021-07-27 16:12:56');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;