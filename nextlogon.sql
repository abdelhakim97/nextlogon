-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 18 oct. 2024 à 10:29
-- Version du serveur : 10.6.16-MariaDB-cll-lve
-- Version de PHP : 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `c2306334c_nextlogon`
--

-- --------------------------------------------------------

--
-- Structure de la table `sap_coupons`
--

CREATE TABLE `sap_coupons` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(100) NOT NULL,
  `coupon_type` enum('fixed_discount','percentage_discount') NOT NULL,
  `coupon_amount` double NOT NULL,
  `coupon_description` text DEFAULT NULL,
  `coupon_expiry_date` datetime DEFAULT NULL,
  `coupon_status` enum('draft','publish','used') NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sap_logs`
--

CREATE TABLE `sap_logs` (
  `id` int(11) NOT NULL,
  `user_id` bigint(11) NOT NULL,
  `social_source` longtext NOT NULL,
  `social_type` varchar(255) NOT NULL,
  `posting_type` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `sap_logs`
--

INSERT INTO `sap_logs` (`id`, `user_id`, `social_source`, `social_type`, `posting_type`, `status`, `created`) VALUES
(166, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:59:\"https://nextlogon.com/uploads/lgc-logo-404-10-2400X2400.png\";s:7:\"message\";s:319:\"Microsoft lance son application Teams unifiÃ©e pour les comptes personnels et professionnels !\r\n\r\nUne expÃ©rience unifiÃ©e, c\'est ce qui qualifie le mieux la nouvelle application Microsoft Teams disponible pour les utilisateurs de Windows 10, de Windows 11, mais aussi de macOS. Microsoft l\'avait annoncÃ©e en mars 2024\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 13:34:53'),
(167, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:59:\"https://nextlogon.com/uploads/lgc-logo-404-10-2400X2400.png\";s:7:\"message\";s:319:\"Microsoft lance son application Teams unifiÃ©e pour les comptes personnels et professionnels !\r\n\r\nUne expÃ©rience unifiÃ©e, c\'est ce qui qualifie le mieux la nouvelle application Microsoft Teams disponible pour les utilisateurs de Windows 10, de Windows 11, mais aussi de macOS. Microsoft l\'avait annoncÃ©e en mars 2024\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 13:35:02'),
(168, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:55:\"https://nextlogon.com/uploads/hhhhhh-448-10-410X621.png\";s:7:\"message\";s:2084:\"ðŸŒŸ Offre de Stage : Testeur d\'Applications Mobiles (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de l\'entreprise\r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN) dynamique, fondÃ©e en 2023, avec un engagement envers l\'innovation technologique et le dÃ©veloppement durable. Nous cherchons Ã  renforcer notre Ã©quipe avec un stagiaire passionnÃ© par le test d\'applications mobiles.\r\n \r\nðŸš€ Missions\r\nEn tant que testeur d\'application mobile, vous participerez aux missions suivantes :\r\n\r\nðŸ” Test et Validation :\r\n- RÃ©alisation de tests fonctionnels et non fonctionnels sur les applications mobiles.\r\n- Identification et documentation des bugs et des problÃ¨mes rencontrÃ©s.\r\nðŸ› ï¸ Automatisation des Tests :\r\n- Participation Ã  l\'automatisation des tests pour amÃ©liorer l\'efficacitÃ© des processus de validation.\r\n- Utilisation d\'outils de test automatisÃ©s tels que Selenium, Appium ou d\'autres.\r\nðŸ¤ Collaboration et Reporting :\r\n- Travailler en Ã©troite collaboration avec les Ã©quipes de dÃ©veloppement et de conception pour comprendre les besoins des utilisateurs.\r\n- RÃ©daction de rapports de test et suivi des corrections effectuÃ©es.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n- Ã‰tudiant(e) en informatique ou dans un domaine connexe.\r\n- Bonne comprÃ©hension des principes de test et des mÃ©thodologies de dÃ©veloppement logiciel.\r\n- Connaissance des outils de test manuels et automatisÃ©s est un plus.\r\n- CapacitÃ© Ã  travailler en Ã©quipe, autonomie et sens de l\'initiative.\r\n- Bonne maÃ®trise du franÃ§ais, la connaissance de l\'anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n- Un environnement de travail stimulant et innovant.\r\n- L\'opportunitÃ© de travailler sur des projets concrets et d\'acquÃ©rir une expÃ©rience prÃ©cieuse.\r\n- Une possibilitÃ© de dÃ©veloppement professionnel au sein de notre entreprise.\r\n \r\nðŸ“§ Candidature\r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  l\'adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:01:35'),
(169, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:55:\"https://nextlogon.com/uploads/hhhhhh-448-10-410X621.png\";s:7:\"message\";s:2084:\"ðŸŒŸ Offre de Stage : Testeur d\'Applications Mobiles (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de l\'entreprise\r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN) dynamique, fondÃ©e en 2023, avec un engagement envers l\'innovation technologique et le dÃ©veloppement durable. Nous cherchons Ã  renforcer notre Ã©quipe avec un stagiaire passionnÃ© par le test d\'applications mobiles.\r\n \r\nðŸš€ Missions\r\nEn tant que testeur d\'application mobile, vous participerez aux missions suivantes :\r\n\r\nðŸ” Test et Validation :\r\n- RÃ©alisation de tests fonctionnels et non fonctionnels sur les applications mobiles.\r\n- Identification et documentation des bugs et des problÃ¨mes rencontrÃ©s.\r\nðŸ› ï¸ Automatisation des Tests :\r\n- Participation Ã  l\'automatisation des tests pour amÃ©liorer l\'efficacitÃ© des processus de validation.\r\n- Utilisation d\'outils de test automatisÃ©s tels que Selenium, Appium ou d\'autres.\r\nðŸ¤ Collaboration et Reporting :\r\n- Travailler en Ã©troite collaboration avec les Ã©quipes de dÃ©veloppement et de conception pour comprendre les besoins des utilisateurs.\r\n- RÃ©daction de rapports de test et suivi des corrections effectuÃ©es.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n- Ã‰tudiant(e) en informatique ou dans un domaine connexe.\r\n- Bonne comprÃ©hension des principes de test et des mÃ©thodologies de dÃ©veloppement logiciel.\r\n- Connaissance des outils de test manuels et automatisÃ©s est un plus.\r\n- CapacitÃ© Ã  travailler en Ã©quipe, autonomie et sens de l\'initiative.\r\n- Bonne maÃ®trise du franÃ§ais, la connaissance de l\'anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n- Un environnement de travail stimulant et innovant.\r\n- L\'opportunitÃ© de travailler sur des projets concrets et d\'acquÃ©rir une expÃ©rience prÃ©cieuse.\r\n- Une possibilitÃ© de dÃ©veloppement professionnel au sein de notre entreprise.\r\n \r\nðŸ“§ Candidature\r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  l\'adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:01:41'),
(170, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:55:\"https://nextlogon.com/uploads/hhhhhh-448-10-410X621.png\";s:7:\"message\";s:2084:\"ðŸŒŸ Offre de Stage : Testeur d\'Applications Mobiles (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de l\'entreprise\r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN) dynamique, fondÃ©e en 2023, avec un engagement envers l\'innovation technologique et le dÃ©veloppement durable. Nous cherchons Ã  renforcer notre Ã©quipe avec un stagiaire passionnÃ© par le test d\'applications mobiles.\r\n \r\nðŸš€ Missions\r\nEn tant que testeur d\'application mobile, vous participerez aux missions suivantes :\r\n\r\nðŸ” Test et Validation :\r\n- RÃ©alisation de tests fonctionnels et non fonctionnels sur les applications mobiles.\r\n- Identification et documentation des bugs et des problÃ¨mes rencontrÃ©s.\r\nðŸ› ï¸ Automatisation des Tests :\r\n- Participation Ã  l\'automatisation des tests pour amÃ©liorer l\'efficacitÃ© des processus de validation.\r\n- Utilisation d\'outils de test automatisÃ©s tels que Selenium, Appium ou d\'autres.\r\nðŸ¤ Collaboration et Reporting :\r\n- Travailler en Ã©troite collaboration avec les Ã©quipes de dÃ©veloppement et de conception pour comprendre les besoins des utilisateurs.\r\n- RÃ©daction de rapports de test et suivi des corrections effectuÃ©es.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n- Ã‰tudiant(e) en informatique ou dans un domaine connexe.\r\n- Bonne comprÃ©hension des principes de test et des mÃ©thodologies de dÃ©veloppement logiciel.\r\n- Connaissance des outils de test manuels et automatisÃ©s est un plus.\r\n- CapacitÃ© Ã  travailler en Ã©quipe, autonomie et sens de l\'initiative.\r\n- Bonne maÃ®trise du franÃ§ais, la connaissance de l\'anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n- Un environnement de travail stimulant et innovant.\r\n- L\'opportunitÃ© de travailler sur des projets concrets et d\'acquÃ©rir une expÃ©rience prÃ©cieuse.\r\n- Une possibilitÃ© de dÃ©veloppement professionnel au sein de notre entreprise.\r\n \r\nðŸ“§ Candidature\r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  l\'adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:01:42'),
(171, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1007-10-410X621.png\";s:7:\"message\";s:2244:\"ðŸŒŸ Offre de Stage : DÃ©veloppeur Web Full Stack (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de l\'entreprise\r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN) dynamique, fondÃ©e en 2023, avec un engagement envers l\'innovation technologique et le dÃ©veloppement durable. Nous cherchons Ã  renforcer notre Ã©quipe avec un stagiaire passionnÃ© par le dÃ©veloppement web.\r\n \r\nðŸš€ Missions\r\nEn tant que dÃ©veloppeur Web Full Stack, vous participerez aux missions suivantes :\r\n\r\nðŸ’» DÃ©veloppement Front-end :\r\n- Conception et dÃ©veloppement dâ€™interfaces graphiques ergonomiques, intuitives, visuellement attrayantes et fonctionnelles.\r\n- Utilisation des technologies HTML, CSS, JavaScript, et frameworks modernes (React, Vue.js, etc.).\r\nðŸ”™ DÃ©veloppement Backend :\r\n- Conception et implÃ©mentation de lâ€™architecture des applications.\r\n- DÃ©veloppement dâ€™API RESTful et intÃ©gration avec des bases de donnÃ©es (MySQL, MongoDB, etc.).\r\n- Gestion de lâ€™environnement serveur et dÃ©ploiement dâ€™applications.\r\nðŸ¤ Collaboration et suivi :\r\n- Travailler en Ã©troite collaboration avec l\'Ã©quipe technique pour comprendre les besoins des utilisateurs et proposer des solutions adaptÃ©es.\r\n- Participer aux rÃ©unions d\'Ã©quipe et contribuer Ã  la documentation technique.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n- Ã‰tudiant(e) en informatique ou dans un domaine connexe.\r\n- Bonne connaissance des technologies web (HTML, CSS, JavaScript, etc.).\r\n- ExpÃ©rience avec un ou plusieurs frameworks frontend (React, Angular, Vue.js) et backend (Node.js, Django, etc.) est un plus.\r\n- CapacitÃ© Ã  travailler en Ã©quipe, autonomie et sens de l\'initiative.\r\n- Bonne maÃ®trise du franÃ§ais, la connaissance de l\'anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n- Un environnement de travail stimulant et innovant.\r\n- L\'opportunitÃ© de travailler sur des projets concrets et d\'acquÃ©rir une expÃ©rience prÃ©cieuse.\r\n- Une possibilitÃ© de dÃ©veloppement professionnel au sein de notre entreprise.\r\n \r\nðŸ“§ Candidature\r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  l\'adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:01:44'),
(172, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:55:\"https://nextlogon.com/uploads/hhhhhh-448-10-410X621.png\";s:7:\"message\";s:2084:\"ðŸŒŸ Offre de Stage : Testeur d\'Applications Mobiles (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de l\'entreprise\r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN) dynamique, fondÃ©e en 2023, avec un engagement envers l\'innovation technologique et le dÃ©veloppement durable. Nous cherchons Ã  renforcer notre Ã©quipe avec un stagiaire passionnÃ© par le test d\'applications mobiles.\r\n \r\nðŸš€ Missions\r\nEn tant que testeur d\'application mobile, vous participerez aux missions suivantes :\r\n\r\nðŸ” Test et Validation :\r\n- RÃ©alisation de tests fonctionnels et non fonctionnels sur les applications mobiles.\r\n- Identification et documentation des bugs et des problÃ¨mes rencontrÃ©s.\r\nðŸ› ï¸ Automatisation des Tests :\r\n- Participation Ã  l\'automatisation des tests pour amÃ©liorer l\'efficacitÃ© des processus de validation.\r\n- Utilisation d\'outils de test automatisÃ©s tels que Selenium, Appium ou d\'autres.\r\nðŸ¤ Collaboration et Reporting :\r\n- Travailler en Ã©troite collaboration avec les Ã©quipes de dÃ©veloppement et de conception pour comprendre les besoins des utilisateurs.\r\n- RÃ©daction de rapports de test et suivi des corrections effectuÃ©es.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n- Ã‰tudiant(e) en informatique ou dans un domaine connexe.\r\n- Bonne comprÃ©hension des principes de test et des mÃ©thodologies de dÃ©veloppement logiciel.\r\n- Connaissance des outils de test manuels et automatisÃ©s est un plus.\r\n- CapacitÃ© Ã  travailler en Ã©quipe, autonomie et sens de l\'initiative.\r\n- Bonne maÃ®trise du franÃ§ais, la connaissance de l\'anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n- Un environnement de travail stimulant et innovant.\r\n- L\'opportunitÃ© de travailler sur des projets concrets et d\'acquÃ©rir une expÃ©rience prÃ©cieuse.\r\n- Une possibilitÃ© de dÃ©veloppement professionnel au sein de notre entreprise.\r\n \r\nðŸ“§ Candidature\r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  l\'adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:01:51'),
(173, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:55:\"https://nextlogon.com/uploads/hhhhhh-448-10-410X621.png\";s:7:\"message\";s:2084:\"ðŸŒŸ Offre de Stage : Testeur d\'Applications Mobiles (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de l\'entreprise\r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN) dynamique, fondÃ©e en 2023, avec un engagement envers l\'innovation technologique et le dÃ©veloppement durable. Nous cherchons Ã  renforcer notre Ã©quipe avec un stagiaire passionnÃ© par le test d\'applications mobiles.\r\n \r\nðŸš€ Missions\r\nEn tant que testeur d\'application mobile, vous participerez aux missions suivantes :\r\n\r\nðŸ” Test et Validation :\r\n- RÃ©alisation de tests fonctionnels et non fonctionnels sur les applications mobiles.\r\n- Identification et documentation des bugs et des problÃ¨mes rencontrÃ©s.\r\nðŸ› ï¸ Automatisation des Tests :\r\n- Participation Ã  l\'automatisation des tests pour amÃ©liorer l\'efficacitÃ© des processus de validation.\r\n- Utilisation d\'outils de test automatisÃ©s tels que Selenium, Appium ou d\'autres.\r\nðŸ¤ Collaboration et Reporting :\r\n- Travailler en Ã©troite collaboration avec les Ã©quipes de dÃ©veloppement et de conception pour comprendre les besoins des utilisateurs.\r\n- RÃ©daction de rapports de test et suivi des corrections effectuÃ©es.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n- Ã‰tudiant(e) en informatique ou dans un domaine connexe.\r\n- Bonne comprÃ©hension des principes de test et des mÃ©thodologies de dÃ©veloppement logiciel.\r\n- Connaissance des outils de test manuels et automatisÃ©s est un plus.\r\n- CapacitÃ© Ã  travailler en Ã©quipe, autonomie et sens de l\'initiative.\r\n- Bonne maÃ®trise du franÃ§ais, la connaissance de l\'anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n- Un environnement de travail stimulant et innovant.\r\n- L\'opportunitÃ© de travailler sur des projets concrets et d\'acquÃ©rir une expÃ©rience prÃ©cieuse.\r\n- Une possibilitÃ© de dÃ©veloppement professionnel au sein de notre entreprise.\r\n \r\nðŸ“§ Candidature\r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  l\'adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:01:51'),
(174, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1007-10-410X621.png\";s:7:\"message\";s:2244:\"ðŸŒŸ Offre de Stage : DÃ©veloppeur Web Full Stack (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de l\'entreprise\r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN) dynamique, fondÃ©e en 2023, avec un engagement envers l\'innovation technologique et le dÃ©veloppement durable. Nous cherchons Ã  renforcer notre Ã©quipe avec un stagiaire passionnÃ© par le dÃ©veloppement web.\r\n \r\nðŸš€ Missions\r\nEn tant que dÃ©veloppeur Web Full Stack, vous participerez aux missions suivantes :\r\n\r\nðŸ’» DÃ©veloppement Front-end :\r\n- Conception et dÃ©veloppement dâ€™interfaces graphiques ergonomiques, intuitives, visuellement attrayantes et fonctionnelles.\r\n- Utilisation des technologies HTML, CSS, JavaScript, et frameworks modernes (React, Vue.js, etc.).\r\nðŸ”™ DÃ©veloppement Backend :\r\n- Conception et implÃ©mentation de lâ€™architecture des applications.\r\n- DÃ©veloppement dâ€™API RESTful et intÃ©gration avec des bases de donnÃ©es (MySQL, MongoDB, etc.).\r\n- Gestion de lâ€™environnement serveur et dÃ©ploiement dâ€™applications.\r\nðŸ¤ Collaboration et suivi :\r\n- Travailler en Ã©troite collaboration avec l\'Ã©quipe technique pour comprendre les besoins des utilisateurs et proposer des solutions adaptÃ©es.\r\n- Participer aux rÃ©unions d\'Ã©quipe et contribuer Ã  la documentation technique.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n- Ã‰tudiant(e) en informatique ou dans un domaine connexe.\r\n- Bonne connaissance des technologies web (HTML, CSS, JavaScript, etc.).\r\n- ExpÃ©rience avec un ou plusieurs frameworks frontend (React, Angular, Vue.js) et backend (Node.js, Django, etc.) est un plus.\r\n- CapacitÃ© Ã  travailler en Ã©quipe, autonomie et sens de l\'initiative.\r\n- Bonne maÃ®trise du franÃ§ais, la connaissance de l\'anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n- Un environnement de travail stimulant et innovant.\r\n- L\'opportunitÃ© de travailler sur des projets concrets et d\'acquÃ©rir une expÃ©rience prÃ©cieuse.\r\n- Une possibilitÃ© de dÃ©veloppement professionnel au sein de notre entreprise.\r\n \r\nðŸ“§ Candidature\r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  l\'adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:01:52'),
(175, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1007-10-410X621.png\";s:7:\"message\";s:2244:\"ðŸŒŸ Offre de Stage : DÃ©veloppeur Web Full Stack (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de l\'entreprise\r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN) dynamique, fondÃ©e en 2023, avec un engagement envers l\'innovation technologique et le dÃ©veloppement durable. Nous cherchons Ã  renforcer notre Ã©quipe avec un stagiaire passionnÃ© par le dÃ©veloppement web.\r\n \r\nðŸš€ Missions\r\nEn tant que dÃ©veloppeur Web Full Stack, vous participerez aux missions suivantes :\r\n\r\nðŸ’» DÃ©veloppement Front-end :\r\n- Conception et dÃ©veloppement dâ€™interfaces graphiques ergonomiques, intuitives, visuellement attrayantes et fonctionnelles.\r\n- Utilisation des technologies HTML, CSS, JavaScript, et frameworks modernes (React, Vue.js, etc.).\r\nðŸ”™ DÃ©veloppement Backend :\r\n- Conception et implÃ©mentation de lâ€™architecture des applications.\r\n- DÃ©veloppement dâ€™API RESTful et intÃ©gration avec des bases de donnÃ©es (MySQL, MongoDB, etc.).\r\n- Gestion de lâ€™environnement serveur et dÃ©ploiement dâ€™applications.\r\nðŸ¤ Collaboration et suivi :\r\n- Travailler en Ã©troite collaboration avec l\'Ã©quipe technique pour comprendre les besoins des utilisateurs et proposer des solutions adaptÃ©es.\r\n- Participer aux rÃ©unions d\'Ã©quipe et contribuer Ã  la documentation technique.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n- Ã‰tudiant(e) en informatique ou dans un domaine connexe.\r\n- Bonne connaissance des technologies web (HTML, CSS, JavaScript, etc.).\r\n- ExpÃ©rience avec un ou plusieurs frameworks frontend (React, Angular, Vue.js) et backend (Node.js, Django, etc.) est un plus.\r\n- CapacitÃ© Ã  travailler en Ã©quipe, autonomie et sens de l\'initiative.\r\n- Bonne maÃ®trise du franÃ§ais, la connaissance de l\'anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n- Un environnement de travail stimulant et innovant.\r\n- L\'opportunitÃ© de travailler sur des projets concrets et d\'acquÃ©rir une expÃ©rience prÃ©cieuse.\r\n- Une possibilitÃ© de dÃ©veloppement professionnel au sein de notre entreprise.\r\n \r\nðŸ“§ Candidature\r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  l\'adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:02:04'),
(176, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1055-10-410X621.png\";s:7:\"message\";s:2527:\"ðŸŒŸ Offre de Stage : Web Designer (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL, fondÃ©e en 2023, est une Entreprise de Services du NumÃ©rique (ESN) dÃ©diÃ©e Ã  lâ€™innovation technologique et Ã  la crÃ©ation de solutions numÃ©riques sur mesure. Nous recherchons un(e) stagiaire web designer talentueux(se) pour concevoir des interfaces et des visuels qui reflÃ¨tent lâ€™identitÃ© de nos projets.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que web designer, vous participerez aux missions suivantes :\r\n \r\n	â€¢	ðŸŽ¨ Conception graphique :\r\n	â€¢	CrÃ©er des designs de sites web attrayants, intuitifs et fonctionnels.\r\n	â€¢	Ã‰laborer des maquettes et prototypes interactifs en utilisant des outils tels que Figma, Adobe XD, ou Sketch.\r\n	â€¢	ðŸ’» Design UI/UX :\r\n	â€¢	Collaborer avec les Ã©quipes de dÃ©veloppement et de marketing pour concevoir des interfaces utilisateur centrÃ©es sur lâ€™expÃ©rience utilisateur (UX).\r\n	â€¢	Assurer la cohÃ©rence graphique et ergonomique des diffÃ©rents projets web.\r\n	â€¢	ðŸ–¼ CrÃ©ation de contenus visuels :\r\n	â€¢	CrÃ©er des banniÃ¨res, illustrations, logos et autres Ã©lÃ©ments graphiques pour enrichir les plateformes web.\r\n	â€¢	Proposer des idÃ©es crÃ©atives en adÃ©quation avec les attentes des utilisateurs et les objectifs marketing.\r\n	â€¢	ðŸ”§ IntÃ©gration et suivi :\r\n	â€¢	Suivre lâ€™intÃ©gration des designs avec les dÃ©veloppeurs pour garantir la qualitÃ© et la conformitÃ© visuelle.\r\n	â€¢	RÃ©aliser des tests dâ€™ergonomie et ajuster les interfaces en fonction des retours utilisateurs.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en design, arts graphiques, ou domaine connexe.\r\n	â€¢	Bonne maÃ®trise des outils de conception graphique (Photoshop, Illustrator, Figma, etc.).\r\n	â€¢	Connaissance des principes de design UI/UX.\r\n	â€¢	CrÃ©atif(ve), rigoureux(se) et Ã  lâ€™Ã©coute des tendances du web.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Une expÃ©rience enrichissante au sein dâ€™une Ã©quipe jeune et innovante.\r\n	â€¢	La possibilitÃ© de travailler sur des projets rÃ©els et dâ€™affiner vos compÃ©tences en web design.\r\n	â€¢	Un environnement stimulant qui encourage la crÃ©ativitÃ© et la prise dâ€™initiative.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre portfolio, CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:02:05'),
(177, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1007-10-410X621.png\";s:7:\"message\";s:2244:\"ðŸŒŸ Offre de Stage : DÃ©veloppeur Web Full Stack (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de l\'entreprise\r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN) dynamique, fondÃ©e en 2023, avec un engagement envers l\'innovation technologique et le dÃ©veloppement durable. Nous cherchons Ã  renforcer notre Ã©quipe avec un stagiaire passionnÃ© par le dÃ©veloppement web.\r\n \r\nðŸš€ Missions\r\nEn tant que dÃ©veloppeur Web Full Stack, vous participerez aux missions suivantes :\r\n\r\nðŸ’» DÃ©veloppement Front-end :\r\n- Conception et dÃ©veloppement dâ€™interfaces graphiques ergonomiques, intuitives, visuellement attrayantes et fonctionnelles.\r\n- Utilisation des technologies HTML, CSS, JavaScript, et frameworks modernes (React, Vue.js, etc.).\r\nðŸ”™ DÃ©veloppement Backend :\r\n- Conception et implÃ©mentation de lâ€™architecture des applications.\r\n- DÃ©veloppement dâ€™API RESTful et intÃ©gration avec des bases de donnÃ©es (MySQL, MongoDB, etc.).\r\n- Gestion de lâ€™environnement serveur et dÃ©ploiement dâ€™applications.\r\nðŸ¤ Collaboration et suivi :\r\n- Travailler en Ã©troite collaboration avec l\'Ã©quipe technique pour comprendre les besoins des utilisateurs et proposer des solutions adaptÃ©es.\r\n- Participer aux rÃ©unions d\'Ã©quipe et contribuer Ã  la documentation technique.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n- Ã‰tudiant(e) en informatique ou dans un domaine connexe.\r\n- Bonne connaissance des technologies web (HTML, CSS, JavaScript, etc.).\r\n- ExpÃ©rience avec un ou plusieurs frameworks frontend (React, Angular, Vue.js) et backend (Node.js, Django, etc.) est un plus.\r\n- CapacitÃ© Ã  travailler en Ã©quipe, autonomie et sens de l\'initiative.\r\n- Bonne maÃ®trise du franÃ§ais, la connaissance de l\'anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n- Un environnement de travail stimulant et innovant.\r\n- L\'opportunitÃ© de travailler sur des projets concrets et d\'acquÃ©rir une expÃ©rience prÃ©cieuse.\r\n- Une possibilitÃ© de dÃ©veloppement professionnel au sein de notre entreprise.\r\n \r\nðŸ“§ Candidature\r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  l\'adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:02:05'),
(178, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1007-10-410X621.png\";s:7:\"message\";s:2244:\"ðŸŒŸ Offre de Stage : DÃ©veloppeur Web Full Stack (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de l\'entreprise\r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN) dynamique, fondÃ©e en 2023, avec un engagement envers l\'innovation technologique et le dÃ©veloppement durable. Nous cherchons Ã  renforcer notre Ã©quipe avec un stagiaire passionnÃ© par le dÃ©veloppement web.\r\n \r\nðŸš€ Missions\r\nEn tant que dÃ©veloppeur Web Full Stack, vous participerez aux missions suivantes :\r\n\r\nðŸ’» DÃ©veloppement Front-end :\r\n- Conception et dÃ©veloppement dâ€™interfaces graphiques ergonomiques, intuitives, visuellement attrayantes et fonctionnelles.\r\n- Utilisation des technologies HTML, CSS, JavaScript, et frameworks modernes (React, Vue.js, etc.).\r\nðŸ”™ DÃ©veloppement Backend :\r\n- Conception et implÃ©mentation de lâ€™architecture des applications.\r\n- DÃ©veloppement dâ€™API RESTful et intÃ©gration avec des bases de donnÃ©es (MySQL, MongoDB, etc.).\r\n- Gestion de lâ€™environnement serveur et dÃ©ploiement dâ€™applications.\r\nðŸ¤ Collaboration et suivi :\r\n- Travailler en Ã©troite collaboration avec l\'Ã©quipe technique pour comprendre les besoins des utilisateurs et proposer des solutions adaptÃ©es.\r\n- Participer aux rÃ©unions d\'Ã©quipe et contribuer Ã  la documentation technique.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n- Ã‰tudiant(e) en informatique ou dans un domaine connexe.\r\n- Bonne connaissance des technologies web (HTML, CSS, JavaScript, etc.).\r\n- ExpÃ©rience avec un ou plusieurs frameworks frontend (React, Angular, Vue.js) et backend (Node.js, Django, etc.) est un plus.\r\n- CapacitÃ© Ã  travailler en Ã©quipe, autonomie et sens de l\'initiative.\r\n- Bonne maÃ®trise du franÃ§ais, la connaissance de l\'anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n- Un environnement de travail stimulant et innovant.\r\n- L\'opportunitÃ© de travailler sur des projets concrets et d\'acquÃ©rir une expÃ©rience prÃ©cieuse.\r\n- Une possibilitÃ© de dÃ©veloppement professionnel au sein de notre entreprise.\r\n \r\nðŸ“§ Candidature\r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  l\'adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:02:11'),
(179, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1055-10-410X621.png\";s:7:\"message\";s:2527:\"ðŸŒŸ Offre de Stage : Web Designer (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL, fondÃ©e en 2023, est une Entreprise de Services du NumÃ©rique (ESN) dÃ©diÃ©e Ã  lâ€™innovation technologique et Ã  la crÃ©ation de solutions numÃ©riques sur mesure. Nous recherchons un(e) stagiaire web designer talentueux(se) pour concevoir des interfaces et des visuels qui reflÃ¨tent lâ€™identitÃ© de nos projets.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que web designer, vous participerez aux missions suivantes :\r\n \r\n	â€¢	ðŸŽ¨ Conception graphique :\r\n	â€¢	CrÃ©er des designs de sites web attrayants, intuitifs et fonctionnels.\r\n	â€¢	Ã‰laborer des maquettes et prototypes interactifs en utilisant des outils tels que Figma, Adobe XD, ou Sketch.\r\n	â€¢	ðŸ’» Design UI/UX :\r\n	â€¢	Collaborer avec les Ã©quipes de dÃ©veloppement et de marketing pour concevoir des interfaces utilisateur centrÃ©es sur lâ€™expÃ©rience utilisateur (UX).\r\n	â€¢	Assurer la cohÃ©rence graphique et ergonomique des diffÃ©rents projets web.\r\n	â€¢	ðŸ–¼ CrÃ©ation de contenus visuels :\r\n	â€¢	CrÃ©er des banniÃ¨res, illustrations, logos et autres Ã©lÃ©ments graphiques pour enrichir les plateformes web.\r\n	â€¢	Proposer des idÃ©es crÃ©atives en adÃ©quation avec les attentes des utilisateurs et les objectifs marketing.\r\n	â€¢	ðŸ”§ IntÃ©gration et suivi :\r\n	â€¢	Suivre lâ€™intÃ©gration des designs avec les dÃ©veloppeurs pour garantir la qualitÃ© et la conformitÃ© visuelle.\r\n	â€¢	RÃ©aliser des tests dâ€™ergonomie et ajuster les interfaces en fonction des retours utilisateurs.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en design, arts graphiques, ou domaine connexe.\r\n	â€¢	Bonne maÃ®trise des outils de conception graphique (Photoshop, Illustrator, Figma, etc.).\r\n	â€¢	Connaissance des principes de design UI/UX.\r\n	â€¢	CrÃ©atif(ve), rigoureux(se) et Ã  lâ€™Ã©coute des tendances du web.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Une expÃ©rience enrichissante au sein dâ€™une Ã©quipe jeune et innovante.\r\n	â€¢	La possibilitÃ© de travailler sur des projets rÃ©els et dâ€™affiner vos compÃ©tences en web design.\r\n	â€¢	Un environnement stimulant qui encourage la crÃ©ativitÃ© et la prise dâ€™initiative.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre portfolio, CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:02:13'),
(180, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1007-10-410X621.png\";s:7:\"message\";s:2244:\"ðŸŒŸ Offre de Stage : DÃ©veloppeur Web Full Stack (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de l\'entreprise\r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN) dynamique, fondÃ©e en 2023, avec un engagement envers l\'innovation technologique et le dÃ©veloppement durable. Nous cherchons Ã  renforcer notre Ã©quipe avec un stagiaire passionnÃ© par le dÃ©veloppement web.\r\n \r\nðŸš€ Missions\r\nEn tant que dÃ©veloppeur Web Full Stack, vous participerez aux missions suivantes :\r\n\r\nðŸ’» DÃ©veloppement Front-end :\r\n- Conception et dÃ©veloppement dâ€™interfaces graphiques ergonomiques, intuitives, visuellement attrayantes et fonctionnelles.\r\n- Utilisation des technologies HTML, CSS, JavaScript, et frameworks modernes (React, Vue.js, etc.).\r\nðŸ”™ DÃ©veloppement Backend :\r\n- Conception et implÃ©mentation de lâ€™architecture des applications.\r\n- DÃ©veloppement dâ€™API RESTful et intÃ©gration avec des bases de donnÃ©es (MySQL, MongoDB, etc.).\r\n- Gestion de lâ€™environnement serveur et dÃ©ploiement dâ€™applications.\r\nðŸ¤ Collaboration et suivi :\r\n- Travailler en Ã©troite collaboration avec l\'Ã©quipe technique pour comprendre les besoins des utilisateurs et proposer des solutions adaptÃ©es.\r\n- Participer aux rÃ©unions d\'Ã©quipe et contribuer Ã  la documentation technique.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n- Ã‰tudiant(e) en informatique ou dans un domaine connexe.\r\n- Bonne connaissance des technologies web (HTML, CSS, JavaScript, etc.).\r\n- ExpÃ©rience avec un ou plusieurs frameworks frontend (React, Angular, Vue.js) et backend (Node.js, Django, etc.) est un plus.\r\n- CapacitÃ© Ã  travailler en Ã©quipe, autonomie et sens de l\'initiative.\r\n- Bonne maÃ®trise du franÃ§ais, la connaissance de l\'anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n- Un environnement de travail stimulant et innovant.\r\n- L\'opportunitÃ© de travailler sur des projets concrets et d\'acquÃ©rir une expÃ©rience prÃ©cieuse.\r\n- Une possibilitÃ© de dÃ©veloppement professionnel au sein de notre entreprise.\r\n \r\nðŸ“§ Candidature\r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  l\'adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:02:13'),
(181, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1055-10-410X621.png\";s:7:\"message\";s:2527:\"ðŸŒŸ Offre de Stage : Web Designer (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL, fondÃ©e en 2023, est une Entreprise de Services du NumÃ©rique (ESN) dÃ©diÃ©e Ã  lâ€™innovation technologique et Ã  la crÃ©ation de solutions numÃ©riques sur mesure. Nous recherchons un(e) stagiaire web designer talentueux(se) pour concevoir des interfaces et des visuels qui reflÃ¨tent lâ€™identitÃ© de nos projets.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que web designer, vous participerez aux missions suivantes :\r\n \r\n	â€¢	ðŸŽ¨ Conception graphique :\r\n	â€¢	CrÃ©er des designs de sites web attrayants, intuitifs et fonctionnels.\r\n	â€¢	Ã‰laborer des maquettes et prototypes interactifs en utilisant des outils tels que Figma, Adobe XD, ou Sketch.\r\n	â€¢	ðŸ’» Design UI/UX :\r\n	â€¢	Collaborer avec les Ã©quipes de dÃ©veloppement et de marketing pour concevoir des interfaces utilisateur centrÃ©es sur lâ€™expÃ©rience utilisateur (UX).\r\n	â€¢	Assurer la cohÃ©rence graphique et ergonomique des diffÃ©rents projets web.\r\n	â€¢	ðŸ–¼ CrÃ©ation de contenus visuels :\r\n	â€¢	CrÃ©er des banniÃ¨res, illustrations, logos et autres Ã©lÃ©ments graphiques pour enrichir les plateformes web.\r\n	â€¢	Proposer des idÃ©es crÃ©atives en adÃ©quation avec les attentes des utilisateurs et les objectifs marketing.\r\n	â€¢	ðŸ”§ IntÃ©gration et suivi :\r\n	â€¢	Suivre lâ€™intÃ©gration des designs avec les dÃ©veloppeurs pour garantir la qualitÃ© et la conformitÃ© visuelle.\r\n	â€¢	RÃ©aliser des tests dâ€™ergonomie et ajuster les interfaces en fonction des retours utilisateurs.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en design, arts graphiques, ou domaine connexe.\r\n	â€¢	Bonne maÃ®trise des outils de conception graphique (Photoshop, Illustrator, Figma, etc.).\r\n	â€¢	Connaissance des principes de design UI/UX.\r\n	â€¢	CrÃ©atif(ve), rigoureux(se) et Ã  lâ€™Ã©coute des tendances du web.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Une expÃ©rience enrichissante au sein dâ€™une Ã©quipe jeune et innovante.\r\n	â€¢	La possibilitÃ© de travailler sur des projets rÃ©els et dâ€™affiner vos compÃ©tences en web design.\r\n	â€¢	Un environnement stimulant qui encourage la crÃ©ativitÃ© et la prise dâ€™initiative.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre portfolio, CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:02:20'),
(182, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:55:\"https://nextlogon.com/uploads/hhhhhh-898-10-410X621.png\";s:7:\"message\";s:2349:\"ðŸŒŸ Offre de Stage : Stagiaire en Marketing Digital (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN), fondÃ©e en 2023, qui sâ€™engage Ã  apporter des solutions innovantes dans le secteur numÃ©rique. Nous recherchons un(e) stagiaire en marketing digital pour rejoindre notre Ã©quipe dynamique et contribuer Ã  la mise en Å“uvre de nos stratÃ©gies digitales.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en marketing digital, vous serez chargÃ©(e) de :\r\n \r\n	â€¢	ðŸ“ˆ Gestion des campagnes digitales :\r\n	â€¢	Ã‰laborer et gÃ©rer des campagnes de publicitÃ© en ligne (Google Ads, Facebook Ads, etc.).\r\n	â€¢	Optimiser les campagnes pour amÃ©liorer les performances et le ROI.\r\n	â€¢	ðŸ’» Gestion des rÃ©seaux sociaux :\r\n	â€¢	CrÃ©er et publier du contenu engageant sur les diffÃ©rentes plateformes sociales (Facebook, Instagram, LinkedIn, etc.).\r\n	â€¢	Analyser les rÃ©sultats des publications et amÃ©liorer les stratÃ©gies en consÃ©quence.\r\n	â€¢	ðŸ” RÃ©fÃ©rencement et SEO :\r\n	â€¢	Contribuer Ã  lâ€™optimisation SEO du site web.\r\n	â€¢	Participer Ã  la mise en place de stratÃ©gies de rÃ©fÃ©rencement naturel.\r\n	â€¢	ðŸ“Š Analyse et Reporting :\r\n	â€¢	Suivre et analyser les indicateurs de performance (KPI) des campagnes et produire des rapports rÃ©guliers.\r\n	â€¢	Proposer des recommandations basÃ©es sur les donnÃ©es analysÃ©es.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en marketing, communication, ou domaine connexe.\r\n	â€¢	Connaissances de base en marketing digital, SEO, SEM et rÃ©seaux sociaux.\r\n	â€¢	Aisance avec les outils dâ€™analyse et les plateformes publicitaires (Google Analytics, Google Ads, etc.).\r\n	â€¢	CrÃ©atif(ve), curieux(se), et capable de travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Un environnement de travail stimulant avec des projets rÃ©els.\r\n	â€¢	Lâ€™opportunitÃ© de dÃ©velopper des compÃ©tences pratiques dans le marketing digital.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:02:22'),
(183, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:55:\"https://nextlogon.com/uploads/hhhhhh-898-10-410X621.png\";s:7:\"message\";s:2349:\"ðŸŒŸ Offre de Stage : Stagiaire en Marketing Digital (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN), fondÃ©e en 2023, qui sâ€™engage Ã  apporter des solutions innovantes dans le secteur numÃ©rique. Nous recherchons un(e) stagiaire en marketing digital pour rejoindre notre Ã©quipe dynamique et contribuer Ã  la mise en Å“uvre de nos stratÃ©gies digitales.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en marketing digital, vous serez chargÃ©(e) de :\r\n \r\n	â€¢	ðŸ“ˆ Gestion des campagnes digitales :\r\n	â€¢	Ã‰laborer et gÃ©rer des campagnes de publicitÃ© en ligne (Google Ads, Facebook Ads, etc.).\r\n	â€¢	Optimiser les campagnes pour amÃ©liorer les performances et le ROI.\r\n	â€¢	ðŸ’» Gestion des rÃ©seaux sociaux :\r\n	â€¢	CrÃ©er et publier du contenu engageant sur les diffÃ©rentes plateformes sociales (Facebook, Instagram, LinkedIn, etc.).\r\n	â€¢	Analyser les rÃ©sultats des publications et amÃ©liorer les stratÃ©gies en consÃ©quence.\r\n	â€¢	ðŸ” RÃ©fÃ©rencement et SEO :\r\n	â€¢	Contribuer Ã  lâ€™optimisation SEO du site web.\r\n	â€¢	Participer Ã  la mise en place de stratÃ©gies de rÃ©fÃ©rencement naturel.\r\n	â€¢	ðŸ“Š Analyse et Reporting :\r\n	â€¢	Suivre et analyser les indicateurs de performance (KPI) des campagnes et produire des rapports rÃ©guliers.\r\n	â€¢	Proposer des recommandations basÃ©es sur les donnÃ©es analysÃ©es.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en marketing, communication, ou domaine connexe.\r\n	â€¢	Connaissances de base en marketing digital, SEO, SEM et rÃ©seaux sociaux.\r\n	â€¢	Aisance avec les outils dâ€™analyse et les plateformes publicitaires (Google Analytics, Google Ads, etc.).\r\n	â€¢	CrÃ©atif(ve), curieux(se), et capable de travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Un environnement de travail stimulant avec des projets rÃ©els.\r\n	â€¢	Lâ€™opportunitÃ© de dÃ©velopper des compÃ©tences pratiques dans le marketing digital.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:02:22'),
(184, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1055-10-410X621.png\";s:7:\"message\";s:2527:\"ðŸŒŸ Offre de Stage : Web Designer (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL, fondÃ©e en 2023, est une Entreprise de Services du NumÃ©rique (ESN) dÃ©diÃ©e Ã  lâ€™innovation technologique et Ã  la crÃ©ation de solutions numÃ©riques sur mesure. Nous recherchons un(e) stagiaire web designer talentueux(se) pour concevoir des interfaces et des visuels qui reflÃ¨tent lâ€™identitÃ© de nos projets.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que web designer, vous participerez aux missions suivantes :\r\n \r\n	â€¢	ðŸŽ¨ Conception graphique :\r\n	â€¢	CrÃ©er des designs de sites web attrayants, intuitifs et fonctionnels.\r\n	â€¢	Ã‰laborer des maquettes et prototypes interactifs en utilisant des outils tels que Figma, Adobe XD, ou Sketch.\r\n	â€¢	ðŸ’» Design UI/UX :\r\n	â€¢	Collaborer avec les Ã©quipes de dÃ©veloppement et de marketing pour concevoir des interfaces utilisateur centrÃ©es sur lâ€™expÃ©rience utilisateur (UX).\r\n	â€¢	Assurer la cohÃ©rence graphique et ergonomique des diffÃ©rents projets web.\r\n	â€¢	ðŸ–¼ CrÃ©ation de contenus visuels :\r\n	â€¢	CrÃ©er des banniÃ¨res, illustrations, logos et autres Ã©lÃ©ments graphiques pour enrichir les plateformes web.\r\n	â€¢	Proposer des idÃ©es crÃ©atives en adÃ©quation avec les attentes des utilisateurs et les objectifs marketing.\r\n	â€¢	ðŸ”§ IntÃ©gration et suivi :\r\n	â€¢	Suivre lâ€™intÃ©gration des designs avec les dÃ©veloppeurs pour garantir la qualitÃ© et la conformitÃ© visuelle.\r\n	â€¢	RÃ©aliser des tests dâ€™ergonomie et ajuster les interfaces en fonction des retours utilisateurs.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en design, arts graphiques, ou domaine connexe.\r\n	â€¢	Bonne maÃ®trise des outils de conception graphique (Photoshop, Illustrator, Figma, etc.).\r\n	â€¢	Connaissance des principes de design UI/UX.\r\n	â€¢	CrÃ©atif(ve), rigoureux(se) et Ã  lâ€™Ã©coute des tendances du web.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Une expÃ©rience enrichissante au sein dâ€™une Ã©quipe jeune et innovante.\r\n	â€¢	La possibilitÃ© de travailler sur des projets rÃ©els et dâ€™affiner vos compÃ©tences en web design.\r\n	â€¢	Un environnement stimulant qui encourage la crÃ©ativitÃ© et la prise dâ€™initiative.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre portfolio, CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:02:28'),
(185, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:55:\"https://nextlogon.com/uploads/hhhhhh-898-10-410X621.png\";s:7:\"message\";s:2349:\"ðŸŒŸ Offre de Stage : Stagiaire en Marketing Digital (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN), fondÃ©e en 2023, qui sâ€™engage Ã  apporter des solutions innovantes dans le secteur numÃ©rique. Nous recherchons un(e) stagiaire en marketing digital pour rejoindre notre Ã©quipe dynamique et contribuer Ã  la mise en Å“uvre de nos stratÃ©gies digitales.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en marketing digital, vous serez chargÃ©(e) de :\r\n \r\n	â€¢	ðŸ“ˆ Gestion des campagnes digitales :\r\n	â€¢	Ã‰laborer et gÃ©rer des campagnes de publicitÃ© en ligne (Google Ads, Facebook Ads, etc.).\r\n	â€¢	Optimiser les campagnes pour amÃ©liorer les performances et le ROI.\r\n	â€¢	ðŸ’» Gestion des rÃ©seaux sociaux :\r\n	â€¢	CrÃ©er et publier du contenu engageant sur les diffÃ©rentes plateformes sociales (Facebook, Instagram, LinkedIn, etc.).\r\n	â€¢	Analyser les rÃ©sultats des publications et amÃ©liorer les stratÃ©gies en consÃ©quence.\r\n	â€¢	ðŸ” RÃ©fÃ©rencement et SEO :\r\n	â€¢	Contribuer Ã  lâ€™optimisation SEO du site web.\r\n	â€¢	Participer Ã  la mise en place de stratÃ©gies de rÃ©fÃ©rencement naturel.\r\n	â€¢	ðŸ“Š Analyse et Reporting :\r\n	â€¢	Suivre et analyser les indicateurs de performance (KPI) des campagnes et produire des rapports rÃ©guliers.\r\n	â€¢	Proposer des recommandations basÃ©es sur les donnÃ©es analysÃ©es.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en marketing, communication, ou domaine connexe.\r\n	â€¢	Connaissances de base en marketing digital, SEO, SEM et rÃ©seaux sociaux.\r\n	â€¢	Aisance avec les outils dâ€™analyse et les plateformes publicitaires (Google Analytics, Google Ads, etc.).\r\n	â€¢	CrÃ©atif(ve), curieux(se), et capable de travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Un environnement de travail stimulant avec des projets rÃ©els.\r\n	â€¢	Lâ€™opportunitÃ© de dÃ©velopper des compÃ©tences pratiques dans le marketing digital.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:02:30');
INSERT INTO `sap_logs` (`id`, `user_id`, `social_source`, `social_type`, `posting_type`, `status`, `created`) VALUES
(186, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:55:\"https://nextlogon.com/uploads/hhhhhh-898-10-410X621.png\";s:7:\"message\";s:2349:\"ðŸŒŸ Offre de Stage : Stagiaire en Marketing Digital (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN), fondÃ©e en 2023, qui sâ€™engage Ã  apporter des solutions innovantes dans le secteur numÃ©rique. Nous recherchons un(e) stagiaire en marketing digital pour rejoindre notre Ã©quipe dynamique et contribuer Ã  la mise en Å“uvre de nos stratÃ©gies digitales.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en marketing digital, vous serez chargÃ©(e) de :\r\n \r\n	â€¢	ðŸ“ˆ Gestion des campagnes digitales :\r\n	â€¢	Ã‰laborer et gÃ©rer des campagnes de publicitÃ© en ligne (Google Ads, Facebook Ads, etc.).\r\n	â€¢	Optimiser les campagnes pour amÃ©liorer les performances et le ROI.\r\n	â€¢	ðŸ’» Gestion des rÃ©seaux sociaux :\r\n	â€¢	CrÃ©er et publier du contenu engageant sur les diffÃ©rentes plateformes sociales (Facebook, Instagram, LinkedIn, etc.).\r\n	â€¢	Analyser les rÃ©sultats des publications et amÃ©liorer les stratÃ©gies en consÃ©quence.\r\n	â€¢	ðŸ” RÃ©fÃ©rencement et SEO :\r\n	â€¢	Contribuer Ã  lâ€™optimisation SEO du site web.\r\n	â€¢	Participer Ã  la mise en place de stratÃ©gies de rÃ©fÃ©rencement naturel.\r\n	â€¢	ðŸ“Š Analyse et Reporting :\r\n	â€¢	Suivre et analyser les indicateurs de performance (KPI) des campagnes et produire des rapports rÃ©guliers.\r\n	â€¢	Proposer des recommandations basÃ©es sur les donnÃ©es analysÃ©es.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en marketing, communication, ou domaine connexe.\r\n	â€¢	Connaissances de base en marketing digital, SEO, SEM et rÃ©seaux sociaux.\r\n	â€¢	Aisance avec les outils dâ€™analyse et les plateformes publicitaires (Google Analytics, Google Ads, etc.).\r\n	â€¢	CrÃ©atif(ve), curieux(se), et capable de travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Un environnement de travail stimulant avec des projets rÃ©els.\r\n	â€¢	Lâ€™opportunitÃ© de dÃ©velopper des compÃ©tences pratiques dans le marketing digital.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:02:30'),
(187, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:55:\"https://nextlogon.com/uploads/hhhhhh-898-10-410X621.png\";s:7:\"message\";s:2349:\"ðŸŒŸ Offre de Stage : Stagiaire en Marketing Digital (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN), fondÃ©e en 2023, qui sâ€™engage Ã  apporter des solutions innovantes dans le secteur numÃ©rique. Nous recherchons un(e) stagiaire en marketing digital pour rejoindre notre Ã©quipe dynamique et contribuer Ã  la mise en Å“uvre de nos stratÃ©gies digitales.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en marketing digital, vous serez chargÃ©(e) de :\r\n \r\n	â€¢	ðŸ“ˆ Gestion des campagnes digitales :\r\n	â€¢	Ã‰laborer et gÃ©rer des campagnes de publicitÃ© en ligne (Google Ads, Facebook Ads, etc.).\r\n	â€¢	Optimiser les campagnes pour amÃ©liorer les performances et le ROI.\r\n	â€¢	ðŸ’» Gestion des rÃ©seaux sociaux :\r\n	â€¢	CrÃ©er et publier du contenu engageant sur les diffÃ©rentes plateformes sociales (Facebook, Instagram, LinkedIn, etc.).\r\n	â€¢	Analyser les rÃ©sultats des publications et amÃ©liorer les stratÃ©gies en consÃ©quence.\r\n	â€¢	ðŸ” RÃ©fÃ©rencement et SEO :\r\n	â€¢	Contribuer Ã  lâ€™optimisation SEO du site web.\r\n	â€¢	Participer Ã  la mise en place de stratÃ©gies de rÃ©fÃ©rencement naturel.\r\n	â€¢	ðŸ“Š Analyse et Reporting :\r\n	â€¢	Suivre et analyser les indicateurs de performance (KPI) des campagnes et produire des rapports rÃ©guliers.\r\n	â€¢	Proposer des recommandations basÃ©es sur les donnÃ©es analysÃ©es.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en marketing, communication, ou domaine connexe.\r\n	â€¢	Connaissances de base en marketing digital, SEO, SEM et rÃ©seaux sociaux.\r\n	â€¢	Aisance avec les outils dâ€™analyse et les plateformes publicitaires (Google Analytics, Google Ads, etc.).\r\n	â€¢	CrÃ©atif(ve), curieux(se), et capable de travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Un environnement de travail stimulant avec des projets rÃ©els.\r\n	â€¢	Lâ€™opportunitÃ© de dÃ©velopper des compÃ©tences pratiques dans le marketing digital.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:02:41'),
(188, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1065-10-410X621.png\";s:7:\"message\";s:2664:\"ðŸŒŸ Offre de Stage : Stagiaire en Gestion de Stock et Gestion de Magasin Informatique (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL, Ã  travers sa filiale Storetech Pro, est spÃ©cialisÃ©e dans la vente dâ€™Ã©quipements informatiques neufs et reconditionnÃ©s. Nous sommes engagÃ©s dans une dÃ©marche Ã©cologique tout en offrant des solutions technologiques de qualitÃ©. Nous recherchons un(e) stagiaire pour renforcer notre Ã©quipe en gestion de stock et gestion de magasin informatique.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en gestion de stock et magasin, vous participerez aux missions suivantes :\r\n \r\n	â€¢	ðŸ“¦ Gestion des stocks :\r\n	â€¢	Suivi et gestion des entrÃ©es et sorties de stock.\r\n	â€¢	Participation aux inventaires et Ã  lâ€™organisation des produits dans lâ€™entrepÃ´t.\r\n	â€¢	Optimisation de lâ€™espace de stockage et des flux de marchandises.\r\n	â€¢	ðŸ’» Gestion des commandes :\r\n	â€¢	Assurer la rÃ©ception des commandes clients et fournisseurs.\r\n	â€¢	VÃ©rifier la conformitÃ© des livraisons et gÃ©rer les rÃ©clamations Ã©ventuelles.\r\n	â€¢	Saisir les informations dans les systÃ¨mes de gestion des stocks et des commandes (ERP).\r\n	â€¢	ðŸ›  Gestion du magasin informatique :\r\n	â€¢	Accueillir et conseiller les clients sur les Ã©quipements informatiques.\r\n	â€¢	Assurer la bonne prÃ©sentation et organisation des produits en magasin.\r\n	â€¢	Participer Ã  la mise en place de promotions et au merchandising des produits.\r\n	â€¢	ðŸ“Š Reporting et analyse :\r\n	â€¢	Suivre les indicateurs de performance des ventes et des stocks.\r\n	â€¢	Proposer des solutions pour amÃ©liorer la gestion des stocks et lâ€™expÃ©rience client en magasin.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en logistique, gestion, ou dans un domaine connexe.\r\n	â€¢	Connaissance des outils de gestion de stock et ERP.\r\n	â€¢	Sens de lâ€™organisation, rigueur et capacitÃ© Ã  travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n	â€¢	Un intÃ©rÃªt pour les produits technologiques et informatiques serait un atout.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Une expÃ©rience concrÃ¨te en gestion de stock et de magasin.\r\n	â€¢	La possibilitÃ© de contribuer Ã  lâ€™amÃ©lioration des processus internes dans un environnement en pleine expansion.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e et une immersion dans le secteur informatique.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:02:41'),
(189, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1065-10-410X621.png\";s:7:\"message\";s:2664:\"ðŸŒŸ Offre de Stage : Stagiaire en Gestion de Stock et Gestion de Magasin Informatique (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL, Ã  travers sa filiale Storetech Pro, est spÃ©cialisÃ©e dans la vente dâ€™Ã©quipements informatiques neufs et reconditionnÃ©s. Nous sommes engagÃ©s dans une dÃ©marche Ã©cologique tout en offrant des solutions technologiques de qualitÃ©. Nous recherchons un(e) stagiaire pour renforcer notre Ã©quipe en gestion de stock et gestion de magasin informatique.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en gestion de stock et magasin, vous participerez aux missions suivantes :\r\n \r\n	â€¢	ðŸ“¦ Gestion des stocks :\r\n	â€¢	Suivi et gestion des entrÃ©es et sorties de stock.\r\n	â€¢	Participation aux inventaires et Ã  lâ€™organisation des produits dans lâ€™entrepÃ´t.\r\n	â€¢	Optimisation de lâ€™espace de stockage et des flux de marchandises.\r\n	â€¢	ðŸ’» Gestion des commandes :\r\n	â€¢	Assurer la rÃ©ception des commandes clients et fournisseurs.\r\n	â€¢	VÃ©rifier la conformitÃ© des livraisons et gÃ©rer les rÃ©clamations Ã©ventuelles.\r\n	â€¢	Saisir les informations dans les systÃ¨mes de gestion des stocks et des commandes (ERP).\r\n	â€¢	ðŸ›  Gestion du magasin informatique :\r\n	â€¢	Accueillir et conseiller les clients sur les Ã©quipements informatiques.\r\n	â€¢	Assurer la bonne prÃ©sentation et organisation des produits en magasin.\r\n	â€¢	Participer Ã  la mise en place de promotions et au merchandising des produits.\r\n	â€¢	ðŸ“Š Reporting et analyse :\r\n	â€¢	Suivre les indicateurs de performance des ventes et des stocks.\r\n	â€¢	Proposer des solutions pour amÃ©liorer la gestion des stocks et lâ€™expÃ©rience client en magasin.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en logistique, gestion, ou dans un domaine connexe.\r\n	â€¢	Connaissance des outils de gestion de stock et ERP.\r\n	â€¢	Sens de lâ€™organisation, rigueur et capacitÃ© Ã  travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n	â€¢	Un intÃ©rÃªt pour les produits technologiques et informatiques serait un atout.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Une expÃ©rience concrÃ¨te en gestion de stock et de magasin.\r\n	â€¢	La possibilitÃ© de contribuer Ã  lâ€™amÃ©lioration des processus internes dans un environnement en pleine expansion.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e et une immersion dans le secteur informatique.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:02:41'),
(190, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:55:\"https://nextlogon.com/uploads/hhhhhh-898-10-410X621.png\";s:7:\"message\";s:2349:\"ðŸŒŸ Offre de Stage : Stagiaire en Marketing Digital (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL est une Entreprise de Services du NumÃ©rique (ESN), fondÃ©e en 2023, qui sâ€™engage Ã  apporter des solutions innovantes dans le secteur numÃ©rique. Nous recherchons un(e) stagiaire en marketing digital pour rejoindre notre Ã©quipe dynamique et contribuer Ã  la mise en Å“uvre de nos stratÃ©gies digitales.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en marketing digital, vous serez chargÃ©(e) de :\r\n \r\n	â€¢	ðŸ“ˆ Gestion des campagnes digitales :\r\n	â€¢	Ã‰laborer et gÃ©rer des campagnes de publicitÃ© en ligne (Google Ads, Facebook Ads, etc.).\r\n	â€¢	Optimiser les campagnes pour amÃ©liorer les performances et le ROI.\r\n	â€¢	ðŸ’» Gestion des rÃ©seaux sociaux :\r\n	â€¢	CrÃ©er et publier du contenu engageant sur les diffÃ©rentes plateformes sociales (Facebook, Instagram, LinkedIn, etc.).\r\n	â€¢	Analyser les rÃ©sultats des publications et amÃ©liorer les stratÃ©gies en consÃ©quence.\r\n	â€¢	ðŸ” RÃ©fÃ©rencement et SEO :\r\n	â€¢	Contribuer Ã  lâ€™optimisation SEO du site web.\r\n	â€¢	Participer Ã  la mise en place de stratÃ©gies de rÃ©fÃ©rencement naturel.\r\n	â€¢	ðŸ“Š Analyse et Reporting :\r\n	â€¢	Suivre et analyser les indicateurs de performance (KPI) des campagnes et produire des rapports rÃ©guliers.\r\n	â€¢	Proposer des recommandations basÃ©es sur les donnÃ©es analysÃ©es.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en marketing, communication, ou domaine connexe.\r\n	â€¢	Connaissances de base en marketing digital, SEO, SEM et rÃ©seaux sociaux.\r\n	â€¢	Aisance avec les outils dâ€™analyse et les plateformes publicitaires (Google Analytics, Google Ads, etc.).\r\n	â€¢	CrÃ©atif(ve), curieux(se), et capable de travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Un environnement de travail stimulant avec des projets rÃ©els.\r\n	â€¢	Lâ€™opportunitÃ© de dÃ©velopper des compÃ©tences pratiques dans le marketing digital.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:02:49'),
(191, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1065-10-410X621.png\";s:7:\"message\";s:2664:\"ðŸŒŸ Offre de Stage : Stagiaire en Gestion de Stock et Gestion de Magasin Informatique (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL, Ã  travers sa filiale Storetech Pro, est spÃ©cialisÃ©e dans la vente dâ€™Ã©quipements informatiques neufs et reconditionnÃ©s. Nous sommes engagÃ©s dans une dÃ©marche Ã©cologique tout en offrant des solutions technologiques de qualitÃ©. Nous recherchons un(e) stagiaire pour renforcer notre Ã©quipe en gestion de stock et gestion de magasin informatique.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en gestion de stock et magasin, vous participerez aux missions suivantes :\r\n \r\n	â€¢	ðŸ“¦ Gestion des stocks :\r\n	â€¢	Suivi et gestion des entrÃ©es et sorties de stock.\r\n	â€¢	Participation aux inventaires et Ã  lâ€™organisation des produits dans lâ€™entrepÃ´t.\r\n	â€¢	Optimisation de lâ€™espace de stockage et des flux de marchandises.\r\n	â€¢	ðŸ’» Gestion des commandes :\r\n	â€¢	Assurer la rÃ©ception des commandes clients et fournisseurs.\r\n	â€¢	VÃ©rifier la conformitÃ© des livraisons et gÃ©rer les rÃ©clamations Ã©ventuelles.\r\n	â€¢	Saisir les informations dans les systÃ¨mes de gestion des stocks et des commandes (ERP).\r\n	â€¢	ðŸ›  Gestion du magasin informatique :\r\n	â€¢	Accueillir et conseiller les clients sur les Ã©quipements informatiques.\r\n	â€¢	Assurer la bonne prÃ©sentation et organisation des produits en magasin.\r\n	â€¢	Participer Ã  la mise en place de promotions et au merchandising des produits.\r\n	â€¢	ðŸ“Š Reporting et analyse :\r\n	â€¢	Suivre les indicateurs de performance des ventes et des stocks.\r\n	â€¢	Proposer des solutions pour amÃ©liorer la gestion des stocks et lâ€™expÃ©rience client en magasin.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en logistique, gestion, ou dans un domaine connexe.\r\n	â€¢	Connaissance des outils de gestion de stock et ERP.\r\n	â€¢	Sens de lâ€™organisation, rigueur et capacitÃ© Ã  travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n	â€¢	Un intÃ©rÃªt pour les produits technologiques et informatiques serait un atout.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Une expÃ©rience concrÃ¨te en gestion de stock et de magasin.\r\n	â€¢	La possibilitÃ© de contribuer Ã  lâ€™amÃ©lioration des processus internes dans un environnement en pleine expansion.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e et une immersion dans le secteur informatique.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:02:49'),
(192, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1065-10-410X621.png\";s:7:\"message\";s:2664:\"ðŸŒŸ Offre de Stage : Stagiaire en Gestion de Stock et Gestion de Magasin Informatique (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL, Ã  travers sa filiale Storetech Pro, est spÃ©cialisÃ©e dans la vente dâ€™Ã©quipements informatiques neufs et reconditionnÃ©s. Nous sommes engagÃ©s dans une dÃ©marche Ã©cologique tout en offrant des solutions technologiques de qualitÃ©. Nous recherchons un(e) stagiaire pour renforcer notre Ã©quipe en gestion de stock et gestion de magasin informatique.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en gestion de stock et magasin, vous participerez aux missions suivantes :\r\n \r\n	â€¢	ðŸ“¦ Gestion des stocks :\r\n	â€¢	Suivi et gestion des entrÃ©es et sorties de stock.\r\n	â€¢	Participation aux inventaires et Ã  lâ€™organisation des produits dans lâ€™entrepÃ´t.\r\n	â€¢	Optimisation de lâ€™espace de stockage et des flux de marchandises.\r\n	â€¢	ðŸ’» Gestion des commandes :\r\n	â€¢	Assurer la rÃ©ception des commandes clients et fournisseurs.\r\n	â€¢	VÃ©rifier la conformitÃ© des livraisons et gÃ©rer les rÃ©clamations Ã©ventuelles.\r\n	â€¢	Saisir les informations dans les systÃ¨mes de gestion des stocks et des commandes (ERP).\r\n	â€¢	ðŸ›  Gestion du magasin informatique :\r\n	â€¢	Accueillir et conseiller les clients sur les Ã©quipements informatiques.\r\n	â€¢	Assurer la bonne prÃ©sentation et organisation des produits en magasin.\r\n	â€¢	Participer Ã  la mise en place de promotions et au merchandising des produits.\r\n	â€¢	ðŸ“Š Reporting et analyse :\r\n	â€¢	Suivre les indicateurs de performance des ventes et des stocks.\r\n	â€¢	Proposer des solutions pour amÃ©liorer la gestion des stocks et lâ€™expÃ©rience client en magasin.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en logistique, gestion, ou dans un domaine connexe.\r\n	â€¢	Connaissance des outils de gestion de stock et ERP.\r\n	â€¢	Sens de lâ€™organisation, rigueur et capacitÃ© Ã  travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n	â€¢	Un intÃ©rÃªt pour les produits technologiques et informatiques serait un atout.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Une expÃ©rience concrÃ¨te en gestion de stock et de magasin.\r\n	â€¢	La possibilitÃ© de contribuer Ã  lâ€™amÃ©lioration des processus internes dans un environnement en pleine expansion.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e et une immersion dans le secteur informatique.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:02:49'),
(193, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1065-10-410X621.png\";s:7:\"message\";s:2664:\"ðŸŒŸ Offre de Stage : Stagiaire en Gestion de Stock et Gestion de Magasin Informatique (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL, Ã  travers sa filiale Storetech Pro, est spÃ©cialisÃ©e dans la vente dâ€™Ã©quipements informatiques neufs et reconditionnÃ©s. Nous sommes engagÃ©s dans une dÃ©marche Ã©cologique tout en offrant des solutions technologiques de qualitÃ©. Nous recherchons un(e) stagiaire pour renforcer notre Ã©quipe en gestion de stock et gestion de magasin informatique.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en gestion de stock et magasin, vous participerez aux missions suivantes :\r\n \r\n	â€¢	ðŸ“¦ Gestion des stocks :\r\n	â€¢	Suivi et gestion des entrÃ©es et sorties de stock.\r\n	â€¢	Participation aux inventaires et Ã  lâ€™organisation des produits dans lâ€™entrepÃ´t.\r\n	â€¢	Optimisation de lâ€™espace de stockage et des flux de marchandises.\r\n	â€¢	ðŸ’» Gestion des commandes :\r\n	â€¢	Assurer la rÃ©ception des commandes clients et fournisseurs.\r\n	â€¢	VÃ©rifier la conformitÃ© des livraisons et gÃ©rer les rÃ©clamations Ã©ventuelles.\r\n	â€¢	Saisir les informations dans les systÃ¨mes de gestion des stocks et des commandes (ERP).\r\n	â€¢	ðŸ›  Gestion du magasin informatique :\r\n	â€¢	Accueillir et conseiller les clients sur les Ã©quipements informatiques.\r\n	â€¢	Assurer la bonne prÃ©sentation et organisation des produits en magasin.\r\n	â€¢	Participer Ã  la mise en place de promotions et au merchandising des produits.\r\n	â€¢	ðŸ“Š Reporting et analyse :\r\n	â€¢	Suivre les indicateurs de performance des ventes et des stocks.\r\n	â€¢	Proposer des solutions pour amÃ©liorer la gestion des stocks et lâ€™expÃ©rience client en magasin.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en logistique, gestion, ou dans un domaine connexe.\r\n	â€¢	Connaissance des outils de gestion de stock et ERP.\r\n	â€¢	Sens de lâ€™organisation, rigueur et capacitÃ© Ã  travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n	â€¢	Un intÃ©rÃªt pour les produits technologiques et informatiques serait un atout.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Une expÃ©rience concrÃ¨te en gestion de stock et de magasin.\r\n	â€¢	La possibilitÃ© de contribuer Ã  lâ€™amÃ©lioration des processus internes dans un environnement en pleine expansion.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e et une immersion dans le secteur informatique.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:02:49'),
(194, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1065-10-410X621.png\";s:7:\"message\";s:2664:\"ðŸŒŸ Offre de Stage : Stagiaire en Gestion de Stock et Gestion de Magasin Informatique (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL, Ã  travers sa filiale Storetech Pro, est spÃ©cialisÃ©e dans la vente dâ€™Ã©quipements informatiques neufs et reconditionnÃ©s. Nous sommes engagÃ©s dans une dÃ©marche Ã©cologique tout en offrant des solutions technologiques de qualitÃ©. Nous recherchons un(e) stagiaire pour renforcer notre Ã©quipe en gestion de stock et gestion de magasin informatique.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en gestion de stock et magasin, vous participerez aux missions suivantes :\r\n \r\n	â€¢	ðŸ“¦ Gestion des stocks :\r\n	â€¢	Suivi et gestion des entrÃ©es et sorties de stock.\r\n	â€¢	Participation aux inventaires et Ã  lâ€™organisation des produits dans lâ€™entrepÃ´t.\r\n	â€¢	Optimisation de lâ€™espace de stockage et des flux de marchandises.\r\n	â€¢	ðŸ’» Gestion des commandes :\r\n	â€¢	Assurer la rÃ©ception des commandes clients et fournisseurs.\r\n	â€¢	VÃ©rifier la conformitÃ© des livraisons et gÃ©rer les rÃ©clamations Ã©ventuelles.\r\n	â€¢	Saisir les informations dans les systÃ¨mes de gestion des stocks et des commandes (ERP).\r\n	â€¢	ðŸ›  Gestion du magasin informatique :\r\n	â€¢	Accueillir et conseiller les clients sur les Ã©quipements informatiques.\r\n	â€¢	Assurer la bonne prÃ©sentation et organisation des produits en magasin.\r\n	â€¢	Participer Ã  la mise en place de promotions et au merchandising des produits.\r\n	â€¢	ðŸ“Š Reporting et analyse :\r\n	â€¢	Suivre les indicateurs de performance des ventes et des stocks.\r\n	â€¢	Proposer des solutions pour amÃ©liorer la gestion des stocks et lâ€™expÃ©rience client en magasin.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en logistique, gestion, ou dans un domaine connexe.\r\n	â€¢	Connaissance des outils de gestion de stock et ERP.\r\n	â€¢	Sens de lâ€™organisation, rigueur et capacitÃ© Ã  travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n	â€¢	Un intÃ©rÃªt pour les produits technologiques et informatiques serait un atout.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Une expÃ©rience concrÃ¨te en gestion de stock et de magasin.\r\n	â€¢	La possibilitÃ© de contribuer Ã  lâ€™amÃ©lioration des processus internes dans un environnement en pleine expansion.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e et une immersion dans le secteur informatique.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-07 15:02:51'),
(195, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1065-10-410X621.png\";s:7:\"message\";s:2664:\"ðŸŒŸ Offre de Stage : Stagiaire en Gestion de Stock et Gestion de Magasin Informatique (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL, Ã  travers sa filiale Storetech Pro, est spÃ©cialisÃ©e dans la vente dâ€™Ã©quipements informatiques neufs et reconditionnÃ©s. Nous sommes engagÃ©s dans une dÃ©marche Ã©cologique tout en offrant des solutions technologiques de qualitÃ©. Nous recherchons un(e) stagiaire pour renforcer notre Ã©quipe en gestion de stock et gestion de magasin informatique.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en gestion de stock et magasin, vous participerez aux missions suivantes :\r\n \r\n	â€¢	ðŸ“¦ Gestion des stocks :\r\n	â€¢	Suivi et gestion des entrÃ©es et sorties de stock.\r\n	â€¢	Participation aux inventaires et Ã  lâ€™organisation des produits dans lâ€™entrepÃ´t.\r\n	â€¢	Optimisation de lâ€™espace de stockage et des flux de marchandises.\r\n	â€¢	ðŸ’» Gestion des commandes :\r\n	â€¢	Assurer la rÃ©ception des commandes clients et fournisseurs.\r\n	â€¢	VÃ©rifier la conformitÃ© des livraisons et gÃ©rer les rÃ©clamations Ã©ventuelles.\r\n	â€¢	Saisir les informations dans les systÃ¨mes de gestion des stocks et des commandes (ERP).\r\n	â€¢	ðŸ›  Gestion du magasin informatique :\r\n	â€¢	Accueillir et conseiller les clients sur les Ã©quipements informatiques.\r\n	â€¢	Assurer la bonne prÃ©sentation et organisation des produits en magasin.\r\n	â€¢	Participer Ã  la mise en place de promotions et au merchandising des produits.\r\n	â€¢	ðŸ“Š Reporting et analyse :\r\n	â€¢	Suivre les indicateurs de performance des ventes et des stocks.\r\n	â€¢	Proposer des solutions pour amÃ©liorer la gestion des stocks et lâ€™expÃ©rience client en magasin.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en logistique, gestion, ou dans un domaine connexe.\r\n	â€¢	Connaissance des outils de gestion de stock et ERP.\r\n	â€¢	Sens de lâ€™organisation, rigueur et capacitÃ© Ã  travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n	â€¢	Un intÃ©rÃªt pour les produits technologiques et informatiques serait un atout.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Une expÃ©rience concrÃ¨te en gestion de stock et de magasin.\r\n	â€¢	La possibilitÃ© de contribuer Ã  lâ€™amÃ©lioration des processus internes dans un environnement en pleine expansion.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e et une immersion dans le secteur informatique.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:02:56'),
(196, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:56:\"https://nextlogon.com/uploads/hhhhhh-1065-10-410X621.png\";s:7:\"message\";s:2664:\"ðŸŒŸ Offre de Stage : Stagiaire en Gestion de Stock et Gestion de Magasin Informatique (H/F)\r\nðŸ•’ DurÃ©e : 3 mois renouvelable\r\n ðŸ“   Lieu : Pointe-Noire, RÃ©publique du Congo\r\nðŸ“… Date limite de soumission : 12 Octobre 2024\r\n \r\nðŸ¢ Description de lâ€™entreprise\r\n \r\nLGC SARL, Ã  travers sa filiale Storetech Pro, est spÃ©cialisÃ©e dans la vente dâ€™Ã©quipements informatiques neufs et reconditionnÃ©s. Nous sommes engagÃ©s dans une dÃ©marche Ã©cologique tout en offrant des solutions technologiques de qualitÃ©. Nous recherchons un(e) stagiaire pour renforcer notre Ã©quipe en gestion de stock et gestion de magasin informatique.\r\n \r\nðŸš€ Missions\r\n \r\nEn tant que stagiaire en gestion de stock et magasin, vous participerez aux missions suivantes :\r\n \r\n	â€¢	ðŸ“¦ Gestion des stocks :\r\n	â€¢	Suivi et gestion des entrÃ©es et sorties de stock.\r\n	â€¢	Participation aux inventaires et Ã  lâ€™organisation des produits dans lâ€™entrepÃ´t.\r\n	â€¢	Optimisation de lâ€™espace de stockage et des flux de marchandises.\r\n	â€¢	ðŸ’» Gestion des commandes :\r\n	â€¢	Assurer la rÃ©ception des commandes clients et fournisseurs.\r\n	â€¢	VÃ©rifier la conformitÃ© des livraisons et gÃ©rer les rÃ©clamations Ã©ventuelles.\r\n	â€¢	Saisir les informations dans les systÃ¨mes de gestion des stocks et des commandes (ERP).\r\n	â€¢	ðŸ›  Gestion du magasin informatique :\r\n	â€¢	Accueillir et conseiller les clients sur les Ã©quipements informatiques.\r\n	â€¢	Assurer la bonne prÃ©sentation et organisation des produits en magasin.\r\n	â€¢	Participer Ã  la mise en place de promotions et au merchandising des produits.\r\n	â€¢	ðŸ“Š Reporting et analyse :\r\n	â€¢	Suivre les indicateurs de performance des ventes et des stocks.\r\n	â€¢	Proposer des solutions pour amÃ©liorer la gestion des stocks et lâ€™expÃ©rience client en magasin.\r\n \r\nðŸ§‘â€ðŸŽ“ Profil recherchÃ©\r\n \r\n	â€¢	Ã‰tudiant(e) en logistique, gestion, ou dans un domaine connexe.\r\n	â€¢	Connaissance des outils de gestion de stock et ERP.\r\n	â€¢	Sens de lâ€™organisation, rigueur et capacitÃ© Ã  travailler en Ã©quipe.\r\n	â€¢	Bonne maÃ®trise du franÃ§ais, la connaissance de lâ€™anglais est un plus.\r\n	â€¢	Un intÃ©rÃªt pour les produits technologiques et informatiques serait un atout.\r\n \r\nðŸŽ Ce que nous offrons\r\n \r\n	â€¢	Une expÃ©rience concrÃ¨te en gestion de stock et de magasin.\r\n	â€¢	La possibilitÃ© de contribuer Ã  lâ€™amÃ©lioration des processus internes dans un environnement en pleine expansion.\r\n	â€¢	Un accompagnement par une Ã©quipe expÃ©rimentÃ©e et une immersion dans le secteur informatique.\r\n \r\nðŸ“§ Candidature\r\n \r\nPour postuler, veuillez envoyer votre CV et une lettre de motivation Ã  lâ€™adresse suivante : rh@lgc-sarl.com\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-07 15:02:58'),
(197, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:87:\"https://nextlogon.com/uploads/capture-dâ€™Ã©cran-2024-10-09-173127-1812-10-1050X605.png\";s:7:\"message\";s:612:\"ðŸ’» L\'amÃ©lioration continue dans le numÃ©rique : une nÃ©cessitÃ© pour avancer !ðŸ”„\r\n\r\nLe monde du numÃ©rique Ã©volue constamment ðŸŒ, et chez LGC SARL ,\r\n\r\nL\'amÃ©lioration continue est notre moteur pour rester performant et rÃ©pondre aux besoins croissants du marchÃ©. ðŸ“ŠðŸ’¼ Nous nous adaptons, innovons et apprenons sans cesse afin de proposer des solutions plus performantes et durables. \r\n\r\nðŸ“² Suivez-nous sur :\r\n\r\nðŸ‘‰ https://lnkd.in/eSuvd-Qk\r\nðŸ‘‰ https://lnkd.in/ehyQxksr\r\n\r\n\r\n#SolutionsNumÃ©riques #TransformationDigitale #PerformanceOptimisÃ©e #LGCsarl #Congo #Afrobizcongo #Evensdoc #Storetech\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-09 15:33:01'),
(198, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:72:\"https://nextlogon.com/uploads/recrutement-fluide--2-722-10-1080X1920.png\";s:7:\"message\";s:2397:\"LGC SARL vous propose son processus de recrutement fluide\r\n\r\n1. Digitalisation complÃ¨te du processus\r\n\r\nGrÃ¢ce Ã  notre systÃ¨me de recrutement en ligne, vous pouvez postuler Ã  nos offres depuis n\'importe oÃ¹, sans avoir Ã  vous dÃ©placer. Tout est centralisÃ© sur une plateforme facile d\'accÃ¨s, permettant de soumettre votre candidature.\r\n\r\n2. RÃ©ponses rapides et transparentes\r\n\r\nNous savons Ã  quel point l\'attente d\'une rÃ©ponse peut Ãªtre stressante. C\'est pourquoi, chez LGC SARL, nous avons mis en place un systÃ¨me de suivi des candidatures qui garantit des retours rapides. Vous Ãªtes informÃ© Ã  chaque Ã©tape, vous savez oÃ¹ vous en Ãªtes et ce qu\'il vous reste Ã  faire. ðŸ””âœ…\r\n\r\n3. Simplification des Ã©tapes\r\n\r\nNous Ã©liminons les dÃ©marches inutiles pour aller Ã  l\'essentiel. Plus de processus longs et compliquÃ©s. Vous passez par des Ã©tapes claires et rapides, avec des outils modernes qui nous permettent de nous concentrer sur vos compÃ©tences et vos connaissances.\r\n\r\n4. AccessibilitÃ© et inclusivitÃ©\r\n\r\nLe recrutement fluide chez LGC SARL est conÃ§u pour Ãªtre accessible Ã  tous. Que vous soyez un jeune diplÃ´mÃ© ou un professionnel expÃ©rimentÃ©, notre processus est simple, inclusif et sans barriÃ¨re gÃ©ographique. ðŸŒ\r\n\r\n5. Valorisation des talents\r\n\r\nNous croyons que chaque talent mÃ©rite d\'Ãªtre mis en avant. Notre approche fluide nous permet d\'Ã©valuer les compÃ©tences de maniÃ¨re efficace.\r\nEn sÃ©lectionnant LGC SARL, vous bÃ©nÃ©ficiez d\'un processus de recrutement rapide ,simple et percutant.\r\n\r\n6. Valorisation des talents\r\n\r\nNous croyons que chaque talent mÃ©rite d\'Ãªtre mis en avant. Notre approche fluide nous permet d\'Ã©valuer les compÃ©tences de maniÃ¨re efficace, tout en donnant aux candidats l\'opportunitÃ© de se dÃ©marquer grÃ¢ce Ã  des processus d\'Ã©valuation adaptÃ©s. Que ce soit lors des tests techniques ou des entretiens, nous cherchons Ã  identifier les forces spÃ©cifiques de chaque candidat ,C\'est pourquoi nous avons mis en place un cadre d\'Ã©valuation qui valorise non seulement les compÃ©tences techniques, mais aussi des qualitÃ©s humaines comme la crÃ©ativitÃ©ðŸŽ¨, l\'adaptabilitÃ© ðŸŒ±et l\'esprit d\'Ã©quipeðŸ¤.\r\n\r\nðŸ“² Suivez-nous sur :\r\nðŸ‘‰ https://lnkd.in/eSuvd-Qk\r\nðŸ‘‰ https://lnkd.in/ehyQxksr\r\n\r\n\r\n#SolutionsNumÃ©riques #TransformationDigitale #PerformanceOptimisÃ©e #LGCsarl #Congo #Afrobizcongo #Evensdoc #Storetech\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-11 08:46:53'),
(199, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:72:\"https://nextlogon.com/uploads/recrutement-fluide--2-722-10-1080X1920.png\";s:7:\"message\";s:2397:\"LGC SARL vous propose son processus de recrutement fluide\r\n\r\n1. Digitalisation complÃ¨te du processus\r\n\r\nGrÃ¢ce Ã  notre systÃ¨me de recrutement en ligne, vous pouvez postuler Ã  nos offres depuis n\'importe oÃ¹, sans avoir Ã  vous dÃ©placer. Tout est centralisÃ© sur une plateforme facile d\'accÃ¨s, permettant de soumettre votre candidature.\r\n\r\n2. RÃ©ponses rapides et transparentes\r\n\r\nNous savons Ã  quel point l\'attente d\'une rÃ©ponse peut Ãªtre stressante. C\'est pourquoi, chez LGC SARL, nous avons mis en place un systÃ¨me de suivi des candidatures qui garantit des retours rapides. Vous Ãªtes informÃ© Ã  chaque Ã©tape, vous savez oÃ¹ vous en Ãªtes et ce qu\'il vous reste Ã  faire. ðŸ””âœ…\r\n\r\n3. Simplification des Ã©tapes\r\n\r\nNous Ã©liminons les dÃ©marches inutiles pour aller Ã  l\'essentiel. Plus de processus longs et compliquÃ©s. Vous passez par des Ã©tapes claires et rapides, avec des outils modernes qui nous permettent de nous concentrer sur vos compÃ©tences et vos connaissances.\r\n\r\n4. AccessibilitÃ© et inclusivitÃ©\r\n\r\nLe recrutement fluide chez LGC SARL est conÃ§u pour Ãªtre accessible Ã  tous. Que vous soyez un jeune diplÃ´mÃ© ou un professionnel expÃ©rimentÃ©, notre processus est simple, inclusif et sans barriÃ¨re gÃ©ographique. ðŸŒ\r\n\r\n5. Valorisation des talents\r\n\r\nNous croyons que chaque talent mÃ©rite d\'Ãªtre mis en avant. Notre approche fluide nous permet d\'Ã©valuer les compÃ©tences de maniÃ¨re efficace.\r\nEn sÃ©lectionnant LGC SARL, vous bÃ©nÃ©ficiez d\'un processus de recrutement rapide ,simple et percutant.\r\n\r\n6. Valorisation des talents\r\n\r\nNous croyons que chaque talent mÃ©rite d\'Ãªtre mis en avant. Notre approche fluide nous permet d\'Ã©valuer les compÃ©tences de maniÃ¨re efficace, tout en donnant aux candidats l\'opportunitÃ© de se dÃ©marquer grÃ¢ce Ã  des processus d\'Ã©valuation adaptÃ©s. Que ce soit lors des tests techniques ou des entretiens, nous cherchons Ã  identifier les forces spÃ©cifiques de chaque candidat ,C\'est pourquoi nous avons mis en place un cadre d\'Ã©valuation qui valorise non seulement les compÃ©tences techniques, mais aussi des qualitÃ©s humaines comme la crÃ©ativitÃ©ðŸŽ¨, l\'adaptabilitÃ© ðŸŒ±et l\'esprit d\'Ã©quipeðŸ¤.\r\n\r\nðŸ“² Suivez-nous sur :\r\nðŸ‘‰ https://lnkd.in/eSuvd-Qk\r\nðŸ‘‰ https://lnkd.in/ehyQxksr\r\n\r\n\r\n#SolutionsNumÃ©riques #TransformationDigitale #PerformanceOptimisÃ©e #LGCsarl #Congo #Afrobizcongo #Evensdoc #Storetech\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-11 08:46:59'),
(200, 3, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:98:\"https://nextlogon.com/uploads/462748394_554674957101813_6852719772035520743_n-967-10-1080X1920.jpg\";s:7:\"message\";s:2367:\"LGC SARL vous propose son processus de recrutement fluide\r\n1. Digitalisation complÃ¨te du processus\r\nGrÃ¢ce Ã  notre systÃ¨me de recrutement en ligne, vous pouvez postuler Ã  nos offres depuis n\'importe oÃ¹, sans avoir Ã  vous dÃ©placer. Tout est centralisÃ© sur une plateforme facile d\'accÃ¨s, permettant de soumettre votre candidature.\r\n2. RÃ©ponses rapides et transparentes\r\nNous savons Ã  quel point l\'attente d\'une rÃ©ponse peut Ãªtre stressante. C\'est pourquoi, chez LGC SARL, nous avons mis en place un systÃ¨me de suivi des candidatures qui garantit des retours rapides. Vous Ãªtes informÃ© Ã  chaque Ã©tape, vous savez oÃ¹ vous en Ãªtes et ce qu\'il vous reste Ã  faire. ðŸ””âœ…\r\n3. Simplification des Ã©tapes\r\nNous Ã©liminons les dÃ©marches inutiles pour aller Ã  l\'essentiel. Plus de processus longs et compliquÃ©s. Vous passez par des Ã©tapes claires et rapides, avec des outils modernes qui nous permettent de nous concentrer sur vos compÃ©tences et vos connaissances.\r\n4. AccessibilitÃ© et inclusivitÃ©\r\nLe recrutement fluide chez LGC SARL est conÃ§u pour Ãªtre accessible Ã  tous. Que vous soyez un jeune diplÃ´mÃ© ou un professionnel expÃ©rimentÃ©, notre processus est simple, inclusif et sans barriÃ¨re gÃ©ographique. ðŸŒ\r\n5. Valorisation des talents\r\nNous croyons que chaque talent mÃ©rite d\'Ãªtre mis en avant. Notre approche fluide nous permet d\'Ã©valuer les compÃ©tences de maniÃ¨re efficace.\r\nEn sÃ©lectionnant LGC SARL, vous bÃ©nÃ©ficiez d\'un processus de recrutement rapide ,simple et percutant.\r\n6. Valorisation des talents\r\nNous croyons que chaque talent mÃ©rite d\'Ãªtre mis en avant. Notre approche fluide nous permet d\'Ã©valuer les compÃ©tences de maniÃ¨re efficace, tout en donnant aux candidats l\'opportunitÃ© de se dÃ©marquer grÃ¢ce Ã  des processus d\'Ã©valuation adaptÃ©s. Que ce soit lors des tests techniques ou des entretiens, nous cherchons Ã  identifier les forces spÃ©cifiques de chaque candidat ,C\'est pourquoi nous avons mis en place un cadre d\'Ã©valuation qui valorise non seulement les compÃ©tences techniques, mais aussi des qualitÃ©s humaines comme la crÃ©ativitÃ©ðŸŽ¨, l\'adaptabilitÃ© ðŸŒ±et l\'esprit d\'Ã©quipeðŸ¤.\r\nðŸ“² Suivez-nous sur :\r\nðŸ‘‰ https://lnkd.in/eSuvd-Qk\r\nðŸ‘‰ https://lnkd.in/ehyQxksr\r\n#SolutionsNumÃ©riques #TransformationDigitale #PerformanceOptimisÃ©e #LGCsarl #Congo #Afrobizcongo #Evensdoc #Storetech\";s:12:\"account name\";s:23:\"Precolag Tecnologia,Lda\";s:12:\"link to post\";s:41:\"https://www.facebook.com/1096440603768794\";}', 'facebook', '1', 1, '2024-10-11 09:00:09'),
(201, 3, 'a:4:{s:5:\"image\";s:98:\"https://nextlogon.com/uploads/462748394_554674957101813_6852719772035520743_n-967-10-1080X1920.jpg\";s:7:\"message\";s:2191:\"LGC SARL vous propose son processus de recrutement fluide\r\n1. Digitalisation complÃ¨te du processus\r\nGrÃ¢ce Ã  notre systÃ¨me de recrutement en ligne, vous pouvez postuler Ã  nos offres depuis n\'importe oÃ¹, sans avoir Ã  vous dÃ©placer. Tout est centralisÃ© sur une plateforme facile d\'accÃ¨s, permettant de soumettre votre candidature.\r\n2. RÃ©ponses rapides et transparentes\r\nNous savons Ã  quel point l\'attente d\'une rÃ©ponse peut Ãªtre stressante. C\'est pourquoi, chez LGC SARL, nous avons mis en place un systÃ¨me de suivi des candidatures qui garantit des retours rapides. Vous Ãªtes informÃ© Ã  chaque Ã©tape, vous savez oÃ¹ vous en Ãªtes et ce qu\'il vous reste Ã  faire. ðŸ””âœ…\r\n3. Simplification des Ã©tapes\r\nNous Ã©liminons les dÃ©marches inutiles pour aller Ã  l\'essentiel. Plus de processus longs et compliquÃ©s. Vous passez par des Ã©tapes claires et rapides, avec des outils modernes qui nous permettent de nous concentrer sur vos compÃ©tences et vos connaissances.\r\n4. AccessibilitÃ© et inclusivitÃ©\r\nLe recrutement fluide chez LGC SARL est conÃ§u pour Ãªtre accessible Ã  tous. Que vous soyez un jeune diplÃ´mÃ© ou un professionnel expÃ©rimentÃ©, notre processus est simple, inclusif et sans barriÃ¨re gÃ©ographique. ðŸŒ\r\n5. Valorisation des talents\r\nNous croyons que chaque talent mÃ©rite d\'Ãªtre mis en avant. Notre approche fluide nous permet d\'Ã©valuer les compÃ©tences de maniÃ¨re efficace.\r\nEn sÃ©lectionnant LGC SARL, vous bÃ©nÃ©ficiez d\'un processus de recrutement rapide ,simple et percutant.\r\n6. Valorisation des talents\r\nNous croyons que chaque talent mÃ©rite d\'Ãªtre mis en avant. Notre approche fluide nous permet d\'Ã©valuer les compÃ©tences de maniÃ¨re efficace, tout en donnant aux candidats l\'opportunitÃ© de se dÃ©marquer grÃ¢ce Ã  des processus d\'Ã©valuation adaptÃ©s. Que ce soit lors des tests techniques ou des entretiens, nous cherchons Ã  identifier les forces spÃ©cifiques de chaque candidat ,C\'est pourquoi nous avons mis en place un cadre d\'Ã©valuation qui valorise non seulement les compÃ©tences techniques, mais aussi des qualitÃ©s humaines comme la crÃ©ativitÃ©ðŸŽ¨, l\'adaptabilitÃ© ðŸŒ±et l\'esprit d\'Ã©quipeðŸ¤.\r\nðŸ“² Suivez-nous sur :\r\nðŸ‘‰ \";s:10:\"account_id\";s:17:\"17841451263863884\";s:12:\"display_name\";s:14:\"laz_store_sarl\";}', 'instagram', 'default', 1, '2024-10-11 09:00:20'),
(202, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:59:\"https://nextlogon.com/uploads/lgc-logo-404-10-2400X2400.png\";s:7:\"message\";s:246:\"Le numÃ©rique n\'est pas une option, c\'est la clÃ© pour transformer vos idÃ©es en rÃ©alitÃ©. \r\nðŸš€ Chaque clic ouvre une nouvelle opportunitÃ©, chaque donnÃ©e rÃ©vÃ¨le une solution. \r\nðŸ”ðŸ“ˆ Osez le futur, osez le numÃ©rique avec LGC SARL !ðŸ’¡\";s:12:\"account name\";s:10:\"Store Tech\";s:12:\"link to post\";s:40:\"https://www.facebook.com/101804432707979\";}', 'facebook', '1', 1, '2024-10-12 10:36:17'),
(203, 6, 'a:5:{s:4:\"link\";s:0:\"\";s:5:\"image\";s:59:\"https://nextlogon.com/uploads/lgc-logo-404-10-2400X2400.png\";s:7:\"message\";s:246:\"Le numÃ©rique n\'est pas une option, c\'est la clÃ© pour transformer vos idÃ©es en rÃ©alitÃ©. \r\nðŸš€ Chaque clic ouvre une nouvelle opportunitÃ©, chaque donnÃ©e rÃ©vÃ¨le une solution. \r\nðŸ”ðŸ“ˆ Osez le futur, osez le numÃ©rique avec LGC SARL !ðŸ’¡\";s:12:\"account name\";s:8:\"LGC SARL\";s:12:\"link to post\";s:40:\"https://www.facebook.com/106258408604586\";}', 'facebook', '1', 1, '2024-10-12 10:36:26');

-- --------------------------------------------------------

--
-- Structure de la table `sap_membership`
--

CREATE TABLE `sap_membership` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `membership_duration_days` int(11) DEFAULT NULL,
  `customer_id` varchar(255) NOT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `subscription_id` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) NOT NULL,
  `membership_status` tinyint(2) DEFAULT 0 COMMENT ' 0 pending / 1 active / 2 expired / 3 cancelled',
  `recurring` tinyint(2) NOT NULL DEFAULT 0 COMMENT '1 yes / 0 no',
  `expiration_date` varchar(255) DEFAULT NULL,
  `renew_date` datetime DEFAULT NULL,
  `upgrade_date` datetime DEFAULT NULL,
  `cancellation_date` datetime DEFAULT NULL,
  `previous_plan` varchar(255) DEFAULT NULL,
  `networks` text NOT NULL,
  `networks_count` text NOT NULL,
  `membership_created_date` datetime DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `sap_membership`
--

INSERT INTO `sap_membership` (`id`, `user_id`, `plan_id`, `membership_duration_days`, `customer_id`, `gateway`, `subscription_id`, `customer_name`, `membership_status`, `recurring`, `expiration_date`, `renew_date`, `upgrade_date`, `cancellation_date`, `previous_plan`, `networks`, `networks_count`, `membership_created_date`, `created_date`, `modified_date`) VALUES
(1, 3, 2, 30, '', 'manual', '', 'Zola kimya', 1, 1, '2024-11-06', NULL, NULL, NULL, NULL, 'a:11:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:8:\"linkedin\";i:3;s:6:\"tumblr\";i:4;s:9:\"pinterest\";i:5;s:3:\"gmb\";i:6;s:6:\"reddit\";i:7;s:9:\"instagram\";i:8;s:7:\"youtube\";i:9;s:7:\"blogger\";i:10;s:9:\"wordpress\";}', 'a:11:{s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:3:\"gmb\";s:0:\"\";s:6:\"reddit\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:7:\"blogger\";s:0:\"\";s:9:\"wordpress\";s:0:\"\";}', '2024-10-07 00:00:00', '2024-10-07 10:33:52', '2024-10-07 10:33:52'),
(2, 4, 2, 30, '', 'manual', '', 'Erjon Tolaj', 1, 0, '', NULL, NULL, NULL, NULL, 'a:11:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:8:\"linkedin\";i:3;s:6:\"tumblr\";i:4;s:9:\"pinterest\";i:5;s:3:\"gmb\";i:6;s:6:\"reddit\";i:7;s:9:\"instagram\";i:8;s:7:\"youtube\";i:9;s:7:\"blogger\";i:10;s:9:\"wordpress\";}', 'a:11:{s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:3:\"gmb\";s:0:\"\";s:6:\"reddit\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:7:\"blogger\";s:0:\"\";s:9:\"wordpress\";s:0:\"\";}', '2024-10-07 00:00:00', '2024-10-07 15:28:57', '2024-10-07 15:38:20'),
(3, 5, 2, 30, '', 'manual', '', 'Erjon Tolaj', 1, 0, '', NULL, NULL, NULL, NULL, 'a:11:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:8:\"linkedin\";i:3;s:6:\"tumblr\";i:4;s:9:\"pinterest\";i:5;s:3:\"gmb\";i:6;s:6:\"reddit\";i:7;s:9:\"instagram\";i:8;s:7:\"youtube\";i:9;s:7:\"blogger\";i:10;s:9:\"wordpress\";}', 'a:11:{s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:3:\"gmb\";s:0:\"\";s:6:\"reddit\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:7:\"blogger\";s:0:\"\";s:9:\"wordpress\";s:0:\"\";}', '2024-10-07 00:00:00', '2024-10-07 15:46:35', '2024-10-07 15:49:53'),
(4, 6, 2, 30, '', 'manual', '', 'LGC SARL ', 1, 0, '', NULL, NULL, NULL, NULL, 'a:11:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:8:\"linkedin\";i:3;s:6:\"tumblr\";i:4;s:9:\"pinterest\";i:5;s:3:\"gmb\";i:6;s:6:\"reddit\";i:7;s:9:\"instagram\";i:8;s:7:\"youtube\";i:9;s:7:\"blogger\";i:10;s:9:\"wordpress\";}', 'a:11:{s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:3:\"gmb\";s:0:\"\";s:6:\"reddit\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:7:\"blogger\";s:0:\"\";s:9:\"wordpress\";s:0:\"\";}', '2024-10-07 00:00:00', '2024-10-07 15:51:34', '2024-10-07 15:57:03');

-- --------------------------------------------------------

--
-- Structure de la table `sap_options`
--

CREATE TABLE `sap_options` (
  `option_id` bigint(20) NOT NULL,
  `option_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `option_value` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `sap_options`
