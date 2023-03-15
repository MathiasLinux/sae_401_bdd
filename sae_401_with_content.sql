-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 15 mars 2023 à 10:38
-- Version du serveur : 10.5.16-MariaDB
-- Version de PHP : 8.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sae401`
--
DROP DATABASE IF EXISTS `sae401`;
CREATE DATABASE IF NOT EXISTS `sae401` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sae401`;

-- --------------------------------------------------------

--
-- Structure de la table `contactForm`
--

CREATE TABLE `contactForm` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `firstName` varchar(32) DEFAULT NULL,
  `lastName` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `escapeGame`
--

CREATE TABLE `escapeGame` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `nameFR` varchar(64) DEFAULT NULL,
  `puzzles` int(11) DEFAULT NULL,
  `adventures` int(11) DEFAULT NULL,
  `spots` int(11) DEFAULT NULL,
  `story` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `descriptionFR` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `escapeGame`
--

INSERT INTO `escapeGame` (`id`, `name`, `nameFR`, `puzzles`, `adventures`, `spots`, `story`, `description`, `descriptionFR`, `address`, `visible`) VALUES
(1, 'The Codex', 'Le Codex', 30, 3, 4, 1, 'Codex includes the complete package. Here you can book all three adventures of the Codex series at a special price. The dates of the three adventures are still open and you can choose freely. The order does not matter.', 'Le Codex comprend le package complet. Ici, vous pouvez réserver les trois aventures de la série Codex à un prix spécial. Les dates des trois aventures sont encore ouvertes et vous pouvez choisir librement. L\'ordre n\'a pas d\'importance.Vorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\nVorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Blankenhornsberg 7, 79241 Ihringen, Germany', 1),
(2, 'In Vino Veritas', 'In Vino Veritas', 10, 1, 2, 1, 'Professor Blankenberg is known worldwide for his achievements in the field of viticulture. It was only thanks to his years of research that in 1870 the entire Kaiserstuhl vineyard was saved from the phylloxera attack [....]', 'Le professeur Blankenberg est mondialement connu pour ses mérites dans le domaine de la viticulture. C\'est uniquement grâce à ses années de recherche qu\'en 1870, l\'ensemble des vignes du Kaiserstuhl a été sauvé de l\'attaque du phylloxéra [....]', 'Blankenhornsberg 7, 79241 Ihringen, Germany', 1),
(3, 'In Cantata Vinum', 'In Cantata Vinum', 15, 1, 3, 1, 'Your Outdoor Escape adventure \"In Cantata Vinum\" starts at the Erleweiher pond in Endingen.\r\n\r\nAnna is accused of witchcraft and begs you to help her. On the way to the stake, she gives you an old bag. You soon realize that something is not quite right. Is this a real witch hunt or a fatal mistake?\r\n\r\nRiddles are not for the faint of heart. You only have two hours to solve the mystery before Anna is burned at the stake.', 'Ton aventure Outdoor Escape \"In Cantata Vinum\" débute à l\'étang d\'Erleweiher à Endingen.\r\n\r\nAnna est accusée de sorcellerie et vous supplie de l\'aider. Sur le chemin du bûcher, elle vous confie un vieux sac. Vous vous rendez vite compte que quelque chose ne se passe pas comme prévu. S\'agit-il d\'une véritable chasse aux sorcières ou d\'une erreur fatale ?\r\n\r\nLes énigmes ne sont pas pour les âmes sensibles. Vous n\'avez que deux heures pour élucider le mystère avant qu\'Anna ne soit réduite en cendres sur le bûcher.', 'Im Erle 36, 79346 Endingen am Kaiserstuhl, Germany', 1),
(4, 'Book of the 7 Seals', 'Livre des 7 Sceaux', 7, 1, 2, 1, 'Story - Book of the Seven Seals\r\n\r\nYou are sitting in your detective\'s office when suddenly the door bursts open. Anton, the well-known shepherd, is standing in front of you. \"Ludwig has disappeared! My favorite lamb!\" he cries breathlessly. Maybe the wolf has torn the animal? But then what\'s the deal with the strange book that the shepherd found in the pasture? He has never seen the book before and it is firmly closed with seven locks. Could it contain clues to Ludwig\'s disappearance? Since you are the best detectives far and wide, the shepherd asks you for help. Can you unravel the mystery and pick up the trail of the wolf? Grab the book with the seven seals and save Ludwig the lamb!', 'Histoire - Le Livre des sept sceaux\r\n\r\nVous êtes assis dans votre bureau de détective quand soudain la porte s\'ouvre. Anton, le berger bien connu de la ville, se tient devant vous. \"Ludwig a disparu ! Mon agneau préféré !\", s\'exclame-t-il à bout de souffle. Peut-être le loup a-t-il dévoré l\'animal ? Mais alors, qu\'en est-il de l\'étrange livre que le berger a trouvé dans le pâturage ? Il n\'a jamais vu ce livre auparavant et il est solidement fermé par sept cadenas. Y trouverait-on des indices sur la disparition de Ludwig ? Comme vous êtes les meilleurs détectives, le berger vous demande de l\'aide. Pourrez-vous résoudre l\'énigme et retrouver la trace du loup ? Saisissez le livre aux sept sceaux et sauvez l\'agneau Ludwig !', 'August-Meier-Weg, 79241 Ihringen, Germany', 1),
(5, 'Curse of the 9 lime trees', 'La malédiction des neuf tilleuls', 12, 2, 1, 1, 'Your outdoor escape adventure \"The Curse of the 9 Lime Trees\" starts at Martingshof-Strauße in Ihringen.\r\n\r\nYou will find an old diary. What you read in it will make your blood run cold. It tells of cruel monks who once lived in the monastery near the nine lime trees and of a curse that hangs over the hill.\r\n\r\nAnyone who lingers there after dark inexplicably disappears.\r\n\r\nRiddles are not for the faint of heart! Prepare yourself for a captivating storyline with a guarantee of horror.', 'Ton outdoor escape aventure \"La malédiction des 9 tilleuls\" débute au Martingshof-Strauße à Ihringen.\r\n\r\nVous trouverez un vieux journal intime. Ce que vous y lisez vous glace le sang. Il y est question de moines cruels qui habitaient autrefois le monastère près des neuf tilleuls et d\'une malédiction qui pèse sur la colline.\r\n\r\nQuiconque s\'y attarde après la tombée de la nuit disparaît inexplicablement.\r\n\r\nLes énigmes ne sont pas pour les âmes sensibles ! Préparez-vous à une intrigue captivante avec une garantie d\'horreur.', 'Martinshöfe 2, 79241 Ihringen, Germany', 1);

