-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  jeu. 25 nov. 2021 à 14:27
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ges_rendez_vous`
--

-- --------------------------------------------------------

--
-- Structure de la table `antecedent`
--

DROP TABLE IF EXISTS `antecedent`;
CREATE TABLE IF NOT EXISTS `antecedent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelleA` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `antecedent`
--

INSERT INTO `antecedent` (`id`, `libelleA`) VALUES
(1, 'HYPERTENSION'),
(2, 'HEPATITE'),
(3, 'COVID 19'),
(4, 'PALUDISME');

-- --------------------------------------------------------

--
-- Structure de la table `con&cons`
--

DROP TABLE IF EXISTS `con&cons`;
CREATE TABLE IF NOT EXISTS `con&cons` (
  `consultation_id` int(11) NOT NULL,
  `constante_id` int(11) NOT NULL,
  PRIMARY KEY (`consultation_id`,`constante_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `con&cons`
--

INSERT INTO `con&cons` (`consultation_id`, `constante_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `constante`
--

DROP TABLE IF EXISTS `constante`;
CREATE TABLE IF NOT EXISTS `constante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libellec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `constante`
--

INSERT INTO `constante` (`id`, `libellec`) VALUES
(1, 'TEMPERATURE'),
(2, 'TENSION');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

DROP TABLE IF EXISTS `historique`;
CREATE TABLE IF NOT EXISTS `historique` (
  `patient_id` int(11) NOT NULL,
  `antecedent_id` int(11) NOT NULL,
  PRIMARY KEY (`patient_id`,`antecedent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`patient_id`, `antecedent_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

DROP TABLE IF EXISTS `medicament`;
CREATE TABLE IF NOT EXISTS `medicament` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `medicament`
--

INSERT INTO `medicament` (`id`, `code`, `nom`) VALUES
(1, 'EAEAEZ434', 'DOLIPRANE'),
(2, 'EZEZFEZ23', 'PANADOLE');

-- --------------------------------------------------------

--
-- Structure de la table `ordonnance`
--

DROP TABLE IF EXISTS `ordonnance`;
CREATE TABLE IF NOT EXISTS `ordonnance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posologie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ordonnance`
--

INSERT INTO `ordonnance` (`id`, `posologie`) VALUES
(1, '2C - J\r\n1 matin\r\n1 soir'),
(2, '3C - J\r\n1-matin \r\n1-midi\r\n1-soir');

-- --------------------------------------------------------

--
-- Structure de la table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE IF NOT EXISTS `prescription` (
  `ordonnance_id` int(11) NOT NULL,
  `medicament_id` int(11) NOT NULL,
  PRIMARY KEY (`ordonnance_id`,`medicament_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `prescription`
--

INSERT INTO `prescription` (`ordonnance_id`, `medicament_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

DROP TABLE IF EXISTS `rdv`;
CREATE TABLE IF NOT EXISTS `rdv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `medecin_id` int(11) DEFAULT NULL,
  `ordonnance_id` int(11) DEFAULT NULL,
  `consultation_id` int(11) DEFAULT NULL,
  `responsable_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `unarchived` tinyint(1) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `libellep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rdv`
--

INSERT INTO `rdv` (`id`, `patient_id`, `medecin_id`, `ordonnance_id`, `consultation_id`, `responsable_id`, `date`, `unarchived`, `type`, `libellep`) VALUES
(2, 1, 4, 1, NULL, NULL, '2021-10-05', 1, 'TYPE_CONSULTATION', NULL),
(3, 1, NULL, NULL, 2, 3, '2021-10-25', 1, 'TYPE_PRESTATION', 'FIEVRE THYFOIDE'),
(4, NULL, NULL, NULL, NULL, NULL, '2021-10-13', 0, 'TYPE_CONSULTATION', NULL),
(5, NULL, NULL, NULL, NULL, NULL, '2021-10-08', 0, 'TYPE_PRESTATION', 'NFS'),
(6, 1, NULL, NULL, NULL, NULL, '2021-10-10', 0, 'TYPE_PRESTATION', 'ELECTROPHORESE'),
(7, 1, NULL, NULL, NULL, NULL, '2021-09-30', 0, 'TYPE_CONSULTATION', '');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_complet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `antecedent_id` int(11) NOT NULL,
  `statut` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649AA08CB10` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `role`, `nom_complet`, `password`, `antecedent_id`, `statut`, `disponible`, `code`) VALUES
(1, 'patient@gmail.com', 'ROLE_PATIENT', 'Amy camara', 'passer@123', 1, NULL, 0, 'ARI21R1R3'),
(2, 'secretaire@gmail.com', 'ROLE_SECRETAIRE', 'tima Ndiaye', 'passer@123', 0, NULL, NULL, NULL),
(3, 'rp@gmail.com', 'ROLE_RESPONSABLE', 'arame kebe', 'passer@123', 0, NULL, NULL, NULL),
(4, 'medecin@gmail.com', 'ROLE_MEDECIN', 'rokhiaya dioum', 'passer@123', 0, 'NEUROLOGUE', 1, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
