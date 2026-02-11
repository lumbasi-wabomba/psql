--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: gal_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.gal_moon (
    gal_moon_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.gal_moon OWNER TO freecodecamp;

--
-- Name: gal_moon_gal_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.gal_moon_gal_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gal_moon_gal_moon_id_seq OWNER TO freecodecamp;

--
-- Name: gal_moon_gal_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.gal_moon_gal_moon_id_seq OWNED BY public.gal_moon.gal_moon_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    distance_from_earth numeric(10,2) NOT NULL
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
    name character varying(50) NOT NULL,
    moon_id integer NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    distance_from_earth numeric(10,2) NOT NULL,
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
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    distance_from_earth numeric(10,2) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL
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
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    distance_from_earth numeric(10,2) NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: gal_moon gal_moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gal_moon ALTER COLUMN gal_moon_id SET DEFAULT nextval('public.gal_moon_gal_moon_id_seq'::regclass);


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
-- Data for Name: gal_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.gal_moon VALUES (1, 1, 1, 'Moon of Earth');
INSERT INTO public.gal_moon VALUES (2, 2, 2, 'Phobos');
INSERT INTO public.gal_moon VALUES (3, 3, 3, 'Europa');
INSERT INTO public.gal_moon VALUES (4, 4, 4, 'Titan');
INSERT INTO public.gal_moon VALUES (5, 5, 5, 'Triton');
INSERT INTO public.gal_moon VALUES (6, 6, 6, 'KeplerMoon1');
INSERT INTO public.gal_moon VALUES (7, 7, 7, 'ProximaMoon1');
INSERT INTO public.gal_moon VALUES (8, 8, 8, 'GlieseMoon1');
INSERT INTO public.gal_moon VALUES (9, 9, 9, 'HDMoon1');
INSERT INTO public.gal_moon VALUES (10, 10, 10, 'TrappistMoon1');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13600, true, true, 0.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major galaxy', 10000, true, false, 2537000.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral galaxy', 12000, true, false, 3000000.00);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Interacting galaxy', 8000, true, false, 23000000.00);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Bright nucleus galaxy', 9000, true, false, 29000000.00);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Face-on spiral galaxy', 11000, true, false, 21000000.00);
INSERT INTO public.galaxy VALUES (7, 'Cartwheel', 'Ring galaxy', 7000, false, false, 50000000.00);
INSERT INTO public.galaxy VALUES (8, 'Cigar', 'Starburst galaxy', 6000, false, false, 12000000.00);
INSERT INTO public.galaxy VALUES (9, 'Sunflower', 'Spiral galaxy', 9500, true, false, 27000000.00);
INSERT INTO public.galaxy VALUES (10, 'Black Eye', 'Galaxy with dark band', 8500, true, false, 17000000.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 'Earth natural satellite', 4500, true, false, 0.00, 1);
INSERT INTO public.moon VALUES ('Phobos', 2, 'Moon of Mars', 4500, false, false, 0.52, 2);
INSERT INTO public.moon VALUES ('Europa', 3, 'Moon of Jupiter', 4500, true, false, 4.20, 3);
INSERT INTO public.moon VALUES ('Titan', 4, 'Largest moon of Saturn', 4500, true, false, 8.50, 4);
INSERT INTO public.moon VALUES ('Triton', 5, 'Moon of Neptune', 4500, true, false, 30.00, 5);
INSERT INTO public.moon VALUES ('KeplerMoon1', 6, 'Fictional exomoon', 4000, true, false, 600.00, 6);
INSERT INTO public.moon VALUES ('ProximaMoon1', 7, 'Moon of Proxima b', 4800, true, false, 4.24, 7);
INSERT INTO public.moon VALUES ('GlieseMoon1', 8, 'Moon of Gliese 581g', 5000, true, false, 20.00, 8);
INSERT INTO public.moon VALUES ('HDMoon1', 9, 'Moon of HD 209458 b', 3000, true, false, 150.00, 9);
INSERT INTO public.moon VALUES ('TrappistMoon1', 10, 'Moon of TRAPPIST-1e', 7600, true, false, 40.00, 10);
INSERT INTO public.moon VALUES ('Deimos', 11, 'Moon of Mars', 4500, false, false, 0.52, 2);
INSERT INTO public.moon VALUES ('Ganymede', 12, 'Moon of Jupiter', 4500, true, false, 4.20, 3);
INSERT INTO public.moon VALUES ('Callisto', 13, 'Moon of Jupiter', 4500, true, false, 4.20, 3);
INSERT INTO public.moon VALUES ('Io', 14, 'Moon of Jupiter', 4500, true, false, 4.20, 3);
INSERT INTO public.moon VALUES ('Rhea', 15, 'Moon of Saturn', 4500, true, false, 8.50, 4);
INSERT INTO public.moon VALUES ('Iapetus', 16, 'Moon of Saturn', 4500, true, false, 8.50, 4);
INSERT INTO public.moon VALUES ('Oberon', 17, 'Moon of Uranus', 4500, true, false, 19.00, 5);
INSERT INTO public.moon VALUES ('Titania', 18, 'Moon of Uranus', 4500, true, false, 19.00, 5);
INSERT INTO public.moon VALUES ('Umbriel', 19, 'Moon of Uranus', 4500, true, false, 19.00, 5);
INSERT INTO public.moon VALUES ('Ariel', 20, 'Moon of Uranus', 4500, true, false, 19.00, 5);
INSERT INTO public.moon VALUES ('Miranda', 21, 'Moon of Uranus', 4500, true, false, 19.00, 5);
INSERT INTO public.moon VALUES ('Charon', 22, 'Moon of Pluto', 4500, true, false, 39.00, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 'Our home planet', 4500, true, true, 0.00, 1, 1);
INSERT INTO public.planet VALUES ('Mars', 'Red planet', 4500, true, false, 0.52, 2, 2);
INSERT INTO public.planet VALUES ('Jupiter', 'Gas giant', 4500, true, false, 4.20, 3, 3);
INSERT INTO public.planet VALUES ('Saturn', 'Ringed planet', 4500, true, false, 8.50, 4, 4);
INSERT INTO public.planet VALUES ('Neptune', 'Ice giant', 4500, true, false, 30.00, 5, 5);
INSERT INTO public.planet VALUES ('Kepler-22b', 'Exoplanet candidate', 4000, true, false, 600.00, 6, 6);
INSERT INTO public.planet VALUES ('Proxima b', 'Exoplanet orbiting Proxima', 4800, true, false, 4.24, 7, 7);
INSERT INTO public.planet VALUES ('Gliese 581g', 'Potentially habitable exoplanet', 5000, true, false, 20.00, 8, 8);
INSERT INTO public.planet VALUES ('HD 209458 b', 'Hot Jupiter exoplanet', 3000, true, false, 150.00, 9, 9);
INSERT INTO public.planet VALUES ('TRAPPIST-1e', 'Rocky exoplanet', 7600, true, false, 40.00, 10, 10);
INSERT INTO public.planet VALUES ('Venus', 'Second planet from Sun', 4500, true, false, 0.72, 11, 1);
INSERT INTO public.planet VALUES ('Mercury', 'Closest planet to Sun', 4500, true, false, 0.39, 12, 1);
INSERT INTO public.planet VALUES ('Ceres', 'Dwarf planet in asteroid belt', 4500, true, false, 2.77, 13, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Star of our solar system', 4600, true, false, 0.00, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Closest known star', 4500, true, false, 4.24, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 'Brightest star in night sky', 300, true, false, 8.60, 3);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Red supergiant', 10000, true, false, 642.50, 4);
INSERT INTO public.star VALUES (5, 'Rigel', 'Blue supergiant', 8000, true, false, 860.00, 5);
INSERT INTO public.star VALUES (6, 'Vega', 'Bright star in Lyra', 455, true, false, 25.00, 6);
INSERT INTO public.star VALUES (7, 'Polaris', 'North Star', 7000, true, false, 433.00, 7);
INSERT INTO public.star VALUES (8, 'Antares', 'Red supergiant', 12000, true, false, 550.00, 8);
INSERT INTO public.star VALUES (9, 'Altair', 'Bright nearby star', 1000, true, false, 16.70, 9);
INSERT INTO public.star VALUES (10, 'Aldebaran', 'Orange giant star', 6500, true, false, 65.00, 10);


--
-- Name: gal_moon_gal_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.gal_moon_gal_moon_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: gal_moon gal_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gal_moon
    ADD CONSTRAINT gal_moon_pkey PRIMARY KEY (gal_moon_id);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: gal_moon unique_name_gm; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gal_moon
    ADD CONSTRAINT unique_name_gm UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: gal_moon gal_moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gal_moon
    ADD CONSTRAINT gal_moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: gal_moon gal_moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gal_moon
    ADD CONSTRAINT gal_moon_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

