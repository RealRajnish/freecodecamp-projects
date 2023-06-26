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
-- Name: celestial_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_bodies (
    celestial_bodies_id integer NOT NULL,
    name character varying(50),
    probability_of_life numeric(4,2),
    has_water boolean,
    has_been_examined boolean NOT NULL
);


ALTER TABLE public.celestial_bodies OWNER TO freecodecamp;

--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_bodies_celestial_bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_bodies_celestial_bodies_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_bodies_celestial_bodies_id_seq OWNED BY public.celestial_bodies.celestial_bodies_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    age_in_million_years numeric(8,2),
    radius_in_km integer,
    distance_from_earth_in_km integer,
    name character varying(50) NOT NULL,
    description text,
    galaxy_id integer NOT NULL
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
    age_in_million_years numeric(8,2),
    radius_in_km integer,
    distance_from_earth_in_km integer,
    name character varying(50) NOT NULL,
    description text,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL
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
    age_in_million_years numeric(8,2),
    radius_in_km integer,
    distance_from_earth_in_km integer,
    has_life boolean,
    has_water boolean,
    name character varying(50) NOT NULL,
    description text,
    star_id integer NOT NULL,
    planet_id integer NOT NULL
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
    age_in_million_years numeric(8,2),
    radius_in_km integer,
    distance_from_earth_in_km integer,
    name character varying(50) NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL
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
-- Name: celestial_bodies celestial_bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies ALTER COLUMN celestial_bodies_id SET DEFAULT nextval('public.celestial_bodies_celestial_bodies_id_seq'::regclass);


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
-- Data for Name: celestial_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_bodies VALUES (1, 'asteroid', 54.00, true, true);
INSERT INTO public.celestial_bodies VALUES (2, 'object 1', 44.00, false, true);
INSERT INTO public.celestial_bodies VALUES (3, 'object 2', 45.00, false, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (4663.32, 5632, 6632, 'andromeda', 'This is our neartest galaxy', 1);
INSERT INTO public.galaxy VALUES (45663.32, 52632, 5632, 'galaxyu', 'This is another our neartest galaxy', 2);
INSERT INTO public.galaxy VALUES (5663.32, 5632, 25632, 'gaklaxyu', 'This is another our neartest galaxy', 3);
INSERT INTO public.galaxy VALUES (46523.23, 64656, 54523, 'yogalaxy', 'this is another one', 4);
INSERT INTO public.galaxy VALUES (231.27, 4532, 64531, 'cool', 'this is just for demo', 5);
INSERT INTO public.galaxy VALUES (4652.36, 4562, 24612, 'windy', 'here is another one', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (545.23, 2323, 5644, 'moon 1', 'this is moon 1', 1, 1);
INSERT INTO public.moon VALUES (545.23, 2323, 5644, 'moon 2', 'this is moon 2', 2, 2);
INSERT INTO public.moon VALUES (545.23, 2323, 5644, 'moon 3', 'this is moon 3', 3, 3);
INSERT INTO public.moon VALUES (545.23, 2323, 5644, 'moon 4', 'this is moon 4', 4, 4);
INSERT INTO public.moon VALUES (545.23, 2323, 5644, 'moon 5', 'this is moon 5', 5, 5);
INSERT INTO public.moon VALUES (545.52, 62323, 56454, 'moon 6', 'this is moon 6', 6, 6);
INSERT INTO public.moon VALUES (545.52, 62323, 556454, 'moon 7', 'this is moon 7', 8, 6);
INSERT INTO public.moon VALUES (545.52, 62323, 556454, 'moon 8', 'this is moon 8', 9, 6);
INSERT INTO public.moon VALUES (545.52, 62323, 556454, 'moon 9', 'this is moon 9', 10, 6);
INSERT INTO public.moon VALUES (5455.52, 6223, 56454, 'moon 10', 'this is moon 10', 11, 6);
INSERT INTO public.moon VALUES (5465.23, 564564, 564545, 'moon 11', 'this is moon 11', 12, 8);
INSERT INTO public.moon VALUES (5465.23, 564564, 564545, 'moon 12', 'this is moon 12', 13, 8);
INSERT INTO public.moon VALUES (5465.23, 564564, 564545, 'moon 13', 'this is moon 13', 14, 9);
INSERT INTO public.moon VALUES (5465.25, 64564, 56455, 'moon 14', 'this is moon 14', 15, 9);
INSERT INTO public.moon VALUES (546.25, 64564, 5645, 'moon 15', 'this is moon 15', 16, 10);
INSERT INTO public.moon VALUES (546.25, 64564, 5645, 'moon 16', 'this is moon 16', 17, 10);
INSERT INTO public.moon VALUES (546.25, 64564, 5645, 'moon 17', 'this is moon 17', 18, 10);
INSERT INTO public.moon VALUES (546.25, 64564, 5645, 'moon 18', 'this is moon 18', 19, 11);
INSERT INTO public.moon VALUES (546.25, 64564, 5645, 'moon 19', 'this is moon 19', 20, 11);
INSERT INTO public.moon VALUES (546.25, 64564, 5645, 'moon 20', 'this is moon 20', 21, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (12313.23, 54546, 54612, true, true, 'planet 1', 'This is planet 1', 1, 1);
INSERT INTO public.planet VALUES (12313.23, 54546, 54612, true, true, 'planet 2', 'This is planet 2', 2, 2);
INSERT INTO public.planet VALUES (12313.23, 54546, 54612, true, true, 'planet 3', 'This is planet 3', 3, 3);
INSERT INTO public.planet VALUES (12313.23, 54546, 54612, true, true, 'planet 4', 'This is planet 4', 4, 4);
INSERT INTO public.planet VALUES (12313.23, 54546, 54612, true, true, 'planet 5', 'This is planet 5', 5, 5);
INSERT INTO public.planet VALUES (12313.23, 54546, 54612, true, true, 'planet 6', 'This is planet 6', 6, 6);
INSERT INTO public.planet VALUES (12313.23, 54546, 54612, true, true, 'planet 7', 'This is planet 7', 7, 8);
INSERT INTO public.planet VALUES (454.20, 546, 6545363, true, true, 'planet 8', 'This is planet 8', 1, 9);
INSERT INTO public.planet VALUES (454.20, 546, 6545363, true, true, 'planet 9', 'This is planet 9', 2, 10);
INSERT INTO public.planet VALUES (454.20, 546, 6545363, true, true, 'planet 10', 'This is planet 10', 2, 11);
INSERT INTO public.planet VALUES (454.20, 546, 6545363, true, true, 'planet 11', 'This is planet 11', 2, 12);
INSERT INTO public.planet VALUES (454.20, 546, 545363, false, true, 'planet 12', 'This is planet 12', 2, 13);
INSERT INTO public.planet VALUES (4545.52, 5546, 54363, false, true, 'planet 13', 'This is planet 13', 2, 14);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4663.32, 5632, 6632, 'androkjsk', 'This is our neartest star', 1, 1);
INSERT INTO public.star VALUES (46625.23, 45213, 5652, 'star 1', 'this is ar 1', 1, 2);
INSERT INTO public.star VALUES (6625.23, 45213, 5652, 'star 2', 'this is star 2', 2, 3);
INSERT INTO public.star VALUES (5421.32, 6565, 46536, 'star 3', 'This is star 3', 3, 4);
INSERT INTO public.star VALUES (54656.32, 65656, 13245, 'star 4', 'This is star 4', 4, 5);
INSERT INTO public.star VALUES (5645.23, 65656, 2131, 'star 5', 'This is star 5', 5, 6);
INSERT INTO public.star VALUES (54231.32, 45323, 684456, 'star 6', 'This is star 6', 6, 7);


--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_bodies_celestial_bodies_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: celestial_bodies celestial_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_pkey PRIMARY KEY (celestial_bodies_id);


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
-- Name: celestial_bodies name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT name_unq UNIQUE (name);


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