-- --------------------------------------------------------

--
-- Structure de la table `escapeGamePrice`
--

CREATE TABLE `escapeGamePrice` (
  `id` int(11) NOT NULL,
  `2_3Persons` float DEFAULT NULL,
  `4Persons` float DEFAULT NULL,
  `5Persons` float DEFAULT NULL,
  `6Persons` float DEFAULT NULL,
  `7Persons` float DEFAULT NULL,
  `8Persons` float DEFAULT NULL,
  `9Persons` float DEFAULT NULL,
  `10Persons` float DEFAULT NULL,
  `11Persons` float DEFAULT NULL,
  `12Persons` float DEFAULT NULL,
  `12PlusPersons` float DEFAULT NULL,
  `id_escapeGame` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `escapeGamePrice`
--

INSERT INTO `escapeGamePrice` (`id`, `2_3Persons`, `4Persons`, `5Persons`, `6Persons`, `7Persons`, `8Persons`, `9Persons`, `10Persons`, `11Persons`, `12Persons`, `12PlusPersons`, `id_escapeGame`) VALUES
(1, 80, 100, 120, 130, 140, 150, 160, 170, 180, 200, 230, 1);

-- --------------------------------------------------------

--
-- Structure de la table `escapeGameSale`
--

CREATE TABLE `escapeGameSale` (
  `id` int(11) NOT NULL,
  `id_reservation` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `giftCard`
--

CREATE TABLE `giftCard` (
  `id` int(11) NOT NULL,
  `type` enum('money','escape') DEFAULT NULL,
  `price` float DEFAULT NULL,
  `nbPersons` tinyint(4) DEFAULT NULL,
  `id_escapeGame` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `giftCard`
--

INSERT INTO `giftCard` (`id`, `type`, `price`, `nbPersons`, `id_escapeGame`) VALUES
(1, 'money', 200, NULL, NULL),
(2, 'escape', NULL, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `giftCardSale`
--

CREATE TABLE `giftCardSale` (
  `id` int(11) NOT NULL,
  `id_giftCard` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleFR` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `positionFR` varchar(255) DEFAULT NULL,
  `task` text DEFAULT NULL,
  `taskFR` text DEFAULT NULL,
  `strength` text DEFAULT NULL,
  `strengthFR` text DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `titleFR`, `position`, `positionFR`, `task`, `taskFR`, `strength`, `strengthFR`, `visible`) VALUES
(1, 'Account Manager', 'Gestionnaire de comptes', 'Permanent position', 'Poste permanent', 'Contact with customers via telephone and e-mail\r\nManage bookings/reservations\r\nManagement of our software/system\r\nGeneral office duties\r\nTeam coordination', 'Contact avec les clients par téléphone et par courrier électronique\r\nGestion des réservations\r\nGestion de notre logiciel/système\r\nTâches générales de bureau\r\nCoordination de l\'équipe', 'Good German, English spoken and written (French an advantage)\r\nConfidence in the use of Word, Excel, Outlook\r\nAffinity to solve complex problem quickly\r\nExperience in HR & Controlling\r\nOrganizational skills', 'Bonne connaissance de l\'allemand et de l\'anglais à l\'oral et à l\'écrit (le français est un atout)\r\nConfiance dans l\'utilisation de Word, Excel, Outlook\r\nAffinité pour la résolution rapide de problèmes complexes\r\nExpérience dans le domaine des ressources humaines et du contrôle de gestion\r\nSens de l\'organisation', 1),
(2, 'Second Job', 'Deuxième Job', 'Permanent Position', 'Position permanente', 'The task of the second job\r\nThe second line', 'La tache du second job\r\nLa seconde ligne', 'The strength of the second job\r\nThe second line', 'La force du deuxième job\r\nLa seconde ligne', 1);

-- --------------------------------------------------------

--
-- Structure de la table `qAndACat`
--

CREATE TABLE `qAndACat` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleFR` varchar(255) DEFAULT NULL,
  `id_escapeGame` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `qAndACat`
--

INSERT INTO `qAndACat` (`id`, `title`, `titleFR`, `id_escapeGame`) VALUES
(1, 'General Questions', 'Questions générales', NULL),
(2, 'Questions about The Codex', 'Question à propos du Codex', 1);

-- --------------------------------------------------------

--
-- Structure de la table `qAndAQuestion`
--

CREATE TABLE `qAndAQuestion` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleFR` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `answerFR` text DEFAULT NULL,
  `id_qAndACat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `qAndAQuestion`
--

INSERT INTO `qAndAQuestion` (`id`, `title`, `titleFR`, `answer`, `answerFR`, `id_qAndACat`) VALUES
(1, 'What is The Codex ?', 'Qu\'est ce que c\'est que le Codex ?', 'The Codex is an escape game.', 'Le Codex est un escape game.', 2),
(2, 'Question Two The Codex ?', 'Question deux Le Codex ?', 'This is the response of the second question.', 'Ceci est la réponse de la deuxième question.', 2),
(3, 'First General Question ?', 'La première question générale ?', 'This is the response the the first general question.', 'Ceci est la réponse à la première question générale.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `hours` tinyint(4) DEFAULT NULL,
  `nbPersons` tinyint(4) DEFAULT NULL,
  `firstName` varchar(32) DEFAULT NULL,
  `lastName` varchar(32) DEFAULT NULL,
  `id_escapeGame` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `date`, `hours`, `nbPersons`, `firstName`, `lastName`, `id_escapeGame`) VALUES
(1, '2023-03-17', 14, 4, 'Mathias', 'Kliem', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `firstName` varchar(32) DEFAULT NULL,
  `lastName` varchar(32) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `descriptionFR` text DEFAULT NULL,
  `rating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`id`, `firstName`, `lastName`, `description`, `descriptionFR`, `rating`) VALUES
(1, 'Mathias', 'Kliem', 'Very Good, I love these escape games !', 'Ouah trop bien les escape games !', 4.5);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstName` varchar(32) NOT NULL,
  `lastName` varchar(32) NOT NULL,
  `rights` set('superadmin','editor','management','jobs','admin') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contactForm`
--
ALTER TABLE `contactForm`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `escapeGame`
--
ALTER TABLE `escapeGame`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `escapeGamePrice`
--
ALTER TABLE `escapeGamePrice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_escapeGame` (`id_escapeGame`);

--
-- Index pour la table `escapeGameSale`
--
ALTER TABLE `escapeGameSale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_reservation` (`id_reservation`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `giftCard`
--
ALTER TABLE `giftCard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_escapeGame` (`id_escapeGame`);

--
-- Index pour la table `giftCardSale`
--
ALTER TABLE `giftCardSale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_giftCard` (`id_giftCard`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `qAndACat`
--
ALTER TABLE `qAndACat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_escapeGame` (`id_escapeGame`);

--
-- Index pour la table `qAndAQuestion`
--
ALTER TABLE `qAndAQuestion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_qAndACat` (`id_qAndACat`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_escapeGame` (`id_escapeGame`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contactForm`
--
ALTER TABLE `contactForm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `escapeGame`
--
ALTER TABLE `escapeGame`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `escapeGamePrice`
--
ALTER TABLE `escapeGamePrice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `escapeGameSale`
--
ALTER TABLE `escapeGameSale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `giftCard`
--
ALTER TABLE `giftCard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `giftCardSale`
--
ALTER TABLE `giftCardSale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `qAndACat`
--
ALTER TABLE `qAndACat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `qAndAQuestion`
--
ALTER TABLE `qAndAQuestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `escapeGamePrice`
--
ALTER TABLE `escapeGamePrice`
  ADD CONSTRAINT `escapeGamePrice_ibfk_1` FOREIGN KEY (`id_escapeGame`) REFERENCES `escapeGame` (`id`);

--
-- Contraintes pour la table `escapeGameSale`
--
ALTER TABLE `escapeGameSale`
  ADD CONSTRAINT `escapeGameSale_ibfk_1` FOREIGN KEY (`id_reservation`) REFERENCES `reservation` (`id`),
  ADD CONSTRAINT `escapeGameSale_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `giftCard`
--
ALTER TABLE `giftCard`
  ADD CONSTRAINT `giftCard_ibfk_1` FOREIGN KEY (`id_escapeGame`) REFERENCES `escapeGame` (`id`);

--
-- Contraintes pour la table `giftCardSale`
--
ALTER TABLE `giftCardSale`
  ADD CONSTRAINT `giftCardSale_ibfk_1` FOREIGN KEY (`id_giftCard`) REFERENCES `giftCard` (`id`),
  ADD CONSTRAINT `giftCardSale_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `qAndACat`
--
ALTER TABLE `qAndACat`
  ADD CONSTRAINT `qAndACat_ibfk_1` FOREIGN KEY (`id_escapeGame`) REFERENCES `escapeGame` (`id`);

--
-- Contraintes pour la table `qAndAQuestion`
--
ALTER TABLE `qAndAQuestion`
  ADD CONSTRAINT `qAndAQuestion_ibfk_1` FOREIGN KEY (`id_qAndACat`) REFERENCES `qAndACat` (`id`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`id_escapeGame`) REFERENCES `escapeGame` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