--

INSERT INTO `sap_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(49, 'sap_license_activated', 'M3V2eGd5aWkteGxkOS00cG5uLTZhY3kteTQ4Z3h0enFnNzM1JXRlbXBAbWFpbC5jb20=', 'yes'),
(50, 'sap_license_data', 'a:4:{s:11:\"license_key\";s:36:\"3uvxgyii-xld9-4pnn-6acy-y48gxtzqg735\";s:13:\"license_email\";s:13:\"temp@mail.com\";s:6:\"status\";i:1;s:12:\"access_token\";s:24:\"************************\";}', 'yes'),
(51, 'sap_version', '5.4.1', 'yes'),
(52, 'sap_new_sass', '2.0.0', 'yes'),
(53, 'renewal_email_subject', 'Renouvellement d\'abonnement', 'yes'),
(54, 'renewal_email_content', '<h3>Bonjour {user_name},</h3>\r\n                      <p>\r\n            Votre abonnement actuel {membership_level}  a Ã©tÃ© renouvelÃ© avec succÃ¨s pour l\'abonnement id: {subscription_id}. Ton {plan_name} le plan expirera le {expiration_date}\r\n            </p>  \r\n\r\n\r\n                        <p>Merci,\r\n                        <br>The {sap_name} Team</p>', 'yes'),
(55, 'cancelled_membership_email_subject', 'Votre adhÃ©sion a Ã©tÃ© annulÃ©e', 'yes'),
(56, 'cancelled_membership_email_content', '<h3>Bonjour {user_name},</h3>\r\n                      <p>\r\n            Votre abonnement actuel {membership_level}  a Ã©tÃ© annulÃ©. Vous conserverez l\'accÃ¨s jusqu\'Ã  {expiration_date}\r\n            </p>\r\n                        <p>Merci</p>', 'yes'),
(57, 'expired_membership_email_subject', 'Votre adhÃ©sion a expirÃ©', 'yes'),
(58, 'expired_membership_email_content', '<h3>Bonjour {user_name},</h3>\r\n\r\nVotre abonnement actuel {membership_level} est expirÃ©.\r\n\r\nPour renouveler ou mettre Ã  niveau votre adhÃ©sion, connectez-vous Ã  votre profil et suivez les actions suggÃ©rÃ©es. \r\n\r\nMerci', 'yes'),
(59, 'payment_gateway', 'manual', 'yes'),
(60, 'default_payment_method', 'manual', 'yes'),
(61, 'sap_set_manual_upgrade_version', '1.0.0', 'yes'),
(62, 'sap_currencies', '{\"USD\":\"$\",\"AED\":\"\\u062f.\\u0625\",\"ALL\":\"Lek\",\"AMD\":\"\\u058f\",\"ANG\":\"\\u0192\",\"AUD\":\"$\",\"AWG\":\"\\u0192\",\"AZN\":\"\\u043c\\u0430\\u043d\",\"BAM\":\"KM\",\"BBD\":\"$\",\"BDT\":\"\\u09f3\",\"BGN\":\"\\u043b\\u0432\",\"BMD\":\"$\",\"BND\":\"$\",\"BSD\":\"$\",\"BWP\":\"P\",\"BYN\":\"\\u0440\\u0443\\u0431.\",\"BZD\":\"BZ$\",\"CAD\":\"$\",\"CDF\":\"FrCD\",\"CHF\":\"CHF\",\"CNY\":\"\\u00a5\",\"CZK\":\"K\\u010d\",\"DKK\":\"kr\",\"DOP\":\"RD$\",\"DZD\":\"DA\",\"EGP\":\"\\u00a3\",\"ETB\":\"Br\",\"EUR\":\"\\u20ac\",\"FJD\":\"$\",\"GBP\":\"\\u00a3\",\"GEL\":\"\\u10da\",\"GIP\":\"\\u00a3\",\"GMD\":\"D\",\"GYD\":\"$\",\"HKD\":\"$\",\"HTG\":\"HTG\",\"HUF\":\"Ft\",\"IDR\":\"Rp\",\"ILS\":\"\\u20aa\",\"INR\":\"\\u20b9\",\"ISK\":\"kr\",\"JMD\":\"J$\",\"KES\":\"Ksh\",\"KGS\":\"\\u043b\\u0432\",\"KHR\":\"\\u17db\",\"KYD\":\"$\",\"KZT\":\"\\u043b\\u0432\",\"LBP\":\"\\u00a3\",\"LKR\":\"\\u20a8\",\"LRD\":\"$\",\"LSL\":\"LSL\",\"MAD\":\"MAD\",\"MDL\":\"L\",\"MKD\":\"\\u0434\\u0435\\u043d\",\"MMK\":\"K\",\"MNT\":\"\\u20ae\",\"MOP\":\"MOP$\",\"MVR\":\"Rf\",\"MWK\":\"MK\",\"MXN\":\"$\",\"MYR\":\"RM\",\"MZN\":\"MT\",\"NAD\":\"$\",\"NGN\":\"\\u20a6\",\"NOK\":\"kr\",\"NPR\":\"\\u20a8\",\"NZD\":\"$\",\"PGK\":\"K\",\"PHP\":\"\\u20b1\",\"PKR\":\"\\u20a8\",\"PLN\":\"z\\u0142\",\"QAR\":\"\\ufdfc\",\"RON\":\"lei\",\"RSD\":\"\\u0414\\u0438\\u043d\",\"RUB\":\"\\u0440\\u0443\\u0431\",\"SAR\":\"\\ufdfc\",\"SBD\":\"$\",\"SCR\":\"\\u20a8\",\"SEK\":\"kr\",\"SGD\":\"S$\",\"SLE\":\"SLE\",\"SOS\":\"S\",\"SZL\":\"L\",\"THB\":\"\\u0e3f\",\"TJS\":\"\\u0405M\",\"TOP\":\"T$\",\"TRY\":\"\\u20ba\",\"TTD\":\"TT$\",\"TWD\":\"NT$\",\"TZS\":\"TSh\",\"UAH\":\"\\u20b4\",\"UZS\":\"\\u043b\\u0432\",\"WST\":\"WS$\",\"XCD\":\"$\",\"YER\":\"\\ufdfc\",\"ZAR\":\"R\",\"ZMW\":\"ZK\"}', 'yes'),
(63, 'sap_selected_currency', 'USD', 'yes'),
(64, 'sap_set_db_version', '1.0.6', 'yes'),
(65, 'schedule_debug_clear', '2024-10-07', 'yes'),
(66, 'cron_run_time', '1729239824', 'yes'),
(67, 'cron_membership_expire_time', '', 'yes'),
(68, 'sap_chatgpt_api_key', '', 'yes'),
(69, 'mingle_site_name', 'NextLogon', 'yes'),
(70, 'mingle_meta_title', 'NextLogon est une application innovante de publication automatique sur les rÃ©seaux sociaux, conÃ§ue pour simplifier et optimiser la gestion de votre prÃ©sence en ligne', 'yes'),
(71, 'mingle_meta_description', 'NextLogon est une application innovante de publication automatique sur les rÃ©seaux sociaux, conÃ§ue pour simplifier et optimiser la gestion de votre prÃ©sence en ligne', 'yes'),
(72, 'test_publishable_key', '', 'yes'),
(73, 'test_secret_key', '', 'yes'),
(74, 'enable_billing_details', '', 'yes'),
(75, 'live_publishable_key', '', 'yes'),
(76, 'live_secret_key', '', 'yes'),
(77, 'stripe_test_mode', 'no', 'yes'),
(78, 'stripe_label', '', 'yes'),
(79, 'footer_content', 'Â© 2024 @ LGC SARL Tous droits rÃ©servÃ©s.', 'yes'),
(80, 'enable_email_verification', 'yes', 'yes'),
(81, 'enable_misc_relative_path', 'yes', 'yes'),
(82, 'sap_smtp_setting', 'a:7:{s:6:\"enable\";s:3:\"yes\";s:10:\"from_email\";s:22:\"noreplay@nextlogon.com\";s:9:\"from_name\";s:9:\"NextLogon\";s:4:\"host\";s:18:\"mail.nextlogon.com\";s:4:\"port\";s:3:\"465\";s:8:\"username\";s:22:\"noreplay@nextlogon.com\";s:8:\"password\";s:11:\"Congo@2023!\";}', 'yes'),
(83, 'mingle_logo', 'resize_image_62fb4fa1874004d0dd95f938bd64b8a9_670431f9d0187-(3)-1799-10-696X241.png', 'yes'),
(84, 'mingle_favicon', 'resize_image_62fb4fa1874004d0dd95f938bd64b8a9_670431f9d0187-1892-10-159X55.png', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `sap_payment_history`
--

CREATE TABLE `sap_payment_history` (
  `id` int(20) NOT NULL,
  `user_id` int(25) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `networks` text NOT NULL,
  `networks_count` text NOT NULL,
  `expiration_date` varchar(255) DEFAULT NULL,
  `payment_date` datetime NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `currency` varchar(255) NOT NULL DEFAULT 'USD',
  `coupon_name` varchar(100) DEFAULT NULL,
  `coupon_discount_amount` double DEFAULT NULL,
  `type` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 new / 1 renew/ 2 upgrade ',
  `gateway` varchar(255) DEFAULT NULL COMMENT 'stripe / paypal  / manual',
  `payment_status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 Pending / 1 completed / 2 fail /3 Refunded',
  `transaction_id` varchar(255) DEFAULT NULL,
  `transaction_data` longtext DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `sap_payment_history`
