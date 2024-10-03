-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 03 oct. 2024 à 12:28
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
-- Structure de la table `allergiemedicament`
--

CREATE TABLE `allergiemedicament` (
  `AllergiesAllergieId` int(11) NOT NULL,
  `MedicamentsMedicamentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `allergiepatient`
--

CREATE TABLE `allergiepatient` (
  `AllergiesAllergieId` int(11) NOT NULL,
  `PatientsPatientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `allergies`
--

CREATE TABLE `allergies` (
  `AllergieId` int(11) NOT NULL,
  `Libelle_al` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `antecedentmedicament`
--

CREATE TABLE `antecedentmedicament` (
  `AntecedentsAntecedentId` int(11) NOT NULL,
  `MedicamentsMedicamentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `antecedentpatient`
--

CREATE TABLE `antecedentpatient` (
  `AntecedentsAntecedentId` int(11) NOT NULL,
  `PatientsPatientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `antecedents`
--

CREATE TABLE `antecedents` (
  `AntecedentId` int(11) NOT NULL,
  `Libelle_a` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `medecins`
--

CREATE TABLE `medecins` (
  `MedecinId` int(11) NOT NULL,
  `Nom_m` longtext NOT NULL,
  `Prenom_m` longtext NOT NULL,
  `Date_naissance_m` datetime(6) NOT NULL,
  `Login_m` longtext NOT NULL,
  `Password_m` longtext NOT NULL,
  `Role` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `medicamentordonnance`
--

CREATE TABLE `medicamentordonnance` (
  `MedicamentsMedicamentId` int(11) NOT NULL,
  `OrdonnancesOrdonnanceId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `medicaments`
--

CREATE TABLE `medicaments` (
  `MedicamentId` int(11) NOT NULL,
  `Libelle_med` longtext NOT NULL,
  `Contr_indication` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ordonnances`
--

CREATE TABLE `ordonnances` (
  `OrdonnanceId` int(11) NOT NULL,
  `Posologie` longtext NOT NULL,
  `Duree_traitement` longtext NOT NULL,
  `Instructions_specifique` longtext NOT NULL,
  `MedecinId` int(11) NOT NULL,
  `PatientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `PatientId` int(11) NOT NULL,
  `Nom_p` longtext NOT NULL,
  `Prenom_p` longtext NOT NULL,
  `Sexe_p` longtext NOT NULL,
  `Num_secu` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`PatientId`, `Nom_p`, `Prenom_p`, `Sexe_p`, `Num_secu`) VALUES
(1, '[value-2]', '[value-3]', '[value-4]', '[value-5]'),
(2, 'd', 'd', 'd', 'd'),
(3, 'dz', 'd', 's', 'z'),
(4, 'dz', 'd', '121', '22'),
(5, '4', '44', '4', 'ee'),
(6, 'a', 'a', 'a', 'a'),
(7, 'f', 'f', 'f', 'f'),
(8, 'Zidane', 'Le malade', 'Homme', '014091480198'),
(9, 'F', 'f', 'F', 'F'),
(10, 'f', 'f', 'f', 'f'),
(11, 'C', 'C', 'C', 'C'),
(12, 'D', 'D', 'D', 'D'),
(13, 'f', 'f', 'Homme', '111111111111111'),
(14, 'S', 'S', 'Homme', '111111111111111'),
(15, 'd', 'd', 'Homme', '111111111111111'),
(16, 'd', 'd', 'Homme', '111111111111111'),
(17, 'd', 'd', 'Femme', '111111111111111'),
(18, 'dd', 'e', 'Homme', '111111111111111'),
(19, 'aa', 'a', 'Homme', '111111111111111');

-- --------------------------------------------------------

--
-- Structure de la table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20241001121352_InitialCreate', '8.0.1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `allergiemedicament`
--
ALTER TABLE `allergiemedicament`
  ADD PRIMARY KEY (`AllergiesAllergieId`,`MedicamentsMedicamentId`),
  ADD KEY `IX_AllergieMedicament_MedicamentsMedicamentId` (`MedicamentsMedicamentId`);

--
-- Index pour la table `allergiepatient`
--
ALTER TABLE `allergiepatient`
  ADD PRIMARY KEY (`AllergiesAllergieId`,`PatientsPatientId`),
  ADD KEY `IX_AllergiePatient_PatientsPatientId` (`PatientsPatientId`);

--
-- Index pour la table `allergies`
--
ALTER TABLE `allergies`
  ADD PRIMARY KEY (`AllergieId`);

--
-- Index pour la table `antecedentmedicament`
--
ALTER TABLE `antecedentmedicament`
  ADD PRIMARY KEY (`AntecedentsAntecedentId`,`MedicamentsMedicamentId`),
  ADD KEY `IX_AntecedentMedicament_MedicamentsMedicamentId` (`MedicamentsMedicamentId`);

--
-- Index pour la table `antecedentpatient`
--
ALTER TABLE `antecedentpatient`
  ADD PRIMARY KEY (`AntecedentsAntecedentId`,`PatientsPatientId`),
  ADD KEY `IX_AntecedentPatient_PatientsPatientId` (`PatientsPatientId`);

--
-- Index pour la table `antecedents`
--
ALTER TABLE `antecedents`
  ADD PRIMARY KEY (`AntecedentId`);

--
-- Index pour la table `medecins`
--
ALTER TABLE `medecins`
  ADD PRIMARY KEY (`MedecinId`);

--
-- Index pour la table `medicamentordonnance`
--
ALTER TABLE `medicamentordonnance`
  ADD PRIMARY KEY (`MedicamentsMedicamentId`,`OrdonnancesOrdonnanceId`),
  ADD KEY `IX_MedicamentOrdonnance_OrdonnancesOrdonnanceId` (`OrdonnancesOrdonnanceId`);

--
-- Index pour la table `medicaments`
--
ALTER TABLE `medicaments`
  ADD PRIMARY KEY (`MedicamentId`);

--
-- Index pour la table `ordonnances`
--
ALTER TABLE `ordonnances`
  ADD PRIMARY KEY (`OrdonnanceId`),
  ADD UNIQUE KEY `IX_Ordonnances_PatientId` (`PatientId`),
  ADD KEY `IX_Ordonnances_MedecinId` (`MedecinId`);

--
-- Index pour la table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`PatientId`);

--
-- Index pour la table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `allergies`
--
ALTER TABLE `allergies`
  MODIFY `AllergieId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `antecedents`
--
ALTER TABLE `antecedents`
  MODIFY `AntecedentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `medecins`
--
ALTER TABLE `medecins`
  MODIFY `MedecinId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `medicaments`
--
ALTER TABLE `medicaments`
  MODIFY `MedicamentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ordonnances`
--
ALTER TABLE `ordonnances`
  MODIFY `OrdonnanceId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `patients`
--
ALTER TABLE `patients`
  MODIFY `PatientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `allergiemedicament`
--
ALTER TABLE `allergiemedicament`
  ADD CONSTRAINT `FK_AllergieMedicament_Allergies_AllergiesAllergieId` FOREIGN KEY (`AllergiesAllergieId`) REFERENCES `allergies` (`AllergieId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AllergieMedicament_Medicaments_MedicamentsMedicamentId` FOREIGN KEY (`MedicamentsMedicamentId`) REFERENCES `medicaments` (`MedicamentId`) ON DELETE CASCADE;

--
-- Contraintes pour la table `allergiepatient`
--
ALTER TABLE `allergiepatient`
  ADD CONSTRAINT `FK_AllergiePatient_Allergies_AllergiesAllergieId` FOREIGN KEY (`AllergiesAllergieId`) REFERENCES `allergies` (`AllergieId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AllergiePatient_Patients_PatientsPatientId` FOREIGN KEY (`PatientsPatientId`) REFERENCES `patients` (`PatientId`) ON DELETE CASCADE;

--
-- Contraintes pour la table `antecedentmedicament`
--
ALTER TABLE `antecedentmedicament`
  ADD CONSTRAINT `FK_AntecedentMedicament_Antecedents_AntecedentsAntecedentId` FOREIGN KEY (`AntecedentsAntecedentId`) REFERENCES `antecedents` (`AntecedentId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AntecedentMedicament_Medicaments_MedicamentsMedicamentId` FOREIGN KEY (`MedicamentsMedicamentId`) REFERENCES `medicaments` (`MedicamentId`) ON DELETE CASCADE;

--
-- Contraintes pour la table `antecedentpatient`
--
ALTER TABLE `antecedentpatient`
  ADD CONSTRAINT `FK_AntecedentPatient_Antecedents_AntecedentsAntecedentId` FOREIGN KEY (`AntecedentsAntecedentId`) REFERENCES `antecedents` (`AntecedentId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AntecedentPatient_Patients_PatientsPatientId` FOREIGN KEY (`PatientsPatientId`) REFERENCES `patients` (`PatientId`) ON DELETE CASCADE;

--
-- Contraintes pour la table `medicamentordonnance`
--
ALTER TABLE `medicamentordonnance`
  ADD CONSTRAINT `FK_MedicamentOrdonnance_Medicaments_MedicamentsMedicamentId` FOREIGN KEY (`MedicamentsMedicamentId`) REFERENCES `medicaments` (`MedicamentId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_MedicamentOrdonnance_Ordonnances_OrdonnancesOrdonnanceId` FOREIGN KEY (`OrdonnancesOrdonnanceId`) REFERENCES `ordonnances` (`OrdonnanceId`) ON DELETE CASCADE;

--
-- Contraintes pour la table `ordonnances`
--
ALTER TABLE `ordonnances`
  ADD CONSTRAINT `FK_Ordonnances_Medecins_MedecinId` FOREIGN KEY (`MedecinId`) REFERENCES `medecins` (`MedecinId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Ordonnances_Patients_PatientId` FOREIGN KEY (`PatientId`) REFERENCES `patients` (`PatientId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
