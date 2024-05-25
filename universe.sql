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
    hiding numeric,
    nutn integer NOT NULL,
    stargalaxy text,
    u integer
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
    yes boolean,
    nutnu integer NOT NULL,
    planet_id integer,
    u integer
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
    lost integer NOT NULL,
    n integer NOT NULL,
    star_id integer,
    u integer
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
    found integer,
    no boolean,
    nut integer NOT NULL,
    galaxy_id integer,
    u integer
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
-- Name: why; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.why (
    why_id integer NOT NULL,
    name character varying(30) NOT NULL,
    nu integer NOT NULL,
    u integer
);


ALTER TABLE public.why OWNER TO freecodecamp;

--
-- Name: why_why_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.why_why_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.why_why_id_seq OWNER TO freecodecamp;

--
-- Name: why_why_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.why_why_id_seq OWNED BY public.why.why_id;


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
-- Name: why why_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.why ALTER COLUMN why_id SET DEFAULT nextval('public.why_why_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy A', 1, 0, 'Andromeda', 1);
INSERT INTO public.galaxy VALUES (2, 'Galaxy B', 0, 1, 'Milky Way', 2);
INSERT INTO public.galaxy VALUES (3, 'Galaxy C', 1, 1, 'Sombrero', 3);
INSERT INTO public.galaxy VALUES (4, 'Galaxy D', 0, 0, 'Black Eye', 4);
INSERT INTO public.galaxy VALUES (5, 'Galaxy E', 1, 1, 'Pinwheel', 5);
INSERT INTO public.galaxy VALUES (6, 'Galaxy F', 0, 0, 'Triangulum', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (81, 'Moon 1', true, 1, 13, 81);
INSERT INTO public.moon VALUES (82, 'Moon 2', false, 2, 14, 82);
INSERT INTO public.moon VALUES (83, 'Moon 3', true, 3, 15, 83);
INSERT INTO public.moon VALUES (84, 'Moon 4', false, 4, 16, 84);
INSERT INTO public.moon VALUES (85, 'Moon 5', true, 5, 17, 85);
INSERT INTO public.moon VALUES (86, 'Moon 6', false, 6, 18, 86);
INSERT INTO public.moon VALUES (87, 'Moon 7', true, 7, 19, 87);
INSERT INTO public.moon VALUES (88, 'Moon 8', false, 8, 20, 88);
INSERT INTO public.moon VALUES (89, 'Moon 9', true, 9, 21, 89);
INSERT INTO public.moon VALUES (90, 'Moon 10', false, 10, 22, 90);
INSERT INTO public.moon VALUES (91, 'Moon 11', true, 11, 23, 91);
INSERT INTO public.moon VALUES (92, 'Moon 12', false, 12, 24, 92);
INSERT INTO public.moon VALUES (93, 'Moon 13', true, 13, 13, 93);
INSERT INTO public.moon VALUES (94, 'Moon 14', false, 14, 14, 94);
INSERT INTO public.moon VALUES (95, 'Moon 15', true, 15, 15, 95);
INSERT INTO public.moon VALUES (96, 'Moon 16', false, 16, 16, 96);
INSERT INTO public.moon VALUES (97, 'Moon 17', true, 17, 17, 97);
INSERT INTO public.moon VALUES (98, 'Moon 18', false, 18, 18, 98);
INSERT INTO public.moon VALUES (99, 'Moon 19', true, 19, 19, 99);
INSERT INTO public.moon VALUES (100, 'Moon 20', false, 20, 20, 100);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Planet 1', 1, 0, 1, 13);
INSERT INTO public.planet VALUES (14, 'Planet 2', 0, 1, 2, 14);
INSERT INTO public.planet VALUES (15, 'Planet 3', 1, 0, 3, 15);
INSERT INTO public.planet VALUES (16, 'Planet 4', 0, 1, 1, 16);
INSERT INTO public.planet VALUES (17, 'Planet 5', 1, 0, 2, 17);
INSERT INTO public.planet VALUES (18, 'Planet 6', 0, 1, 3, 18);
INSERT INTO public.planet VALUES (19, 'Planet 7', 1, 0, 1, 19);
INSERT INTO public.planet VALUES (20, 'Planet 8', 0, 1, 2, 20);
INSERT INTO public.planet VALUES (21, 'Planet 9', 1, 0, 3, 21);
INSERT INTO public.planet VALUES (22, 'Planet 10', 0, 1, 1, 22);
INSERT INTO public.planet VALUES (23, 'Planet 11', 1, 0, 2, 23);
INSERT INTO public.planet VALUES (24, 'Planet 12', 0, 1, 3, 24);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', 20220101, true, 123, 1, 1);
INSERT INTO public.star VALUES (2, 'Star 2', 20220102, false, 679, 2, 2);
INSERT INTO public.star VALUES (3, 'Star 3', 20220103, true, 136, 3, 3);
INSERT INTO public.star VALUES (4, 'Star 4', 20220104, false, 247, 1, 4);
INSERT INTO public.star VALUES (5, 'Star 5', 20220105, true, 988, 2, 5);
INSERT INTO public.star VALUES (6, 'Star 6', 20220106, false, 543, 3, 6);


--
-- Data for Name: why; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.why VALUES (1, 'First Row', 1, 1);
INSERT INTO public.why VALUES (2, 'Second Row', 2, 2);
INSERT INTO public.why VALUES (3, 'Third Row', 3, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 100, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: why_why_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.why_why_id_seq', 4, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_u_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_u_key UNIQUE (u);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_u_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_u_key UNIQUE (u);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_u_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_u_key UNIQUE (u);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_u_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_u_key UNIQUE (u);


--
-- Name: why why_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.why
    ADD CONSTRAINT why_pkey PRIMARY KEY (why_id);


--
-- Name: why why_u_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.why
    ADD CONSTRAINT why_u_key UNIQUE (u);


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

