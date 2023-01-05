-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 05 jan. 2023 à 08:07
-- Version du serveur : 5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hotello`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `carousel`
--

CREATE TABLE `carousel` (
  `id_image` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `carousel`
--

INSERT INTO `carousel` (`id_image`, `image`) VALUES
(6, 'http://localhost:8888/hotello/photo/1671612108courshotel.jpeg'),
(7, 'http://localhost:8888/hotello/photo/1671612113IMG_2212.PNG'),
(8, 'http://localhost:8888/hotello/photo/1671612118IMG_2213.jpg'),
(11, 'http://localhost:8888/hotello/photo/1671612144paeris-2.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_cli` int(11) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zipcode` varchar(5) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `birthdate` date NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_cli`, `lastname`, `firstname`, `mail`, `password`, `address`, `city`, `zipcode`, `phone`, `birthdate`, `status`, `country`) VALUES
(1, 'Baudon', 'Thomas', 'tbaudon@yahoo.fr', 'admin', 'ici', 'là', '60190', '0612345566', '1983-05-30', 1, 'France'),
(5, 'Baudon', 'Thomas', 'aceventura@petdetective.com', '$2y$10$/LJqTsAAffW0toJv3ENQe.jJV.ZviPDG/69D2qAZCDwr9yc5EhROG', '140 rue Pierre Fichu', 'Moyvillers', '60190', '0612345678', '1983-05-30', 1, 'France'),
(6, 'Baudon', 'thomas', 'thomas@thomasbaudon.fr', '$2y$10$k56QD/uKGynsjZBNJsy5fuZ9pmyKkh0SNznYcqpAx3vPLtk8.C72G', '140 rue Pierre Fichu', 'Moyvillers', '60190', '0676844497', '1983-05-30', 1, 'FRANCE'),
(7, 'Nevens', 'Marion', 'marion@nevens.com', '$2y$10$adBmcie/d27zPsdC0SMqwesQVTz.SsnSwugWCVi1e2Rg1P.OjqI6q', 'ici', 'Chevrièrs', '60710', '0612345678', '1983-07-15', 0, 'Espagne'),
(8, 'Ventura', 'thomas', 'thomas@thomasbaudon.fr', '$2y$10$Q.zU5H/B1wmXECpkkS5PP.IXdkZfMU9GtpwMmaixoqiz1E84Pq8f2', '140 rue Pierre Fichu', 'Chevrièrs', '60190', '0612345648', '2010-06-29', 0, 'France'),
(9, 'Ventura', 'thomas', 'thomas@thomasbaudon.fr', '$2y$10$ecnsVool9v7WHRgRwWa50uC.25uh7/H6fnlwZnRYGAPjUtvrIrHLe', '140 rue Pierre Fichu', 'Chevrièrs', '60190', '0612345648', '2010-06-29', 0, 'France'),
(10, 'Baudon-Nevens', 'Mathias', 'mathias@thomasbaudon.fr', '$2y$10$faRtx6B5sbA2Nfpitt1vdepjxeSRvX6rF0LJ79GPVSxyKUuOCoVjC', '140 rue Pierre Fichu', 'Moyvillers', '60190', '0612345678', '2022-11-24', 0, 'US');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL,
  `read_status` enum('non-lu','lu') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id_contact`, `lastname`, `firstname`, `email`, `message`, `date`, `read_status`) VALUES
(1, 'Baudon', 'Thomas', 'thomas@thomasbaudon.fr', 'Vous savez, moi je ne crois pas qu\'il y ait de bonne ou de mauvaise situation. Moi, si je devais résumer ma vie aujourd\'hui avec vous, je dirais que c\'est d\'abord des rencontres. Des gens qui m\'ont tendu la main, peut-être à un moment où je ne pouvais pas, où j\'étais seul chez moi. Et c\'est assez curieux de se dire que les hasards, les rencontres, forgent une destinée... Parce que quand on a le goût de la chose, quand on a le goût de la chose bien faite, le beau geste, parfois on ne trouve pas l\'interlocuteur en face je dirais, le miroir qui vous aide à avancer. Alors ça n\'est pas mon cas, comme je disais là, puisque moi au contraire, j\'ai pu : et je dis merci à la vie, je lui dis merci, je chante la vie, je danse la vie... je ne suis qu\'amour ! Et finalement, quand beaucoup de gens aujourd\'hui me disent « Mais comment fais-tu pour avoir cette humanité ? », et bien je leur réponds très simplement, je leur dis que c\'est ce goût de l\'amour ce goût donc qui m\'a poussé aujourd\'hui à entreprendre une construction mécanique, mais demain qui sait ? Peut-être simplement à me mettre au service de la communauté, à faire le don, le don de soi...', '2022-12-20 14:37:40', 'non-lu'),
(2, 'Dubus', 'Romain', 'romain@dubus.com', 'J’ai dégusté son foie avec des fèves au beurre et un excellent Chianti', '2022-12-20 14:38:40', 'non-lu'),
(3, 'Derocquencourt', 'Cathy', 'cathy@cathy.com', 'Tu vois, le monde se divise en deux catégories: ceux qui ont un pistolet chargé et ceux qui creusent. Toi tu creuses.', '2022-12-20 14:39:01', 'non-lu'),
(4, 'Padieu', 'Bejamin', 'benji@padieu.com', '-_-', '2022-12-20 14:39:43', 'non-lu');

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `id_employees` int(11) NOT NULL,
  `lastname_employees` varchar(60) NOT NULL,
  `firstname_emloyees` varchar(60) NOT NULL,
  `job_employees` varchar(255) NOT NULL,
  `photo_employees` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`id_employees`, `lastname_employees`, `firstname_emloyees`, `job_employees`, `photo_employees`) VALUES
(1, 'Rousseau', 'Laurent', 'Directeur', ''),
(2, 'Lièvremont', 'Alceste', 'Maître d\'hôtel', ''),
(3, 'Brazier', 'Cécile', 'Employé de ménage', ''),
(4, 'Blanchet', 'Philibert', 'Employé de ménage', '');

-- --------------------------------------------------------

--
-- Structure de la table `equipments`
--

CREATE TABLE `equipments` (
  `id_equip` int(11) NOT NULL,
  `name_equip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `equipments`
