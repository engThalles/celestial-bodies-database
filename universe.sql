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
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age integer,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth numeric(4,1),
    star_id integer
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
    description character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age integer,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer
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
-- Name: naves; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.naves (
    naves_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.naves OWNER TO freecodecamp;

--
-- Name: naves_naves_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.naves_naves_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.naves_naves_id_seq OWNER TO freecodecamp;

--
-- Name: naves_naves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.naves_naves_id_seq OWNED BY public.naves.naves_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age integer,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer
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
    description character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age integer,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer,
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
-- Name: naves naves_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.naves ALTER COLUMN naves_id SET DEFAULT nextval('public.naves_naves_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 'Galaxia da terra', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Via Lactea', 'Galaxia da terra', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Via Lactea', 'Galaxia da terra', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Via Lactea', 'Galaxia da terra', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Via Lactea', 'Galaxia da terra', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Via Lactea', 'Galaxia da terra', NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'lua', 'Visível da terra', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: naves; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.naves VALUES (1, 'nave 1', 'descrição da nave 1');
INSERT INTO public.naves VALUES (2, 'nave 1', 'descrição da nave 1');
INSERT INTO public.naves VALUES (3, 'nave 1', 'descrição da nave 1');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'terra', 'Planeta Água', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Estrela Dalva', 'Estrela visível da terra', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Estrela Dalva', 'Estrela visível da terra', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Estrela Dalva', 'Estrela visível da terra', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Estrela Dalva', 'Estrela visível da terra', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Estrela Dalva', 'Estrela visível da terra', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Estrela Dalva', 'Estrela visível da terra', NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: naves_naves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.naves_naves_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon m_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT m_unique_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: naves n_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.naves
    ADD CONSTRAINT n_unique_id UNIQUE (naves_id);


--
-- Name: naves naves_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.naves
    ADD CONSTRAINT naves_pkey PRIMARY KEY (naves_id);


--
-- Name: planet p_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT p_unique_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star s_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT s_unique_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

