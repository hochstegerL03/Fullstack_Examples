CREATE TABLE books(
  bid INT PRIMARY KEY,
  title TEXT,
  image TEXT,
  year SMALLINT,
  pages SMALLINT,
  language TEXT
);
INSERT INTO books (bid, title, image, year, pages, language) VALUES (1,'Things Fall Apart','images/things-fall-apart.jpg','1958','209',
  'English'),
(2,'Fairy tales','images/fairy-tales.jpg','1836','784',
  'Danish'),
(3,'The Divine Comedy','images/the-divine-comedy.jpg','1315','928',
  'Italian'),
(4,'The Epic Of Gilgamesh','images/the-epic-of-gilgamesh.jpg','-1700','160',
  'Akkadian'),
(5,'The Book Of Job','images/the-book-of-job.jpg','-600','176',
  'Hebrew'),
(6,'One Thousand and One Nights','images/one-thousand-and-one-nights.jpg','1200','288',
  'Arabic'),
(7,'Njál''s Saga','images/njals-saga.jpg','1350','384',
  'Old Norse'),
(8,'Pride and Prejudice','images/pride-and-prejudice.jpg','1813','226',
  'English'),
(9,'Le Père Goriot','images/le-pere-goriot.jpg','1835','443',
  'French'),
(10,'Molloy, Malone Dies, The Unnamable, the trilogy','images/molloy-malone-dies-the-unnamable.jpg','1952','256',
  'French, English'),
(11,'The Decameron','images/the-decameron.jpg','1351','1024',
  'Italian'),
(12,'Ficciones','images/ficciones.jpg','1965','224',
  'Spanish'),
(13,'Wuthering Heights','images/wuthering-heights.jpg','1847','342',
  'English'),
(14,'The Stranger','images/l-etranger.jpg','1942','185',
  'French'),
(15,'Poems','images/poems-paul-celan.jpg','1952','320',
  'German'),
(16,'Journey to the End of the Night','images/voyage-au-bout-de-la-nuit.jpg','1932','505',
  'French'),
(17,'Don Quijote De La Mancha','images/don-quijote-de-la-mancha.jpg','1610','1056',
  'Spanish'),
(18,'The Canterbury Tales','images/the-canterbury-tales.jpg','1450','544',
  'English'),
(19,'Stories','images/stories-of-anton-chekhov.jpg','1886','194',
  'Russian'),
(20,'Nostromo','images/nostromo.jpg','1904','320',
  'English'),
(21,'Great Expectations','images/great-expectations.jpg','1861','194',
  'English'),
(22,'Jacques the Fatalist','images/jacques-the-fatalist.jpg','1796','596',
  'French'),
(23,'Berlin Alexanderplatz','images/berlin-alexanderplatz.jpg','1929','600',
  'German'),
(24,'Crime and Punishment','images/crime-and-punishment.jpg','1866','551',
  'Russian'),
(25,'The Idiot','images/the-idiot.jpg','1869','656',
  'Russian'),
(26,'The Possessed','images/the-possessed.jpg','1872','768',
  'Russian'),
(27,'The Brothers Karamazov','images/the-brothers-karamazov.jpg','1880','824',
  'Russian'),
(28,'Middlemarch','images/middlemarch.jpg','1871','800',
  'English'),
(29,'Invisible Man','images/invisible-man.jpg','1952','581',
  'English'),
(30,'Medea','images/medea.jpg','-431','104',
  'Greek'),
(31,'Absalom, Absalom!','images/absalom-absalom.jpg','1936','313',
  'English'),
(32,'The Sound and the Fury','images/the-sound-and-the-fury.jpg','1929','326',
  'English'),
(33,'Madame Bovary','images/madame-bovary.jpg','1857','528',
  'French'),
(34,'Sentimental Education','images/l-education-sentimentale.jpg','1869','606',
  'French'),
(35,'Gypsy Ballads','images/gypsy-ballads.jpg','1928','218',
  'Spanish'),
(36,'One Hundred Years of Solitude','images/one-hundred-years-of-solitude.jpg','1967','417',
  'Spanish'),
(37,'Love in the Time of Cholera','images/love-in-the-time-of-cholera.jpg','1985','368',
  'Spanish'),