--

INSERT INTO `equipments` (`id_equip`, `name_equip`) VALUES
(1, 'Piscine'),
(2, 'Spa multiservice'),
(3, 'Internet haut débit'),
(4, 'Climatisation'),
(5, 'Radio-réveil'),
(6, 'Adaptateurs électriques'),
(7, 'Fer et planche à repasser'),
(8, 'Journaux livrés en chambre, sur demande'),
(10, 'Ordinateurs'),
(11, 'Imprimantes'),
(14, 'Jeux vidéo'),
(15, 'Douches et bains'),
(16, 'Télévision'),
(17, 'Articles de toilette'),
(18, 'Serviettes'),
(19, 'Peignoirs'),
(20, 'Soins personnels'),
(21, 'Stationnement');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `id_cli` int(11) NOT NULL,
  `date` date NOT NULL,
  `adults` int(2) NOT NULL,
  `children` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id_reviews` int(11) NOT NULL,
  `id_cli` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(1) NOT NULL,
  `id_room` int(11) NOT NULL,
  `moderation` enum('validé','refusé') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`id_reviews`, `id_cli`, `review`, `rating`, `id_room`, `moderation`) VALUES
(1, 1, 'c\'est nul !!!', 1, 1, 'validé'),
(4, 1, 'test', 3, 1, 'validé');

-- --------------------------------------------------------

--
-- Structure de la table `room`
--

CREATE TABLE `room` (
  `id_room` int(11) NOT NULL,
  `title_room` varchar(60) NOT NULL,
  `price_room` varchar(20) NOT NULL,
  `type_chambre` varchar(60) NOT NULL,
  `size` int(2) NOT NULL,
  `description` text NOT NULL,
  `adults` int(2) NOT NULL,
  `children` int(2) NOT NULL,
  `status` enum('libre','réservée') DEFAULT 'libre'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `room`
--

INSERT INTO `room` (`id_room`, `title_room`, `price_room`, `type_chambre`, `size`, `description`, `adults`, `children`, `status`) VALUES
(1, 'Suite de luxe', '2500', 'Suite', 70, 'Très belle suite tout confort de style parisien, 1 lit king size, vue ville', 4, 1, 'libre'),
(2, 'Suite de luxe', '1900', 'Suite', 65, 'Suite de luxe, 1 lit king size ou 2 lits simples, vue sur la ville', 4, 2, 'libre'),
(4, 'Chambre avec 2 lits simples', '380', 'chambre', 19, 'Chambre avec 2 lits simples, vue sur la ville', 2, 1, 'libre'),
(5, 'Chambre avec 1 lit queen size', '380', 'chambre', 19, 'chambre avec 1 lit queen size, vue cour', 2, 1, 'libre'),
(6, 'Chambre, 2 lits simples, vue sur le Sacré Coeur', '470', 'chambre', 19, 'Deux lits simples avec vue sur le Sacré Coeur', 2, 1, 'libre');

-- --------------------------------------------------------

--
-- Structure de la table `room_photo`
--

CREATE TABLE `room_photo` (
  `id_photo` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `room_services`
--

CREATE TABLE `room_services` (
  `id_res_services` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `id_services` int(11) NOT NULL,
  `id_cli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id_services` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `price` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id_services`, `icon`, `name`, `description`, `price`) VALUES