--

INSERT INTO `sap_payment_history` (`id`, `user_id`, `membership_id`, `plan_id`, `customer_id`, `customer_name`, `customer_email`, `networks`, `networks_count`, `expiration_date`, `payment_date`, `coupon_id`, `amount`, `currency`, `coupon_name`, `coupon_discount_amount`, `type`, `gateway`, `payment_status`, `transaction_id`, `transaction_data`, `created_date`, `modified_date`) VALUES
(1, 3, 1, 2, '', 'Zola kimya', 'lazbrelvy@gmail.com', 'a:11:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:8:\"linkedin\";i:3;s:6:\"tumblr\";i:4;s:9:\"pinterest\";i:5;s:3:\"gmb\";i:6;s:6:\"reddit\";i:7;s:9:\"instagram\";i:8;s:7:\"youtube\";i:9;s:7:\"blogger\";i:10;s:9:\"wordpress\";}', 'a:11:{s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:3:\"gmb\";s:0:\"\";s:6:\"reddit\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:7:\"blogger\";s:0:\"\";s:9:\"wordpress\";s:0:\"\";}', '2024-11-06', '2024-10-07 10:33:52', NULL, 30, 'INR', NULL, NULL, 0, 'manual', 1, '', NULL, '2024-10-07 10:33:52', '2024-10-07 10:33:52'),
(4, 6, 4, 2, '', 'LGC SARL ', 'marcom@lgc-sarl.com', 'a:11:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:8:\"linkedin\";i:3;s:6:\"tumblr\";i:4;s:9:\"pinterest\";i:5;s:3:\"gmb\";i:6;s:6:\"reddit\";i:7;s:9:\"instagram\";i:8;s:7:\"youtube\";i:9;s:7:\"blogger\";i:10;s:9:\"wordpress\";}', 'a:11:{s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:3:\"gmb\";s:0:\"\";s:6:\"reddit\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:7:\"blogger\";s:0:\"\";s:9:\"wordpress\";s:0:\"\";}', '2024-11-06', '2024-10-07 15:51:34', NULL, 30, 'USD', NULL, NULL, 1, 'manual', 1, '', '', '2024-10-07 15:51:34', '2024-10-07 15:51:34');

