-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 13 mai 2022 à 18:58
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sportludique`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Manteaux'),
(2, 'Bonnets'),
(3, 'T-shirts'),
(4, 'Jogging'),
(5, 'Casquette'),
(6, 'Sweats');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220331091248', '2022-03-31 09:13:14', 45),
('DoctrineMigrations\\Version20220331115006', '2022-03-31 11:51:21', 81),
('DoctrineMigrations\\Version20220501194955', '2022-05-01 19:52:38', 89),
('DoctrineMigrations\\Version20220501201226', '2022-05-01 20:12:36', 122),
('DoctrineMigrations\\Version20220513111600', '2022-05-13 11:16:19', 143);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `is_best` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04AD12469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `slug`, `illustration`, `subtitle`, `description`, `price`, `is_best`) VALUES
(2, 2, 'Bonnet rouge', 'bonnet-rouge', '481c970f8f88e04eda12e40e2651e515017102a0.jpg', 'Le bonnet qui te fais oublier le froid', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris turpis mi, tempus at dolor id, sagittis rutrum nisi. Sed sapien turpis, dignissim eget dictum quis, rhoncus vel nisl. Morbi bibendum justo dui, eget lobortis justo lobortis vel. Praesent eleifend lobortis lorem nec semper.', 1000, 1),
(3, 5, 'Casquette Nike', 'casquette-nike', '81c83ca8dc2da25bd2ace45c90210416d9af269b.jpg', 'Officiel Nike', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris turpis mi, tempus at dolor id, sagittis rutrum nisi. Sed sapien turpis, dignissim eget dictum quis, rhoncus vel nisl. Morbi bibendum justo dui, eget lobortis justo lobortis vel. Praesent eleifend lobortis lorem nec semper.', 1500, 1),
(4, 4, 'Jogging Abibas', 'jogging-abibas', 'ff99aaa79d857b176995e77b730ab0565013bed7.jpg', 'Marque officiel Abibas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris turpis mi, tempus at dolor id, sagittis rutrum nisi. Sed sapien turpis, dignissim eget dictum quis, rhoncus vel nisl. Morbi bibendum justo dui, eget lobortis justo lobortis vel. Praesent eleifend lobortis lorem nec semper.', 3499, 1),
(5, 6, 'Sweat Blanc - Nike', 'sweat-blanc-nike', '3046382cc18d0c7bdcacb69895727f07fe6e48e2.jpg', 'Officiel Nike', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris turpis mi, tempus at dolor id, sagittis rutrum nisi. Sed sapien turpis, dignissim eget dictum quis, rhoncus vel nisl. Morbi bibendum justo dui, eget lobortis justo lobortis vel. Praesent eleifend lobortis lorem nec semper.', 6999, 1),
(6, 3, 'T-shirt Bleu - Champion', 't-shirt-bleu-champion', '4007d9f97252ad7dfc222d4e7c61b300ecda52bf.jpg', 'Officiel Champion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris turpis mi, tempus at dolor id, sagittis rutrum nisi. Sed sapien turpis, dignissim eget dictum quis, rhoncus vel nisl. Morbi bibendum justo dui, eget lobortis justo lobortis vel. Praesent eleifend lobortis lorem nec semper.', 3000, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `first_name`, `last_name`) VALUES
(19, 'admin@sportludique.com', '[\"ROLE_ADMIN\"]', '$2y$13$r5r8nUAfEgE//492gPszMO6jAD/bF.iSZk7VB1d9PnDxHOiJuaAXW', 'Admin', 'Admin'),
(20, 'test@test.com', '[]', '$2y$13$Psl2WtTGXtmG.oTJirPpBuBba8CS9NxZyj3l4vNnGdFx0wm9VrJGu', 'test', 'test');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