(20, 'http://localhost:8888/hotello/photo/1671534676room-service.png', 'Room service', 'Trop bien le service', 10),
(21, 'http://localhost:8888/hotello/photo/1671535303cafe.png', 'Café', 'Miam le café', 3),
(22, 'http://localhost:8888/hotello/photo/1671535324relax.png', 'Massage', 'Massage massant :D', 30),
(23, 'http://localhost:8888/hotello/photo/1671535354service-de-voiturier.png', 'Voiturier', 'Trop bien garée la voiture', 15),
(24, 'http://localhost:8888/hotello/photo/1671535470chef.png', 'Restaurant', 'Le meilleur restaurant du monde', 80),
(25, 'http://localhost:8888/hotello/photo/1671535493signal-wifi.png', 'Wi-fi', 'Wi-fi dans toutes les chambres !', 2),
(26, 'http://localhost:8888/hotello/photo/1671540932hotel-cart.png', 'Bagagistes', 'Vos bagages perdus à jamais', 15),
(27, 'http://localhost:8888/hotello/photo/1671535577piscine.png', 'Piscine & Spa', 'La piscine à 15°C et le Spa à 350°C pour un divertissement hors norme', 350);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id_image`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_cli`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id_employees`);

--
-- Index pour la table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id_equip`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `id_cli` (`id_cli`),
  ADD KEY `id_room` (`id_room`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id_reviews`),
  ADD KEY `id_cli` (`id_cli`),
  ADD KEY `id_chambre` (`id_room`);

--
-- Index pour la table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id_room`);

--
-- Index pour la table `room_photo`
--
ALTER TABLE `room_photo`
  ADD PRIMARY KEY (`id_photo`),
  ADD KEY `id_room` (`id_room`);

--
-- Index pour la table `room_services`
--
ALTER TABLE `room_services`
  ADD PRIMARY KEY (`id_res_services`),
  ADD KEY `id_cli` (`id_cli`),
  ADD KEY `room_services_ibfk_2` (`id_services`),
  ADD KEY `id_room` (`id_room`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_services`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_cli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `id_employees` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id_equip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id_reviews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `room`
--
ALTER TABLE `room`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `room_photo`
--
ALTER TABLE `room_photo`
  MODIFY `id_photo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `room_services`
--
ALTER TABLE `room_services`
  MODIFY `id_res_services` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id_services` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `id_room` FOREIGN KEY (`id_room`) REFERENCES `room` (`id_room`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`id_cli`) REFERENCES `client` (`id_cli`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `id_chambre` FOREIGN KEY (`id_room`) REFERENCES `room` (`id_room`) ON UPDATE CASCADE,
  ADD CONSTRAINT `id_client` FOREIGN KEY (`id_cli`) REFERENCES `client` (`id_cli`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `room_photo`
--
ALTER TABLE `room_photo`
  ADD CONSTRAINT `room_photo_ibfk_1` FOREIGN KEY (`id_room`) REFERENCES `room` (`id_room`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `room_services`
--
ALTER TABLE `room_services`
  ADD CONSTRAINT `room_services_ibfk_1` FOREIGN KEY (`id_cli`) REFERENCES `client` (`id_cli`) ON UPDATE CASCADE,
  ADD CONSTRAINT `room_services_ibfk_2` FOREIGN KEY (`id_services`) REFERENCES `services` (`id_services`) ON UPDATE CASCADE,
  ADD CONSTRAINT `room_services_ibfk_3` FOREIGN KEY (`id_room`) REFERENCES `room` (`id_room`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