(38,'Faust','images/faust.jpg','1832','158',
  'German'),
(39,'Dead Souls','images/dead-souls.jpg','1842','432',
  'Russian'),
(40,'The Tin Drum','images/the-tin-drum.jpg','1959','600',
  'German'),
(41,'The Devil to Pay in the Backlands','images/the-devil-to-pay-in-the-backlands.jpg','1956','494',
  'Portuguese'),
(42,'Hunger','images/hunger.jpg','1890','176',
  'Norwegian'),
(43,'The Old Man and the Sea','images/the-old-man-and-the-sea.jpg','1952','128',
  'English'),
(44,'Iliad','images/the-iliad-of-homer.jpg','-735','608',
  'Greek'),
(45,'Odyssey','images/the-odyssey-of-homer.jpg','-800','374',
  'Greek'),
(46,'A Doll''s House','images/a-Dolls-house.jpg','1879','68',
  'Norwegian'),
(47,'Ulysses','images/ulysses.jpg','1922','228',
  'English'),
(48,'Stories','images/stories-of-franz-kafka.jpg','1924','488',
  'German'),
(49,'The Trial','images/the-trial.jpg','1925','160',
  'German'),
(50,'The Castle','images/the-castle.jpg','1926','352',
  'German'),
(51,'The recognition of Shakuntala','images/the-recognition-of-shakuntala.jpg','150','147',
  'Sanskrit'),
(52,'The Sound of the Mountain','images/the-sound-of-the-mountain.jpg','1954','288',
  'Japanese'),
(53,'Zorba the Greek','images/zorba-the-greek.jpg','1946','368',
  'Greek'),
(54,'Sons and Lovers','images/sons-and-lovers.jpg','1913','432',
  'English'),
(55,'Independent People','images/independent-people.jpg','1934','470',
  'Icelandic'),
(56,'Poems','images/poems-giacomo-leopardi.jpg','1818','184',
  'Italian'),
(57,'The Golden Notebook','images/the-golden-notebook.jpg','1962','688',
  'English'),
(58,'Pippi Longstocking','images/pippi-longstocking.jpg','1945','160',
  'Swedish'),
(59,'Diary of a Madman','images/diary-of-a-madman.jpg','1918','389',
  'Chinese'),
(60,'Children of Gebelawi','images/children-of-gebelawi.jpg','1959','355',
  'Arabic'),
(61,'Buddenbrooks','images/buddenbrooks.jpg','1901','736',
  'German'),
(62,'The Magic Mountain','images/the-magic-mountain.jpg','1924','720',
  'German'),
(63,'Moby Dick','images/moby-dick.jpg','1851','378',
  'English'),
(64,'Essays','images/essais.jpg','1595','404',
  'French'),
(65,'History','images/history.jpg','1974','600',
  'Italian'),
(66,'Beloved','images/beloved.jpg','1987','321',
  'English'),
(67,'The Tale of Genji','images/the-tale-of-genji.jpg','1006','1360',
  'Japanese'),
(68,'The Man Without Qualities','images/the-man-without-qualities.jpg','1931','365',
  'German'),
(69,'Lolita','images/lolita.jpg','1955','317',
  'English'),
(70,'Nineteen Eighty-Four','images/nineteen-eighty-four.jpg','1949','272',
  'English'),
(71,'Metamorphoses','images/the-metamorphoses-of-ovid.jpg','100','576',
  'Classical Latin'),
(72,'The Book of Disquiet','images/the-book-of-disquiet.jpg','1928','272',
  'Portuguese'),
(73,'Tales','images/tales-and-poems-of-edgar-allan-poe.jpg','1950','842',
  'English'),
(74,'In Search of Lost Time','images/a-la-recherche-du-temps-perdu.jpg','1920','2408',
  'French'),
(75,'Gargantua and Pantagruel','images/gargantua-and-pantagruel.jpg','1533','623',
  'French'),
(76,'Pedro Páramo','images/pedro-paramo.jpg','1955','124',
  'Spanish'),
(77,'The Masnavi','images/the-masnavi.jpg','1236','438',
  'Persian'),
(78,'Midnight''s Children','images/midnights-children.jpg','1981','536',
  'English'),
(79,'Bostan','images/bostan.jpg','1257','298',
  'Persian'),
