--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: packages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.packages (
    bez text NOT NULL,
    discount smallint,
    valid_from date NOT NULL,
    valid_to date NOT NULL,
    bild text,
    CONSTRAINT packages_discount_check CHECK ((discount > 0))
);


ALTER TABLE public.packages OWNER TO postgres;

--
-- Name: packages_sights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.packages_sights (
    id integer NOT NULL,
    bez text NOT NULL
);


ALTER TABLE public.packages_sights OWNER TO postgres;

--
-- Name: sights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sights (
    id integer NOT NULL,
    title text NOT NULL,
    image text NOT NULL,
    admission numeric(5,2),
    description text NOT NULL,
    rating integer,
    date_rated date,
    CONSTRAINT sights_title_check CHECK ((length(title) > 5))
);


ALTER TABLE public.sights OWNER TO postgres;

--
-- Name: sights_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sights_id_seq OWNER TO postgres;

--
-- Name: sights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sights_id_seq OWNED BY public.sights.id;


--
-- Name: sights id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sights ALTER COLUMN id SET DEFAULT nextval('public.sights_id_seq'::regclass);


--
-- Data for Name: packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.packages (bez, discount, valid_from, valid_to, bild) VALUES ('Spring in Vienna', 15, '2022-03-28', '2022-06-10', NULL);
INSERT INTO public.packages (bez, discount, valid_from, valid_to, bild) VALUES ('Young and Free', 25, '2022-03-01', '2022-08-31', NULL);
INSERT INTO public.packages (bez, discount, valid_from, valid_to, bild) VALUES ('Only the Best, not the Rest', 10, '2022-01-01', '2022-12-31', NULL);


--
-- Data for Name: packages_sights; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.packages_sights (id, bez) VALUES (38, 'Spring in Vienna');
INSERT INTO public.packages_sights (id, bez) VALUES (25, 'Spring in Vienna');
INSERT INTO public.packages_sights (id, bez) VALUES (32, 'Spring in Vienna');
INSERT INTO public.packages_sights (id, bez) VALUES (29, 'Spring in Vienna');
INSERT INTO public.packages_sights (id, bez) VALUES (30, 'Spring in Vienna');
INSERT INTO public.packages_sights (id, bez) VALUES (17, 'Only the Best, not the Rest');
INSERT INTO public.packages_sights (id, bez) VALUES (12, 'Only the Best, not the Rest');
INSERT INTO public.packages_sights (id, bez) VALUES (4, 'Only the Best, not the Rest');
INSERT INTO public.packages_sights (id, bez) VALUES (28, 'Only the Best, not the Rest');
INSERT INTO public.packages_sights (id, bez) VALUES (29, 'Only the Best, not the Rest');
INSERT INTO public.packages_sights (id, bez) VALUES (40, 'Only the Best, not the Rest');
INSERT INTO public.packages_sights (id, bez) VALUES (12, 'Young and Free');
INSERT INTO public.packages_sights (id, bez) VALUES (13, 'Young and Free');
INSERT INTO public.packages_sights (id, bez) VALUES (14, 'Young and Free');
INSERT INTO public.packages_sights (id, bez) VALUES (22, 'Young and Free');


