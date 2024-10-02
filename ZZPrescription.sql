-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 30 sep. 2024 à 16:24
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `zzprescription`
--

-- --------------------------------------------------------

--
-- Structure de la table `allergie`
--

CREATE TABLE `allergie` (
  `id_al` int(11) NOT NULL,
  `libelle_al` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `allergie`
--

INSERT INTO `allergie` (`id_al`, `libelle_al`) VALUES
(1, 'Allergie à l\'aspirine'),
(2, 'Allergie au paracétamol'),
(3, 'Réaction allergique aux pénicillines');

-- --------------------------------------------------------

--
-- Structure de la table `antecedent`
--

CREATE TABLE `antecedent` (
  `id_a` int(11) NOT NULL,
  `libelle_a` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `antecedent`
--

INSERT INTO `antecedent` (`id_a`, `libelle_a`) VALUES
(1, 'Ulcères gastriques actifs'),
(2, 'Tendinite'),
(3, 'Insuffisance rénale'),
(4, 'Grossesse'),
(5, 'Hyperkaliémie'),
(6, 'Hypotension sévère'),
(7, 'Syndrome sérotoninergique'),
(8, 'Maladie du foie active'),
(9, 'Dépendance aux substances'),
(10, 'Infections fongiques systémiques'),
(11, 'Angioedème'),
(12, 'Tachycardie'),
(13, 'Dépendance'),
(14, 'Porphyrie aiguë'),
(15, 'Saignement actif');

-- --------------------------------------------------------

--
-- Structure de la table `a_eu`
--

CREATE TABLE `a_eu` (
  `id_a` int(11) NOT NULL,
  `id_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `a_eu`
--

INSERT INTO `a_eu` (`id_a`, `id_p`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `est`
--

CREATE TABLE `est` (
  `id_al` int(11) NOT NULL,
  `id_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `est`
--

INSERT INTO `est` (`id_al`, `id_p`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `incompatible`
--

CREATE TABLE `incompatible` (
  `id` int(11) NOT NULL,
  `id_a` int(11) DEFAULT NULL,
  `id_med` int(11) NOT NULL,
  `id_al` int(11) DEFAULT NULL,
  `id_med_Medicament` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `incompatible`
--

INSERT INTO `incompatible` (`id`, `id_a`, `id_med`, `id_al`, `id_med_Medicament`) VALUES
(1, NULL, 3, 1, 17),
(2, 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `id_m` int(11) NOT NULL,
  `nom_m` varchar(50) NOT NULL,
  `prenom_m` varchar(50) NOT NULL,
  `date_naissance_m` date NOT NULL,
  `login_m` varchar(255) NOT NULL,
  `password_m` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`id_m`, `nom_m`, `prenom_m`, `date_naissance_m`, `login_m`, `password_m`) VALUES
(12, 'Zidane', 'lemedecin', '1972-06-23', 'zizou', '$2a$11$FCpp6QGmiQsX0hmNQbM2eOgu/y9udCTiM4vOOQ8mZgmb2Af2YrNIu'),
(24, 'a', 'a', '2007-04-01', 'a', '$2a$11$.5wiJN7knLrpo.Eh9zgLXON3fwm/CUfhT4o1V.QL4sq1KYHpxEASa');

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE `medicament` (
  `id_med` int(11) NOT NULL,
  `libelle_med` varchar(50) NOT NULL,
  `contre_indication` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `medicament`
--

INSERT INTO `medicament` (`id_med`, `libelle_med`, `contre_indication`) VALUES
(1, 'Aspirine', 'Allergie à l\'aspirine'),
(2, 'Paracétamol', 'Allergie au paracétamol'),
(3, 'Ibuprofène', 'Ulcères gastriques actifs'),
(4, 'Amoxicilline', 'Réaction allergique aux pénicillines'),
(5, 'Ciprofloxacine', 'Tendinite'),
(6, 'Metformine', 'Insuffisance rénale'),
(7, 'Omeprazole', 'Grossesse'),
(8, 'Losartan', 'Hyperkaliémie'),
(9, 'Simvastatine', 'Maladie du foie active'),
(10, 'Amlodipine', 'Hypotension sévère'),
(11, 'Atorvastatine', 'Maladie du foie active'),
(12, 'Sertraline', 'Syndrome sérotoninergique'),
(13, 'Fluoxetine', 'Syndrome sérotoninergique'),
(14, 'Diazepam', 'Dépendance aux substances'),
(15, 'Prednisone', 'Infections fongiques systémiques'),
(16, 'Lisinopril', 'Angioedème'),
(17, 'Albuterol', 'Tachycardie'),
(18, 'Gabapentine', 'Dépendance'),
(19, 'Ranitidine', 'Porphyrie aiguë'),
(20, 'Warfarine', 'Saignement actif');

-- --------------------------------------------------------

--
-- Structure de la table `ordonnance`
--

CREATE TABLE `ordonnance` (
  `id_o` int(11) NOT NULL,
  `posologie` varchar(50) NOT NULL,
  `duree_traitement` varchar(50) NOT NULL,
  `instruction_specifique` varchar(50) NOT NULL,
  `id_m` int(11) NOT NULL,
  `id_p` int(11) NOT NULL,
  `id_med` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `ordonnance`
--

INSERT INTO `ordonnance` (`id_o`, `posologie`, `duree_traitement`, `instruction_specifique`, `id_m`, `id_p`, `id_med`) VALUES
(1, '3 par jour', '8 mois ', 'le soir', 12, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `id_p` int(11) NOT NULL,
  `nom_p` varchar(50) DEFAULT NULL,
  `prenom_p` varchar(50) NOT NULL,
  `sexe` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`id_p`, `nom_p`, `prenom_p`, `sexe`) VALUES
(1, 'Dupont', 'Jean', 'Homme'),
(4, 'Zizou', 'lamaladie', 'Homme');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `allergie`
--
ALTER TABLE `allergie`
  ADD PRIMARY KEY (`id_al`);

--
-- Index pour la table `antecedent`
--
ALTER TABLE `antecedent`
  ADD PRIMARY KEY (`id_a`);

--
-- Index pour la table `a_eu`
--
ALTER TABLE `a_eu`
  ADD PRIMARY KEY (`id_a`,`id_p`),
  ADD KEY `a_eu_Patient0_FK` (`id_p`);

--
-- Index pour la table `est`
--
ALTER TABLE `est`
  ADD PRIMARY KEY (`id_al`,`id_p`),
  ADD KEY `est_Patient0_FK` (`id_p`);

--
-- Index pour la table `incompatible`
--
ALTER TABLE `incompatible`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incompatible_Antecedent_FK` (`id_a`),
  ADD KEY `incompatible_Medicament0_FK` (`id_med`),
  ADD KEY `incompatible_Allergie1_FK` (`id_al`),
  ADD KEY `incompatible_Medicament2_FK` (`id_med_Medicament`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`id_m`);

--
-- Index pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD PRIMARY KEY (`id_med`);

--
-- Index pour la table `ordonnance`
--
ALTER TABLE `ordonnance`
  ADD PRIMARY KEY (`id_o`),
  ADD KEY `ordonnance_Medecin_FK` (`id_m`),
  ADD KEY `ordonnance_Patient0_FK` (`id_p`),
  ADD KEY `ordonnance_Medicament1_FK` (`id_med`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id_p`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `allergie`
--
ALTER TABLE `allergie`
  MODIFY `id_al` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `antecedent`
--
ALTER TABLE `antecedent`
  MODIFY `id_a` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `incompatible`
--
ALTER TABLE `incompatible`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `medecin`
--
ALTER TABLE `medecin`
  MODIFY `id_m` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `medicament`
--
ALTER TABLE `medicament`
  MODIFY `id_med` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `ordonnance`
--
ALTER TABLE `ordonnance`
  MODIFY `id_o` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `a_eu`
--
ALTER TABLE `a_eu`
  ADD CONSTRAINT `a_eu_Antecedent_FK` FOREIGN KEY (`id_a`) REFERENCES `antecedent` (`id_a`),
  ADD CONSTRAINT `a_eu_Patient0_FK` FOREIGN KEY (`id_p`) REFERENCES `patient` (`id_p`);

--
-- Contraintes pour la table `est`
--
ALTER TABLE `est`
  ADD CONSTRAINT `est_Allergie_FK` FOREIGN KEY (`id_al`) REFERENCES `allergie` (`id_al`),
  ADD CONSTRAINT `est_Patient0_FK` FOREIGN KEY (`id_p`) REFERENCES `patient` (`id_p`);

--
-- Contraintes pour la table `incompatible`
--
ALTER TABLE `incompatible`
  ADD CONSTRAINT `incompatible_Allergie1_FK` FOREIGN KEY (`id_al`) REFERENCES `allergie` (`id_al`),
  ADD CONSTRAINT `incompatible_Antecedent_FK` FOREIGN KEY (`id_a`) REFERENCES `antecedent` (`id_a`),
  ADD CONSTRAINT `incompatible_Medicament0_FK` FOREIGN KEY (`id_med`) REFERENCES `medicament` (`id_med`),
  ADD CONSTRAINT `incompatible_Medicament2_FK` FOREIGN KEY (`id_med_Medicament`) REFERENCES `medicament` (`id_med`);

--
-- Contraintes pour la table `ordonnance`
--
ALTER TABLE `ordonnance`
  ADD CONSTRAINT `ordonnance_Medecin_FK` FOREIGN KEY (`id_m`) REFERENCES `medecin` (`id_m`),
  ADD CONSTRAINT `ordonnance_Medicament1_FK` FOREIGN KEY (`id_med`) REFERENCES `medicament` (`id_med`),
  ADD CONSTRAINT `ordonnance_Patient0_FK` FOREIGN KEY (`id_p`) REFERENCES `patient` (`id_p`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
