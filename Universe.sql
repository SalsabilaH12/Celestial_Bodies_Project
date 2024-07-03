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
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
    area integer,
    volume integer,
    age numeric,
    material text,
    planet_id integer
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    material text,
    age numeric,
    volume integer,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 100, 300, 250, 'solid', true, true);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 100, 300, 250, 'solid', true, true);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 100, 300, 250, 'solid', true, true);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 100, 300, 250, 'solid', true, true);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 100, 300, 250, 'solid', true, true);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 100, 300, 250, 'solid', true, true);
INSERT INTO public.galaxy VALUES (7, 'galaxy7', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'galaxy8', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'galaxy9', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'galaxy10', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'galaxy11', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'galaxy12', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'galaxy13', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'galaxy14', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'galaxy15', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'galaxy16', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'galaxy17', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'galaxy18', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'galaxy19', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'galaxy20', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1000, 300, 350, 'solid', 1);
INSERT INTO public.moon VALUES (2, 'moon2', 1000, 300, 350, 'solid', 2);
INSERT INTO public.moon VALUES (3, 'moon3', 1000, 300, 350, 'solid', 3);
INSERT INTO public.moon VALUES (4, 'moon4', 1000, 300, 350, 'solid', 4);
INSERT INTO public.moon VALUES (5, 'moon5', 1000, 300, 350, 'solid', 5);
INSERT INTO public.moon VALUES (6, 'moon6', 1000, 300, 350, 'solid', 6);
INSERT INTO public.moon VALUES (7, 'moon7', 1000, 300, 350, 'solid', 7);
INSERT INTO public.moon VALUES (8, 'moon8', 1000, 300, 350, 'solid', 8);
INSERT INTO public.moon VALUES (9, 'moon9', 1000, 300, 350, 'solid', 9);
INSERT INTO public.moon VALUES (10, 'moon10', 1000, 300, 350, 'solid', 10);
INSERT INTO public.moon VALUES (11, 'moon11', 1000, 300, 350, 'solid', 11);
INSERT INTO public.moon VALUES (12, 'moon12', 1000, 300, 350, 'solid', 12);
INSERT INTO public.moon VALUES (13, 'moon13', 1000, 300, 350, 'solid', 13);
INSERT INTO public.moon VALUES (14, 'moon14', 1000, 200, 350, 'solid', 14);
INSERT INTO public.moon VALUES (15, 'moon15', 1000, 200, 350, 'solid', 15);
INSERT INTO public.moon VALUES (16, 'moon16', 1000, 200, 350, 'solid', 16);
INSERT INTO public.moon VALUES (17, 'moon17', 1000, 200, 350, 'solid', 17);
INSERT INTO public.moon VALUES (18, 'moon18', 1000, 200, 350, 'solid', 18);
INSERT INTO public.moon VALUES (19, 'moon19', 1000, 200, 350, 'solid', 19);
INSERT INTO public.moon VALUES (20, 'moon20', 1000, 200, 350, 'solid', 20);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'info1', 'desc1');
INSERT INTO public.more_info VALUES (2, 'info2', 'desc2');
INSERT INTO public.more_info VALUES (3, 'info3', 'desc3');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 500, 'solid', 100, 200, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 500, 'solid', 100, 200, 2);
INSERT INTO public.planet VALUES (3, 'planet3', 500, 'solid', 100, 200, 3);
INSERT INTO public.planet VALUES (4, 'planet4', 500, 'solid', 100, 200, 4);
INSERT INTO public.planet VALUES (5, 'planet5', 500, 'solid', 100, 200, 5);
INSERT INTO public.planet VALUES (6, 'planet6', 500, 'solid', 100, 200, 6);
INSERT INTO public.planet VALUES (7, 'planet7', 500, 'solid', 100, 200, 7);
INSERT INTO public.planet VALUES (8, 'planet8', 500, 'solid', 100, 200, 8);
INSERT INTO public.planet VALUES (9, 'planet9', 500, 'solid', 100, 200, 9);
INSERT INTO public.planet VALUES (10, 'planet10', 500, 'solid', 100, 200, 10);
INSERT INTO public.planet VALUES (11, 'planet11', 500, 'solid', 100, 200, 11);
INSERT INTO public.planet VALUES (12, 'planet12', 500, 'solid', 100, 200, 12);
INSERT INTO public.planet VALUES (13, 'planet13', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (14, 'planet14', NULL, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES (15, 'planet15', NULL, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, 'planet16', NULL, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, 'planet17', NULL, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES (18, 'planet18', NULL, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES (19, 'planet19', NULL, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, 'planet20', NULL, NULL, NULL, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 100, 300, 250, 'solid', 1);
INSERT INTO public.star VALUES (2, 'star2', 100, 300, 250, 'solid', 2);
INSERT INTO public.star VALUES (3, 'star3', 100, 300, 250, 'solid', 3);
INSERT INTO public.star VALUES (4, 'star4', 100, 300, 250, 'solid', 4);
INSERT INTO public.star VALUES (5, 'star5', 100, 300, 250, 'solid', 5);
INSERT INTO public.star VALUES (6, 'star6', 100, 300, 250, 'solid', 6);
INSERT INTO public.star VALUES (7, 'star7', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (8, 'star8', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES (9, 'star9', NULL, NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES (10, 'star10', NULL, NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES (12, 'star11', NULL, NULL, NULL, NULL, 11);
INSERT INTO public.star VALUES (11, 'star12', NULL, NULL, NULL, NULL, 12);
INSERT INTO public.star VALUES (13, 'star13', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.star VALUES (14, 'star14', NULL, NULL, NULL, NULL, 14);
INSERT INTO public.star VALUES (15, 'star15', NULL, NULL, NULL, NULL, 15);
INSERT INTO public.star VALUES (16, 'star16', NULL, NULL, NULL, NULL, 16);
INSERT INTO public.star VALUES (17, 'star17', NULL, NULL, NULL, NULL, 17);
INSERT INTO public.star VALUES (18, 'star18', NULL, NULL, NULL, NULL, 18);
INSERT INTO public.star VALUES (19, 'star19', NULL, NULL, NULL, NULL, 19);
INSERT INTO public.star VALUES (20, 'star20', NULL, NULL, NULL, NULL, 20);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: more_info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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

