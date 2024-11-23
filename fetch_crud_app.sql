-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 23 nov. 2024 à 18:09
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fetch_crud_app`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Sahil', 'Kumar', 'sahil4rock@gmail.com', '07896541235', 'tunis', '2020-11-02 16:28:06', NULL),
(2, 'Harry', 'Potter', 'harry@gmail.com', '789654135', NULL, '2020-11-02 16:31:35', NULL),
(3, 'Ron', 'Weasly', 'ron@gmail.com', '741258963', NULL, '2020-11-02 16:33:55', NULL),
(7, 'saif', 'AZAZ', 'ddd@ddd', '111111111', NULL, '2024-11-19 18:44:09', NULL),
(8, 'saif', 'ddddd', 'saifeddinegouma@yahoo.fr', 'sfax', '', '2024-11-19 19:43:44', NULL),
(9, 'cd', 'ddddd', 'saifgouma@gmail.com', 'tunis', '', '2024-11-19 19:46:40', NULL),
(10, 'saif', 'ddddd', 'saifgouma@gmail.com', 'aaa', 'tunis cc', '2024-11-19 19:48:55', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
