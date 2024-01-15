--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: astronaut; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronaut (
    astronaut_id integer NOT NULL,
    name character varying(40) NOT NULL,
    ship_id integer
);


ALTER TABLE public.astronaut OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronaut_astronaut_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronaut_astronaut_id_seq OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronaut_astronaut_id_seq OWNED BY public.astronaut.astronaut_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life integer,
    age_in_milions_of_years integer,
    distance_from_earth numeric(4,2),
    description text,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(40) NOT NULL,
    has_life integer,
    age_in_milions_of_years integer,
    distance_from_earth numeric(4,2),
    description text,
    is_spherical boolean,
    planet_id integer,
    moon_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life integer,
    age_in_milions_of_years integer,
    distance_from_earth numeric(4,2),
    description text,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
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
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life integer,
    age_in_milions_of_years integer,
    distance_from_earth numeric(4,2),
    description text,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: astronaut astronaut_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut ALTER COLUMN astronaut_id SET DEFAULT nextval('public.astronaut_astronaut_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astronaut; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronaut VALUES (1, 'Sasha', NULL);
INSERT INTO public.astronaut VALUES (2, 'Danijela', NULL);
INSERT INTO public.astronaut VALUES (3, 'Djurdjija', NULL);
INSERT INTO public.astronaut VALUES (4, 'Urosh', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, 524000, NULL, 'Closest big galaxy to the Milky Way and expexted to collide with the Milky Way around 4.5 bilions years from now', true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', NULL, 384, 2.50, 'This is the galaxy containing the Sun and its Solar System, and therefore Earth. Most things visible to the naked eye in the sky are part of it, including the Milky Way composing the Zone of Avoidance.', true);
INSERT INTO public.galaxy VALUES (3, 'Aquarius', NULL, 384, 6.50, 'The Earth satellite', false);
INSERT INTO public.galaxy VALUES (4, 'Canis Major Dwarf', NULL, NULL, NULL, NULL, true);
INSERT INTO public.galaxy VALUES (5, 'Draco II', NULL, NULL, NULL, NULL, true);
INSERT INTO public.galaxy VALUES (6, 'Tucana III', NULL, NULL, NULL, NULL, true);
INSERT INTO public.galaxy VALUES (7, 'Hydrus I', NULL, NULL, NULL, NULL, true);
INSERT INTO public.galaxy VALUES (8, 'Segue 1', NULL, NULL, NULL, NULL, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('The Moon', NULL, 384, 2.50, 'The Earth satellite', true, 1, 1);
INSERT INTO public.moon VALUES ('Charon', NULL, 384, 6.50, 'The Earth satellite', false, 2, 2);
INSERT INTO public.moon VALUES ('Kerberos', NULL, 384, 6.50, 'The Plutos satellite', false, 2, 3);
INSERT INTO public.moon VALUES ('Metis', NULL, NULL, NULL, NULL, true, 6, 4);
INSERT INTO public.moon VALUES ('Adrastea', NULL, NULL, NULL, NULL, true, 6, 5);
INSERT INTO public.moon VALUES ('Amalthea', NULL, NULL, NULL, NULL, true, 6, 6);
INSERT INTO public.moon VALUES ('Thebe', NULL, NULL, NULL, NULL, true, 6, 7);
INSERT INTO public.moon VALUES ('Io', NULL, NULL, NULL, NULL, true, 6, 8);
INSERT INTO public.moon VALUES ('Europa', NULL, NULL, NULL, NULL, true, 6, 9);
INSERT INTO public.moon VALUES ('Ganymede', NULL, NULL, NULL, NULL, true, 6, 10);
INSERT INTO public.moon VALUES ('Callisto', NULL, NULL, NULL, NULL, true, 6, 11);
INSERT INTO public.moon VALUES ('Themisto', NULL, NULL, NULL, NULL, true, 6, 12);
INSERT INTO public.moon VALUES ('Carpo', NULL, NULL, NULL, NULL, true, 6, 13);
INSERT INTO public.moon VALUES ('Valetudo', NULL, NULL, NULL, NULL, true, 6, 14);
INSERT INTO public.moon VALUES ('Leda', NULL, NULL, NULL, NULL, true, 6, 15);
INSERT INTO public.moon VALUES ('Ersa', NULL, NULL, NULL, NULL, true, 6, 16);
INSERT INTO public.moon VALUES ('Himalia', NULL, NULL, NULL, NULL, true, 6, 17);
INSERT INTO public.moon VALUES ('Pandia', NULL, NULL, NULL, NULL, true, 6, 18);
INSERT INTO public.moon VALUES ('Lysithea', NULL, NULL, NULL, NULL, true, 6, 19);
INSERT INTO public.moon VALUES ('Elara', NULL, NULL, NULL, NULL, true, 6, 20);
INSERT INTO public.moon VALUES ('Dia', NULL, NULL, NULL, NULL, true, 6, 21);
INSERT INTO public.moon VALUES ('Carpo', NULL, NULL, NULL, NULL, true, 6, 22);
INSERT INTO public.moon VALUES ('Valetudo', NULL, NULL, NULL, NULL, true, 6, 23);
INSERT INTO public.moon VALUES ('Euporie', NULL, NULL, NULL, NULL, true, 6, 24);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', NULL, 1024, 54.60, 'The is most similar to Earth.', true, 1);
INSERT INTO public.planet VALUES (2, 'Pluto', NULL, 384, 6.50, 'The Plutos', false, 2);
INSERT INTO public.planet VALUES (3, 'Mercury', NULL, 384, 6.50, 'The closest planet to the Sun', false, 2);
INSERT INTO public.planet VALUES (4, 'Jupiter', NULL, NULL, NULL, 'The Jupiter', false, 2);
INSERT INTO public.planet VALUES (5, 'Saturn', NULL, NULL, NULL, 'The Jupiter', false, 2);
INSERT INTO public.planet VALUES (6, 'Uranus', NULL, NULL, NULL, 'The Jupiter', false, 2);
INSERT INTO public.planet VALUES (7, 'Neptune', NULL, NULL, NULL, 'The Jupiter', false, 2);
INSERT INTO public.planet VALUES (8, 'Centaurus', NULL, NULL, NULL, 'The Jupiter', false, 2);
INSERT INTO public.planet VALUES (9, 'Ceres', NULL, NULL, NULL, 'Is the largest asteroid, a protoplanet, and a dwarf planet.', false, 2);
INSERT INTO public.planet VALUES (10, 'Pallas', NULL, NULL, NULL, 'Largest asteroid in the asteroid belt', false, 2);
INSERT INTO public.planet VALUES (11, 'Vesta', NULL, NULL, NULL, 'Largest asteroid in the asteroid belt', false, 2);
INSERT INTO public.planet VALUES (12, 'Earth', NULL, NULL, NULL, 'Home planet', false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'moon', NULL, 124000, 14.20, 'Earth satelite', true, 1);
INSERT INTO public.star VALUES (2, 'Sun', NULL, NULL, NULL, 'Brigthest star-planet, gives our home planet life', false, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', NULL, NULL, NULL, NULL, false, 1);
INSERT INTO public.star VALUES (4, 'Centauri A', NULL, NULL, NULL, NULL, false, 1);
INSERT INTO public.star VALUES (5, 'Centauri B', NULL, NULL, NULL, NULL, false, 1);
INSERT INTO public.star VALUES (6, 'Sirius A', NULL, NULL, NULL, NULL, false, 1);
INSERT INTO public.star VALUES (7, 'Sirius B', NULL, NULL, NULL, NULL, false, 1);


--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronaut_astronaut_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: astronaut astronaut_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_pkey PRIMARY KEY (astronaut_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: astronaut unique_astronaut_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT unique_astronaut_id UNIQUE (astronaut_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