-- --------------------------------------------------------

--
-- Structure de la table `sap_plans`
--

CREATE TABLE `sap_plans` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `stripe_subscription_id` varchar(255) DEFAULT '',
  `stripe_product_id` varchar(255) DEFAULT '',
  `status` tinyint(20) DEFAULT NULL COMMENT ' 1 active / 0 inactive',
  `subscription_expiration_days` int(21) DEFAULT NULL,
  `networks` text NOT NULL,
  `networks_count` text NOT NULL,
  `created` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `sap_plans`
--

INSERT INTO `sap_plans` (`id`, `name`, `description`, `price`, `stripe_subscription_id`, `stripe_product_id`, `status`, `subscription_expiration_days`, `networks`, `networks_count`, `created`, `modified_date`) VALUES
(1, 'Plan Starter', 'Les ind&eacute;pendants, freelances, et petites entreprises.', 10, '', '', 1, 30, 'a:3:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:9:\"instagram\";}', 'a:11:{s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:3:\"gmb\";s:0:\"\";s:6:\"reddit\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:7:\"blogger\";s:0:\"\";s:9:\"wordpress\";s:0:\"\";}', '2024-10-07 10:30:32', '2024-10-07 10:30:32'),
(2, 'Plan Pro', 'Les PME, agences et cr&eacute;ateurs de contenu.', 30, '', '', 1, 30, 'a:11:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:8:\"linkedin\";i:3;s:6:\"tumblr\";i:4;s:9:\"pinterest\";i:5;s:3:\"gmb\";i:6;s:6:\"reddit\";i:7;s:9:\"instagram\";i:8;s:7:\"youtube\";i:9;s:7:\"blogger\";i:10;s:9:\"wordpress\";}', 'a:11:{s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:3:\"gmb\";s:0:\"\";s:6:\"reddit\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:7:\"blogger\";s:0:\"\";s:9:\"wordpress\";s:0:\"\";}', '2024-10-07 10:31:37', '2024-10-07 10:31:37'),
(3, 'Entreprise', '', 60, '', '', 1, 30, 'a:11:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:8:\"linkedin\";i:3;s:6:\"tumblr\";i:4;s:9:\"pinterest\";i:5;s:3:\"gmb\";i:6;s:6:\"reddit\";i:7;s:9:\"instagram\";i:8;s:7:\"youtube\";i:9;s:7:\"blogger\";i:10;s:9:\"wordpress\";}', 'a:11:{s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:3:\"gmb\";s:0:\"\";s:6:\"reddit\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:7:\"blogger\";s:0:\"\";s:9:\"wordpress\";s:0:\"\";}', '2024-10-10 22:49:23', '2024-10-10 22:49:23');

