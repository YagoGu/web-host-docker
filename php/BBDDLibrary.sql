-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-04-2023 a las 16:11:58
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `BBDDLibrary`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Books`
--

CREATE TABLE `Books` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(250) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `book_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Books`
--

INSERT INTO `Books` (`book_id`, `book_title`, `author_name`, `book_description`) VALUES
(1, 'Pride and Prejudice', 'Jane Austen', NULL),
(2, '1984', 'George Orwell', NULL),
(3, 'Crime and Punishment', 'Fyodor Dostoevsky', NULL),
(4, 'Hamlet', 'William Shakespeare', NULL),
(5, 'One Hundred Years of Solitude', 'Gabriel García Márquez', NULL),
(6, 'Anna Karenina', 'Leo Tolstoy', NULL),
(7, 'The Odyssey', 'Homer', NULL),
(8, 'The Stranger', 'Albert Camus', NULL),
(9, 'The Brothers Karamazov', 'Fyodor Dostoevsky', NULL),
(10, 'Great Expectations', 'Charles Dickens', NULL),
(11, 'Lolita', 'Vladimir Nabokov', NULL),
(12, 'The Old Man and the Sea', 'Ernest Hemingway', NULL),
(13, 'War and Peace', 'Leo Tolstoy', NULL),
(14, 'Don Quixote', 'Miguel de Cervantes Saavedra', NULL),
(15, 'The Iliad', 'Homer', NULL),
(16, 'Madame Bovary', 'Gustave Flaubert', NULL),
(17, 'The Trial', 'Franz Kafka', NULL),
(18, 'The Divine Comedy', 'Dante Alighieri', NULL),
(19, 'Moby-Dick or, the Whale', 'Herman Melville', NULL),
(20, 'King Lear', 'William Shakespeare', NULL),
(21, 'Love in the Time of Cholera', 'Gabriel García Márquez', NULL),
(22, 'The Complete Fairy Tales', 'Hans Christian Andersen', NULL),
(23, 'Mrs. Dalloway', 'Virginia Woolf', NULL),
(24, 'Othello', 'William Shakespeare', NULL),
(25, 'The Arabian Nights', 'Anonymous', NULL),
(26, 'Ulysses', 'James Joyce', NULL),
(27, 'The Sound and the Fury', 'William Faulkner', NULL),
(28, 'The Canterbury Tales', 'Nevill Coghill', NULL),
(29, 'Gulliver\'s Travels: Travels into Several Remote Nations of the World.', 'Jonathan Swift', NULL),
(30, 'Oedipus Rex (The Theban Plays, #1)', 'Sophocles', NULL),
(31, 'The Idiot', 'Fyodor Dostoevsky', NULL),
(32, 'Swann’s Way', 'Marcel Proust', NULL),
(33, 'Pippi Longstocking (Pippi Långstrump, #1)', 'Astrid Lindgren', NULL),
(34, 'The Collected Tales of Edgar Allan Poe', 'Edgar Allan Poe', NULL),
(35, 'To the Lighthouse', 'Virginia Woolf', NULL),
(36, 'Faust, First Part', 'Johann Wolfgang von Goethe', NULL),
(37, 'Beloved', 'Toni Morrison', NULL),
(38, 'Blindness', 'José Saramago', NULL),
(39, 'Things Fall Apart (The African Trilogy, #1)', 'Chinua Achebe', NULL),
(40, 'Ficciones', 'Jorge Luis Borges', NULL),
(41, 'Zorba the Greek', 'Nikos Kazantzakis', NULL),
(42, 'The Death of Ivan Ilych', 'Leo Tolstoy', NULL),
(43, 'Middlemarch', 'George Eliot', NULL),
(44, 'Midnight\'s Children', 'Salman Rushdie', NULL),
(45, 'Journey to the End of the Night', 'Louis-Ferdinand Céline', NULL),
(46, 'The Epic of Gilgamesh', 'Anonymous', NULL),
(47, 'A Doll\'s House', 'Henrik Ibsen', NULL),
(48, 'Invisible Man', 'Ralph Ellison', NULL),
(49, 'Leaves of Grass', 'Walt Whitman', NULL),
(50, 'The Man Without Qualities', 'Robert Musil', NULL),
(51, 'The Magic Mountain', 'Thomas Mann', NULL),
(52, 'The Book of Disquiet', 'Fernando Pessoa', NULL),
(53, 'Hunger', 'Knut Hamsun', NULL),
(54, 'The Decameron', 'Giovanni Boccaccio', NULL),
(55, 'Dead Souls', 'Nikolai Gogol', NULL),
(56, 'Metamorphoses', 'Ovid', NULL),
(57, 'The Aeneid', 'Virgil', NULL),
(58, 'The Castle', 'Franz Kafka', NULL),
(59, 'Mahabharata', 'Anonymous', NULL),
(60, 'Wuthering Heights', 'Emily Brontë', NULL),
(61, 'Medea', 'Euripides', NULL),
(62, 'Gargantua and Pantagruel', 'François Rabelais', NULL),
(63, 'Franz Kafka: The Complete Stories', 'Franz Kafka', NULL),
(64, 'The Red and the Black', 'Stendhal', NULL),
(65, 'Père Goriot', 'Honoré de Balzac', NULL),
(66, 'Selected Stories of Anton Chekhov', 'Anton Chekhov', NULL),
(67, 'The Tin Drum', 'Günter Grass', NULL),
(68, 'Absalom, Absalom!', 'William Faulkner', NULL),
(69, 'Buddenbrooks: The Decline of a Family', 'Thomas Mann', NULL),
(70, 'Ramayana', 'Vālmīki', NULL),
(71, 'The Adventures of Huckleberry Finn', 'Mark Twain', NULL),
(72, 'Sons and Lovers', 'D.H. Lawrence', NULL),
(73, 'Demons', 'Fyodor Dostoevsky', NULL),
(74, 'Pedro Páramo', 'Juan Rulfo', NULL),
(75, 'Memoirs of Hadrian', 'Marguerite Yourcenar', NULL),
(76, 'The Book of Job', 'Anonymous', NULL),
(77, 'The Golden Notebook', 'Doris Lessing', NULL),
(78, 'Molloy / Malone Dies / The Unnamable', 'Samuel Beckett', NULL),
(79, 'مثنوی معنوی', 'Rumi', NULL),
(80, 'The Complete Essays', 'Michel de Montaigne', NULL),
(81, 'Jacques the Fatalist', 'Denis Diderot', NULL),
(82, 'The Life and Opinions of Tristram Shandy, Gentleman', 'Laurence Sterne', NULL),
(83, 'Season of Migration to the North', 'Tayeb Salih', NULL),
(84, 'The Tale of Genji', 'Murasaki Shikibu', NULL),
(85, 'Sentimental Education', 'Gustave Flaubert', NULL),
(86, 'أولاد حارتنا', 'Naguib Mahfouz', NULL),
(87, 'Independent People', 'Halldór Laxness', NULL),
(88, 'The Sound of the Mountain', 'Yasunari Kawabata', NULL),
(89, 'Diary of a Madman and Other Stories', 'Lu Xun', NULL),
(90, 'Zenos Conscience', 'Italo Svevo', NULL),
(91, 'Nostromo', 'Joseph Conrad', NULL),
(92, 'Romancero gitano', 'Federico García Lorca', NULL),
(93, 'Grande Sertão: Veredas', 'João Guimarães Rosa', NULL),
(94, 'History (La Storia, #1-2)', 'Elsa Morante', NULL),
(95, 'Poems of Paul Celan', 'Paul Celan', NULL),
(96, 'Berlin Alexanderplatz', 'Alfred Döblin', NULL),
(97, 'Njal\'s Saga', 'Unknown', NULL),
(98, 'The Recognition of Śakuntalā', 'Kālidāsa', NULL),
(99, 'The Orchard: The Bostan Of Saadi Of Shiraz', 'Saadi', NULL),
(100, 'The Poems Of Leopardi', 'Giacomo Leopardi', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Books`
--
ALTER TABLE `Books`
  ADD PRIMARY KEY (`book_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Books`
--
ALTER TABLE `Books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