(80,'Season of Migration to the North','images/season-of-migration-to-the-north.jpg','1966','139',
  'Arabic'),
(81,'Blindness','images/blindness.jpg','1995','352',
  'Portuguese'),
(82,'Hamlet','images/hamlet.jpg','1603','432',
  'English'),
(83,'King Lear','images/king-lear.jpg','1608','384',
  'English'),
(84,'Othello','images/othello.jpg','1609','314',
  'English'),
(85,'Oedipus the King','images/oedipus-the-king.jpg','-430','88',
  'Greek'),
(86,'The Red and the Black','images/le-rouge-et-le-noir.jpg','1830','576',
  'French'),
(87,'The Life And Opinions of Tristram Shandy','images/the-life-and-opinions-of-tristram-shandy.jpg','1760','640',
  'English'),
(88,'Confessions of Zeno','images/confessions-of-zeno.jpg','1923','412',
  'Italian'),
(89,'Gulliver''s Travels','images/gullivers-travels.jpg','1726','178',
  'English'),
(90,'War and Peace','images/war-and-peace.jpg','1867','1296',
  'Russian'),
(91,'Anna Karenina','images/anna-karenina.jpg','1877','864',
  'Russian'),
(92,'The Death of Ivan Ilyich','images/the-death-of-ivan-ilyich.jpg','1886','92',
  'Russian'),
(93,'The Adventures of Huckleberry Finn','images/the-adventures-of-huckleberry-finn.jpg','1884','224',
  'English'),
(94,'Ramayana','images/ramayana.jpg','-450','152',
  'Sanskrit'),
(95,'The Aeneid','images/the-aeneid.jpg','-23','442',
  'Classical Latin'),
(96,'Mahabharata','images/the-mahab-harata.jpg','-700','276',
  'Sanskrit'),
(97,'Leaves of Grass','images/leaves-of-grass.jpg','1855','152',
  'English'),
(98,'Mrs Dalloway','images/mrs-dalloway.jpg','1925','216',
  'English'),
(99,'To the Lighthouse','images/to-the-lighthouse.jpg','1927','209',
  'English'),
(100,'Memoirs of Hadrian','images/memoirs-of-hadrian.jpg','1951','408',
  'French');
