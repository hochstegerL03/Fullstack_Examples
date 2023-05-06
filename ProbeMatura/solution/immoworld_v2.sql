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
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    city_id integer NOT NULL,
    name text,
    country text
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- Name: city_cit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.city_cit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_cit_id_seq OWNER TO postgres;

--
-- Name: city_cit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.city_cit_id_seq OWNED BY public.cities.city_id;


--
-- Name: estates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estates (
    id integer NOT NULL,
    title text NOT NULL,
    image text,
    postcode text NOT NULL,
    bedrooms integer,
    bathrooms integer,
    city_id integer,
    staff_id integer,
    preis integer,
    pics text,
    status text,
    type text,
    description text
);


ALTER TABLE public.estates OWNER TO postgres;

--
-- Name: staff; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staff (
    staff_id integer NOT NULL,
    name text,
    image text,
    phone text,
    office text
);


ALTER TABLE public.staff OWNER TO postgres;

--
-- Name: staff_staff_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.staff_staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.staff_staff_id_seq OWNER TO postgres;

--
-- Name: staff_staff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.staff_staff_id_seq OWNED BY public.staff.staff_id;


--
-- Name: cities city_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities ALTER COLUMN city_id SET DEFAULT nextval('public.city_cit_id_seq'::regclass);


--
-- Name: staff staff_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff ALTER COLUMN staff_id SET DEFAULT nextval('public.staff_staff_id_seq'::regclass);


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cities (city_id, name, country) VALUES (1, 'London', 'United Kingdom');
INSERT INTO public.cities (city_id, name, country) VALUES (2, 'Vienna', 'Austria');


