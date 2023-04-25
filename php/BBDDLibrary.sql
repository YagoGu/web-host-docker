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

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(250) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `book_description` varchar(1000) DEFAULT NULL,
  `book_photo` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Books`
--

INSERT INTO `Books` (`book_id`, `book_title`, `author_name`, `book_description`, `book_photo`) VALUES
(1, 'Pride and Prejudice', 'Jane Austen', 'Pride and Prejudice is a classic novel by Jane Austen. It follows the story of Elizabeth Bennet, a headstrong and independent young woman, and her tumultuous relationship with Mr. Darcy, a wealthy and proud gentleman. Set in 19th century England, the novel explores themes of love, marriage, social class, and societal expectations. With its witty dialogue, memorable characters, and enduring romance, Pride and Prejudice is considered one of the greatest works of English literature.', NULL),
(2, '1984', 'George Orwell', '1984 is a dystopian novel by George Orwell. It depicts a totalitarian society ruled by the Party, led by Big Brother, where individualism and freedom are suppressed. The story follows Winston Smith, a disillusioned Party member, who rebels against the oppressive regime. Through vivid descriptions and thought-provoking concepts, Orwell explores the dangers of totalitarianism, censorship, and surveillance. 1984 is a chilling portrayal of a bleak future, warning about the consequences of unchecked government control and the loss of individuality.', NULL),
(3, 'Crime and Punishment', 'Fyodor Dostoevsky', 'Crime and Punishment by Fyodor Dostoevsky is a classic novel that delves into the psychological struggles of its protagonist, Raskolnikov. He is a poor ex-student in Saint Petersburg who commits a heinous crime and battles with guilt and morality. Set against the backdrop of 19th-century Russia, the novel explores the complexities of human nature, the consequences of crime, and the search for redemption. Dostoevskys masterful writing captures the inner turmoil of Raskolnikov, making Crime and Punishment a timeless work that delves into the darkest corners of the human mind.', NULL),
(4, 'Hamlet', 'William Shakespeare', 'Hamlet by William Shakespeare is a tragedy that follows the story of the titular character, Prince Hamlet of Denmark. After his fathers death and his mothers hasty remarriage, Hamlet is consumed by grief and seeks revenge for his fathers murder. The play is renowned for its exploration of themes such as betrayal, revenge, and the complexity of human nature. Hamlets internal struggles, his soliloquies, and his interactions with other characters are masterfully crafted, making Hamlet one of Shakespeares most iconic works, revered for its depth and complexity.', NULL),
(5, 'One Hundred Years of Solitude', 'Gabriel García Márquez', NULL, NULL),
(6, 'Anna Karenina', 'Leo Tolstoy', NULL, NULL),
(7, 'The Odyssey', 'Homer', NULL, NULL),
(8, 'The Stranger', 'Albert Camus', NULL, NULL),
(9, 'The Brothers Karamazov', 'Fyodor Dostoevsky', NULL, NULL),
(10, 'Great Expectations', 'Charles Dickens', NULL, NULL),
(11, 'Lolita', 'Vladimir Nabokov', NULL, NULL),
(12, 'The Old Man and the Sea', 'Ernest Hemingway', NULL, NULL),
(13, 'War and Peace', 'Leo Tolstoy', NULL, NULL),
(14, 'Don Quixote', 'Miguel de Cervantes Saavedra', NULL, NULL),
(15, 'The Iliad', 'Homer', NULL, NULL),
(16, 'Madame Bovary', 'Gustave Flaubert', NULL, NULL),
(17, 'The Trial', 'Franz Kafka', NULL, NULL),
(18, 'The Divine Comedy', 'Dante Alighieri', NULL, NULL),
(19, 'Moby-Dick or, the Whale', 'Herman Melville', NULL, NULL),
(20, 'King Lear', 'William Shakespeare', NULL, NULL),
(21, 'Love in the Time of Cholera', 'Gabriel García Márquez', NULL, NULL),
(22, 'The Complete Fairy Tales', 'Hans Christian Andersen', NULL, NULL),
(23, 'Mrs. Dalloway', 'Virginia Woolf', NULL, NULL),
(24, 'Othello', 'William Shakespeare', NULL, NULL),
(25, 'The Arabian Nights', 'Anonymous', NULL, NULL),
(26, 'Ulysses', 'James Joyce', NULL, NULL),
(27, 'The Sound and the Fury', 'William Faulkner', NULL, NULL),
(28, 'The Canterbury Tales', 'Nevill Coghill', NULL, NULL),
(29, 'Gulliver\'s Travels: Travels into Several Remote Nations of the World.', 'Jonathan Swift', NULL, NULL),
(30, 'Oedipus Rex (The Theban Plays, #1)', 'Sophocles', NULL, NULL),
(31, 'The Idiot', 'Fyodor Dostoevsky', NULL, NULL),
(32, 'Swann’s Way', 'Marcel Proust', NULL, NULL),
(33, 'Pippi Longstocking (Pippi Långstrump, #1)', 'Astrid Lindgren', NULL, NULL),
(34, 'The Collected Tales of Edgar Allan Poe', 'Edgar Allan Poe', NULL, NULL),
(35, 'To the Lighthouse', 'Virginia Woolf', NULL, NULL),
(36, 'Faust, First Part', 'Johann Wolfgang von Goethe', NULL, NULL),
(37, 'Beloved', 'Toni Morrison', NULL, NULL),
(38, 'Blindness', 'José Saramago', NULL, NULL),
(39, 'Things Fall Apart (The African Trilogy, #1)', 'Chinua Achebe', NULL, NULL),
(40, 'Ficciones', 'Jorge Luis Borges', NULL, NULL),
(41, 'Zorba the Greek', 'Nikos Kazantzakis', NULL, NULL),
(42, 'The Death of Ivan Ilych', 'Leo Tolstoy', NULL, NULL),
(43, 'Middlemarch', 'George Eliot', NULL, NULL),
(44, 'Midnight\'s Children', 'Salman Rushdie', NULL, NULL),
(45, 'Journey to the End of the Night', 'Louis-Ferdinand Céline', NULL, NULL),
(46, 'The Epic of Gilgamesh', 'Anonymous', NULL, NULL),
(47, 'A Doll\'s House', 'Henrik Ibsen', NULL, NULL),
(48, 'Invisible Man', 'Ralph Ellison', NULL, NULL),
(49, 'Leaves of Grass', 'Walt Whitman', NULL, NULL),
(50, 'The Man Without Qualities', 'Robert Musil', NULL, NULL),
(51, 'The Magic Mountain', 'Thomas Mann', NULL, NULL),
(52, 'The Book of Disquiet', 'Fernando Pessoa', NULL, NULL),
(53, 'Hunger', 'Knut Hamsun', NULL, NULL),
(54, 'The Decameron', 'Giovanni Boccaccio', NULL, NULL),
(55, 'Dead Souls', 'Nikolai Gogol', NULL, NULL),
(56, 'Metamorphoses', 'Ovid', NULL, NULL),
(57, 'The Aeneid', 'Virgil', NULL, NULL),
(58, 'The Castle', 'Franz Kafka', NULL, NULL),
(59, 'Mahabharata', 'Anonymous', NULL, NULL),
(60, 'Wuthering Heights', 'Emily Brontë', NULL, NULL),
(61, 'Medea', 'Euripides', NULL, NULL),
(62, 'Gargantua and Pantagruel', 'François Rabelais', NULL, NULL),
(63, 'Franz Kafka: The Complete Stories', 'Franz Kafka', NULL, NULL),
(64, 'The Red and the Black', 'Stendhal', NULL, NULL),
(65, 'Père Goriot', 'Honoré de Balzac', NULL, NULL),
(66, 'Selected Stories of Anton Chekhov', 'Anton Chekhov', NULL, NULL),
(67, 'The Tin Drum', 'Günter Grass', NULL, NULL),
(68, 'Absalom, Absalom!', 'William Faulkner', NULL, NULL),
(69, 'Buddenbrooks: The Decline of a Family', 'Thomas Mann', NULL, NULL),
(70, 'Ramayana', 'Vālmīki', NULL, NULL),
(71, 'The Adventures of Huckleberry Finn', 'Mark Twain', NULL, NULL),
(72, 'Sons and Lovers', 'D.H. Lawrence', NULL, NULL),
(73, 'Demons', 'Fyodor Dostoevsky', NULL, NULL),
(74, 'Pedro Páramo', 'Juan Rulfo', NULL, NULL),
(75, 'Memoirs of Hadrian', 'Marguerite Yourcenar', NULL, NULL),
(76, 'The Book of Job', 'Anonymous', NULL, NULL),
(77, 'The Golden Notebook', 'Doris Lessing', NULL, NULL),
(78, 'Molloy / Malone Dies / The Unnamable', 'Samuel Beckett', NULL, NULL),
(79, 'مثنوی معنوی', 'Rumi', NULL, NULL),
(80, 'The Complete Essays', 'Michel de Montaigne', NULL, NULL),
(81, 'Jacques the Fatalist', 'Denis Diderot', NULL, NULL),
(82, 'The Life and Opinions of Tristram Shandy, Gentleman', 'Laurence Sterne', NULL, NULL),
(83, 'Season of Migration to the North', 'Tayeb Salih', NULL, NULL),
(84, 'The Tale of Genji', 'Murasaki Shikibu', NULL, NULL),
(85, 'Sentimental Education', 'Gustave Flaubert', NULL, NULL),
(86, 'أولاد حارتنا', 'Naguib Mahfouz', NULL, NULL),
(87, 'Independent People', 'Halldór Laxness', NULL, NULL),
(88, 'The Sound of the Mountain', 'Yasunari Kawabata', NULL, NULL),
(89, 'Diary of a Madman and Other Stories', 'Lu Xun', NULL, NULL),
(90, 'Zenos Conscience', 'Italo Svevo', NULL, NULL),
(91, 'Nostromo', 'Joseph Conrad', NULL, NULL),
(92, 'Romancero gitano', 'Federico García Lorca', NULL, NULL),
(93, 'Grande Sertão: Veredas', 'João Guimarães Rosa', NULL, NULL),
(94, 'History (La Storia, #1-2)', 'Elsa Morante', NULL, NULL),
(95, 'Poems of Paul Celan', 'Paul Celan', NULL, NULL),
(96, 'Berlin Alexanderplatz', 'Alfred Döblin', NULL, NULL),
(97, 'Njal\'s Saga', 'Unknown', NULL, NULL),
(98, 'The Recognition of Śakuntalā', 'Kālidāsa', NULL, NULL),
(99, 'The Orchard: The Bostan Of Saadi Of Shiraz', 'Saadi', NULL, NULL),
(100, 'The Poems Of Leopardi', 'Giacomo Leopardi', NULL, NULL);

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
