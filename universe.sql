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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billions_of_years numeric,
    galaxy_type character varying(30),
    year_of_discovery integer,
    blackholename text
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
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    number_of_craters integer,
    has_water boolean,
    moon_guard text
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
    name character varying(30) NOT NULL,
    age_in_billions_of_years numeric,
    distance_from_earth numeric,
    has_life boolean,
    number_of_moons integer,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

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
-- Name: satellites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellites (
    name character varying(30),
    year_deployed integer NOT NULL,
    satellites_id integer NOT NULL
);


ALTER TABLE public.satellites OWNER TO freecodecamp;

--
-- Name: satellites_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellites_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellites_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellites_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellites_satellite_id_seq OWNED BY public.satellites.satellites_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    orbiting_planets integer,
    galaxy_id integer,
    star_type text,
    star_sign text
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
-- Name: satellites satellites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites ALTER COLUMN satellites_id SET DEFAULT nextval('public.satellites_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 4, 'spiral', 1742, NULL);
INSERT INTO public.galaxy VALUES (2, 'comet galaxy', 3, 'spherical', 1993, NULL);
INSERT INTO public.galaxy VALUES (3, 'NGC 488', 3, 'tubular', 1995, NULL);
INSERT INTO public.galaxy VALUES (4, 'NGC 333', 8, 'elliptical', 2003, NULL);
INSERT INTO public.galaxy VALUES (5, 'malin galaxy', 2, 'oblong', 2019, NULL);
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 5, 'irregular', 1939, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon one', 1, 3, true, NULL);
INSERT INTO public.moon VALUES (2, 'moon two', 2, 3, false, NULL);
INSERT INTO public.moon VALUES (3, 'moon three', 4, 4, true, NULL);
INSERT INTO public.moon VALUES (4, 'moon one', 1, 3, true, NULL);
INSERT INTO public.moon VALUES (5, 'moon two', 2, 3, false, NULL);
INSERT INTO public.moon VALUES (6, 'moon 4ree', 3, 4, true, NULL);
INSERT INTO public.moon VALUES (7, 'moon o1ne', 1, 3, true, NULL);
INSERT INTO public.moon VALUES (8, 'moon3 two', 2, 3, false, NULL);
INSERT INTO public.moon VALUES (9, 'moon 9ree', 3, 4, true, NULL);
INSERT INTO public.moon VALUES (10, 'moon4 o1ne', 1, 3, true, NULL);
INSERT INTO public.moon VALUES (11, 'm44oon3 two', 2, 3, false, NULL);
INSERT INTO public.moon VALUES (12, 'moon3 9ree', 3, 4, true, NULL);
INSERT INTO public.moon VALUES (13, 'moo4n4 o1ne', 1, 3, true, NULL);
INSERT INTO public.moon VALUES (14, 'm444oon3 two', 2, 3, false, NULL);
INSERT INTO public.moon VALUES (15, 'moon3 9r4ee', 3, 4, true, NULL);
INSERT INTO public.moon VALUES (16, 'moo4n14 o1ne', 1, 3, true, NULL);
INSERT INTO public.moon VALUES (17, 'm4441oon3 two', 2, 3, false, NULL);
INSERT INTO public.moon VALUES (18, 'moon13 9r4ee', 3, 4, true, NULL);
INSERT INTO public.moon VALUES (19, 'moo4n114 o1ne', 1, 3, true, NULL);
INSERT INTO public.moon VALUES (20, 'm4441oo1n3 two', 2, 3, false, NULL);
INSERT INTO public.moon VALUES (21, 'moon13 91r4ee', 3, 4, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 3, 433, false, 2, 'the little red planet', 6);
INSERT INTO public.planet VALUES (2, 'venus', 3, 333, false, 2, 'woman go to venuse and men go to mars', 6);
INSERT INTO public.planet VALUES (3, 'earth', 1, 0, true, 2, 'human beings live on the blue planet', 6);
INSERT INTO public.planet VALUES (4, 'mars', 11, 220, true, 2, 'SpaceX is trying to go over here', 6);
INSERT INTO public.planet VALUES (5, 'Jupiter', 11, 220, false, 2, 'The biggest planet in the solar system gas giant', 6);
INSERT INTO public.planet VALUES (6, 'Saturn', 11, 3220, false, 2, 'The one with the big rings spinning and spinning', 6);
INSERT INTO public.planet VALUES (7, 'Neptune', 41, 5220, false, 2, 'The god of the seas little mermaids father', 6);
INSERT INTO public.planet VALUES (8, 'Uranus', 41, 7220, false, 2, 'Has been the butt of many jokes or should I say anus', 6);
INSERT INTO public.planet VALUES (9, 'Pluto', 31, 7220, false, 2, 'Goofy had a dog even though he was a dog ', 6);
INSERT INTO public.planet VALUES (10, 'Ceres', 31, 7220, false, 2, 'May or may not be a planet ', 6);
INSERT INTO public.planet VALUES (11, 'Planet DVD and video', 1, 3220, true, 2, 'Many games where rented here ', 6);
INSERT INTO public.planet VALUES (12, 'Planet Z', 1, 3220, true, 2, 'MThe home of emperor Zurg and buzz lightyear ', 3);


--
-- Data for Name: satellites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellites VALUES ('hubble', 1969, 1);
INSERT INTO public.satellites VALUES ('voyager 1', 2001, 2);
INSERT INTO public.satellites VALUES ('James weber telescope', 2010, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Callisto', 3, 1, 'red giant', NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 4, 1, 'blue giant', NULL);
INSERT INTO public.star VALUES (3, 'Vega', 8, 1, 'white dwarf', NULL);
INSERT INTO public.star VALUES (4, 'Rigel', 9, 1, 'main sequence', NULL);
INSERT INTO public.star VALUES (5, 'Procyon', 5, 1, 'red giant', NULL);
INSERT INTO public.star VALUES (6, 'The Sun', 7, 1, 'Yellow dwarf', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satellites_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellites_satellite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_blackholename_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_blackholename_key UNIQUE (blackholename);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_guard_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_guard_key UNIQUE (moon_guard);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellites satellites_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_name_key UNIQUE (name);


--
-- Name: satellites satellites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_pkey PRIMARY KEY (satellites_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_sign_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_sign_key UNIQUE (star_sign);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

