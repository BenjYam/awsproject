-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 30 mai 2022 à 20:47
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `site_aws`
--

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `users` varchar(100) NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `logs`
--

INSERT INTO `logs` (`id`, `date_time`, `users`, `action`) VALUES
(5, '2022-05-27 19:48:26', 'test', 'Connexion'),
(6, '2022-05-30 02:19:20', 'test', 'Connexion'),
(7, '2022-05-30 02:22:31', 'onessaye lereuf', 'Connexion'),
(8, '2022-05-30 02:30:05', 'onessaye lereuf', 'Connexion'),
(9, '2022-05-30 03:00:35', 'test', 'Connexion'),
(10, '2022-05-30 03:02:22', 'test', 'Connexion'),
(11, '2022-05-30 03:03:00', 'benj', 'Connexion'),
(12, '2022-05-30 03:05:51', 'test1', 'Inscription'),
(13, '2022-05-30 03:06:39', 'ad', 'Inscription'),
(14, '2022-05-30 03:07:04', 'test', 'Connexion'),
(15, '2022-05-30 03:13:58', 'benj', 'Inscription'),
(16, '2022-05-30 03:14:04', 'benj', 'Connexion'),
(17, '2022-05-30 03:20:37', 'test', 'Connexion'),
(18, '2022-05-30 03:23:01', 'test', 'Connexion'),
(19, '2022-05-30 03:38:20', 'test', 'Connexion'),
(20, '2022-05-30 03:41:31', 'truc', 'Deconnexion'),
(21, '2022-05-30 03:41:43', 'test', 'Connexion'),
(22, '2022-05-30 03:42:46', 'test', 'Deconnexion'),
(23, '2022-05-30 03:42:52', 'test', 'Connexion'),
(24, '2022-05-30 03:43:10', 'test', 'Deconnexion'),
(25, '2022-05-30 03:43:17', 'benj', 'Connexion'),
(26, '2022-05-30 03:43:18', 'benj', 'Deconnexion'),
(27, '2022-05-30 03:43:25', 'test', 'Connexion'),
(28, '2022-05-30 13:50:59', 'test', 'Connexion'),
(29, '2022-05-30 13:51:22', 'test', 'Deconnexion'),
(30, '2022-05-30 13:51:30', 'test', 'Connexion'),
(31, '2022-05-30 13:51:38', 'test', 'Deconnexion'),
(32, '2022-05-30 21:02:58', 'shanks', 'Inscription'),
(33, '2022-05-30 21:03:16', 'shanks', 'Connexion'),
(34, '2022-05-30 21:07:54', 'shanks', 'Deconnexion'),
(35, '2022-05-30 21:09:17', 'test', 'Connexion'),
(36, '2022-05-30 21:10:00', 'test', 'Deconnexion'),
(37, '2022-05-30 21:23:12', 'test', 'Connexion'),
(38, '2022-05-30 21:23:20', 'test', 'Deconnexion');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `ip` varchar(20) NOT NULL,
  `date_inscription` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `pseudo`, `email`, `password`, `ip`, `date_inscription`, `token`) VALUES
(11, 'test', 'test@test.fr', '$2y$12$3Kq5RUsTrRiybkRxhqJ1k.a4JfbRAHOoehEujqgrNsS9oD1XDSDhC', '::1', '2022-05-27 19:48:26', 'f0a0be89b7a2393830fe286b3f94c9c22a413b99ee5101977d60f44307769e3f2a931a16999473c5caa580a9d47990a1d18e61b98d489328fd02a0ebf9ad6d14'),
(15, 'b', 'b@b.fr', '$2y$12$CdBxkz3W/kON0xCjgH8jb.ABWoMd5PxDogoTdKyxOLd6HyA6o98PW', '::1', '2022-05-29 23:39:00', 'de3ab72e2bcffac6bc90de81fe2ee94afe483cbcd10c62380a12e3d8c4938b4c0b071f611b36bca29dafed963afe68d0d6520fb1c5be85b4c00246534d13b5e1'),
(16, 'benj', 'benj@benj.fr', '$2y$12$BxoGP6NLEu8iujiK8MkkTe/USJyaN1lpDRBT2IfYTeGMzrGWDkkSm', '::1', '2022-05-30 03:02:55', 'ccd89e51e817c4d3a6ad080075b5333311c1b4a8e43417fa8ccfc7f696837e27007dafe625af2bac07782dea54ee3b5977532a604baaf9768f928b9b48a64843'),
(17, 't', 't@t.fr', '$2y$12$A7w9BGWs0Fh3.BqRls.s8eI6lZyVg.a1UNMQX1RiSj517q.N3JQlq', '::1', '2022-05-30 03:05:51', '5bbe032ed6a59c0ed6dbe274a120d5837695c1822331b9639b8866c92a7615a647ed243b85d70da6d04ebd5365382ac4f67ab4b780f3e0e1cdc4b17eb36db39a'),
(18, 'ad', 'ad@ad.fr', '$2y$12$rWjnrXt4k1sQs0LgyGbkNOZ0AyNPVE9Qb8c3b1u/S5fdE6NS14ppy', '::1', '2022-05-30 03:06:39', '066f9fd200801522d802c0408c0ad07119ba9c17653a5db6990cd61ecfabe052fda2d9d9e145620f17d123a8ef8b1f22952bf0d457f831e1a2f037330501401a'),
(19, 'benj', 'benjtest@enfin.fr', '$2y$12$zKDkbmLi/0GsWW8KatCt/ur8ml7cHIIbdgC4sAwGrLkiojSP/fpte', '::1', '2022-05-30 03:13:58', '769773e30afd0c17b128b394328862af23c0443a346a9a54ce1ae64a4fbca20fe50abbbdd096bb19893f687ab5ffe539e879c9feaef02ff1243dd804e1ac030d'),
(20, 'shanks', 'shjanks@test.fr', '$2y$12$5U6lZ2RnNiRlRJOqAsM3UubMSVid0ky5/7Jf56Q4P3vkfBG9xGWju', '::1', '2022-05-30 21:02:58', '6b603427622581f799d5d33b70738acd780a5580dc3d70d2b6fb30eec1d4f42752d033b936144476ee6e15598bf8d247d7afd1aa88fcc7e8a8669f6c35403934');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