CREATE TABLE authors(
  aid INT PRIMARY KEY,
  name TEXT,
  country TEXT
);
CREATE TABLE books_authors(
  bid INT REFERENCES books(bid) ON UPDATE CASCADE ON DELETE CASCADE,
  aid INT REFERENCES authors(aid) ON UPDATE CASCADE ON DELETE CASCADE,
  PRIMARY KEY(bid,aid)
);
INSERT INTO authors (aid, name, country) VALUES (1, 'Chinua Achebe','Nigeria'),
(2, 'Hans Christian Andersen','Denmark'),
(3, 'Dante Alighieri','Italy'),
(4, 'Unknown','Sumer and Akkadian Empire'),
(5, 'Jane Austen','United Kingdom'),
(6, 'Honoré de Balzac','France'),
(7, 'Samuel Beckett','Republic of Ireland'),
(8, 'Giovanni Boccaccio','Italy'),
(9, 'Jorge Luis Borges','Argentina'),
(10, 'Emily Brontë','United Kingdom'),
(11, 'Albert Camus','Algeria, French Empire'),
(12, 'Paul Celan','Romania, France'),
(13, 'Louis-Ferdinand Céline','France'),
(14, 'Miguel de Cervantes','Spain'),
(15, 'Geoffrey Chaucer','England'),
(16, 'Anton Chekhov','Russia'),
(17, 'Joseph Conrad','United Kingdom'),
(18, 'Charles Dickens','United Kingdom'),
(19, 'Denis Diderot','France'),
(20, 'Alfred Döblin','Germany'),
(21, 'Fyodor Dostoevsky','Russia'),
(22, 'George Eliot','United Kingdom'),
(23, 'Ralph Ellison','United States'),
(24, 'Euripides','Greece'),
(25, 'William Faulkner','United States'),
(26, 'Gustave Flaubert','France'),
(27, 'Federico García Lorca','Spain'),
(28, 'Gabriel García Márquez','Colombia'),
(29, 'Johann Wolfgang von Goethe','Saxe-Weimar'),
(30, 'Nikolai Gogol','Russia'),
(31, 'Günter Grass','Germany'),
(32, 'João Guimarães Rosa','Brazil'),
(33, 'Knut Hamsun','Norway'),
(34, 'Ernest Hemingway','United States'),
(35, 'Homer','Greece'),
(36, 'Henrik Ibsen','Norway'),
(37, 'James Joyce','Irish Free State'),
(38, 'Franz Kafka','Czechoslovakia'),
(39, 'Kālidāsa','India'),
(40, 'Yasunari Kawabata','Japan'),
(41, 'Nikos Kazantzakis','Greece'),
(42, 'D. H. Lawrence','United Kingdom'),
(43, 'Halldór Laxness','Iceland'),
(44, 'Giacomo Leopardi','Italy'),
(45, 'Doris Lessing','United Kingdom'),
(46, 'Astrid Lindgren','Sweden'),
(47, 'Lu Xun','China'),
(48, 'Naguib Mahfouz','Egypt'),
(49, 'Thomas Mann','Germany'),
(50, 'Herman Melville','United States'),
(51, 'Michel de Montaigne','France'),
(52, 'Elsa Morante','Italy'),
(53, 'Toni Morrison','United States'),
(54, 'Murasaki Shikibu','Japan'),
(55, 'Robert Musil','Austria'),
(56, 'Vladimir Nabokov','Russia/United States'),
(57, 'George Orwell','United Kingdom'),
(58, 'Ovid','Roman Empire'),
(59, 'Fernando Pessoa','Portugal'),
(60, 'Edgar Allan Poe','United States'),
(61, 'Marcel Proust','France'),
(62, 'François Rabelais','France'),
(63, 'Juan Rulfo','Mexico'),
(64, 'Rumi','Sultanate of Rum'),
(65, 'Salman Rushdie','United Kingdom, India'),
(66, 'Saadi','Persia, Persian Empire'),
(67, 'Tayeb Salih','Sudan'),
(68, 'José Saramago','Portugal'),
(69, 'William Shakespeare','England'),
(70, 'Sophocles','Greece'),
(71, 'Stendhal','France'),
(72, 'Laurence Sterne','England'),
(73, 'Italo Svevo','Italy'),
(74, 'Jonathan Swift','Ireland'),
(75, 'Leo Tolstoy','Russia'),
(76, 'Mark Twain','United States'),
(77, 'Valmiki','India'),
(78, 'Virgil','Roman Empire'),
(79, 'Vyasa','India'),
(80, 'Walt Whitman','United States'),
(81, 'Virginia Woolf','United Kingdom'),
(82, 'Marguerite Yourcenar','France/Belgium');
INSERT INTO books_authors (bid, aid) VALUES (1,1),
(2,2),
(3,3),
(4,4),
(5,4),
(6,4),
(7,4),
(8,5),
(9,6),
(10,7),
(11,8),
(12,9),
(13,10),
(14,11),
(15,12),
(16,13),
(17,14),
(18,15),
(19,16),
(20,17),
(21,18),
(22,19),
(23,20),
(24,21),
(25,21),
(26,21),
(27,21),
(28,22),
(29,23),
(30,24),
(31,25),
(32,25),
(33,26),
(34,26),
(35,27),
(36,28),
(37,28),
(38,29),
(39,30),
(40,31),
(41,32),
(42,33),
(43,34),
(44,35),
(45,35),
(46,36),
(47,37),
(48,38),
(49,38),
(50,38),
(51,39),
(52,40),
(53,41),
(54,42),
(55,43),
(56,44),
(57,45),
(58,46),
(59,47),
(60,48),
(61,49),
(62,49),
(63,50),
(64,51),
(65,52),
(66,53),
(67,54),
(68,55),
(69,56),
(70,57),
(71,58),
(72,59),
(73,60),
(74,61),
(75,62),
(76,63),
(77,64),
(78,65),
(79,66),
(80,67),
(81,68),
(82,69),
(83,69),
(84,69),
(85,70),
(86,71),
(87,72),
(88,73),
(89,74),
(90,75),
(91,75),
(92,75),
(93,76),
(94,77),
(95,78),
(96,79),
(97,80),
(98,81),
(99,81),
(100,82);