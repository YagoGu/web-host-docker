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
(5, 'One Hundred Years of Solitude', 'Gabriel García Márquez', 'One Hundred Years of Solitude is a novel by Gabriel García Márquez, first published in 1967. The book tells the story of the Buendía family and their seven generations living in the fictional town of Macondo. It explores themes of family, love, magic, and the cyclical nature of time. The novel is considered a masterpiece of magical realism and has influenced many writers.', NULL),
(6, 'Anna Karenina', 'Leo Tolstoy', 'Anna Karenina is a novel by the Russian writer Leo Tolstoy, first published in 1877. The book tells the story of Anna, a married aristocrat who embarks on a passionate affair with a dashing cavalry officer, Count Vronsky. As Anna struggles to balance her love for Vronsky with her responsibilities as a wife and mother, she becomes increasingly isolated and vulnerable to the judgment and scrutiny of society. Tolstoys masterpiece is a rich and complex exploration of love, morality, and the human condition, and is widely regarded as one of the greatest novels ever written.', NULL),
(7, 'The Odyssey', 'Homer', 'The Odyssey is an epic poem written by the ancient Greek poet Homer, around the 8th century BCE. It tells the story of Odysseus, a hero of the Trojan War, who faces a series of obstacles on his journey home to Ithaca, including battles with monsters and the wrath of the gods. Along the way, he must also confront the betrayal of his wife Penelope and the disloyalty of his subjects. The Odyssey is a classic tale of adventure, heroism, and the struggle for survival, and is considered one of the foundational works of Western literature.', NULL),
(8, 'The Stranger', 'Albert Camus', 'The Stranger is a novel by Albert Camus, published in 1942. It tells the story of Meursault, a detached and emotionless French Algerian who kills an Arab man and faces a trial that ultimately exposes his lack of societal conformity and moral ambiguity. The novel explores themes of absurdity, existentialism, and the human condition, and has become a classic of modern literature.', NULL),
(9, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'The Brothers Karamazov is a novel by Russian author Fyodor Dostoevsky, first published in 1880. The story revolves around the lives of the Karamazov brothers: Dmitry, Ivan, and Alexei, and their dysfunctional family dynamic, complicated by themes of religion, morality, and existentialism. The novel is considered one of Dostoevskys greatest works and explores complex philosophical concepts while providing a vivid depiction of Russian society during the 19th century.', NULL),
(10, 'Great Expectations', 'Charles Dickens', 'Great Expectations is a classic novel by Charles Dickens, first published in 1861. The story follows Pip, a young orphan boy who dreams of becoming a gentleman and winning the heart of his unattainable love, Estella. Along the way, he encounters a colorful cast of characters, including the eccentric Miss Havisham and the convict Magwitch. Through Pips journey, the novel explores themes of social class, identity, and redemption, making it a timeless masterpiece of English literature.', NULL),
(11, 'Lolita', 'Vladimir Nabokov', 'Lolita is a novel by Vladimir Nabokov, published in 1955. It follows the story of a middle-aged literature professor who becomes obsessed with a 12-year-old girl named Dolores Haze, whom he nicknames Lolita. The novel explores themes of desire, power, and obsession, and has been the subject of much controversy due to its subject matter. Nabokovs writing style is known for its intricate wordplay and vivid imagery, making Lolita a challenging but rewarding read.', NULL),
(12, 'The Old Man and the Sea', 'Ernest Hemingway', 'The Old Man and the Sea is a short novel written by Ernest Hemingway. It tells the story of an aging fisherman named Santiago, who has gone 84 days without catching a fish. On the 85th day, he sets out alone in his small skiff to the Gulf Stream, where he hooks a giant marlin. The rest of the book is a battle between the old man and the fish as they struggle against each other and the forces of nature. Despite the old mans determination, he eventually loses the battle, but he returns to shore with a sense of accomplishment and renewed strength. The novel explores themes of perseverance, resilience, and the struggle against nature and oneself.', NULL),
(13, 'War and Peace', 'Leo Tolstoy', 'War and Peace is a novel by Leo Tolstoy that chronicles the history of the French invasion of Russia and the impact of the Napoleonic era on Tsarist society through the stories of five Russian aristocratic families. It is a sprawling epic that explores themes of love, war, power, and the struggle for personal and societal identity in the face of historical upheaval. The novel is famous for its intricate character development, philosophical insights, and vivid depictions of historical events. It is considered one of the greatest works of literature in the Western canon.', NULL),
(14, 'Don Quixote', 'Miguel de Cervantes Saavedra', 'Don Quixote is a novel by Spanish author Miguel de Cervantes. First published in 1605, the book tells the story of an aging gentleman who becomes so enamored with tales of chivalry and knights that he sets out on a quest to become a knight himself. Along with his loyal squire, Sancho Panza, Don Quixote embarks on a series of misadventures, often mistaking reality for fantasy. The book is celebrated for its humorous portrayal of Don Quixotes delusions and its commentary on the nature of reality and perception. It is considered a masterpiece of Western literature and has been widely translated and adapted into other forms of media.', NULL),
(15, 'The Iliad', 'Homer', 'The Iliad is an epic poem written by the ancient Greek poet Homer. It tells the story of the Trojan War, focusing on the fierce battles between the Greeks and the Trojans, and the heroic deeds of legendary warriors such as Achilles and Hector. The poem is also a meditation on the themes of honor, glory, and fate, and has been celebrated for its powerful portrayal of the human condition. The Iliad remains a seminal work of Western literature and continues to inspire readers with its timeless themes and vivid storytelling.', NULL),
(16, 'Madame Bovary', 'Gustave Flaubert', 'Madame Bovary is a novel by Gustave Flaubert, first published in 1856. The story follows Emma Bovary, a young woman who marries a dull country doctor and quickly becomes disillusioned with her life. She seeks passion and excitement through extramarital affairs and consumerism, but eventually, her actions lead to tragedy. Flauberts precise prose and psychological insight make Madame Bovary a masterpiece of realism and a landmark in the development of the modern novel.', NULL),
(17, 'The Trial', 'Franz Kafka', 'The Trial is a novel by Franz Kafka that tells the story of a man named Josef K. who is arrested and put on trial for a crime that is never revealed to him. As he navigates the opaque and bureaucratic legal system, he becomes increasingly desperate to prove his innocence, but ultimately succumbs to the overwhelming power of the court. The novel explores themes of guilt, justice, and the arbitrary nature of authority, and has been widely interpreted as a commentary on the dehumanizing effects of modern society.', NULL),
(18, 'The Divine Comedy', 'Dante Alighieri', 'The Divine Comedy is an epic poem by Italian writer Dante Alighieri, written in the early 14th century. It describes Dantes journey through Hell, Purgatory, and Heaven, guided by the poet Virgil and his beloved Beatrice. The poem is divided into three parts, each consisting of 33 cantos, with an additional introductory canto. The Divine Comedy is considered one of the greatest works of Western literature, and is renowned for its complex allegorical symbolism, vivid imagery, and exploration of moral and theological themes.', NULL),
(19, 'Moby-Dick or, the Whale', 'Herman Melville', 'Moby-Dick or, the Whale is a novel written by Herman Melville in 1851. The book follows the story of Ishmael, a sailor who joins the crew of the Pequod, a whaling ship captained by Ahab. Ahab is obsessed with finding and killing Moby Dick, a white sperm whale that had previously taken his leg. The novel explores themes of revenge, obsession, fate, and the relationship between man and nature. It is considered a classic of American literature and has been adapted into numerous films, plays, and other media.', NULL),
(20, 'King Lear', 'William Shakespeare', 'King Lear is a tragedy by William Shakespeare, believed to have been written between 1603 and 1606. The play tells the story of King Lear, who decides to divide his kingdom among his three daughters based on how much they profess to love him. However, his decision leads to chaos and ultimately his own downfall, as he realizes too late the true nature of his daughters and the consequences of his actions. The play explores themes of family, power, loyalty, betrayal, and the consequences of rash decisions.', NULL),
(21, 'Love in the Time of Cholera', 'Gabriel García Márquez', 'Love in the Time of Cholera is a novel by Gabriel García Márquez that explores the enduring power of love. Set in an unnamed city in Colombia during the late 1800s to early 1900s, the story follows the lives of Florentino Ariza and Fermina Daza, two young lovers separated by societal expectations and circumstances. Despite Fermina marrying another man, Dr. Juvenal Urbino, Florentino remains devoted to her and spends over 50 years waiting for his chance to win her back. The novel explores themes of love, aging, death, and the passage of time, all set against the backdrop of a cholera epidemic.', NULL),
(22, 'The Complete Fairy Tales', 'Hans Christian Andersen', 'The Complete Fairy Tales is a collection of stories by Hans Christian Andersen, including classics like The Little Mermaid and The Ugly Duckling. These tales explore themes of love, loss, and transformation through vivid characters and magical settings. With beautiful illustrations and timeless messages, this book has captivated readers of all ages for generations.', NULL),
(23, 'Mrs. Dalloway', 'Virginia Woolf', 'Mrs. Dalloway is a novel written by Virginia Woolf that explores a day in the life of Clarissa Dalloway, an upper-class woman in post-World War I London. The narrative jumps between Clarissas thoughts and those of other characters, including her husband, her former lover, and a shell-shocked veteran. The novel examines themes of social class, gender roles, mental health, and the effects of war on society. Woolfs use of stream-of-consciousness narration and shifting perspectives make Mrs. Dalloway a landmark of modernist literature.', NULL),
(24, 'Othello', 'William Shakespeare', 'Othello is a tragedy written by William Shakespeare around 1603. The play tells the story of Othello, a Moorish general in the Venetian army, and his downfall as a result of jealousy and manipulation by his envious and deceitful ensign, Iago. Othellos marriage to Desdemona, a white Venetian woman, is also a source of conflict and controversy throughout the play. Othello explores themes of love, jealousy, racism, and betrayal, and is considered one of Shakespeares greatest works.', NULL),
(25, 'The Arabian Nights', 'Anonymous', 'The Arabian Nights, also known as One Thousand and One Nights, is a collection of Middle Eastern and South Asian folk tales compiled in Arabic during the Islamic Golden Age. The tales feature a wide range of characters and themes, including magic, love, betrayal, and adventure. The most famous stories within the collection include Aladdin Wonderful Lamp, Ali Baba and the Forty Thieves, and Sindbad the Sailor The tales have been translated into many languages and adapted into various forms of media, including movies, television shows, and video games.', NULL),
(26, 'Ulysses', 'James Joyce', 'Ulysses is a complex and experimental novel by James Joyce, first published in 1922. Set in Dublin, Ireland, on June 16, 1904, it follows the day in the life of Leopold Bloom and Stephen Dedalus, as they go about their daily business and encounter a variety of characters and situations. The novel employs a range of literary techniques, including stream of consciousness narration and non-linear storytelling, and explores themes such as identity, sexuality, and the nature of consciousness. Ulysses is considered one of the most important and influential works of modernist literature.', NULL),
(27, 'The Sound and the Fury', 'William Faulkner', 'The Sound and the Fury is a novel by William Faulkner, first published in 1929. It is known for its unconventional narrative structure and complex themes, including the decline of the South, the dissolution of the Compson family, and the impact of time on human experience. The book is divided into four sections, each narrated by a different character, and explores the inner lives of the Compson family members, particularly their obsession with their own past and their inability to move forward.', NULL),
(28, 'The Canterbury Tales', 'Nevill Coghill', 'The Canterbury Tales is a collection of stories written in Middle English by Geoffrey Chaucer in the late 14th century. The book tells the stories of a diverse group of pilgrims who travel from London to the shrine of Saint Thomas Becket at Canterbury Cathedral. Each pilgrim tells a tale, and these stories range from bawdy and comedic to tragic and moralistic. Through these tales, Chaucer provides a vivid picture of medieval life, customs, and values. The Canterbury Tales is considered one of the greatest works of English literature and a cornerstone of the Western literary canon.', NULL),
(29, 'Gulliver\'s Travels: Travels into Several Remote Nations of the World.', 'Jonathan Swift', 'Gullivers Travels is a satirical novel by Jonathan Swift, first published in 1726. The book follows the travels of Lemuel Gulliver to four fictional nations: Lilliput, Brobdingnag, Laputa, and the land of the Houyhnhnms. Through Gullivers encounters with the inhabitants of these lands, Swift offers a critical commentary on human nature and society, as well as on politics, religion, and science. The novel has remained a classic of English literature, famous for its wit, humor, and imaginative world-building.', NULL),
(30, 'Oedipus Rex (The Theban Plays, #1)', 'Sophocles', 'Oedipus Rex, the first of the Theban Plays, is a tragedy written by Sophocles around 429 BC. The play tells the story of Oedipus, a man who unknowingly kills his father and marries his mother, fulfilling a prophecy that he had tried to avoid. As he seeks to uncover the truth about his past and solve the mystery of a plague ravaging his city, Oedipus is ultimately brought to a tragic and devastating realization of his own fate. The play explores themes of fate, free will, and the consequences of ones actions, and has had a profound impact on Western literature and thought.', NULL),
(31, 'The Idiot', 'Fyodor Dostoevsky', 'The Idiot is a novel written by Russian author Fyodor Dostoevsky. It tells the story of Prince Myshkin, a kind and compassionate man who returns to St. Petersburg after being treated for epilepsy in Switzerland. He becomes entangled in a love triangle with two women, Nastasya Filippovna and Aglaya Yepanchin, as he navigates the complex and often corrupt social hierarchy of 19th century Russia. The novel explores themes of morality, love, and the struggle for personal identity in a society that values wealth and status above all else.', NULL),
(32, 'Swann’s Way', 'Marcel Proust', 'Swanns Way is the first volume of Marcel Prousts literary masterpiece, In Search of Lost Time. Published in 1913, it follows the narrators memories of his childhood and his encounters with the aristocratic Swann and his lover, Odette. Through introspection and poetic prose, Proust explores themes of memory, time, love, and societal conventions in early 20th-century France. The books vivid descriptions and complex characters have made it a cornerstone of modern literature.', NULL),
(33, 'Pippi Longstocking (Pippi Långstrump, #1)', 'Astrid Lindgren', '
Pippi Longstocking is a beloved childrens book written by Swedish author Astrid Lindgren. It tells the story of a young girl with red pigtails, superhuman strength, and a wild imagination who lives in a house called Villa Villekulla with her pet monkey and horse. Pippis quirky adventures, her unconventional outlook on life, and her strong sense of justice make her an endearing character for readers of all ages. The book has been translated into over 70 languages and has been adapted into numerous TV series, films, and stage productions.', NULL),
(34, 'The Collected Tales of Edgar Allan Poe', 'Edgar Allan Poe', 'The Collected Tales of Edgar Allan Poe is a compilation of short stories and poems written by the famous American author. The book features Poes renowned works, including The Tell-Tale Heart, The Fall of the House of Usher, and The Raven. His tales often delve into themes of horror, mystery, and the macabre, drawing readers into his dark and atmospheric worlds. The collection showcases Poes exceptional writing style, known for its intricate language and vivid imagery, making it a timeless classic in the literary world.', NULL),
(35, 'To the Lighthouse', 'Virginia Woolf', 'To the Lighthouse is a novel by Virginia Woolf that explores the inner lives and relationships of a family over the course of several years. Set in early 20th century England, the book uses stream-of-consciousness narration to delve into the characters thoughts and emotions as they confront the challenges of daily life and the shifting social norms of the time. With its experimental style and emphasis on subjective experience, To the Lighthouse is a landmark of modernist literature and a poignant meditation on the complexities of human connection', NULL),
(36, 'Faust, First Part', 'Johann Wolfgang von Goethe', 'Faust, First Part is a tragic play written by Johann Wolfgang von Goethe. The story follows the character of Faust, a disillusioned scholar who sells his soul to the devil in exchange for unlimited knowledge and worldly pleasures. Faust becomes infatuated with a young woman named Gretchen, and his pact with the devil leads to tragic consequences for both of them. The play explores themes of temptation, redemption, and the consequences of unchecked ambition.', NULL),
(37, 'Beloved', 'Toni Morrison', 'Beloved is a novel by Toni Morrison that tells the story of Sethe, a former slave who escaped to Ohio with her children but is haunted by the memory of her baby daughter whom she killed to prevent her from being recaptured. Sethes house is then visited by a mysterious young woman named Beloved, who may be the embodiment of her deceased daughter. The novel explores themes of slavery, trauma, memory, and the search for identity and freedom. Morrisons powerful prose and vivid imagery make Beloved a haunting and unforgettable reading experience.', NULL),
(38, 'Blindness', 'José Saramago', '
Blindness is a novel written by Portuguese author José Saramago. The story depicts a sudden epidemic of blindness that spreads throughout an unnamed city. The protagonist, an ophthalmologists wife, is one of the few who does not go blind and becomes the guide for a group of blind people. The novel explores the psychological and social consequences of the epidemic, including the breakdown of social norms, the struggle for survival, and the loss of individuality. Saramagos unique writing style, which includes long sentences and lack of punctuation, adds to the chaotic and disorienting atmosphere of the story.', NULL),
(39, 'Things Fall Apart (The African Trilogy, #1)', 'Chinua Achebe', 'Things Fall Apart is the first book in Chinua Achebes African Trilogy, which tells the story of an Igbo warrior named Okonkwo and his life before and after the arrival of European colonizers in Nigeria. The novel portrays the clash between traditional Igbo culture and the forces of colonialism, leading to Okonkwos downfall and the tragic disintegration of his community. Through vivid characters and evocative language, Achebe explores themes of cultural identity, imperialism, and the impact of change on individual and collective lives.', NULL),
(40, 'Ficciones', 'Jorge Luis Borges', 'Ficciones is a collection of short stories written by Jorge Luis Borges, considered one of the most influential writers of the 20th century. The stories are characterized by their intricate structure, labyrinthine plots, and philosophical themes that explore concepts such as time, identity, and reality. Borges often blurs the line between fact and fiction, challenging the readers perception of what is real and what is imagined.', NULL),
(41, 'Zorba the Greek', 'Nikos Kazantzakis', 'Zorba the Greek is a novel by Nikos Kazantzakis that tells the story of a young, intellectual man who leaves his home in Crete to manage a mine on a remote Greek island. There, he meets a charismatic and free-spirited man named Zorba, who teaches him to embrace lifes pleasures and live in the moment. The novel delves into themes of love, freedom, and the clash between traditional and modern ways of life in Greece. It is a powerful exploration of the human spirit and the pursuit of happiness.', NULL),
(42, 'The Death of Ivan Ilych', 'Leo Tolstoy', 'The Death of Ivan Ilych is a novella by Leo Tolstoy that tells the story of a high court judge who becomes terminally ill and confronts the inevitability of his own mortality. Ivan Ilych had always lived a conventional and self-satisfied life, but as he faces his imminent death, he comes to realize the emptiness of his existence and the importance of human compassion and understanding. The novella is a powerful exploration of the human condition, the meaning of life, and the nature of suffering.', NULL),
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
