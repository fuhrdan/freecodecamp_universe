--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: join_id; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.join_id (
    join_id_id integer NOT NULL,
    galaxy_id integer,
    moon_id integer,
    planet_id integer,
    star_id integer NOT NULL,
    name character varying(40)
);


ALTER TABLE public.join_id OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky', 'Cold', true, true, 1670, 0, NULL);
INSERT INTO public.galaxy VALUES (2, 'Mocha', 'Luke Warm', true, false, 5280, 0, NULL);
INSERT INTO public.galaxy VALUES (3, 'Black', 'Steaming Hot', false, false, 4, 30, NULL);
INSERT INTO public.galaxy VALUES (4, 'Orange Swirl', 'Cold Headache Cold Level', true, true, 1742, 756, NULL);
INSERT INTO public.galaxy VALUES (5, 'Peppermint', 'Refreshing', true, true, 578932, 1486, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cinnamon', 'You can smell it', false, true, 6985, 8675309, NULL);


--
-- Data for Name: join_id; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.join_id VALUES (1, 1, NULL, NULL, 1, NULL);
INSERT INTO public.join_id VALUES (2, 1, NULL, NULL, 2, NULL);
INSERT INTO public.join_id VALUES (3, 1, NULL, NULL, 4, NULL);
INSERT INTO public.join_id VALUES (4, 1, NULL, NULL, 6, NULL);
INSERT INTO public.join_id VALUES (5, 1, NULL, NULL, 7, NULL);
INSERT INTO public.join_id VALUES (6, 2, NULL, NULL, 3, NULL);
INSERT INTO public.join_id VALUES (7, 3, NULL, NULL, 5, NULL);
INSERT INTO public.join_id VALUES (8, 4, NULL, NULL, 8, NULL);
INSERT INTO public.join_id VALUES (9, NULL, NULL, 1, 2, NULL);
INSERT INTO public.join_id VALUES (10, NULL, NULL, 2, 2, NULL);
INSERT INTO public.join_id VALUES (11, NULL, NULL, 3, 2, NULL);
INSERT INTO public.join_id VALUES (12, NULL, NULL, 4, 2, NULL);
INSERT INTO public.join_id VALUES (13, NULL, NULL, 5, 2, NULL);
INSERT INTO public.join_id VALUES (14, NULL, NULL, 6, 2, NULL);
INSERT INTO public.join_id VALUES (15, NULL, NULL, 7, 2, NULL);
INSERT INTO public.join_id VALUES (16, NULL, NULL, 8, 2, NULL);
INSERT INTO public.join_id VALUES (17, NULL, NULL, 9, 2, NULL);
INSERT INTO public.join_id VALUES (18, NULL, NULL, 10, 6, NULL);
INSERT INTO public.join_id VALUES (19, NULL, NULL, 11, 6, NULL);
INSERT INTO public.join_id VALUES (20, NULL, NULL, 12, 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Moon', false, false, 15, NULL, 3);
INSERT INTO public.moon VALUES (2, 'SchMoon', 'Moon', false, false, 15, NULL, 12);
INSERT INTO public.moon VALUES (3, 'Boon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (4, 'Coon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (5, 'Doon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (6, 'Foon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Goon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (8, 'Hoon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Loon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Noon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Spoon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Froon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Roon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (14, 'Toon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (15, 'Tyoon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (16, 'Tycoon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (17, 'Soon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (18, 'Voon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (19, 'Saloon', 'Moon', false, false, 15, NULL, 6);
INSERT INTO public.moon VALUES (20, 'Sasoon', 'Moon', false, false, 15, NULL, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury', false, true, 15, NULL, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus', false, true, 15, NULL, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'Venus', true, true, 15, NULL, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars', true, true, 15, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter', false, false, 15, NULL, 2);
INSERT INTO public.planet VALUES (6, 'Uranus', 'Uranus', false, false, 15, NULL, 2);
INSERT INTO public.planet VALUES (7, 'Neptune', 'Neptune', false, false, 15, NULL, 2);
INSERT INTO public.planet VALUES (8, 'Saturn', 'Saturn', false, false, 15, NULL, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Pluto', false, false, 15, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Mecury TOO', 'Mercury', false, false, 15, NULL, 6);
INSERT INTO public.planet VALUES (11, 'Venus TOO', 'Venus', false, false, 15, NULL, 6);
INSERT INTO public.planet VALUES (12, 'Smearth', 'Earth', true, true, 15, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Brown Dwarf', 'Mass is too small for nuclear fission', false, false, 8576, NULL, 1);
INSERT INTO public.star VALUES (2, 'White Dwarf', 'About the size of our sun', false, false, 7694, NULL, 1);
INSERT INTO public.star VALUES (3, 'Neutrino Star', 'This takes out the Achaya', false, false, 6589, NULL, 2);
INSERT INTO public.star VALUES (4, 'Red Dwarf', 'A bunch of smegheads', false, false, 6589, NULL, 1);
INSERT INTO public.star VALUES (5, 'Black Hole', 'Insert your mom joke here', false, false, 4590, NULL, 3);
INSERT INTO public.star VALUES (6, 'Giant', 'This is really big', false, false, 3485, NULL, 1);
INSERT INTO public.star VALUES (7, 'Super Giant', 'This is really really big', false, false, 2222, NULL, 1);
INSERT INTO public.star VALUES (8, 'Red Giant', 'This is red and big', false, false, 1243, NULL, 4);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: join_id join_id_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.join_id
    ADD CONSTRAINT join_id_id_key UNIQUE (join_id_id);


--
-- Name: join_id join_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.join_id
    ADD CONSTRAINT join_id_pkey PRIMARY KEY (join_id_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

