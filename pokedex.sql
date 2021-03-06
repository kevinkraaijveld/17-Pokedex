-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2022 at 12:45 PM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokedex`
--

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE IF NOT EXISTS `pokemon` (
  `poke_id` int(11) NOT NULL,
  `poke_name` varchar(255) NOT NULL,
  `poke_type_1` varchar(255) NOT NULL,
  `poke_type_2` varchar(255) NOT NULL,
  `evolves_into` int(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=652 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`poke_id`, `poke_name`, `poke_type_1`, `poke_type_2`, `evolves_into`) VALUES
(1, 'Bulbasaur', '1', '6', 2),
(2, 'Ivysaur', '1', '6', 3),
(3, 'Venusaur', '1', '6', 0),
(4, 'Charmander', '2', '', 5),
(5, 'Charmeleon', '2', '', 6),
(6, 'Charizard', '2', '7', 0),
(7, 'Squirtle', '3', '', 8),
(8, 'Wartortle', '3', '', 9),
(9, 'Blastoise', '3', '', 0),
(10, 'Caterpie', '4', '', 11),
(11, 'Metapod', '4', '', 12),
(12, 'Butterfree', '4', '7', 0),
(13, 'Weedle', '4', '6', 14),
(14, 'Kakuna', '4', '6', 15),
(15, 'Beedrill', '4', '6', 0),
(16, 'Pidgey', '5', '7', 17),
(17, 'Pidgeotto', '5', '7', 18),
(18, 'Pidgeot', '5', '7', 0),
(19, 'Rattata', '5', '', 20),
(20, 'Raticate', '5', '', 0),
(21, 'Spearow', '5', '7', 22),
(22, 'Fearow', '5', '7', 0),
(23, 'Ekans', '6', '', 24),
(24, 'Arbok', '6', '', 0),
(25, 'Pikachu', '8', '', 26),
(26, 'Raichu', '8', '', 0),
(27, 'Sandshrew', '9', '', 28),
(28, 'Sandslash', '9', '', 0),
(29, 'Nidoran f', '6', '', 30),
(30, 'Nidorina', '6', '', 31),
(31, 'Nidoqueen', '6', '9', 0),
(32, 'Nidoran m', '6', '', 33),
(33, 'Nidorino', '6', '', 34),
(34, 'Nidoking', '6', '9', 0),
(35, 'Clefairy', '5', '', 36),
(36, 'Clefable', '5', '', 0),
(37, 'Vulpix', '2', '', 38),
(38, 'Ninetales', '2', '', 0),
(39, 'Jigglypuff', '5', '', 40),
(40, 'Wigglytuff', '5', '', 0),
(41, 'Zubat', '6', '7', 42),
(42, 'Golbat', '6', '7', 169),
(43, 'Oddish', '1', '6', 44),
(44, 'Gloom', '1', '6', 45),
(45, 'Vileplume', '1', '6', 0),
(46, 'Paras', '4', '1', 47),
(47, 'Parasect', '4', '1', 0),
(48, 'Venonat', '4', '6', 49),
(49, 'Venomoth', '4', '6', 0),
(50, 'Diglett', '9', '', 51),
(51, 'Dugtrio', '9', '', 0),
(52, 'Meowth', '5', '', 53),
(53, 'Persian', '5', '', 0),
(54, 'Psyduck', '3', '', 55),
(55, 'Golduck', '3', '', 0),
(56, 'Mankey', '10', '', 57),
(57, 'Primeape', '10', '', 0),
(58, 'Growlithe', '2', '', 59),
(59, 'Arcanine', '2', '', 0),
(60, 'Poliwag', '3', '', 61),
(61, 'Poliwhirl', '3', '', 62),
(62, 'Poliwrath', '3', '10', 0),
(63, 'Abra', '11', '', 64),
(64, 'Kadabra', '11', '', 65),
(65, 'Alakazam', '11', '', 0),
(66, 'Machop', '10', '', 67),
(67, 'Machoke', '10', '', 68),
(68, 'Machamp', '10', '', 0),
(69, 'Bellsprout', '1', '6', 70),
(70, 'Weepinbell', '1', '6', 71),
(71, 'Victreebel', '1', '6', 0),
(72, 'Tentacool', '3', '6', 73),
(73, 'Tentacruel', '3', '6', 0),
(74, 'Geodude', '12', '9', 75),
(75, 'Graveler', '12', '9', 76),
(76, 'Golem', '12', '9', 0),
(77, 'Ponyta', '2', '', 78),
(78, 'Rapidash', '2', '', 0),
(79, 'Slowpoke', '3', '11', 80),
(80, 'Slowbro', '3', '11', 199),
(81, 'Magnemite', '8', '13', 82),
(82, 'Magneton', '8', '13', 462),
(83, 'Farfetch''d', '5', '7', 0),
(84, 'Doduo', '5', '7', 85),
(85, 'Dodrio', '5', '7', 0),
(86, 'Seel', '3', '', 87),
(87, 'Dewgong', '3', '14', 0),
(88, 'Grimer', '6', '', 89),
(89, 'Muk', '6', '', 0),
(90, 'Shellder', '3', '', 91),
(91, 'Cloyster', '3', '14', 0),
(92, 'Gastly', '15', '6', 93),
(93, 'Haunter', '15', '6', 94),
(94, 'Gengar', '15', '6', 0),
(95, 'Onix', '12', '9', 208),
(96, 'Drowzee', '11', '', 97),
(97, 'Hypno', '11', '', 0),
(98, 'Krabby', '3', '', 99),
(99, 'Kingler', '3', '', 0),
(100, 'Voltorb', '8', '', 101),
(101, 'Electrode', '8', '', 0),
(102, 'Exeggcute', '1', '11', 103),
(103, 'Exeggutor', '1', '11', 0),
(104, 'Cubone', '9', '', 105),
(105, 'Marowak', '9', '', 0),
(106, 'Hitmonlee', '10', '', 0),
(107, 'Hitmonchan', '10', '', 0),
(108, 'Lickitung', '5', '', 463),
(109, 'Koffing', '6', '', 110),
(110, 'Weezing', '6', '', 0),
(111, 'Rhyhorn', '9', '12', 112),
(112, 'Rhydon', '9', '12', 464),
(113, 'Chansey', '5', '', 242),
(114, 'Tangela', '1', '', 465),
(115, 'Kangaskhan', '5', '', 0),
(116, 'Horsea', '3', '', 117),
(117, 'Seadra', '3', '', 230),
(118, 'Goldeen', '3', '', 119),
(119, 'Seaking', '3', '', 0),
(120, 'Staryu', '3', '', 121),
(121, 'Starmie', '3', '11', 0),
(122, 'Mr. Mime', '11', '', 0),
(123, 'Scyther', '4', '7', 212),
(124, 'Jynx', '14', '11', 0),
(125, 'Electabuzz', '8', '', 466),
(126, 'Magmar', '2', '', 467),
(127, 'Pinsir', '4', '', 0),
(128, 'Tauros', '5', '', 0),
(129, 'Magikarp', '3', '', 130),
(130, 'Gyarados', '3', '7', 0),
(131, 'Lapras', '3', '14', 0),
(132, 'Ditto', '5', '', 0),
(133, 'Eevee', '5', '', 0),
(134, 'Vaporeon', '3', '', 0),
(135, 'Jolteon', '8', '', 0),
(136, 'Flareon', '2', '', 0),
(137, 'Porygon', '5', '', 233),
(138, 'Omanyte', '12', '3', 139),
(139, 'Omastar', '12', '3', 0),
(140, 'Kabuto', '12', '3', 141),
(141, 'Kabutops', '12', '3', 0),
(142, 'Aerodactyl', '12', '7', 0),
(143, 'Snorlax', '5', '', 0),
(144, 'Articuno', '14', '7', 0),
(145, 'Zapdos', '8', '7', 0),
(146, 'Moltres', '2', '7', 0),
(147, 'Dratini', '16', '', 148),
(148, 'Dragonair', '16', '', 149),
(149, 'Dragonite', '16', '7', 0),
(150, 'Mewtwo', '11', '', 0),
(151, 'Mew', '11', '', 0),
(152, 'Chikorita', '1', '', 153),
(153, 'Bayleef', '1', '', 154),
(154, 'Meganium', '1', '', 0),
(155, 'Cyndaquil', '2', '', 156),
(156, 'Quilava', '2', '', 157),
(157, 'Typhlosion', '2', '', 0),
(158, 'Totodile', '3', '', 159),
(159, 'Croconaw', '3', '', 160),
(160, 'Feraligatr', '3', '', 0),
(161, 'Sentret', '5', '', 162),
(162, 'Furret', '5', '', 0),
(163, 'Hoothoot', '5', '7', 164),
(164, 'Noctowl', '5', '7', 0),
(165, 'Ledyba', '4', '7', 166),
(166, 'Ledian', '4', '7', 0),
(167, 'Spinarak', '4', '6', 168),
(168, 'Ariados', '4', '6', 0),
(169, 'Crobat', '6', '7', 0),
(170, 'Chinchou', '3', '8', 171),
(171, 'Lanturn', '3', '8', 0),
(172, 'Pichu', '8', '', 25),
(173, 'Cleffa', '5', '', 35),
(174, 'Igglybuff', '5', '', 39),
(175, 'Togepi', '5', '', 176),
(176, 'Togetic', '5', '7', 468),
(177, 'Natu', '11', '7', 178),
(178, 'Xatu', '11', '7', 0),
(179, 'Mareep', '8', '', 180),
(180, 'Flaaffy', '8', '', 181),
(181, 'Ampharos', '8', '', 0),
(182, 'Bellossom', '1', '', 0),
(183, 'Marill', '3', '', 184),
(184, 'Azumarill', '3', '', 0),
(185, 'Sudowoodo', '12', '', 0),
(186, 'Politoed', '3', '', 0),
(187, 'Hoppip', '1', '7', 188),
(188, 'Skiploom', '1', '7', 189),
(189, 'Jumpluff', '1', '7', 0),
(190, 'Aipom', '5', '', 424),
(191, 'Sunkern', '1', '', 192),
(192, 'Sunflora', '1', '', 0),
(193, 'Yanma', '4', '7', 469),
(194, 'Wooper', '3', '9', 195),
(195, 'Quagsire', '3', '9', 0),
(196, 'Espeon', '11', '', 0),
(197, 'Umbreon', '17', '', 0),
(198, 'Murkrow', '17', '7', 430),
(199, 'Slowking', '3', '11', 0),
(200, 'Misdreavus', '15', '', 429),
(201, 'Unown', '11', '', 0),
(202, 'Wobbuffet', '11', '', 0),
(203, 'Girafarig', '5', '11', 0),
(204, 'Pineco', '4', '', 205),
(205, 'Forretress', '4', '13', 0),
(206, 'Dunsparce', '5', '', 0),
(207, 'Gligar', '9', '7', 472),
(208, 'Steelix', '13', '9', 0),
(209, 'Snubbull', '5', '', 210),
(210, 'Granbull', '5', '', 0),
(211, 'Qwilfish', '3', '6', 0),
(212, 'Scizor', '4', '13', 0),
(213, 'Shuckle', '4', '12', 0),
(214, 'Heracross', '4', '10', 0),
(215, 'Sneasel', '17', '14', 461),
(216, 'Teddiursa', '5', '', 217),
(217, 'Ursaring', '5', '', 0),
(218, 'Slugma', '2', '', 219),
(219, 'Magcargo', '2', '12', 0),
(220, 'Swinub', '14', '9', 221),
(221, 'Piloswine', '14', '9', 473),
(222, 'Corsola', '3', '12', 0),
(223, 'Remoraid', '3', '', 224),
(224, 'Octillery', '3', '', 0),
(225, 'Delibird', '14', '7', 0),
(226, 'Mantine', '3', '7', 0),
(227, 'Skarmory', '13', '7', 0),
(228, 'Houndour', '17', '2', 229),
(229, 'Houndoom', '17', '2', 0),
(230, 'Kingdra', '3', '16', 0),
(231, 'Phanpy', '9', '', 232),
(232, 'Donphan', '9', '', 0),
(233, 'Porygon2', '5', '', 474),
(234, 'Stantler', '5', '', 0),
(235, 'Smeargle', '5', '', 0),
(236, 'Tyrogue', '10', '', 0),
(237, 'Hitmontop', '10', '', 0),
(238, 'Smoochum', '14', '11', 124),
(239, 'Elekid', '8', '', 125),
(240, 'Magby', '2', '', 126),
(241, 'Miltank', '5', '', 0),
(242, 'Blissey', '5', '', 0),
(243, 'Raikou', '8', '', 0),
(244, 'Entei', '2', '', 0),
(245, 'Suicune', '3', '', 0),
(246, 'Larvitar', '12', '9', 247),
(247, 'Pupitar', '12', '9', 248),
(248, 'Tyranitar', '12', '17', 0),
(249, 'Lugia', '11', '7', 0),
(250, 'Ho-oh', '2', '7', 0),
(251, 'Celebi', '11', '1', 0),
(252, 'Treecko', '1', '', 253),
(253, 'Grovyle', '1', '', 254),
(254, 'Sceptile', '1', '', 0),
(255, 'Torchic', '2', '', 256),
(256, 'Combusken', '2', '10', 257),
(257, 'Blaziken', '2', '10', 0),
(258, 'Mudkip', '3', '', 259),
(259, 'Marshtomp', '3', '9', 260),
(260, 'Swampert', '3', '9', 0),
(261, 'Poochyena', '17', '', 262),
(262, 'Mightyena', '17', '', 0),
(263, 'Zigzagoon', '5', '', 264),
(264, 'Linoone', '5', '', 0),
(265, 'Wurmple', '4', '', 0),
(266, 'Silcoon', '4', '', 267),
(267, 'Beautifly', '4', '7', 0),
(268, 'Cascoon', '4', '', 269),
(269, 'Dustox', '4', '6', 0),
(270, 'Lotad', '3', '1', 271),
(271, 'Lombre', '3', '1', 272),
(272, 'Ludicolo', '3', '1', 0),
(273, 'Seedot', '1', '', 274),
(274, 'Nuzleaf', '1', '17', 275),
(275, 'Shiftry', '1', '17', 0),
(276, 'Taillow', '5', '7', 277),
(277, 'Swellow', '5', '7', 0),
(278, 'Wingull', '3', '7', 279),
(279, 'Pelipper', '3', '7', 0),
(280, 'Ralts', '11', '', 281),
(281, 'Kirlia', '11', '', 282),
(282, 'Gardevoir', '11', '', 0),
(283, 'Surskit', '4', '3', 284),
(284, 'Masquerain', '4', '7', 0),
(285, 'Shroomish', '1', '', 286),
(286, 'Breloom', '1', '10', 0),
(287, 'Slakoth', '5', '', 288),
(288, 'Vigoroth', '5', '', 289),
(289, 'Slaking', '5', '', 0),
(290, 'Nincada', '4', '9', 291),
(291, 'Ninjask', '4', '7', 292),
(292, 'Shedinja', '4', '15', 0),
(293, 'Whismur', '5', '', 294),
(294, 'Loudred', '5', '', 295),
(295, 'Exploud', '5', '', 0),
(296, 'Makuhita', '10', '', 297),
(297, 'Hariyama', '10', '', 0),
(298, 'Azurill', '5', '', 183),
(299, 'Nosepass', '12', '', 476),
(300, 'Skitty', '5', '', 301),
(301, 'Delcatty', '5', '', 0),
(302, 'Sableye', '17', '15', 0),
(303, 'Mawile', '13', '', 0),
(304, 'Aron', '13', '12', 305),
(305, 'Lairon', '13', '12', 306),
(306, 'Aggron', '13', '12', 0),
(307, 'Meditite', '10', '11', 308),
(308, 'Medicham', '10', '11', 0),
(309, 'Electrike', '8', '', 310),
(310, 'Manectric', '8', '', 0),
(311, 'Plusle', '8', '', 0),
(312, 'Minun', '8', '', 0),
(313, 'Volbeat', '4', '', 0),
(314, 'Illumise', '4', '', 0),
(315, 'Roselia', '1', '6', 407),
(316, 'Gulpin', '6', '', 317),
(317, 'Swalot', '6', '', 0),
(318, 'Carvanha', '3', '17', 319),
(319, 'Sharpedo', '3', '17', 0),
(320, 'Wailmer', '3', '', 321),
(321, 'Wailord', '3', '', 0),
(322, 'Numel', '2', '9', 323),
(323, 'Camerupt', '2', '9', 0),
(324, 'Torkoal', '2', '', 0),
(325, 'Spoink', '11', '', 326),
(326, 'Grumpig', '11', '', 0),
(327, 'Spinda', '5', '', 0),
(328, 'Trapinch', '9', '', 329),
(329, 'Vibrava', '9', '16', 330),
(330, 'Flygon', '9', '16', 0),
(331, 'Cacnea', '1', '', 332),
(332, 'Cacturne', '1', '17', 0),
(333, 'Swablu', '5', '7', 334),
(334, 'Altaria', '16', '7', 0),
(335, 'Zangoose', '5', '', 0),
(336, 'Seviper', '6', '', 0),
(337, 'Lunatone', '12', '11', 0),
(338, 'Solrock', '12', '11', 0),
(339, 'Barboach', '3', '9', 340),
(340, 'Whiscash', '3', '9', 0),
(341, 'Corphish', '3', '', 342),
(342, 'Crawdaunt', '3', '17', 0),
(343, 'Baltoy', '9', '11', 344),
(344, 'Claydol', '9', '11', 0),
(345, 'Lileep', '12', '1', 346),
(346, 'Cradily', '12', '1', 0),
(347, 'Anorith', '12', '4', 348),
(348, 'Armaldo', '12', '4', 0),
(349, 'Feebas', '3', '', 350),
(350, 'Milotic', '3', '', 0),
(351, 'Castform', '5', '', 0),
(352, 'Kecleon', '5', '', 0),
(353, 'Shuppet', '15', '', 354),
(354, 'Banette', '15', '', 0),
(355, 'Duskull', '15', '', 356),
(356, 'Dusclops', '15', '', 477),
(357, 'Tropius', '1', '7', 0),
(358, 'Chimecho', '11', '', 0),
(359, 'Absol', '17', '', 0),
(360, 'Wynaut', '11', '', 202),
(361, 'Snorunt', '14', '', 362),
(362, 'Glalie', '14', '', 0),
(363, 'Spheal', '14', '3', 364),
(364, 'Sealeo', '14', '3', 365),
(365, 'Walrein', '14', '3', 0),
(366, 'Clamperl', '3', '', 0),
(367, 'Huntail', '3', '', 0),
(368, 'Gorebyss', '3', '', 0),
(369, 'Relicanth', '3', '12', 0),
(370, 'Luvdisc', '3', '', 0),
(371, 'Bagon', '16', '', 372),
(372, 'Shelgon', '16', '', 373),
(373, 'Salamence', '16', '7', 0),
(374, 'Beldum', '13', '11', 375),
(375, 'Metang', '13', '11', 376),
(376, 'Metagross', '13', '11', 0),
(377, 'Regirock', '12', '', 0),
(378, 'Regice', '14', '', 0),
(379, 'Registeel', '13', '', 0),
(380, 'Latias', '16', '11', 0),
(381, 'Latios', '16', '11', 0),
(382, 'Kyogre', '3', '', 0),
(383, 'Groudon', '9', '', 0),
(384, 'Rayquaza', '16', '7', 0),
(385, 'Jirachi', '13', '11', 0),
(386, 'Deoxys (N)', '11', '', 0),
(387, 'Turtwig', '1', '', 388),
(388, 'Grotle', '1', '', 389),
(389, 'Torterra', '1', '9', 0),
(390, 'Chimchar', '2', '', 391),
(391, 'Monferno', '2', '10', 392),
(392, 'Infernape', '2', '10', 0),
(393, 'Piplup', '3', '', 394),
(394, 'Prinplup', '3', '', 395),
(395, 'Empoleon', '3', '13', 0),
(396, 'Starly', '5', '7', 397),
(397, 'Staravia', '5', '7', 398),
(398, 'Staraptor', '5', '7', 0),
(399, 'Bidoof', '5', '', 400),
(400, 'Bibarel', '5', '3', 0),
(401, 'Kricketot', '4', '', 402),
(402, 'Kricketune', '4', '', 0),
(403, 'Shinx', '8', '', 404),
(404, 'Luxio', '8', '', 405),
(405, 'Luxray', '8', '', 0),
(406, 'Budew', '1', '6', 315),
(407, 'Roserade', '1', '6', 0),
(408, 'Cranidos', '12', '', 409),
(409, 'Rampardos', '12', '', 0),
(410, 'Shieldon', '12', '13', 411),
(411, 'Bastiodon', '12', '13', 0),
(412, 'Burmy', '4', '', 0),
(413, 'Wormadam (P)', '4', '1', 0),
(414, 'Mothim', '4', '7', 0),
(415, 'Combee', '4', '7', 416),
(416, 'Vespiquen', '4', '7', 0),
(417, 'Pachirisu', '8', '', 0),
(418, 'Buizel', '3', '', 419),
(419, 'Floatzel', '3', '', 0),
(420, 'Cherubi', '1', '', 421),
(421, 'Cherrim', '1', '', 0),
(422, 'Shellos', '3', '', 423),
(423, 'Gastrodon', '3', '9', 0),
(424, 'Ambipom', '5', '', 0),
(425, 'Drifloon', '15', '7', 426),
(426, 'Drifblim', '15', '7', 0),
(427, 'Buneary', '5', '', 428),
(428, 'Lopunny', '5', '', 0),
(429, 'Mismagius', '15', '', 0),
(430, 'Honchkrow', '17', '7', 0),
(431, 'Glameow', '5', '', 432),
(432, 'Purugly', '5', '', 0),
(433, 'Chingling', '11', '', 358),
(434, 'Stunky', '6', '17', 435),
(435, 'Skuntank', '6', '17', 0),
(436, 'Bronzor', '13', '11', 437),
(437, 'Bronzong', '13', '11', 0),
(438, 'Bonsly', '12', '', 185),
(439, 'Mime Jr.', '11', '', 122),
(440, 'Happiny', '5', '', 113),
(441, 'Chatot', '5', '7', 0),
(442, 'Spiritomb', '15', '17', 0),
(443, 'Gible', '16', '9', 444),
(444, 'Gabite', '16', '9', 445),
(445, 'Garchomp', '16', '9', 0),
(446, 'Munchlax', '5', '', 143),
(447, 'Riolu', '10', '', 448),
(448, 'Lucario', '10', '13', 0),
(449, 'Hippopotas', '9', '', 450),
(450, 'Hippowdon', '9', '', 0),
(451, 'Skorupi', '6', '4', 452),
(452, 'Drapion', '6', '17', 0),
(453, 'Croagunk', '6', '10', 454),
(454, 'Toxicroak', '6', '10', 0),
(455, 'Carnivine', '1', '', 0),
(456, 'Finneon', '3', '', 457),
(457, 'Lumineon', '3', '', 0),
(458, 'Mantyke', '3', '7', 226),
(459, 'Snover', '14', '1', 460),
(460, 'Abomasnow', '14', '1', 0),
(461, 'Weavile', '17', '14', 0),
(462, 'Magnezone', '8', '13', 0),
(463, 'Lickilicky', '5', '', 0),
(464, 'Rhyperior', '9', '12', 0),
(465, 'Tangrowth', '1', '', 0),
(466, 'Electivire', '8', '', 0),
(467, 'Magmortar', '2', '', 0),
(468, 'Togekiss', '5', '7', 0),
(469, 'Yanmega', '4', '7', 0),
(470, 'Leafeon', '1', '', 0),
(471, 'Glaceon', '14', '', 0),
(472, 'Gliscor', '9', '7', 0),
(473, 'Mamoswine', '14', '9', 0),
(474, 'Porygon-Z', '5', '', 0),
(475, 'Gallade', '11', '10', 0),
(476, 'Probopass', '12', '13', 0),
(477, 'Dusknoir', '15', '', 0),
(478, 'Froslass', '14', '15', 0),
(479, 'Rotom', '8', '15', 0),
(480, 'Uxie', '11', '', 0),
(481, 'Mesprit', '11', '', 0),
(482, 'Azelf', '11', '', 0),
(483, 'Dialga', '13', '16', 0),
(484, 'Palkia', '3', '16', 0),
(485, 'Heatran', '2', '13', 0),
(486, 'Regigigas', '5', '', 0),
(487, 'Giratina', '15', '16', 0),
(488, 'Cresselia', '11', '', 0),
(489, 'Phione', '3', '', 490),
(490, 'Manaphy', '3', '', 0),
(491, 'Darkrai', '17', '', 0),
(492, 'Shaymin', '1', '', 0),
(493, 'Arceus', '5', '', 0),
(494, 'Victini', '11', '2', 0),
(495, 'Snivy', '1', '', 496),
(496, 'Servine', '1', '', 497),
(497, 'Serperior', '1', '', 0),
(498, 'Tepig', '2', '', 499),
(499, 'Pignite', '2', '10', 500),
(500, 'Emboar', '2', '10', 0),
(501, 'Oshawott', '3', '', 502),
(502, 'Dewott', '3', '', 503),
(503, 'Samurott', '3', '', 0),
(504, 'Patrat', '5', '', 505),
(505, 'Watchog', '5', '', 0),
(506, 'Lillipup', '5', '', 507),
(507, 'Herdier', '5', '', 508),
(508, 'Stoutland', '5', '', 0),
(509, 'Purrloin', '17', '', 510),
(510, 'Liepard', '17', '', 0),
(511, 'Pansage', '1', '', 512),
(512, 'Simisage', '1', '', 0),
(513, 'Pansear', '2', '', 514),
(514, 'Simisear', '2', '', 0),
(515, 'Panpour', '3', '', 516),
(516, 'Simipour', '3', '', 0),
(517, 'Munna', '11', '', 518),
(518, 'Musharna', '11', '', 0),
(519, 'Pidove', '5', '7', 520),
(520, 'Tranquill', '5', '7', 521),
(521, 'Unfezant', '5', '7', 0),
(522, 'Blitzle', '8', '', 523),
(523, 'Zebstrika', '8', '', 0),
(524, 'Roggenrola', '12', '', 525),
(525, 'Boldore', '12', '', 526),
(526, 'Gigalith', '12', '', 0),
(527, 'Woobat', '11', '7', 528),
(528, 'Swoobat', '11', '7', 0),
(529, 'Drilbur', '9', '', 530),
(530, 'Excadrill', '9', '13', 0),
(531, 'Audino', '5', '', 0),
(532, 'Timburr', '10', '', 533),
(533, 'Gurdurr', '10', '', 534),
(534, 'Conkeldurr', '10', '', 0),
(535, 'Tympole', '3', '', 536),
(536, 'Palpitoad', '3', '9', 537),
(537, 'Seismitoad', '3', '9', 0),
(538, 'Throh', '10', '', 0),
(539, 'Sawk', '10', '', 0),
(540, 'Sewaddle', '4', '1', 541),
(541, 'Swadloon', '4', '1', 542),
(542, 'Leavanny', '4', '1', 0),
(543, 'Venipede', '4', '6', 544),
(544, 'Whirlipede', '4', '6', 545),
(545, 'Scolipede', '4', '6', 0),
(546, 'Cottonee', '1', '', 547),
(547, 'Whimsicott', '1', '', 0),
(548, 'Petilil', '1', '', 549),
(549, 'Lilligant', '1', '', 0),
(550, 'Basculin', '3', '', 0),
(551, 'Sandile', '9', '17', 552),
(552, 'Krokorok', '9', '17', 553),
(553, 'Krookodile', '9', '17', 0),
(554, 'Darumaka', '2', '', 555),
(555, 'Darmanitan', '2', '', 0),
(556, 'Maractus', '1', '', 0),
(557, 'Dwebble', '4', '12', 558),
(558, 'Crustle', '4', '12', 0),
(559, 'Scraggy', '17', '10', 560),
(560, 'Scrafty', '17', '10', 0),
(561, 'Sigilyph', '11', '7', 562),
(562, 'Yamask', '15', '', 563),
(563, 'Cofagrigus', '15', '', 0),
(564, 'Tirtouga', '3', '12', 565),
(565, 'Carracosta', '3', '12', 0),
(566, 'Archen', '12', '7', 567),
(567, 'Archeops', '12', '7', 0),
(568, 'Trubbish', '6', '', 569),
(569, 'Garbodor', '6', '', 0),
(570, 'Zorua', '17', '', 571),
(571, 'Zoroark', '17', '', 0),
(572, 'Minccino', '5', '', 573),
(573, 'Ciccino', '5', '', 0),
(574, 'Gothita', '11', '', 575),
(575, 'Gothorita', '11', '', 576),
(576, 'Gothitelle', '11', '', 0),
(577, 'Solosis', '11', '', 578),
(578, 'Duosion', '11', '', 579),
(579, 'Reuniclus', '11', '', 0),
(580, 'Ducklett', '3', '7', 581),
(581, 'Swanna', '3', '7', 0),
(582, 'Vanillite', '14', '', 583),
(583, 'Vanillish', '14', '', 584),
(584, 'Vanilluxe', '14', '', 0),
(585, 'Deerling', '5', '1', 586),
(586, 'Sawsbuck', '5', '1', 0),
(587, 'Emolga', '8', '7', 0),
(588, 'Karrablast', '4', '', 589),
(589, 'Escavalier', '4', '13', 0),
(590, 'Foongus', '1', '6', 591),
(591, 'Amoonguss', '1', '6', 0),
(592, 'Frillish', '3', '15', 593),
(593, 'Jellicent', '3', '15', 0),
(594, 'Alomomola', '3', '', 0),
(595, 'Joltik', '4', '8', 596),
(596, 'Galvantula', '4', '8', 0),
(597, 'Ferroseed', '1', '13', 598),
(598, 'Ferrothorn', '1', '13', 0),
(599, 'Klink', '13', '', 600),
(600, 'Klang', '13', '', 601),
(601, 'Klinklang', '13', '', 0),
(602, 'Tynamo', '8', '', 603),
(603, 'Eelektrik', '8', '', 604),
(604, 'Eelektross', '8', '', 0),
(605, 'Elgyem', '11', '', 606),
(606, 'Beheeyem', '11', '', 0),
(607, 'Litwick', '15', '2', 608),
(608, 'Lampent', '15', '2', 609),
(609, 'Chandelure', '15', '2', 0),
(610, 'Axew', '16', '', 611),
(611, 'Fraxure', '16', '', 612),
(612, 'Haxorus', '16', '', 0),
(613, 'Cubchoo', '14', '', 614),
(614, 'Beartic', '14', '', 0),
(615, 'Cryogonal', '14', '', 0),
(616, 'Shelmet', '4', '', 617),
(617, 'Accelgor', '4', '', 0),
(618, 'Stunfisk', '9', '8', 0),
(619, 'Mienfoo', '10', '', 620),
(620, 'Mienshao', '10', '', 0),
(621, 'Druddigon', '16', '', 0),
(622, 'Golett', '9', '15', 623),
(623, 'Golurk', '9', '15', 0),
(624, 'Pawniard', '17', '13', 625),
(625, 'Bisharp', '17', '13', 0),
(626, 'Bouffalant', '5', '', 0),
(627, 'Rufflet', '5', '7', 628),
(628, 'Braviary', '5', '7', 0),
(629, 'Vullaby', '17', '7', 630),
(630, 'Mandibuzz', '17', '7', 0),
(631, 'Heatmor', '2', '', 0),
(632, 'Durant', '4', '13', 0),
(633, 'Deino', '17', '16', 634),
(634, 'Zweilous', '17', '16', 635),
(635, 'Hydreigon', '17', '16', 0),
(636, 'Larvesta', '4', '2', 637),
(637, 'Volcarona', '4', '2', 0),
(638, 'Cobalion', '13', '10', 0),
(639, 'Terrakion', '12', '10', 0),
(640, 'Virizion', '1', '10', 0),
(641, 'Tornadus', '7', '', 0),
(642, 'Thundurus', '8', '7', 0),
(643, 'Reshiram', '16', '2', 0),
(644, 'Zekrom', '16', '8', 0),
(645, 'Landorus', '9', '7', 0),
(646, 'Kyurem', '16', '14', 0),
(647, 'Keldeo', '3', '10', 0),
(648, 'Meloetta (A)', '5', '11', 0),
(649, 'Genesect', '4', '13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `type_id` int(4) NOT NULL,
  `type_name` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_name`) VALUES