--
-- Data for Name: estates; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estates (id, title, image, postcode, bedrooms, bathrooms, city_id, staff_id, preis, pics, status, type, description) VALUES (10, 'Blomfield Road', 'images/89.jpg', 'W9 2PF', 3, 2, 1, 2, 4358321, '89.jpg,90.jpg,91.jpg,92.jpg,93.jpg,94.jpg,95.jpg,96.jpg,97.jpg', 'Available', 'Duplex Homes', 'A beautiful three-bedroom (1,648 Sq. ft. /153Sqm), duplex maisonette set within a stunning white stucco period conversion with its own private ground floor entrance. This home has been tastefully refurbished to a high standard and consists of large sun swept double length reception/dining with a separate kitchen on the first floor. Three spacious double bedrooms and two-bathrooms, one being en-suite.Further benefits include air conditioning in the bedrooms, high ceilings through-out and fireplaces in both the reception rooms.');
INSERT INTO public.estates (id, title, image, postcode, bedrooms, bathrooms, city_id, staff_id, preis, pics, status, type, description) VALUES (5, 'Half Moon Street, Mayfair', 'images/40.jpg', 'W1J 7BD', 5, 6, 1, 1, 20115328, '39.jpg,40.jpg,41.jpg,42.jpg,43.jpg,44.jpg,45.jpg,46.jpg,47.jpg,48.jpg', 'Available', 'Single Family Homes', 'Stunning refurbished four-bedroom townhouse in Mayfair. An immaculate refurbished townhouse residence with a wonderful balance of formal and informal living spaces all with a contemporary feel throughout yet harnessing beautiful period features. The house boasts a lift, large private roof terrace along with a cinema room, gym, steam room and air conditioning. Upon entering the home, you are greeted by a welcoming entrance hallway which in turn leads into a beautiful and contemporary kitchen and breakfast room, the stairs to the middle of the home lead to the upper and lower floors.');
INSERT INTO public.estates (id, title, image, postcode, bedrooms, bathrooms, city_id, staff_id, preis, pics, status, type, description) VALUES (7, 'Courtenay Avenue, London', 'images/59.jpg', 'N6 4LP', 7, 7, 1, 1, 14080730, '59.jpg,60.jpg,61.jpg,62.jpg,63.jpg,64.jpg,65.jpg,66.jpg,67.jpg,68.jpg', 'Available', 'Single Family Homes', 'A large, low-built detached family house (877.5 Sq. M. / 9,445 Sq. Ft.) situated in one of North London’s most beautiful and secure premier roads. This truly ambassadorial home which has been in the same family ownership for over 19 years is predominantly set over three floors only and provides lateral space throughout. Set around a magnificent double-height hallway on the ground floor leading onto several reception rooms which could be used for entertaining, makes for the perfect modern day family living.     Further benefits include a large principal bedroom suite leading directly onto a terrace, six further bedrooms, six bathrooms, and subject to the necessary planning consents, the opportunity to create a lower ground floor leisure complex incorporating a swimming pool, gym and sauna / steam room. The property is set back behind a large carriage driveway, providing secure off-street parking for several cars along with a garage and a substantial garden to the rear.');
INSERT INTO public.estates (id, title, image, postcode, bedrooms, bathrooms, city_id, staff_id, preis, pics, status, type, description) VALUES (1, 'Hanover Terrace', 'images/1.jpg', 'NW1 4RJ', 6, 8, 1, 2, 38889634, '1.jpg, 2.jpg, 3.jpg, 4.jpg, 5.jpg, 6.jpg, 7.jpg, 8.jpg', 'Available', 'Single Family Homes', 'An Ambassadorial Grade l Listed family home (510 sq. m / 5,490 sq. ft.) with spectacular views facing onto the swan and boating lake within Regents Park. Originally designed by John Nash in 1811, a renowned architect, this stunning family home has been completely restored to the absolute highest of standards of luxury allowing for today’s modern standard of living. Further benefits include a long Crown Estate lease of approximately 110 years, a private long walled garden leading directly into a mews house (114 sq. m / 1,222 sq. ft). This space provides for a gym, a double garage and two-bedrooms and bathrooms upstairs for family, guests, or your own security. Further benefits would include 24-hour on-site manned security for the sole use of road. The total size of this stunning home is 625 sq. m / 6,730 sq. ft.');
INSERT INTO public.estates (id, title, image, postcode, bedrooms, bathrooms, city_id, staff_id, preis, pics, status, type, description) VALUES (2, 'Victory House', 'images/9.jpg', 'W8 45RF', 5, 6, 1, 4, 30172992, '9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg', 'Available', 'Single Family Homes', 'Victory House is a prime Kensington architectural masterpiece, this exceptional double fronted freehold villa is flooded with natural light due to its multiple aspects of outdoor spaces seamlessly flowing in to the home. Presenting itself with five bedrooms plus study, six bathroom/shower rooms with underfloor heating and an abundance of lateral living and entertaining space spanning over 6,373sqft. The bespoke joinery that has been appointed throughout the home is a stand out feature of exceptional quality, immersed beautifully with the luxury designer elements embedded in every corner of the property. The vast kitchen is a specialist Cormier design from France, which flows through to a formal dining room followed by an elegant and spacious reception room.');
INSERT INTO public.estates (id, title, image, postcode, bedrooms, bathrooms, city_id, staff_id, preis, pics, status, type, description) VALUES (3, 'Hamilton Terrace, St. Johns Wood', 'images/19.jpg', 'NW8 9UJ', 4, 10, 1, 2, 23467993, '19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg', 'Sold', 'Single Family Homes', 'Classic and inviting neo-Georgian architecture meets the finest interior design, modern and chic with a charming feel and set on one of the most exclusive roads within one of the most exclusive postcodes in London. This beautiful home is set over five floors of luxurious and generously proportioned accommodation in excess of 12,400 Sq. Ft. The south-facing front leads you to a reception room and dining area following on to a contemporary kitchen with integrated state of the art appliances looking out onto the beautifully landscaped gardens.');
INSERT INTO public.estates (id, title, image, postcode, bedrooms, bathrooms, city_id, staff_id, preis, pics, status, type, description) VALUES (4, 'Huxley House, Bishops Avenue', 'images/29.jpg', 'N2 OBJ', 8, 9, 1, 2, 22797372, '29.jpg,30.jpg,31.jpg,32.jpg,33.jpg,34.jpg,35.jpg,36.jpg,37.jpg,38.jpg', 'Available', 'Single Family Homes', 'Huxley House is an imposing double-fronted home. A unique architectural style inspired by mansions of the Eighteenth and Nineteenth Centuries and a commensurate size and scale; while internally the house represents the epitome of modern living, including extensive spa and entertainment suites alongside more traditional luxury features. With approximate gross internal areas in excess of 14,530 sq. ft (13,500 sq. m) and spanning over four floors, all accessed by an internal lift, Huxley House is generously proportioned, with a grandeur which befits their imposing, elegant and classic façades. But while the scale of the two floor galleried entrance halls, five reception rooms and seven en suite bedrooms, is typical of the grand houses of the Victorian period. These homes benefit from substantial additional facilities including a cinema, club room, fitness suite, pool, and car lift.');
INSERT INTO public.estates (id, title, image, postcode, bedrooms, bathrooms, city_id, staff_id, preis, pics, status, type, description) VALUES (8, 'The Hertzfeld Palais', 'images/69.jpg', '1010', 4, 5, 2, 3, 17919531, '69.jpg,70.jpg,71.jpg,72.jpg,73.jpg,74.jpg,75.jpg,76.jpg,77.jpg,78.jpg', 'Sold', 'Appartments', 'Palais Herzfeld is a luxurious and representative property and offers one luxury penthouse in a very outstanding quality. An elevator takes you right up to the penthouse in the attic story, that accomodates only the penthouse and an attached aparmtent (guest apartment, office, flat for an employee...). The penthouse consists of 5 spacious and representative rooms, 5 bathrooms, an extra guest toilet, a wine cellar. The height of the rooms is 2,70 to 3,00 m. The two terraces with their spectacular panoramic sight all over Vienna are outstanding.');
INSERT INTO public.estates (id, title, image, postcode, bedrooms, bathrooms, city_id, staff_id, preis, pics, status, type, description) VALUES (9, 'In the Heart of Grinzing', 'images/79.jpg', '1190', 4, 3, 2, 3, 2873887, '79.jpg,80.jpg,81.jpg,82.jpg,83.jpg,84.jpg,85.jpg,86.jpg,87.jpg,88.jpg', 'Reserved', 'Appartments', 'In the heart of Grinzing, one of Vienna´s top residential areas, we can offer this luxurious apartment of 256m² living space for sale. The residential house was built around 1996, has only 6 flats and is in a very good condition. It lies off the street , so it is really quietly situated.The modern and high class flat, furnished with style and taste, consists of a spacious living area with attached kitchen of about 90m² , 4 bedrooms, 3 baths , 1 extra toilet, 2 storage rooms , 1 utility room, 4 balconies , one of them with a sauna. In the basement of the house there is a compartment of ca. 60m² that belongs to the apartment.');
INSERT INTO public.estates (id, title, image, postcode, bedrooms, bathrooms, city_id, staff_id, preis, pics, status, type, description) VALUES (6, '101-103 Eaton Place', 'images/49.jpg', 'SW1X 8NJ', 4, 5, 1, 1, 19780072, '49.jpg,50.jpg,51.jpg,52.jpg,53.jpg,54.jpg,55.jpg,56.jpg,57.jpg,58.jpg', 'Reserved', 'Single Family Homes', 'This spacious penthouse apartment is situated in a prime residential location, on a quiet road while also having the shops and restaurants of the bustling Kings Road just a stones throw away.');