-- --------------------------------------------------------

--
-- Structure de la table `sap_postmeta`
--

CREATE TABLE `sap_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sap_posts`
--

CREATE TABLE `sap_posts` (
  `post_id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT 1,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `share_link` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `category` text DEFAULT NULL,
  `sent_time` varchar(255) DEFAULT NULL,
  `resend` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `parent` bigint(20) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sap_quick_postmeta`
--

CREATE TABLE `sap_quick_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `sap_quick_postmeta`
--

INSERT INTO `sap_quick_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(164, 74, 'sap_networks', 'a:4:{s:8:\"facebook\";s:1:\"1\";s:11:\"fb_accounts\";a:1:{i:0;s:32:\"106258408604586|1740951663109941\";}s:8:\"linkedin\";s:1:\"1\";s:11:\"li_accounts\";a:1:{i:0;s:30:\"user:|:P5QUY9eUnj:|:P5QUY9eUnj\";}}'),
(165, 74, 'sap_caption_words', '30'),
(174, 76, 'sap_networks', 'a:6:{s:8:\"facebook\";s:1:\"1\";s:11:\"fb_accounts\";a:1:{i:0;s:33:\"1096440603768794|8487893897968011\";}s:8:\"linkedin\";s:1:\"1\";s:11:\"li_accounts\";a:1:{i:0;s:30:\"user:|:sjL6EcK5wb:|:sjL6EcK5wb\";}s:9:\"instagram\";s:1:\"1\";s:18:\"instagram_accounts\";a:1:{i:0;s:34:\"17841451263863884|8487893897968011\";}}'),
(175, 76, 'sap_caption_words', '30'),
(176, 76, 'sap_fb_link_to_post', 'https://www.facebook.com/1096440603768794'),
(177, 76, 'sap_fb_posting_error', 'a:1:{s:23:\"Precolag Tecnologia,Lda\";a:1:{s:6:\"status\";s:7:\"success\";}}'),
(178, 76, 'fb_status', '1'),
(179, 76, 'sap_li_posting_error', 'a:1:{i:0;a:2:{s:6:\"status\";s:5:\"error\";s:7:\"message\";s:38:\"Post Share link required for Linkedin.\";}}'),
(180, 76, '_sap_li_status', '3'),
(181, 76, 'sap_instagram_posting_error', 'a:1:{s:14:\"laz_store_sarl\";a:1:{s:6:\"status\";s:7:\"success\";}}'),
(182, 76, '_sap_instagram_status', '1'),
(183, 77, 'sap_schedule_time', '1728729000'),
(184, 77, 'sap_schedule_time_fb', '1728729000'),
(185, 77, 'sap_schedule_time_li', '1728729000'),
(186, 77, 'sap_networks', 'a:4:{s:8:\"facebook\";s:1:\"1\";s:11:\"fb_accounts\";a:2:{i:0;s:32:\"101804432707979|1740951663109941\";i:1;s:32:\"106258408604586|1740951663109941\";}s:8:\"linkedin\";s:1:\"1\";s:11:\"li_accounts\";a:1:{i:0;s:30:\"user:|:P5QUY9eUnj:|:P5QUY9eUnj\";}}'),
(187, 77, 'sap_caption_words', '30'),
(188, 77, 'fb_status', '1'),
(189, 77, '_sap_li_status', '3'),
(190, 77, 'sap_fb_link_to_post', 'https://www.facebook.com/106258408604586'),
(191, 77, 'sap_fb_posting_error', 'a:2:{s:10:\"Store Tech\";a:1:{s:6:\"status\";s:7:\"success\";}s:8:\"LGC SARL\";a:1:{s:6:\"status\";s:7:\"success\";}}'),
(192, 77, 'sap_li_posting_error', 'a:1:{i:0;a:2:{s:6:\"status\";s:5:\"error\";s:7:\"message\";s:38:\"Post Share link required for Linkedin.\";}}');

-- --------------------------------------------------------

--
-- Structure de la table `sap_quick_posts`
--

CREATE TABLE `sap_quick_posts` (
  `post_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 1,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `share_link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `video` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ip_address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `sap_quick_posts`
--

INSERT INTO `sap_quick_posts` (`post_id`, `user_id`, `message`, `share_link`, `image`, `video`, `ip_address`, `status`, `created_date`, `modified_date`) VALUES
(74, 0, 'LGC SARL vous propose son processus de recrutement fluide \r\n\r\n1. Digitalisation compl&egrave;te du processus\r\n\r\nGr&acirc;ce &agrave; notre syst&egrave;me de recrutement en ligne, vous pouvez postuler aux offres depuis n&#039;importe o&ugrave;, sans avoir &agrave; vous d&eacute;placer. Tout est centralis&eacute; sur une plateforme facile d&#039;acc&egrave;s, permettant de soumettre une candidature.\r\n\r\n2. R&eacute;ponses rapides et transparentes\r\n\r\nNous savons &agrave; quel point l&#039;attente d&#039;une r&eacute;ponse peut &ecirc;tre stressante. C&#039;est pourquoi, chez LGC SARL, nous avons mis en place un syst&egrave;me de suivi des candidatures qui garantit des retours rapides. Vous &ecirc;tes inform&eacute; &agrave; chaque &eacute;tape, vous savez o&ugrave; vous en &ecirc;tes et ce qu&#039;il vous reste &agrave; faire. ðŸ””âœ…\r\n\r\n3. Simplification des &eacute;tapes\r\n\r\nNous &eacute;liminons les d&eacute;marches inutiles pour aller &agrave; l&#039;essentiel. Plus de processus longs et compliqu&eacute;s. Vous passez par des &eacute;tapes claires et rapides, avec des outils modernes qui nous permettent de nous concentrer sur vos comp&eacute;tences et vos connaissances.\r\n\r\n4. Accessibilit&eacute; et inclusivit&eacute;\r\n\r\nLe recrutement fluide chez LGC SARL est con&ccedil;u pour &ecirc;tre accessible &agrave; tous. Que vous soyez un jeune dipl&ocirc;m&eacute; ou un professionnel exp&eacute;riment&eacute;, notre processus est simple, inclusif et sans barri&egrave;re g&eacute;ographique. ðŸŒ\r\n\r\n5. Valorisation des talents\r\n\r\nNous croyons que chaque talent m&eacute;rite d&#039;&ecirc;tre mis en avant. Notre approche fluide nous permet d&#039;&eacute;valuer les comp&eacute;tences de mani&egrave;re efficace.\r\nEn s&eacute;lectionnant LGC SARL, vous b&eacute;n&eacute;ficiez d&#039;un processus de recrutement rapide ,simple et percutant.\r\n\r\n6. Valorisation des talents\r\n\r\nNous croyons que chaque talent m&eacute;rite d&#039;&ecirc;tre mis en avant. Notre approche fluide nous permet d&#039;&eacute;valuer les comp&eacute;tences de mani&egrave;re efficace, tout en donnant aux candidats l&#039;opportunit&eacute; de se d&eacute;marquer gr&acirc;ce &agrave; des processus d&#039;&eacute;valuation adapt&eacute;s. Que ce soit lors des tests techniques ou des entretiens, nous cherchons &agrave; identifier les forces sp&eacute;cifiques de chaque candidat , C&#039;est pourquoi nous avons mis en place un cadre d&#039;&eacute;valuation qui valorise non seulement les comp&eacute;tences techniques, mais aussi des qualit&eacute;s humaines comme la cr&eacute;ativit&eacute;ðŸŽ¨, l&#039;adaptabilit&eacute; et l&#039;esprit d&#039;&eacute;quipeðŸ¤.\r\n\r\nðŸ“² Suivez-nous sur :\r\n\r\nðŸ‘‰ https://lnkd.in/eSuvd-Qk\r\nðŸ‘‰ https://lnkd.in/ehyQxksr\r\n\r\n\r\n#SolutionsNum&eacute;riques #TransformationDigitale #PerformanceOptimis&eacute;e #LGCsarl #Congo #Afrobizcongo #Evensdoc #Storetech', '', 'recrutement-fluide--2-1962-10-1080X1920.png', '', '102.129.73.194', 1, '2024-10-11 10:59:33', NULL),
(76, 3, 'LGC SARL vous propose son processus de recrutement fluide\r\n1. Digitalisation compl&egrave;te du processus\r\nGr&acirc;ce &agrave; notre syst&egrave;me de recrutement en ligne, vous pouvez postuler &agrave; nos offres depuis n&#039;importe o&ugrave;, sans avoir &agrave; vous d&eacute;placer. Tout est centralis&eacute; sur une plateforme facile d&#039;acc&egrave;s, permettant de soumettre votre candidature.\r\n2. R&eacute;ponses rapides et transparentes\r\nNous savons &agrave; quel point l&#039;attente d&#039;une r&eacute;ponse peut &ecirc;tre stressante. C&#039;est pourquoi, chez LGC SARL, nous avons mis en place un syst&egrave;me de suivi des candidatures qui garantit des retours rapides. Vous &ecirc;tes inform&eacute; &agrave; chaque &eacute;tape, vous savez o&ugrave; vous en &ecirc;tes et ce qu&#039;il vous reste &agrave; faire. ðŸ””âœ…\r\n3. Simplification des &eacute;tapes\r\nNous &eacute;liminons les d&eacute;marches inutiles pour aller &agrave; l&#039;essentiel. Plus de processus longs et compliqu&eacute;s. Vous passez par des &eacute;tapes claires et rapides, avec des outils modernes qui nous permettent de nous concentrer sur vos comp&eacute;tences et vos connaissances.\r\n4. Accessibilit&eacute; et inclusivit&eacute;\r\nLe recrutement fluide chez LGC SARL est con&ccedil;u pour &ecirc;tre accessible &agrave; tous. Que vous soyez un jeune dipl&ocirc;m&eacute; ou un professionnel exp&eacute;riment&eacute;, notre processus est simple, inclusif et sans barri&egrave;re g&eacute;ographique. ðŸŒ\r\n5. Valorisation des talents\r\nNous croyons que chaque talent m&eacute;rite d&#039;&ecirc;tre mis en avant. Notre approche fluide nous permet d&#039;&eacute;valuer les comp&eacute;tences de mani&egrave;re efficace.\r\nEn s&eacute;lectionnant LGC SARL, vous b&eacute;n&eacute;ficiez d&#039;un processus de recrutement rapide ,simple et percutant.\r\n6. Valorisation des talents\r\nNous croyons que chaque talent m&eacute;rite d&#039;&ecirc;tre mis en avant. Notre approche fluide nous permet d&#039;&eacute;valuer les comp&eacute;tences de mani&egrave;re efficace, tout en donnant aux candidats l&#039;opportunit&eacute; de se d&eacute;marquer gr&acirc;ce &agrave; des processus d&#039;&eacute;valuation adapt&eacute;s. Que ce soit lors des tests techniques ou des entretiens, nous cherchons &agrave; identifier les forces sp&eacute;cifiques de chaque candidat ,C&#039;est pourquoi nous avons mis en place un cadre d&#039;&eacute;valuation qui valorise non seulement les comp&eacute;tences techniques, mais aussi des qualit&eacute;s humaines comme la cr&eacute;ativit&eacute;ðŸŽ¨, l&#039;adaptabilit&eacute; ðŸŒ±et l&#039;esprit d&#039;&eacute;quipeðŸ¤.\r\nðŸ“² Suivez-nous sur :\r\nðŸ‘‰ https://lnkd.in/eSuvd-Qk\r\nðŸ‘‰ https://lnkd.in/ehyQxksr\r\n#SolutionsNum&eacute;riques #TransformationDigitale #PerformanceOptimis&eacute;e #LGCsarl #Congo #Afrobizcongo #Evensdoc #Storetech', '', '462748394_554674957101813_6852719772035520743_n-967-10-1080X1920.jpg', '', '62.2.230.222', 1, '2024-10-11 11:00:05', NULL),
(77, 6, 'Le num&eacute;rique n&#039;est pas une option, c&#039;est la cl&eacute; pour transformer vos id&eacute;es en r&eacute;alit&eacute;. \r\nðŸš€ Chaque clic ouvre une nouvelle opportunit&eacute;, chaque donn&eacute;e r&eacute;v&egrave;le une solution. \r\nðŸ”ðŸ“ˆ Osez le futur, osez le num&eacute;rique avec LGC SARL !ðŸ’¡', '', '0', '', '89.217.118.20', 1, '2024-10-12 11:02:55', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sap_users`
--

CREATE TABLE `sap_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` tinyint(2) DEFAULT NULL COMMENT ' 1 active / 0 inactive',
  `email_verification_tokan` longtext DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `token` varchar(255) NOT NULL,
  `forgot_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `sap_users`
--

INSERT INTO `sap_users` (`id`, `first_name`, `last_name`, `email`, `password`, `role`, `status`, `email_verification_tokan`, `created`, `modified`, `token`, `forgot_time`) VALUES
(2, 'AFONSO', 'LAZUBE', 'brel.laz@lgc-sarl.com', '2224497b748b92513a273838dba5661e', 'superadmin', 1, NULL, '2024-10-07 10:20:59', '2024-10-07 10:20:59', '0e0f0decf1902d3ff3547a8a1a6d1aa0', ''),
(3, 'Zola', 'kimya', 'lazbrelvy@gmail.com', '59b78fb3d17c473e6d9ac348d07c294b', 'user', 1, NULL, '2024-10-07 10:33:16', '2024-10-07 10:33:16', '9466fdc0d598d192f3ab68f610d827ed6e92712a', '2024-10-07'),
(5, 'Erjon', 'Tolaj', 'erjon.tolaj@zwahlen.ch', 'db2a705319814a94619c58d49d638de9', 'superadmin', 1, '', '2024-10-07 15:46:35', '2024-10-07 15:58:52', '', ''),
(6, 'LGC SARL', '', 'marcom@lgc-sarl.com', 'cc9e66a5b7020b82cc282aa2a1573efa', 'user', 1, 'PlcyYt2Ot8', '2024-10-07 15:51:34', '2024-10-07 15:56:49', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `sap_user_settings`
--

CREATE TABLE `sap_user_settings` (
  `setting_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `setting_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `setting_value` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `autoload` varchar(255) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `sap_user_settings`
--

INSERT INTO `sap_user_settings` (`setting_id`, `user_id`, `setting_name`, `setting_value`, `autoload`) VALUES
(25, 3, 'sap_general_options', 'a:4:{s:8:\"timezone\";s:18:\"Africa/Brazzaville\";s:24:\"google_campaign_tracking\";s:1:\"1\";s:19:\"social_posting_logs\";s:1:\"1\";s:14:\"timestamp_link\";s:1:\"1\";}', 'yes'),
(26, 5, 'sap_general_options', 'a:4:{s:8:\"timezone\";s:13:\"Europe/Zurich\";s:24:\"google_campaign_tracking\";s:1:\"1\";s:19:\"social_posting_logs\";s:1:\"1\";s:14:\"timestamp_link\";s:1:\"1\";}', 'yes'),
(27, 6, 'sap_general_options', 'a:4:{s:8:\"timezone\";s:18:\"Africa/Brazzaville\";s:24:\"google_campaign_tracking\";s:1:\"1\";s:19:\"social_posting_logs\";s:1:\"1\";s:14:\"timestamp_link\";s:1:\"1\";}', 'yes'),
(28, 6, 'sap_fb_sess_data', 'a:1:{i:1740951663109941;a:6:{s:17:\"sap_fb_user_cache\";a:4:{s:4:\"name\";s:14:\"Sage Loubindou\";s:10:\"first_name\";s:4:\"Sage\";s:9:\"last_name\";s:9:\"Loubindou\";s:2:\"id\";s:16:\"1740951663109941\";}s:14:\"sap_fb_user_id\";s:16:\"1740951663109941\";s:20:\"sap_fb_user_accounts\";a:2:{s:13:\"auth_accounts\";a:4:{i:1740951663109941;s:33:\"Sage Loubindou (1740951663109941)\";i:156690360865925;s:20:\"Global-S & AssociÃ© \";i:101804432707979;s:10:\"Store Tech\";i:106258408604586;s:8:\"LGC SARL\";}s:11:\"auth_tokens\";a:4:{i:1740951663109941;s:251:\"EAA52ryfN8d8BO2L9bNbk2vKYZCOwSxZAzcXYJybr9aHnGijBUNA6R0g9nYnZBXqNOlNkn8ZAWZA5oLvA2Fr1S1x5kd7c5v8LsAZBLeCgW6UpncEF4KwgTm7bzzdfRtqWWAtXLIifrL7LvHIw8nwJbaUcw3gFH8H0C9lKL76H4WhAvfmVLZBpIcPZB5Or8u5P0jfs2OG5WeAwikSvzdDZC1BGHiMhGVfbrQWhoBw1nJqEiZBNa40um3zMjO\";i:156690360865925;s:200:\"EAA52ryfN8d8BOZBqs5NEX59kg688QJJtuILLv0RQvOuJwhZB325rLwtoEflDUq5phizlVjZCHa8PbtDpZAIKlqtqK8TSL88ZCpRISkb5xM7RDDZCxZCk6bhInKg1ZBXDmNpUq9xIX9kRrvU8NfGfWNCJpodZA3800tdZA57X7BCr0vUbTRACTovV7vIQ6RKKbIwK0ZD\";i:101804432707979;s:198:\"EAA52ryfN8d8BOxCUG99WgpRU9O7ZAkNRDSMN9YusZAykm3ZB2FrHj5wSFMgsvUeQIwqrRDFUZALZBMa6LGfF4nfpExWNXtaDIbR22ee944zRjzjTV9KhJc3FJ6Wq0DoeS2Xi9mJ53Y0ka74GfPkZAIAaMaXZCTzHmnqpkqJNq6gsRAgC9gVQBZAGJsVN2tgw0jcZD\";i:106258408604586;s:198:\"EAA52ryfN8d8BO6QLUFmWXKQCZCzf2FAGBvyTjcz30ZCUz0R1WZCjNFTjVyHaWIHRsn2VtHBu4A4SqUWrnsgt7GKbKCSZAR39QWW7h4YQGHjf2KYMZCzABILULAO3UQcMlF3u9lgRhUOZACSXi4ME9kIPkZBvnokgtE7APcbMYhiujrYNSMnHW3s5ZButfCapP6kZD\";}}s:24:\"fb_1740951663109941_code\";s:387:\"AQB0M0M02hoffTaEOlnozRThqbn9h9zRgg2jYJiCnY2hXzG8iPVOCmNW-0hDcpOD8NU6Rv8jrSlcE13yjkvmNNTJJiV0b0xDeI6ausXsSu_F6p74fOZnmuDPUpuMFP9psnPt_5ZEt26vVmSbl5KFTFiPWhUdY3jde7PmklxrEATT_FR9R_ivHzieZAGUlYGSUfw1aiSJFdhdJpjt3jEYMsf9e5vBK1aXB41NXUiD-GrLXyTYGf1JXHNa_CWFV6wy-BiloEpF1bCdFXh3sFM8vG_4tdfBgs3ya96WNIbwLn7D4zD1NbP76kq1YbROBuedUG_rQJNSjbrQHc_dDjLKkTOO5aEq0glyF0-fMN75mRxhzG26SQNPiVpNfnAHAIhqvlE\";s:32:\"fb_1740951663109941_access_token\";s:251:\"EAA52ryfN8d8BO2L9bNbk2vKYZCOwSxZAzcXYJybr9aHnGijBUNA6R0g9nYnZBXqNOlNkn8ZAWZA5oLvA2Fr1S1x5kd7c5v8LsAZBLeCgW6UpncEF4KwgTm7bzzdfRtqWWAtXLIifrL7LvHIw8nwJbaUcw3gFH8H0C9lKL76H4WhAvfmVLZBpIcPZB5Or8u5P0jfs2OG5WeAwikSvzdDZC1BGHiMhGVfbrQWhoBw1nJqEiZBNa40um3zMjO\";s:27:\"fb_1740951663109941_user_id\";s:16:\"1740951663109941\";}}', 'yes'),
(29, 6, 'sap_facebook_options', 'a:12:{s:15:\"enable_facebook\";s:1:\"1\";s:9:\"proxy_url\";s:0:\"\";s:14:\"proxy_username\";s:0:\"\";s:14:\"proxy_password\";s:0:\"\";s:21:\"facebook_auth_options\";s:9:\"appmethod\";s:13:\"facebook_keys\";a:1:{i:0;a:2:{s:6:\"app_id\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";}}s:17:\"fb_type_post_user\";a:2:{i:0;s:32:\"101804432707979|1740951663109941\";i:1;s:32:\"106258408604586|1740951663109941\";}s:18:\"share_posting_type\";s:13:\"image_posting\";s:8:\"fb_image\";s:29:\"lgc-logo-404-10-2400X2400.png\";s:20:\"fb_type_shortner_opt\";s:7:\"tinyurl\";s:21:\"fb_bitly_access_token\";s:0:\"\";s:21:\"fb_shortest_api_token\";s:0:\"\";}', 'yes'),
(30, 6, 'sap_li_sess_data', 'a:1:{s:10:\"P5QUY9eUnj\";a:5:{s:14:\"sap_li_user_id\";s:10:\"P5QUY9eUnj\";s:12:\"sap_li_cache\";a:6:{s:17:\"localizedLastName\";s:4:\"SARL\";s:14:\"profilePicture\";a:1:{s:12:\"displayImage\";s:44:\"urn:li:digitalmediaAsset:D4E03AQG2waav5Nua1w\";}s:9:\"firstName\";a:2:{s:9:\"localized\";a:1:{s:5:\"fr_FR\";s:3:\"LGC\";}s:15:\"preferredLocale\";a:2:{s:7:\"country\";s:2:\"FR\";s:8:\"language\";s:2:\"fr\";}}s:8:\"lastName\";a:2:{s:9:\"localized\";a:1:{s:5:\"fr_FR\";s:4:\"SARL\";}s:15:\"preferredLocale\";a:2:{s:7:\"country\";s:2:\"FR\";s:8:\"language\";s:2:\"fr\";}}s:2:\"id\";s:10:\"P5QUY9eUnj\";s:18:\"localizedFirstName\";s:3:\"LGC\";}s:12:\"sap_li_oauth\";a:1:{s:8:\"linkedin\";a:2:{s:6:\"access\";s:350:\"AQXy0E5AYFpLdJUkcKvI6gGo1OFwX4i_80RAGB_Ywpo6Z6X5PYDHFROgVctzYTeUAiHeX8_WW60FI9vz1msKPQW8XJYLbsfF_liwDFfyeDx_c1QkcjIHDyqj7pZ1Behmu2JnG1gFt-F-aKbu40K3k_9T3VUex3G1KBzTDgL7lKwlNkqD7PCAHPz6bi662JrsV4I-ZWadmGaHBuVU28dx-mzfIPfO6F0CcT15hhfD0PV-7Ys9tRPLtZe63kIKXuIAMiMFYgcrC8Kmt4hQP_Of4zBXDSSbhcMa_yKYctuT9vAor6EK6YlPIPeUib3A_IVMX-nc4Pw6pGeVU1QWT1QPUpyELIIxkw\";s:10:\"authorized\";b:1;}}s:16:\"sap_li_companies\";a:0:{}s:13:\"sap_li_groups\";a:0:{}}}', 'yes'),
(31, 6, 'sap_linkedin_options', 'a:9:{s:15:\"enable_linkedin\";s:1:\"1\";s:20:\"enable_company_pages\";s:2:\"on\";s:21:\"linkedin_auth_options\";s:9:\"appmethod\";s:13:\"linkedin_keys\";a:0:{}s:17:\"li_type_post_user\";a:1:{i:0;s:30:\"user:|:P5QUY9eUnj:|:P5QUY9eUnj\";}s:14:\"linkedin_image\";s:30:\"lgc-logo-1712-10-2400X2400.png\";s:20:\"li_type_shortner_opt\";s:0:\"\";s:21:\"li_bitly_access_token\";s:0:\"\";s:21:\"li_shortest_api_token\";s:0:\"\";}', 'yes'),
(32, 3, 'sap_youtube_options', 'a:6:{s:14:\"enable_youtube\";s:1:\"1\";s:12:\"youtube_keys\";a:0:{}s:12:\"sap_yt_video\";s:0:\"\";s:20:\"yt_type_shortner_opt\";s:0:\"\";s:21:\"yt_bitly_access_token\";s:0:\"\";s:21:\"yt_shortest_api_token\";s:0:\"\";}', 'yes'),
(33, 3, 'sap_fb_sess_data', 'a:1:{i:8487893897968011;a:6:{s:17:\"sap_fb_user_cache\";a:4:{s:4:\"name\";s:11:\"Brel Lazube\";s:10:\"first_name\";s:4:\"Brel\";s:9:\"last_name\";s:6:\"Lazube\";s:2:\"id\";s:16:\"8487893897968011\";}s:14:\"sap_fb_user_id\";s:16:\"8487893897968011\";s:20:\"sap_fb_user_accounts\";a:2:{s:13:\"auth_accounts\";a:12:{i:8487893897968011;s:30:\"Brel Lazube (8487893897968011)\";i:101393319565961;s:19:\"ONE Nation Humanity\";i:101804432707979;s:10:\"Store Tech\";i:106258408604586;s:8:\"LGC SARL\";i:106692188472404;s:4:\"TYLW\";i:349574779442662;s:15:\"Shop Zola Kimya\";i:2346086549005402;s:24:\"Minha Angola Switzerland\";i:116888886844474;s:14:\"Shop Pro World\";i:2067563020021251;s:12:\"Easyshopping\";i:132753200679906;s:21:\"Elbramar imobiliÃ¡ria\";i:1096440603768794;s:23:\"Precolag Tecnologia,Lda\";i:140780986090351;s:5:\"ALCAR\";}s:11:\"auth_tokens\";a:12:{i:8487893897968011;s:273:\"EAA52ryfN8d8BO2vRHbeWD73d6ag7jRGOFMh3jKZCWBo1fvZC6ruAXvPt3ZB3ZBHDQZCjOOaxskiJZAeqhao9wUGRJrIIfD19e83ZAjwzhySq6rkt0jWqu78xnRtluTaRFkrndp0hANhEqAOqCiBD99ZAbg2YniR0M0mjwCgURODjIjW9K0i2ceJMkxCi7HPEZB3SSfUvnIfButJxQcESZBHKJl4Qi7ZB1JDwLZBRqKbApfj1ZBXqeCpSaR2u9mCoFlNEAaYfoZCQZDZD\";i:101393319565961;s:216:\"EAA52ryfN8d8BO2WNkanNKgsNlIcxD5lZC02w6xrRcIP39ZBF5DSTKrUpQzaKMXKxV3ZAedEslKcfywo5ZBvjEAran6ZAuAHS52G82POiHL6xQsHtD241x85sZCvjG0yMdSSNKtRZBp2hD2lcwWqJZBBEkBo7PIididkrq44fEszEP0oWrZBmHQqla5fpZBcyrqzbn8khxXprkrphLWkkMZD\";i:101804432707979;s:216:\"EAA52ryfN8d8BOzZC2wuQLVp1aHwxJJINWdvfxl3wwPq8ZBGmbDNkcRSdZCRESWOR6sDpywNtOZB6tO3TBIMwInY91ZC0cN4SZC7nZBZAptDKLvjvJyYAEwncN3P5KCGMKPFRozuSUc7IXcw59H6LOYgxHrHvTVnVDKVbqqaePnyYSWIgETi4tcDosWUpar47neEfWnG4ramj3XZBF5ZCsZD\";i:106258408604586;s:217:\"EAA52ryfN8d8BO6q597s8V3EpuEat629Km8ZBl1BO1UvJZAdDFmqRZA1a28PvZCZBc1FEolWRx23cTvZAr2ZC3AGS5HFRoQerlkanpM0jxneBRHCAZAYCr3zWpleaVRBtd4hZC8hecEzjScgZBc4eMoRT2z2NC2QMXRdkmRCw5jrnJVaTC1Up8TPlxR9dLgZAAepXcgqnDtuuYO0WvnE9N4ZD\";i:106692188472404;s:219:\"EAA52ryfN8d8BO6wN1kEdIDhtN2qTEjyNNKR0HsJpUkxezY0vRnYRRxXLG9ydsdCNvXPqHZCY77vmWsZBjbrpgUSBbhYEhZChQkXMZBQEZCvCRj9VlpZCdk0FxrOjZANVMcxu3Qc1azrRq4qi61rJV11fd3ZAyfj5kLPUvVZAuwkJlTZAnhSe2ZB7HaSHnCSx7azZCHGHRZCOztPoOu9eOby0ZD\";i:349574779442662;s:213:\"EAA52ryfN8d8BOxu5WegfdoebEyIPk0M8ts1P6xlrD9ZC1FqRdwDMWYzemBWbVF7nVn5GhcSRpduT90vbtLtotpyQlDdfBCyLxIVwGgkpdqxEuIkRvEGOZBOjegwxC4YzEPGHKrF8r9G34sTdhL3PSAQZAn1lpG0NZBmqn9ZCLP573bxldQZAj9pQa2TtZBkzyLkwbZCC99M38aa7P0bd\";i:2346086549005402;s:215:\"EAA52ryfN8d8BOZChsSEhQ8ESsLptv8aQVG9ZBDBfYQxcd1NqrIoPqKkWNZBoIZB7HmoTc7VCbfB4LTWaYD6KHxzKlhrcdccNqjWBPft6WZBz6RmNNuZABOFsgv7tXk70AETjzOAmzy8BSKr5mmmHz2QH7QC4UAZCgT15ZALeE3liguayWNJvrUuTgjLQZC40gUyqneLc57hDp8Ys1ILZBs\";i:116888886844474;s:212:\"EAA52ryfN8d8BO0Rkkj7ZB8Wyn5gr0sCPreowb181qZB4HW1tS9IHZC6M55Vt3SxF6bCHOJhc0MaD99yf6Cab9Jvp0JQk5daE52xBlGHqHsqDyo5dzkOBm5P2ijBYGEdGaf8Oet1D5sAgVXEODAQiA9C34eVZAdTPrdTOk07XLZCXuGZCw8ixMqazeUtmyngr221JOwGoOXw8EirnoZD\";i:2067563020021251;s:217:\"EAA52ryfN8d8BO48FcKKurfRzMYLkHeb9kUST4CvmnFJDnZCwfSegc2UW7ZCMsS0SNTLZB8XwvZBlZAVcdsBRcsfOXYvnbLDnRHfZACZCv2O8NWZBOgVhZCfP1wKWAy4Rar8qBYObAmIfgQLx0Mjfn7ZCBs0wkZChsyomSi77nH4Utveiajfj60wwOFLa14J2uT7jZCISUCDq8i6cQfbd5EEH\";i:132753200679906;s:209:\"EAA52ryfN8d8BO81gTQ6K7bTAvoFptBWksVT2dx5BZCbKfCXOMFS8Yhoudy54lsqPStBw4qz6zM1ASLSAHzB35GgmueeAwNICgIoZBhR8CzsFhAstqC7EupH1gt9Pjiuo0CVPRiUiNZBeAganMBoUlUfmW9J5vr98YawpnypVMjl5GiifVzRcbkxPn4baXLVhm6lNLEb38pfGCEZD\";i:1096440603768794;s:210:\"EAA52ryfN8d8BOZCBRJOWGM8Y9cH6F3Hug3s8g41NKmWmBJIKzs2WbAWwPqv1G5Bp5fvjUstOIWvQ5DOt0DttWmDHMEKqyjvZBOo4IUeo0yYPmopOp4jhBCf79ejQttFKxma3kPGx5HroOKJUgpdaXohdZAW4eOxeQkioVN8sgwZCJqpg7dH5jvr14itTJkmrK3xU7jWTZCmSJIkSi\";i:140780986090351;s:209:\"EAA52ryfN8d8BO3nkGvnW3R59AVm3ww3niNKDjsZCuvyt8voFCXn2as2gRNcxnbIgpPvGrGt6gnrl7so4Rdyjt7iGuQ1D6gHc0cBOBYVK3L44DsmuDq2XVUBlabzHUWI3RjsJexKw4svMip7oOVtawRn2RyRWZAaUVVPjGf8dAk0GAp5KYD50wZB2Mdm4zOxtJDjgQwGHdzKzD8ZD\";}}s:24:\"fb_8487893897968011_code\";s:408:\"AQBPRHTAqwBZC33bKUFCUsxQx9QXQmTXLMftY1HcPFP6S_vXsK0O5ibzbYhW5j9HU-EqHj1nT2cB03_4mOLjn_Cgl3eh3KlUREdDwC-7yNUsvKk9aio97u3WbpBNnc74SErtSjgnYvXElv3QEC7clrv98CjzutA40lXoulRGkJTNbGPgAodOJXukt2O6zY42s0cjhijU5nuvfVW7QnJwUpqS0JFaZvYajOK5IiRZ2TiwHPnCQ5pA_huuqMVil_ejevFYKmz3AjXL4sQUXloa1ozoX0hl2UEmhIiAFzVDIrWt1dRVQuBJMD0_7ctn3Px8wUBmV7RkD2wK-SAo_sZrnkpgNedKwkF2PRC5uqTSEcp6A5Y3kv3rMsdTStUsyzcOR0fThIjx-olUcoOYU7POkMtc\";s:32:\"fb_8487893897968011_access_token\";s:273:\"EAA52ryfN8d8BO2vRHbeWD73d6ag7jRGOFMh3jKZCWBo1fvZC6ruAXvPt3ZB3ZBHDQZCjOOaxskiJZAeqhao9wUGRJrIIfD19e83ZAjwzhySq6rkt0jWqu78xnRtluTaRFkrndp0hANhEqAOqCiBD99ZAbg2YniR0M0mjwCgURODjIjW9K0i2ceJMkxCi7HPEZB3SSfUvnIfButJxQcESZBHKJl4Qi7ZB1JDwLZBRqKbApfj1ZBXqeCpSaR2u9mCoFlNEAaYfoZCQZDZD\";s:27:\"fb_8487893897968011_user_id\";s:16:\"8487893897968011\";}}', 'yes'),
(34, 3, 'sap_facebook_options', 'a:11:{s:15:\"enable_facebook\";s:1:\"1\";s:9:\"proxy_url\";s:0:\"\";s:14:\"proxy_username\";s:0:\"\";s:14:\"proxy_password\";s:0:\"\";s:21:\"facebook_auth_options\";s:9:\"appmethod\";s:13:\"facebook_keys\";a:1:{i:0;a:2:{s:6:\"app_id\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";}}s:18:\"share_posting_type\";s:12:\"link_posting\";s:8:\"fb_image\";s:0:\"\";s:20:\"fb_type_shortner_opt\";s:7:\"tinyurl\";s:21:\"fb_bitly_access_token\";s:0:\"\";s:21:\"fb_shortest_api_token\";s:0:\"\";}', 'yes'),
(35, 3, 'sap_li_sess_data', 'a:1:{s:10:\"sjL6EcK5wb\";a:5:{s:14:\"sap_li_user_id\";s:10:\"sjL6EcK5wb\";s:12:\"sap_li_cache\";a:6:{s:17:\"localizedLastName\";s:6:\"Lazube\";s:14:\"profilePicture\";a:1:{s:12:\"displayImage\";s:44:\"urn:li:digitalmediaAsset:D4E03AQHZA5E09xq5zw\";}s:9:\"firstName\";a:2:{s:9:\"localized\";a:1:{s:5:\"fr_FR\";s:11:\"Afonso Brel\";}s:15:\"preferredLocale\";a:2:{s:7:\"country\";s:2:\"FR\";s:8:\"language\";s:2:\"fr\";}}s:8:\"lastName\";a:2:{s:9:\"localized\";a:1:{s:5:\"fr_FR\";s:6:\"Lazube\";}s:15:\"preferredLocale\";a:2:{s:7:\"country\";s:2:\"FR\";s:8:\"language\";s:2:\"fr\";}}s:2:\"id\";s:10:\"sjL6EcK5wb\";s:18:\"localizedFirstName\";s:11:\"Afonso Brel\";}s:12:\"sap_li_oauth\";a:1:{s:8:\"linkedin\";a:2:{s:6:\"access\";s:350:\"AQXi-okVcGncE0H6Y1McBUppKwAx2KSmc1GExXxiBNMoAWU1lMZwXG1FTZuE5h-_UlDgu7EHariUypeV2rCfA6j17IjyKEGtBEz9mzzokNDa1jx2UZuPA_QLplcOXaXerAXYp3wiaPuNyztE4sz82cd8VudGPDCy6Q3qC5PXSpeIUE63jzrdSb3rDY9H6gKOyPhgwLk8TO-jIFeQi9qFLiklw9tClQi43pYogRiSDLWq7FCHt72h9wlNOj3Zd6gI3MomDjoD6AdRR7TiWwc1RAnur8NUDA7hJuJdAPYoOmxUFT0Eiplf2_6oRgTY1F1nCn7r7rsK_8nFU2NAOt-UbahyZNsVkA\";s:10:\"authorized\";b:1;}}s:16:\"sap_li_companies\";a:0:{}s:13:\"sap_li_groups\";a:0:{}}}', 'yes'),
(36, 3, 'sap_linkedin_options', 'a:9:{s:15:\"enable_linkedin\";s:1:\"1\";s:21:\"linkedin_auth_options\";s:9:\"appmethod\";s:13:\"linkedin_keys\";a:0:{}s:17:\"li_type_post_user\";a:1:{i:0;s:30:\"user:|:sjL6EcK5wb:|:sjL6EcK5wb\";}s:14:\"linkedin_image\";s:0:\"\";s:20:\"li_type_shortner_opt\";s:7:\"tinyurl\";s:21:\"li_bitly_access_token\";s:0:\"\";s:21:\"li_shortest_api_token\";s:0:\"\";s:20:\"enable_company_pages\";N;}', 'yes'),
(37, 3, 'sap_fb_sess_data_for_insta', 'a:1:{i:8487893897968011;a:8:{s:20:\"sap_insta_user_cache\";a:4:{s:4:\"name\";s:11:\"Brel Lazube\";s:10:\"first_name\";s:4:\"Brel\";s:9:\"last_name\";s:6:\"Lazube\";s:2:\"id\";s:16:\"8487893897968011\";}s:17:\"sap_insta_user_id\";s:16:\"8487893897968011\";s:23:\"sap_insta_user_accounts\";a:2:{s:13:\"auth_accounts\";a:12:{i:0;s:11:\"Brel Lazube\";i:101393319565961;s:19:\"ONE Nation Humanity\";i:101804432707979;s:10:\"Store Tech\";i:106258408604586;s:8:\"LGC SARL\";i:106692188472404;s:4:\"TYLW\";i:349574779442662;s:15:\"Shop Zola Kimya\";i:2346086549005402;s:24:\"Minha Angola Switzerland\";i:116888886844474;s:14:\"Shop Pro World\";i:2067563020021251;s:12:\"Easyshopping\";i:132753200679906;s:21:\"Elbramar imobiliÃ¡ria\";i:1096440603768794;s:23:\"Precolag Tecnologia,Lda\";i:140780986090351;s:5:\"ALCAR\";}s:11:\"auth_tokens\";a:12:{i:0;s:270:\"EAA52ryfN8d8BOztwO5FpgZBIWu7RdGCH6ZCe8OrHA7bkxGKYGNSLdpTS6WhvHK2U3uRyR6eSQKfNzdzBbOr42XEyVm3LoxRZCvyBeWyZAx5LCDfqu8u1DDiNzEQee8R8sKp23ZBH5wBNLOs7kkEetzk6uk8PkIqx9g6sFYIZAXRw3K8cxvz7RnY0GABhaVun9B4IgmvWeLZBuQDxPsXYUEh812FZBhBb4bk1avkrhfMKaLy4pnwZAKERZBxWFNXZAOFyfA5hAZDZD\";i:101393319565961;s:216:\"EAA52ryfN8d8BO16lVIhpfgIpM7eIhxR9GvBjAQBAkpqPn8Nv8xX9cKhIZBElVNGPfSk65kTxvDqUmZAS5plclFb6yQa8eYSQPTtuhq08Os0F0l2xzhWpNGbJCWUlBIXugZCZC4ydNASxGZCIbiGgDNEvPiS2CuetllVY7q0dmBl5O6UJj3wZAL1QKZCRQaZBbcZBcZAilfnqpNldSRn8UZD\";i:101804432707979;s:217:\"EAA52ryfN8d8BO0h18s89Ki8jvzVKicVRddT7pPZA5Vo9sVSOZCsi1bdWZA3DWymV68bmeNH1G6bZAslsxMK2oLnAcZCrkdHpQILm17IPlnkFgnCxJKavvGFj8glBWszTgWQkxI3pO4tCnGIwH5KQH2t2oMZCqlwCau2tZCilX4bavxjZA7OgqAa9VAB6BCrd66fysvQgZAlZB9PZA4Lc4wZD\";i:106258408604586;s:213:\"EAA52ryfN8d8BO01RrH0lczKPsF8jPLhdj6DmGmSnWPyRDAyNQ4rZBlb2c3Csxe8eTYoAsZC9bX6t4uM7DetwuOuBUUPEPPLYKWNXA5TKhAnTgFLAtTXoqLsrjxE9Qb5ZBL9HGHQRCvxkxtvAjJm5IFE2OTxfWH6C7DKLfmw1V5VZASnn1aZCZCzDSGY75hSWfLs8pmwTbSZCFOU0QUZD\";i:106692188472404;s:215:\"EAA52ryfN8d8BOZBVE6BQ6vS7i9Mgwe2cDd1JsMLyxhvQQHGopuedKeb4Hph1BZCZBNkOlXR1epAXei2dhKjZCsZBkb027r1mLTIblixW94CmFlKPhhMdMvCpnFaz00SpukmiANmnxUBZCo2cRxInwdjvjBiAKnQ9U5ZBRA7hRSUqIia995czokWfeZCCAftbzI9TCO9ysrHUpEhZC5CUZD\";i:349574779442662;s:210:\"EAA52ryfN8d8BO5uEyzN8kXLAUuihLcCa0Mg0oJWQRiMx2yMt4WyL41SxdDfNOd9NT0mcT7UfCHus56HidLC6tfL50gmP7fIX5bH0LAbJjOB8PJ2MqzNOJEsZAYlYTf2ULZBBhfrOmNikAPIuJllFWXhQwDHfOd7eDZCuBg7VUN0OIXgzyV7aYNGcWvkXzMRVuTQt0PtZAtZB7ypD0\";i:2346086549005402;s:217:\"EAA52ryfN8d8BO8Y69wrTwhJdM6u9hrObgZBeRf287RZC7vn9zZCjRYDWZBx3BhFgYNRdMmBQASYWZCJxk03HOprlMJ03fiKBiVgPSGMZAzVp9OCBPdKS7CEE2O6KND6R3eSjAcJCflzUXISfdUE29Dg55MUBCcRVHDjfzZC2eQyEzZCRkcoXq2iRsoZAAbtIulJkpZB73Rrjq815ZCPwaPZC\";i:116888886844474;s:211:\"EAA52ryfN8d8BO9W3FWGkBWXqZBh31PgYqUHOeYrXB0aIB7viBTCfa8BbFANQaRbhr9SjkRlc3omWZCGnu6eOSFPjtzy4427Y20VhCmpjym6dm61IMhUVwkcdpeR0OJc832ypgWSQGVToobrH74ZB2P1B3KHEK9jPZAQddHMrGKOtjqEs02Um9nuFg4SI21twZCJFRtcuh1mP8r40ZD\";i:2067563020021251;s:211:\"EAA52ryfN8d8BO1Cs8AQOUrlhjXoB9Fu209tSKuXDLYFMwCZABoDAiLyIGXVClWZBqHK1x9WYawxKq9TtcPXk4aggEltvxDVB4doxrAbupffKeqPpKaqQZCXY4QVYct4fuQD5nW1vJLPkMrfGZAScyk1dw1d4ZAuyJq9IlAZAjSNSSpJPiDrDhMqPg9N5oatrQEEKYR1ymHFXu7aecj\";i:132753200679906;s:212:\"EAA52ryfN8d8BOzUZCYNNIs2SbqPxxWMTJPZBBRVv023QptWtSEK6ZAzcRaVo9EOQ0iuIK09eGVoDfLMDlDgWDiudeCFW5ETIiPI6x8avxFHushKNYFNCWeeYCnmuKeCGR1ROlKuZBhwCoBW1XtEOZAU7ZBkQBEWjIKrYJ2cJSPoBeWpGytGJKVOkjwB0UJq6SHI4uQzaoc3yprzywZD\";i:1096440603768794;s:217:\"EAA52ryfN8d8BO8dprYAQAeoXkOq9P9UnNZAaZCJNSGDOGdRVM5WM2CZAyLPqqiZBvZBURCoYZAd93rbDBHHgrRWpz9sPAAjbchNWwqlTnPHS0WaVm5bIVZAZCxCJdWTWhp225YAbrZAQ0RLOU4DBniMve6ouwWjFkgzTOyUYxK0plZC3EDVA6zrJn3nj27vZCfDVmbry2ZCOjIzKaYoVPLdz\";i:140780986090351;s:214:\"EAA52ryfN8d8BOy3jCBLgTq0cisnoLGn50Eh4K8yKb6LjQ9t27RFZAWge8MtyQ7RtUrjGYEK043wyK7VinhCsF8HCSDchy65F2H3JuRjQ26KAYJZBIxGy12D4HZBgfLn7XKNiC81sOpmDqej4qiQoPqZA7jrLnzn8VRYkXacCTZB27Bv2N5QYSScXRn9SZCLaZBJiAon7fNmdZC63Qh8ZD\";}}s:22:\"sap_instagram_accounts\";a:4:{i:17841451206865071;s:8:\"lgc_sarl\";i:17841451263863884;s:14:\"laz_store_sarl\";i:17841443680577588;s:10:\"shoplazpro\";i:17841402048073456;s:11:\"olive.ducry\";}s:40:\"insta_8487893897968011_long_access_token\";s:212:\"EAA52ryfN8d8BOZBRfjZBgLz00eJSUSEClnQaFhZB0qhH13weL16oLumjRWkOhBFZC1HEmhAGcAUllyVgGDoLMm4E6ciTgNmSobZAAoEZAMlSTAba4FJZA51lmGMzEpPsVXfDZA6ThwDZCsZAQb5ZAmzHFtgZBje5wTcGTGlZCiy6ViKS0BsRZCAGbu1gOrxp41DhVHohOZBB5GAdx2O\";s:27:\"insta_8487893897968011_code\";s:408:\"AQD4emEtYCF3sXQSg0uN2ltTB58PGgw7lC7FUesl5yU_JstzLKZLtdLXTP170Wqs8oPL-R4THVtVD0sKJMrdFX-DLSmzwnh87VjGUtCm0pKPve5zUJ3hOrXV0uAtrHO7lQ1By11adzS32YFo2Ng8so28zHrr_4se195GnCYpYNAOjWhnLQg-W6Stpp7EvCi19y2lyTLW13e8STDbIHWJonUcSf2kdf7pzuwRlgwWfR2uxsSI7TbO3KQf1Sauu2MC-UTG8FpaWLLAjmq5BansaIhEmCWRe7haGnNqlouAH5CHjo8iuWgkJr8UMNdy_QRmxNd2aPPlmPd3LnLVVGOs3SAFHv9Dee0yr6TWBZfis5iCNPpRVCtWCfeMxaW1YIywUZ1Q7UgJjmxRVvsBS99fZaCn\";s:35:\"insta_8487893897968011_access_token\";s:270:\"EAA52ryfN8d8BOztwO5FpgZBIWu7RdGCH6ZCe8OrHA7bkxGKYGNSLdpTS6WhvHK2U3uRyR6eSQKfNzdzBbOr42XEyVm3LoxRZCvyBeWyZAx5LCDfqu8u1DDiNzEQee8R8sKp23ZBH5wBNLOs7kkEetzk6uk8PkIqx9g6sFYIZAXRw3K8cxvz7RnY0GABhaVun9B4IgmvWeLZBuQDxPsXYUEh812FZBhBb4bk1avkrhfMKaLy4pnwZAKERZBxWFNXZAOFyfA5hAZDZD\";s:30:\"insta_8487893897968011_user_id\";s:16:\"8487893897968011\";}}', 'yes'),
(38, 3, 'sap_instagram_options', 'a:2:{s:16:\"enable_instagram\";s:1:\"1\";s:11:\"insta_image\";s:0:\"\";}', 'yes'),
(39, 3, 'sap_blogger_sess_data', 'a:1:{s:21:\"118173345762983159571\";a:3:{s:4:\"name\";s:18:\"Afonso Brel Lazube\";s:12:\"display_name\";s:11:\"Afonso Brel\";s:13:\"token_details\";a:5:{s:20:\"authorized_timestamp\";i:1728924277;s:12:\"access_token\";s:222:\"ya29.a0AcM612yLII8CBPiANAmiuFeyPxcHBCndOAumUPPOf7jV-FTSZUd8Al1MghRe4-7Yd9N1emFdBfpsWxO5prh7K9ulqAgNruOu34aq5ZhXegF4LFDqiohDeOksdXSK2oiktj1jRl2dVq1ZGLysRBaCDsguxAdNTExmBvUZ4tPeaCgYKAb4SARESFQHGX2MisfwovNt3hb5EO3Px3X7wCA0175\";s:10:\"token_type\";s:6:\"Bearer\";s:16:\"expire_timestamp\";i:3599;s:13:\"refresh_token\";s:103:\"1//03hkKfryzShnXCgYIARAAGAMSNwF-L9IrnlDfy0FZLOl6BD7GNDJIwK8lpR_vYQNybBETGFo94MQCIsBppZZ6lqz-POpszdKraNo\";}}}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `sap_zone`
--

CREATE TABLE `sap_zone` (
  `zone_id` int(10) NOT NULL,
  `country_code` char(2) NOT NULL,
  `zone_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `sap_zone`
--

INSERT INTO `sap_zone` (`zone_id`, `country_code`, `zone_name`) VALUES
(1, 'AD', 'Europe/Andorra'),
(2, 'AE', 'Asia/Dubai'),
(3, 'AF', 'Asia/Kabul'),
(4, 'AG', 'America/Antigua'),
(5, 'AI', 'America/Anguilla'),
(6, 'AL', 'Europe/Tirane'),
(7, 'AM', 'Asia/Yerevan'),
(8, 'AO', 'Africa/Luanda'),
(9, 'AQ', 'Antarctica/McMurdo'),
(10, 'AQ', 'Antarctica/Casey'),
(11, 'AQ', 'Antarctica/Davis'),
(12, 'AQ', 'Antarctica/DumontDUrville'),
(13, 'AQ', 'Antarctica/Mawson'),
(14, 'AQ', 'Antarctica/Palmer'),
(15, 'AQ', 'Antarctica/Rothera'),
(16, 'AQ', 'Antarctica/Syowa'),
(17, 'AQ', 'Antarctica/Troll'),
(18, 'AQ', 'Antarctica/Vostok'),
(19, 'AR', 'America/Argentina/Buenos_Aires'),
(20, 'AR', 'America/Argentina/Cordoba'),
(21, 'AR', 'America/Argentina/Salta'),
(22, 'AR', 'America/Argentina/Jujuy'),
(23, 'AR', 'America/Argentina/Tucuman'),
(24, 'AR', 'America/Argentina/Catamarca'),
(25, 'AR', 'America/Argentina/La_Rioja'),
(26, 'AR', 'America/Argentina/San_Juan'),
(27, 'AR', 'America/Argentina/Mendoza'),
(28, 'AR', 'America/Argentina/San_Luis'),
(29, 'AR', 'America/Argentina/Rio_Gallegos'),
(30, 'AR', 'America/Argentina/Ushuaia'),
(31, 'AS', 'Pacific/Pago_Pago'),
(32, 'AT', 'Europe/Vienna'),
(33, 'AU', 'Australia/Lord_Howe'),
(34, 'AU', 'Antarctica/Macquarie'),
(35, 'AU', 'Australia/Hobart'),
(36, 'AU', 'Australia/Currie'),
(37, 'AU', 'Australia/Melbourne'),
(38, 'AU', 'Australia/Sydney'),
(39, 'AU', 'Australia/Broken_Hill'),
(40, 'AU', 'Australia/Brisbane'),
(41, 'AU', 'Australia/Lindeman'),
(42, 'AU', 'Australia/Adelaide'),
(43, 'AU', 'Australia/Darwin'),
(44, 'AU', 'Australia/Perth'),
(45, 'AU', 'Australia/Eucla'),
(46, 'AW', 'America/Aruba'),
(47, 'AX', 'Europe/Mariehamn'),
(48, 'AZ', 'Asia/Baku'),
(49, 'BA', 'Europe/Sarajevo'),
(50, 'BB', 'America/Barbados'),
(51, 'BD', 'Asia/Dhaka'),
(52, 'BE', 'Europe/Brussels'),
(53, 'BF', 'Africa/Ouagadougou'),
(54, 'BG', 'Europe/Sofia'),
(55, 'BH', 'Asia/Bahrain'),
(56, 'BI', 'Africa/Bujumbura'),
(57, 'BJ', 'Africa/Porto-Novo'),
(58, 'BL', 'America/St_Barthelemy'),
(59, 'BM', 'Atlantic/Bermuda'),
(60, 'BN', 'Asia/Brunei'),
(61, 'BO', 'America/La_Paz'),
(62, 'BQ', 'America/Kralendijk'),
(63, 'BR', 'America/Noronha'),
(64, 'BR', 'America/Belem'),
(65, 'BR', 'America/Fortaleza'),
(66, 'BR', 'America/Recife'),
(67, 'BR', 'America/Araguaina'),
(68, 'BR', 'America/Maceio'),
(69, 'BR', 'America/Bahia'),
(70, 'BR', 'America/Sao_Paulo'),
(71, 'BR', 'America/Campo_Grande'),
(72, 'BR', 'America/Cuiaba'),
(73, 'BR', 'America/Santarem'),
(74, 'BR', 'America/Porto_Velho'),
(75, 'BR', 'America/Boa_Vista'),
(76, 'BR', 'America/Manaus'),
(77, 'BR', 'America/Eirunepe'),
(78, 'BR', 'America/Rio_Branco'),
(79, 'BS', 'America/Nassau'),
(80, 'BT', 'Asia/Thimphu'),
(81, 'BW', 'Africa/Gaborone'),
(82, 'BY', 'Europe/Minsk'),
(83, 'BZ', 'America/Belize'),
(84, 'CA', 'America/St_Johns'),
(85, 'CA', 'America/Halifax'),
(86, 'CA', 'America/Glace_Bay'),
(87, 'CA', 'America/Moncton'),
(88, 'CA', 'America/Goose_Bay'),
(89, 'CA', 'America/Blanc-Sablon'),
(90, 'CA', 'America/Toronto'),
(91, 'CA', 'America/Nipigon'),
(92, 'CA', 'America/Thunder_Bay'),
(93, 'CA', 'America/Iqaluit'),
(94, 'CA', 'America/Pangnirtung'),
(95, 'CA', 'America/Atikokan'),
(96, 'CA', 'America/Winnipeg'),
(97, 'CA', 'America/Rainy_River'),
(98, 'CA', 'America/Resolute'),
(99, 'CA', 'America/Rankin_Inlet'),
(100, 'CA', 'America/Regina'),
(101, 'CA', 'America/Swift_Current'),
(102, 'CA', 'America/Edmonton'),
(103, 'CA', 'America/Cambridge_Bay'),
(104, 'CA', 'America/Yellowknife'),
(105, 'CA', 'America/Inuvik'),
(106, 'CA', 'America/Creston'),
(107, 'CA', 'America/Dawson_Creek'),
(108, 'CA', 'America/Fort_Nelson'),
(109, 'CA', 'America/Vancouver'),
(110, 'CA', 'America/Whitehorse'),
(111, 'CA', 'America/Dawson'),
(112, 'CC', 'Indian/Cocos'),
(113, 'CD', 'Africa/Kinshasa'),
(114, 'CD', 'Africa/Lubumbashi'),
(115, 'CF', 'Africa/Bangui'),
(116, 'CG', 'Africa/Brazzaville'),
(117, 'CH', 'Europe/Zurich'),
(118, 'CI', 'Africa/Abidjan'),
(119, 'CK', 'Pacific/Rarotonga'),
(120, 'CL', 'America/Santiago'),
(121, 'CL', 'America/Punta_Arenas'),
(122, 'CL', 'Pacific/Easter'),
(123, 'CM', 'Africa/Douala'),
(124, 'CN', 'Asia/Shanghai'),
(125, 'CN', 'Asia/Urumqi'),
(126, 'CO', 'America/Bogota'),
(127, 'CR', 'America/Costa_Rica'),
(128, 'CU', 'America/Havana'),
(129, 'CV', 'Atlantic/Cape_Verde'),
(130, 'CW', 'America/Curacao'),
(131, 'CX', 'Indian/Christmas'),
(132, 'CY', 'Asia/Nicosia'),
(133, 'CY', 'Asia/Famagusta'),
(134, 'CZ', 'Europe/Prague'),
(135, 'DE', 'Europe/Berlin'),
(136, 'DE', 'Europe/Busingen'),
(137, 'DJ', 'Africa/Djibouti'),
(138, 'DK', 'Europe/Copenhagen'),
(139, 'DM', 'America/Dominica'),
(140, 'DO', 'America/Santo_Domingo'),
(141, 'DZ', 'Africa/Algiers'),
(142, 'EC', 'America/Guayaquil'),
(143, 'EC', 'Pacific/Galapagos'),
(144, 'EE', 'Europe/Tallinn'),
(145, 'EG', 'Africa/Cairo'),
(146, 'EH', 'Africa/El_Aaiun'),
(147, 'ER', 'Africa/Asmara'),
(148, 'ES', 'Europe/Madrid'),
(149, 'ES', 'Africa/Ceuta'),
(150, 'ES', 'Atlantic/Canary'),
(151, 'ET', 'Africa/Addis_Ababa'),
(152, 'FI', 'Europe/Helsinki'),
(153, 'FJ', 'Pacific/Fiji'),
(154, 'FK', 'Atlantic/Stanley'),
(155, 'FM', 'Pacific/Chuuk'),
(156, 'FM', 'Pacific/Pohnpei'),
(157, 'FM', 'Pacific/Kosrae'),
(158, 'FO', 'Atlantic/Faroe'),
(159, 'FR', 'Europe/Paris'),
(160, 'GA', 'Africa/Libreville'),
(161, 'GB', 'Europe/London'),
(162, 'GD', 'America/Grenada'),
(163, 'GE', 'Asia/Tbilisi'),
(164, 'GF', 'America/Cayenne'),
(165, 'GG', 'Europe/Guernsey'),
(166, 'GH', 'Africa/Accra'),
(167, 'GI', 'Europe/Gibraltar'),
(168, 'GL', 'America/Godthab'),
(169, 'GL', 'America/Danmarkshavn'),
(170, 'GL', 'America/Scoresbysund'),
(171, 'GL', 'America/Thule'),
(172, 'GM', 'Africa/Banjul'),
(173, 'GN', 'Africa/Conakry'),
(174, 'GP', 'America/Guadeloupe'),
(175, 'GQ', 'Africa/Malabo'),
(176, 'GR', 'Europe/Athens'),
(177, 'GS', 'Atlantic/South_Georgia'),
(178, 'GT', 'America/Guatemala'),
(179, 'GU', 'Pacific/Guam'),
(180, 'GW', 'Africa/Bissau'),
(181, 'GY', 'America/Guyana'),
(182, 'HK', 'Asia/Hong_Kong'),
(183, 'HN', 'America/Tegucigalpa'),
(184, 'HR', 'Europe/Zagreb'),
(185, 'HT', 'America/Port-au-Prince'),
(186, 'HU', 'Europe/Budapest'),
(187, 'ID', 'Asia/Jakarta'),
(188, 'ID', 'Asia/Pontianak'),
(189, 'ID', 'Asia/Makassar'),
(190, 'ID', 'Asia/Jayapura'),
(191, 'IE', 'Europe/Dublin'),
(192, 'IL', 'Asia/Jerusalem'),
(193, 'IM', 'Europe/Isle_of_Man'),
(194, 'IN', 'Asia/Kolkata'),
(195, 'IO', 'Indian/Chagos'),
(196, 'IQ', 'Asia/Baghdad'),
(197, 'IR', 'Asia/Tehran'),
(198, 'IS', 'Atlantic/Reykjavik'),
(199, 'IT', 'Europe/Rome'),
(200, 'JE', 'Europe/Jersey'),
(201, 'JM', 'America/Jamaica'),
(202, 'JO', 'Asia/Amman'),
(203, 'JP', 'Asia/Tokyo'),
(204, 'KE', 'Africa/Nairobi'),
(205, 'KG', 'Asia/Bishkek'),
(206, 'KH', 'Asia/Phnom_Penh'),
(207, 'KI', 'Pacific/Tarawa'),
(208, 'KI', 'Pacific/Enderbury'),
(209, 'KI', 'Pacific/Kiritimati'),
(210, 'KM', 'Indian/Comoro'),
(211, 'KN', 'America/St_Kitts'),
(212, 'KP', 'Asia/Pyongyang'),
(213, 'KR', 'Asia/Seoul'),
(214, 'KW', 'Asia/Kuwait'),
(215, 'KY', 'America/Cayman'),
(216, 'KZ', 'Asia/Almaty'),
(217, 'KZ', 'Asia/Qyzylorda'),
(218, 'KZ', 'Asia/Aqtobe'),
(219, 'KZ', 'Asia/Aqtau'),
(220, 'KZ', 'Asia/Atyrau'),
(221, 'KZ', 'Asia/Oral'),
(222, 'LA', 'Asia/Vientiane'),
(223, 'LB', 'Asia/Beirut'),
(224, 'LC', 'America/St_Lucia'),
(225, 'LI', 'Europe/Vaduz'),
(226, 'LK', 'Asia/Colombo'),
(227, 'LR', 'Africa/Monrovia'),
(228, 'LS', 'Africa/Maseru'),
(229, 'LT', 'Europe/Vilnius'),
(230, 'LU', 'Europe/Luxembourg'),
(231, 'LV', 'Europe/Riga'),
(232, 'LY', 'Africa/Tripoli'),
(233, 'MA', 'Africa/Casablanca'),
(234, 'MC', 'Europe/Monaco'),
(235, 'MD', 'Europe/Chisinau'),
(236, 'ME', 'Europe/Podgorica'),
(237, 'MF', 'America/Marigot'),
(238, 'MG', 'Indian/Antananarivo'),
(239, 'MH', 'Pacific/Majuro'),
(240, 'MH', 'Pacific/Kwajalein'),
(241, 'MK', 'Europe/Skopje'),
(242, 'ML', 'Africa/Bamako'),
(243, 'MM', 'Asia/Yangon'),
(244, 'MN', 'Asia/Ulaanbaatar'),
(245, 'MN', 'Asia/Hovd'),
(246, 'MN', 'Asia/Choibalsan'),
(247, 'MO', 'Asia/Macau'),
(248, 'MP', 'Pacific/Saipan'),
(249, 'MQ', 'America/Martinique'),
(250, 'MR', 'Africa/Nouakchott'),
(251, 'MS', 'America/Montserrat'),
(252, 'MT', 'Europe/Malta'),
(253, 'MU', 'Indian/Mauritius'),
(254, 'MV', 'Indian/Maldives'),
(255, 'MW', 'Africa/Blantyre'),
(256, 'MX', 'America/Mexico_City'),
(257, 'MX', 'America/Cancun'),
(258, 'MX', 'America/Merida'),
(259, 'MX', 'America/Monterrey'),
(260, 'MX', 'America/Matamoros'),
(261, 'MX', 'America/Mazatlan'),
(262, 'MX', 'America/Chihuahua'),
(263, 'MX', 'America/Ojinaga'),
(264, 'MX', 'America/Hermosillo'),
(265, 'MX', 'America/Tijuana'),
(266, 'MX', 'America/Bahia_Banderas'),
(267, 'MY', 'Asia/Kuala_Lumpur'),
(268, 'MY', 'Asia/Kuching'),
(269, 'MZ', 'Africa/Maputo'),
(270, 'NA', 'Africa/Windhoek'),
(271, 'NC', 'Pacific/Noumea'),
(272, 'NE', 'Africa/Niamey'),
(273, 'NF', 'Pacific/Norfolk'),
(274, 'NG', 'Africa/Lagos'),
(275, 'NI', 'America/Managua'),
(276, 'NL', 'Europe/Amsterdam'),
(277, 'NO', 'Europe/Oslo'),
(278, 'NP', 'Asia/Kathmandu'),
(279, 'NR', 'Pacific/Nauru'),
(280, 'NU', 'Pacific/Niue'),
(281, 'NZ', 'Pacific/Auckland'),
(282, 'NZ', 'Pacific/Chatham'),
(283, 'OM', 'Asia/Muscat'),
(284, 'PA', 'America/Panama'),
(285, 'PE', 'America/Lima'),
(286, 'PF', 'Pacific/Tahiti'),
(287, 'PF', 'Pacific/Marquesas'),
(288, 'PF', 'Pacific/Gambier'),
(289, 'PG', 'Pacific/Port_Moresby'),
(290, 'PG', 'Pacific/Bougainville'),
(291, 'PH', 'Asia/Manila'),
(292, 'PK', 'Asia/Karachi'),
(293, 'PL', 'Europe/Warsaw'),
(294, 'PM', 'America/Miquelon'),
(295, 'PN', 'Pacific/Pitcairn'),
(296, 'PR', 'America/Puerto_Rico'),
(297, 'PS', 'Asia/Gaza'),
(298, 'PS', 'Asia/Hebron'),
(299, 'PT', 'Europe/Lisbon'),
(300, 'PT', 'Atlantic/Madeira'),
(301, 'PT', 'Atlantic/Azores'),
(302, 'PW', 'Pacific/Palau'),
(303, 'PY', 'America/Asuncion'),
(304, 'QA', 'Asia/Qatar'),
(305, 'RE', 'Indian/Reunion'),
(306, 'RO', 'Europe/Bucharest'),
(307, 'RS', 'Europe/Belgrade'),
(308, 'RU', 'Europe/Kaliningrad'),
(309, 'RU', 'Europe/Moscow'),
(310, 'RU', 'Europe/Simferopol'),
(311, 'RU', 'Europe/Volgograd'),
(312, 'RU', 'Europe/Kirov'),
(313, 'RU', 'Europe/Astrakhan'),
(314, 'RU', 'Europe/Saratov'),
(315, 'RU', 'Europe/Ulyanovsk'),
(316, 'RU', 'Europe/Samara'),
(317, 'RU', 'Asia/Yekaterinburg'),
(318, 'RU', 'Asia/Omsk'),
(319, 'RU', 'Asia/Novosibirsk'),
(320, 'RU', 'Asia/Barnaul'),
(321, 'RU', 'Asia/Tomsk'),
(322, 'RU', 'Asia/Novokuznetsk'),
(323, 'RU', 'Asia/Krasnoyarsk'),
(324, 'RU', 'Asia/Irkutsk'),
(325, 'RU', 'Asia/Chita'),
(326, 'RU', 'Asia/Yakutsk'),
(327, 'RU', 'Asia/Khandyga'),
(328, 'RU', 'Asia/Vladivostok'),
(329, 'RU', 'Asia/Ust-Nera'),
(330, 'RU', 'Asia/Magadan'),
(331, 'RU', 'Asia/Sakhalin'),
(332, 'RU', 'Asia/Srednekolymsk'),
(333, 'RU', 'Asia/Kamchatka'),
(334, 'RU', 'Asia/Anadyr'),
(335, 'RW', 'Africa/Kigali'),
(336, 'SA', 'Asia/Riyadh'),
(337, 'SB', 'Pacific/Guadalcanal'),
(338, 'SC', 'Indian/Mahe'),
(339, 'SD', 'Africa/Khartoum'),
(340, 'SE', 'Europe/Stockholm'),
(341, 'SG', 'Asia/Singapore'),
(342, 'SH', 'Atlantic/St_Helena'),
(343, 'SI', 'Europe/Ljubljana'),
(344, 'SJ', 'Arctic/Longyearbyen'),
(345, 'SK', 'Europe/Bratislava'),
(346, 'SL', 'Africa/Freetown'),
(347, 'SM', 'Europe/San_Marino'),
(348, 'SN', 'Africa/Dakar'),
(349, 'SO', 'Africa/Mogadishu'),
(350, 'SR', 'America/Paramaribo'),
(351, 'SS', 'Africa/Juba'),
(352, 'ST', 'Africa/Sao_Tome'),
(353, 'SV', 'America/El_Salvador'),
(354, 'SX', 'America/Lower_Princes'),
(355, 'SY', 'Asia/Damascus'),
(356, 'SZ', 'Africa/Mbabane'),
(357, 'TC', 'America/Grand_Turk'),
(358, 'TD', 'Africa/Ndjamena'),
(359, 'TF', 'Indian/Kerguelen'),
(360, 'TG', 'Africa/Lome'),
(361, 'TH', 'Asia/Bangkok'),
(362, 'TJ', 'Asia/Dushanbe'),
(363, 'TK', 'Pacific/Fakaofo'),
(364, 'TL', 'Asia/Dili'),
(365, 'TM', 'Asia/Ashgabat'),
(366, 'TN', 'Africa/Tunis'),
(367, 'TO', 'Pacific/Tongatapu'),
(368, 'TR', 'Europe/Istanbul'),
(369, 'TT', 'America/Port_of_Spain'),
(370, 'TV', 'Pacific/Funafuti'),
(371, 'TW', 'Asia/Taipei'),
(372, 'TZ', 'Africa/Dar_es_Salaam'),
(373, 'UA', 'Europe/Kiev'),
(374, 'UA', 'Europe/Uzhgorod'),
(375, 'UA', 'Europe/Zaporozhye'),
(376, 'UG', 'Africa/Kampala'),
(377, 'UM', 'Pacific/Midway'),
(378, 'UM', 'Pacific/Wake'),
(379, 'US', 'America/New_York'),
(380, 'US', 'America/Detroit'),
(381, 'US', 'America/Kentucky/Louisville'),
(382, 'US', 'America/Kentucky/Monticello'),
(383, 'US', 'America/Indiana/Indianapolis'),
(384, 'US', 'America/Indiana/Vincennes'),
(385, 'US', 'America/Indiana/Winamac'),
(386, 'US', 'America/Indiana/Marengo'),
(387, 'US', 'America/Indiana/Petersburg'),
(388, 'US', 'America/Indiana/Vevay'),
(389, 'US', 'America/Chicago'),
(390, 'US', 'America/Indiana/Tell_City'),
(391, 'US', 'America/Indiana/Knox'),
(392, 'US', 'America/Menominee'),
(393, 'US', 'America/North_Dakota/Center'),
(394, 'US', 'America/North_Dakota/New_Salem'),
(395, 'US', 'America/North_Dakota/Beulah'),
(396, 'US', 'America/Denver'),
(397, 'US', 'America/Boise'),
(398, 'US', 'America/Phoenix'),
(399, 'US', 'America/Los_Angeles'),
(400, 'US', 'America/Anchorage'),
(401, 'US', 'America/Juneau'),
(402, 'US', 'America/Sitka'),
(403, 'US', 'America/Metlakatla'),
(404, 'US', 'America/Yakutat'),
(405, 'US', 'America/Nome'),
(406, 'US', 'America/Adak'),
(407, 'US', 'Pacific/Honolulu'),
(408, 'UY', 'America/Montevideo'),
(409, 'UZ', 'Asia/Samarkand'),
(410, 'UZ', 'Asia/Tashkent'),
(411, 'VA', 'Europe/Vatican'),
(412, 'VC', 'America/St_Vincent'),
(413, 'VE', 'America/Caracas'),
(414, 'VG', 'America/Tortola'),
(415, 'VI', 'America/St_Thomas'),
(416, 'VN', 'Asia/Ho_Chi_Minh'),
(417, 'VU', 'Pacific/Efate'),
(418, 'WF', 'Pacific/Wallis'),
(419, 'WS', 'Pacific/Apia'),
(420, 'YE', 'Asia/Aden'),
(421, 'YT', 'Indian/Mayotte'),
(422, 'ZA', 'Africa/Johannesburg'),
(423, 'ZM', 'Africa/Lusaka'),
(424, 'ZW', 'Africa/Harare');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `sap_coupons`
--
ALTER TABLE `sap_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sap_logs`
--
ALTER TABLE `sap_logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sap_membership`
--
ALTER TABLE `sap_membership`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `customer_name` (`customer_name`);

--
-- Index pour la table `sap_options`
--
ALTER TABLE `sap_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Index pour la table `sap_payment_history`
--
ALTER TABLE `sap_payment_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membership_id` (`membership_id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Index pour la table `sap_plans`
--
ALTER TABLE `sap_plans`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sap_postmeta`
--
ALTER TABLE `sap_postmeta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Index pour la table `sap_posts`
--
ALTER TABLE `sap_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `title` (`title`);

--
-- Index pour la table `sap_quick_postmeta`
--
ALTER TABLE `sap_quick_postmeta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Index pour la table `sap_quick_posts`
--
ALTER TABLE `sap_quick_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Index pour la table `sap_users`
--
ALTER TABLE `sap_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sap_user_settings`
--
ALTER TABLE `sap_user_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Index pour la table `sap_zone`
--
ALTER TABLE `sap_zone`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_country_code` (`country_code`),
  ADD KEY `idx_zone_name` (`zone_name`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `sap_coupons`
--
ALTER TABLE `sap_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sap_logs`
--
ALTER TABLE `sap_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT pour la table `sap_membership`
--
ALTER TABLE `sap_membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `sap_options`
--
ALTER TABLE `sap_options`
  MODIFY `option_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT pour la table `sap_payment_history`
--
ALTER TABLE `sap_payment_history`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `sap_plans`
--
ALTER TABLE `sap_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sap_postmeta`
--
ALTER TABLE `sap_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1726;

--
-- AUTO_INCREMENT pour la table `sap_posts`
--
ALTER TABLE `sap_posts`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT pour la table `sap_quick_postmeta`
--
ALTER TABLE `sap_quick_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT pour la table `sap_quick_posts`
--
ALTER TABLE `sap_quick_posts`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT pour la table `sap_users`
--
ALTER TABLE `sap_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `sap_user_settings`
--
ALTER TABLE `sap_user_settings`
  MODIFY `setting_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `sap_zone`
--
ALTER TABLE `sap_zone`
  MODIFY `zone_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