(1, 'Grass'),
(2, 'Fire'),
(3, 'Water'),
(4, 'Bug'),
(5, 'Normal'),
(6, 'Poison'),
(7, 'Flying'),
(8, 'Electric'),
(9, 'Ground'),
(10, 'Fighting'),
(11, 'Psychic'),
(12, 'Rock'),
(13, 'Steel'),
(14, 'Ice'),
(15, 'Ghost'),
(16, 'Dragon'),
(17, 'Dark');

-- --------------------------------------------------------

--
-- Table structure for table `types_2`
--

CREATE TABLE IF NOT EXISTS `types_2` (
  `type_id_2` int(4) NOT NULL,
  `type_name_2` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types_2`
--

INSERT INTO `types_2` (`type_id_2`, `type_name_2`) VALUES
(1, 'Grass'),
(2, 'Fire'),
(3, 'Water'),
(4, 'Bug'),
(5, 'Normal'),
(6, 'Poison'),
(7, 'Flying'),
(8, 'Electric'),
(9, 'Ground'),
(10, 'Fighting'),
(11, 'Psychic'),
(12, 'Rock'),
(13, 'Steel'),
(14, 'Ice'),
(15, 'Ghost'),
(16, 'Dragon'),
(17, 'Dark');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`poke_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `types_2`
--
ALTER TABLE `types_2`
  ADD PRIMARY KEY (`type_id_2`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `poke_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=652;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `types_2`
--
ALTER TABLE `types_2`
  MODIFY `type_id_2` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