--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.staff (staff_id, name, image, phone, office) VALUES (1, 'Guy Bradshaw', 'images/staff/guybradshaw.jpg', '+44(0)2074959580', '77-79 Ebury Street, London, England ');
INSERT INTO public.staff (staff_id, name, image, phone, office) VALUES (2, 'Lee Koffman', 'images/staff/leekoffman.jpg', '+44(0)2074959580', '77-79 Ebury Street, London, England');
INSERT INTO public.staff (staff_id, name, image, phone, office) VALUES (4, 'Mary Roberton', 'images/staff/maryroberton.jpg', '+44(0)2074959580', '77-79 Ebury Street, London, England');
INSERT INTO public.staff (staff_id, name, image, phone, office) VALUES (3, 'Martina Abiodum', 'images/staff/martinaabiodum.jpg', '+43(0)6766342527', 'Parkring 4, Vienna 1010 Austria');


--
-- Name: city_cit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.city_cit_id_seq', 2, true);


--
-- Name: staff_staff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staff_staff_id_seq', 8, true);


--
-- Name: cities city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);


--
-- Name: estates estate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estates
    ADD CONSTRAINT estate_pkey PRIMARY KEY (id);


--
-- Name: staff staff_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_id);


--
-- Name: estates estate_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estates
    ADD CONSTRAINT estate_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.cities(city_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: estates estate_staff_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estates
    ADD CONSTRAINT estate_staff_id_fkey FOREIGN KEY (staff_id) REFERENCES public.staff(staff_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