--
-- Data for Name: sights; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (3, 'Ankeruhr', '/images/a/50160-ankeruhr-jugendstil.jpg', 32.00, 'Die Ankeruhr ist eigentlich eine Brücke und verbindet die zwei Gebäudeteile des Anker-Hofes. Der Jugendstilmaler Franz Matsch hat die Uhr entworfen.Sie wurde 1911 - 1914 errichtet. Im Lauf von zwölf Stunden laufen zwölf Figuren bzw. Figurenpaare aus der Geschichte Wiens über die Brücke. Um 12 Uhr mittags paradieren bei Musikbegleitung alle Figuren. Im Advent erklingen täglich Weihnachtslieder um 17 und 18 Uhr.', 4, '2023-02-10');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (4, 'Augarten Wien', '/images/a/porzellanmuseum-im-augarten-porzellanmanufaktur-schloss-augarten.jpg', 8.00, '1718 gegründet, ist die Wiener Porzellanmanufaktur die zweitälteste Europas. Heute wie damals wird Porzellan von Hand gefertigt und bemalt. Somit wird jedes Stück zum Unikat.', 1, '2022-02-15');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (5, 'Albertina modern', '/images/a/kuenstlerhaus-albertina-modern-frontansicht.jpg', 5.00, 'Wien hat seit 2020 ein neues Museum für moderne und zeitgenössische Kunst. Und was für eines: Die Albertina modern bespielt als Dependance der weltberühmten Albertina rund 2.500 m² im rundumerneuerten Künstlerhaus. Die wichtigste Sammlung österreichischer Kunst nach 1945, die Sammlung Essl sowie die Sammlung Jablonka bilden das Fundament des neuen Kunst-Hot-Spots. Es wartet ein Kunstmuseum der Superlative.', 1, '2022-01-30');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (6, 'Architekturzentrum Wien', '/images/a/aussenansicht-architekturzentrum-wien-az-w.jpg', 24.00, 'Das Architekturzentrum Wien (Az W) ist das einzige Architekturmuseum Österreichs. Es ist ein Ort der Wissensvermittlung, hier wird aber auch wissenschaftlich geforscht. Die zentrale Frage des Az W lautet: Was kann Architektur?', 3, '2021-11-03');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (7, 'Augustinerkirche', '/images/a/augustinerkirche-neu-2014.jpg', 26.00, 'In der Hofpfarrkirche St. Augustin fanden zahlreiche Trauungen des Kaiserhauses statt. Hier, am Josefsplatz, heiratete Maria Theresia Franz Stefan von Lothringen, Kaiser Franz Joseph seine Sisi, Kronprinz Rudolf Prinzessin Stephanie und der Kaiser der Franzosen, Napoleon, seine Marie Louise.', 4, '2022-03-15');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (8, 'Burgtheater', '/images/b/40760-panorama-burgtheater-stephansdom.jpg', 33.00, 'Das Burgtheater ist die wichtigste Schauspielbühne Österreichs und das größte Sprechtheater Europas, das Tradition, Vielfalt und Fortgang verbindet. Es war eine Institution von Rang, lange bevor es das repräsentative Gebäude am Ring bezog. Vor rund 250 Jahren hatte man einen an die Hofburg angrenzenden Ballsall als Theater umfunktioniert.', 2, '2022-10-02');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (9, 'Belvedere - Schloss und Museum', '/images/b/50696-oberes-belvedere-belvedere-schlosspark.jpg', 45.00, 'Das Belvedere ist nicht nur ein prachtvolles Barockschloss, sondern beherbergt auch eine der wertvollsten Kunstsammlungen Österreichs – mit Hauptwerken von Gustav Klimt, Egon Schiele und Oskar Kokoschka.', 5, '2021-11-28');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (10, 'Beethoven in Wien', '/images/b/beethoven-denkmal-beethovenplatz.jpg', 43.00, '35 Jahre lang war Wien Lebensmittelpunkt von Ludwig van Beethoven. Die Spuren des Komponisten sind vielfältig: ein großes Beethoven Museum, Wohn- und Gedenkstätten, Orte seiner Triumphe und Verzweiflung, Denkmäler und Klimts Beethovenfries - bis hin zum Beethoven-Heurigen.', 4, '2021-04-29');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (11, 'Bestattungsmuseum', '/images/b/bestattungsmuseum-zentralfriedhof.jpg', 41.00, 'Das Bestattungsmuseum am Wiener Zentralfriedhof gibt Einblicke in die Bestattungs- und Friedhofskultur der vergangenen Jahrhunderte. Interessant, morbid und herrlich skurril. Nicht versäumen: die vor schwarzem Humor triefenden Merchandising-Artikel im Museumsshop.', 4, '2021-12-02');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (12, 'Dritte Mann Museum', '/images/d/50987-dritte-mann-museum.jpg', 8.00, 'Das Dritte Mann Museum ist Anlaufstelle für Filminteressierte und Türöffner zur Wiener Nachkriegs-Geschichte. Neben der umfangreichen Sammlung an Originalexponaten über den 1948 in Wien gedrehten Filmklassiker "Der dritte Mann" beschäftigt sich eine ausführliche Dokumentation mit dem historischen Hintergrund des Films und zeigt Originale aus der Besatzungszeit in Wien (1945-1955).', 2, '2022-12-12');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (13, 'Dokumentationsarchiv', '/images/d/doew-1-.jpg', 0.00, 'Das Dokumentationsarchiv des österreichischen Widerstandes (DÖW) beschäftigt sich mit der grausamen NS-Vergangenheit.', 1, '2022-05-04');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (14, 'Donauturm', '/images/d/donauturm-2018-aussenaufnahme.jpg', 46.00, 'Der 360-Grad-Rundumblick über Wien ist atemberaubend. Frisch saniert präsentiert sich der Donauturm in neuem Glanz. Besser gesagt in altem Glanz. Das sich um die eigene Achse drehende Turmrestaurant und das Turmcafé in 170 Metern Höhe wurden in den Stil der 1960er-Jahre zurückversetzt. – Modern interpretiert natürlich und technisch auf den neuesten Stand gebracht. 1964 wurde der Donauturm anlässlich der Wiener Gartenschau errichtet.', 2, '2021-11-09');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (15, 'Ephesos Museum', '/images/e/ephesos-museum-neu-2014.jpg', 2.00, 'Größe und Glanz des antiken Ephesos (Türkei) werden inmitten des jüngsten Teils der Hofburg offenbar – bei einer Zeitreise voller Kontraste.', 3, '2022-05-27');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (16, 'Schloss Esterházy', '/images/e/schloss-esterházy-regionalpartner-2022.jpg', 37.00, 'Die Esterházy Kulturangebote im Burgenland bieten das ganze Jahr spannende Erlebnisse: vom maßgeschneiderten Ausflugsprogramm bis zur Open-Air-Oper im Steinbruch St. Margarethen oder einem Besuch beim Herbstgold Festival in Eisenstadt.', 2, '2022-12-11');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (17, 'Ernst Fuchs-Museum', '/images/f/50274-ernst-fuchs-museum.jpg', 37.00, 'Otto Wagner hat die aufwendig gestaltete weiße Villa im Grünen für sich und seine "Göttergattin" Louise 1886 bis 1888 gebaut. Der 2015 verstorbene Maler Ernst Fuchs, Hauptvertreter des Wiener Phantastischen Realismus, hat die Villa etwas verändert und Besuchern zugänglich gemacht.', 1, '2022-12-26');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (18, 'Feuerwehrmuseum', '/images/f/feuerwehrmuseum.jpg', 10.00, 'Die Zentrale der Wiener Berufsfeuerwehr am Hof beherbergt auch das spannende Feuerwehrmuseum.', 4, '2022-10-22');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (19, 'Sigmund Freud Museum', '/images/f/sigmund-freud-museum-2020.jpg', 42.00, 'Wiens berühmteste Adresse hat 2020 nach 18 Monaten Sanierungs- und Umbauphase wieder geöffnet. Sigmund Freuds Lebens- und Schaffensräume werden im frisch renovierten Museum zum Ausstellungsobjekt ernannt.', 3, '2022-05-08');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (20, 'Viktor Frankl Museum', '/images/f/wien-karte-viktor-frankl-museum.jpg', 46.00, 'Dem weltweit bekannten Begründer der Logotherapie und Existenzanalyse Viktor E. Frankl ist ein Museum im 9. Bezirk gewidmet.', 1, '2022-09-13');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (21, 'Friedhof St. Marx', '/images/f/friedhof-st-marx-grab.jpg', 1.00, '1791 wurde Wolfgang Amadeus Mozart hier in einem nicht gekennzeichneten Grab beigesetzt; das Grabdenkmal stammt aus späterer Zeit.', 2, '2022-08-09');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (22, 'Österreichisches Filmmuseum', '/images/f/oesterreichisches-filmmuseum-foyer.jpg', 46.00, 'Das Österreichische Filmmuseum in der Albertina, an der Südspitze der Hofburg, zeigt in seinem Kino Retrospektiven und Einzelpräsentationen auf der Kinoleinwand. Heimische und internationale Filmemacher, Vorträge und eine Bibliothek lassen die Herzen von Filmliebhabern höher schlagen.', 1, '2022-09-06');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (23, 'Foltermuseum', '/images/f/foltermuseum-wien.jpg', 22.00, 'Aufklärung und Information über die dunklen Seiten der Menschheitsgeschichte bietet das "Foltermuseum". Mit anschaulichen und bedrückend eindringlichen Exponaten.', 5, '2023-02-14');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (24, 'Globen- und Esperantomuseum', '/images/g/globenmuseum.jpg', 24.00, 'Im restaurierten Palais Mollard erwarten Sie das einzige Globenmuseum der Welt sowie das Esperantomuseum. Das einzigartige Globenmuseum, das unweit der Hofburg im Palais Mollard untergebracht ist, präsentiert 240 Erd- und Himmelsgloben, Mond- und Marsgloben im Original.', 5, '2021-06-29');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (25, 'Die Gloriette', '/images/g/gloriette.jpg', 18.00, 'Erbaut wurde die Gloriette 1775. Daran erinnert heute noch die Inschrift des Mittelteils: "JOSEPHO II. AUGUSTO ET MARIA THERESIA IMPERANTIB. MDCCLXXV" (Unter der Regierung von Kaiser Joseph und Kaiserin Maria Theresia errichtet 1775). Damals wusste man schöne Ausblicke zu schätzen - und hat eine 20 Meter hohe Aussichts-Terrasse geschaffen (nur über eine Wendeltreppe zugänglich). Unser Tipp: Fotoapparat nicht vergessen!', 4, '2021-07-21');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (26, 'Josephinum', '/images/j/ausstellungsansicht-josephinum.jpg', 34.00, '1785 wurde die medizinisch-chirurgische Akademie von Kaiser Joseph II. gegründet, um Ärzte und Hebammen für den zivilen und militärischen Bereich nach einem neuen Modell auszubilden. Von 1784 bis 1788 wurden insgesamt 1192 Wachsmodelle in Florenz hergestellt, mühsam nach Wien transportiert und in sieben Räumen in Vitrinen aus Rosenholz und venezianischem Glas ausgestellt. Zur Erläuterung waren Beschreibungen in Italienisch und Deutsch beigelegt. Heute ist die Sammlung in sechs Räumen des Josephinums untergebracht.', 5, '2023-01-07');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (27, 'Museum Judenplatz', '/images/j/museum-judenplatz-c-nafez-rerhuf.jpg', 35.00, 'Der Judenplatz gilt als einzigartiger Ort der Erinnerung: Er vereint Rachel Whitereads Mahnmal mit den Ausgrabungen der mittelalterlichen Synagoge und einem Museum zum mittelalterlichen Judentum zu einer Einheit des Gedenkens.', 1, '2023-02-25');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (28, 'Jüdisches Museum', '/images/j/juedisches-museum-wien-palais-eskeles-dorotheergasse.jpg', 19.00, 'Das Jüdische Museum in der Dorotheergasse gibt einen Überblick über die Geschichte und Gegenwart der Jüdinnen und Juden in Wien - mit einer Dauerausstellung, spannenden Wechselausstellungen und einem Schaudepot.', 4, '2021-04-20');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (29, 'Kaiserappartements', '/images/k/kaiserappartements-neu-1-.jpg', 25.00, 'In den Kaiserappartements in der Wiener Hofburg kann man die privaten und offiziellen Gemächer von Kaiser Franz Joseph und Kaiserin Elisabeth erkunden. Die Wiener Hofburg diente bis zum Ende der Monarchie 1918 als Wohn- und Arbeitsstätte der kaiserlichen Familie.', 1, '2022-02-10');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (30, 'Karlskirche', '/images/k/50869-karlskirche-karlsplatz.jpg', 29.00, '1739 von seinem Sohn Joseph Emanuel Fischer von Erlach vollendet, erfolgte der Bau auf Grund eines Gelübdes von Kaiser Karl VI. während einer Pestepidemie. Geweiht ist die Kirche dem Namenspatron des Habsburgerkaisers, dem Hl. Karl Borromäus: Das kleine Museo Borromeo stellt unter anderem Reisekleider des Mailänder Bischofs aus.', 2, '2022-09-07');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (31, 'Kirche am Steinhof', '/images/k/kirche-am-steinhof-50230.jpg', 11.00, 'Die 1904 bis 1907 erbaute Kirche zum Hl. Leopold am Steinhof ist ein architektonisches Meisterwerk Otto Wagners und der erste Kirchenbau der Moderne in Europa.', 5, '2023-02-17');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (32, 'Klimt-Villa', '/images/k/klimt-villa-nordfassade.jpg', 37.00, 'Von 1911 bis zu seinem Tod 1918 benutzte Gustav Klimt eine Villa im 13. Wiener Bezirk als Atelier. Dieses wurde revitalisiert und wieder der Öffentlichkeit zugänglich gemacht.', 2, '2022-12-05');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (33, 'Kunstkammer Wien', '/images/k/kunstkammer-saliera-benvenuto-cellini.jpg', 36.00, 'Mehr als 2.100 wertvolle Objekte, die von den Habsburgern über Jahrhunderte gesammelt wurden, sind in der Kunstkammer Wien zu sehen, eine der bedeutendsten Kunstkammern der Welt', 4, '2023-01-03');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (34, 'Prunksaal der Nationalbibliothek', '/images/n/prunksaal-nationalbibliothek-3-.jpg', 21.00, 'Der Prunksaal, das Herz der Österreichischen Nationalbibliothek, zählt zu den schönsten Bibliothekssälen der Welt. Sie ist die größte Barock-Bibliothek Europas.', 1, '2021-11-28');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (35, 'Naturhistorisches Museum Wien', '/images/n/50836-naturhistorisches-museum-wien-nhm-dinosaurier.jpg', 10.00, 'Das Naturhistorische Museum Wien zählt mit seinen 30 Millionen Sammlungsobjekten zu den besten der Welt: Highlights wie die Venus von Willendorf, die riesige Meteoritensammlung, Präparate von ausgestorbenen Tieren, Modelle furchteinflößender Dinosaurier und ein digitales Planetarium locken jährlich die Besucher ins Haus am Ring.', 4, '2022-06-13');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (36, 'Wiener Rathaus', '/images/r/40618-rathaus.jpg', 15.00, 'Das von 1872 bis 1883 von Friedrich von Schmidt, vorher Dombaumeister in Köln, erbaute Wiener Rathaus ist der bedeutendste nichtkirchliche Bau Wiens im neugotischen Stil.', 3, '2022-05-14');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (37, 'Die Wiener Ringstraße', '/images/r/40645-blick-auf-die-ringstrasse-strassenbahn-universitaet.jpg', 30.00, 'Die Wiener Ringstraße ist 5,3 Kilometer lang. Lang genug, um zahlreichen monumentalen Gebäuden Platz zu geben, die während des Historismus in den 1860er bis 1890er Jahren erbaut wurden. Die dort errichteten Bauten – von Staatsoper bis zum Kunsthistorischen Museum – gehören heute zu den wichtigsten Sehenswürdigkeiten Wiens.', 4, '2022-02-01');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (38, 'Wiener Riesenrad', '/images/r/40882-riesenrad-prater-fruehling.jpg', 13.00, 'Das Riesenrad im Wiener Prater ist eines der Wahrzeichen der Stadt. Aus fast 65 Metern Höhe hat man einen atemberaubenden Blick über die Donaumetropole.', 1, '2021-05-30');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (39, 'Römermuseum am Hohen Markt', '/images/r/roemermuseum-innenaufnahme-1-.jpg', 16.00, 'Ein Zeitreise, zurück ins Wien der Antike, bietet das Römermuseum am Hohen Markt. Neueste Technologien geben hier einen umfassenden Einblick in den Alltag des ehemaligen römischen Legionslagers sowie der Lagervor- und der Zivilstadt "Vindobona".', 4, '2021-04-14');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (40, 'Wagner Stadtbahn-Pavillons', '/images/w/50239-otto-wagner-stadtbahn-pavillon.jpg', 41.00, 'Vor 100 Jahren wurde die Wiener Stadtbahn eröffnet. Architektur und Design stammen von Otto Wagner, dem wichtigsten österreichischen Architekten der Jahrhundertwende.', 2, '2021-05-15');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (41, 'Werkbundsiedlung', '/images/w/50715-sozialer-wohnbau-werkbundsiedlung-jagicgasse.jpg', 17.00, 'Die Werkbundsiedlung vereint die großen Architekten der Pionierzeit der Moderne wie kein anderer Ort in Wien. Adolf Loos hat für die Musterhaussiedlung Pläne entworfen, aber auch Richard Neutra, Josef Frank, Clemens Holzmeister und Margarete Schütte-Lihotzky.', 2, '2021-03-11');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (42, 'Ein Museum im Waschsalon', '/images/w/50719-gemeindebau-karl-marx-hof-aussenansicht-innenhof-park-baeume.jpg', 5.00, '"Das Rote Wien im Waschsalon" beschäftigt sich mit der von der Sozialdemokratie geprägten Geschichte der Stadt Wien.', 3, '2022-04-28');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (43, 'Wotrubakirche', '/images/w/50890-wotruba-kirche-kirche-zur-heiligsten-dreifaltigkeit.jpg', 14.00, 'Die Kirche auf dem Sankt-Georgen-Berg am Rand des Wienerwaldes wurde 1974 bis 1976 nach dem Entwurf des österreichischen Bildhauers Fritz Wotruba (1907- 1975) erbaut.', 3, '2022-12-07');
INSERT INTO public.sights (id, title, image, admission, description, rating, date_rated) VALUES (2, 'Albertina', '/images/a/50731-albertina-aussenansicht.jpg', 26.00, 'Die Gemäldegalerie im von Theophil Hansen errichteten Gebäude am Wiener Schillerplatz umfasst herausragende Werke alter Meister aus mehreren Jahrhunderten Kunstgeschichte.', 2, '2021-11-07');


--
-- Name: sights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sights_id_seq', 43, true);


--
-- Name: packages packages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.packages
    ADD CONSTRAINT packages_pkey PRIMARY KEY (bez);


--
-- Name: packages_sights packages_sights_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.packages_sights
    ADD CONSTRAINT packages_sights_pkey PRIMARY KEY (id, bez);


--
-- Name: sights sights_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sights
    ADD CONSTRAINT sights_pkey PRIMARY KEY (id);


--
-- Name: packages_sights  ; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.packages_sights
    ADD CONSTRAINT " " FOREIGN KEY (id) REFERENCES public.sights(id);


--
-- Name: packages_sights packages_sights_bez_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.packages_sights
    ADD CONSTRAINT packages_sights_bez_fkey FOREIGN KEY (bez) REFERENCES public.packages(bez) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

