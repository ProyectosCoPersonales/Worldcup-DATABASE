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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 2, 2, 4, 2018, 'Final');
INSERT INTO public.games VALUES (2, 3, 4, 0, 2, 2018, 'Third Place');
INSERT INTO public.games VALUES (3, 2, 4, 1, 2, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (4, 1, 3, 0, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (5, 2, 5, 2, 3, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (6, 4, 6, 0, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (7, 3, 7, 1, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (8, 1, 8, 0, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (9, 4, 9, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (10, 6, 10, 0, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (11, 3, 11, 2, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (12, 7, 12, 0, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (13, 2, 13, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (14, 5, 14, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (15, 8, 15, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (16, 1, 16, 3, 4, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (17, 17, 16, 0, 1, 2014, 'Final');
INSERT INTO public.games VALUES (18, 18, 7, 0, 3, 2014, 'Third Place');
INSERT INTO public.games VALUES (19, 16, 18, 0, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (20, 17, 7, 1, 7, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (21, 18, 19, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (22, 16, 3, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (23, 7, 9, 1, 2, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (24, 17, 1, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (25, 7, 20, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (26, 9, 8, 0, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (27, 1, 21, 0, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (28, 17, 22, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (29, 18, 12, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (30, 19, 23, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (31, 16, 10, 0, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (32, 3, 24, 1, 2, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'France');
INSERT INTO public.teams VALUES (2, 'Croatia');
INSERT INTO public.teams VALUES (3, 'Belgium');
INSERT INTO public.teams VALUES (4, 'England');
INSERT INTO public.teams VALUES (5, 'Russia');
INSERT INTO public.teams VALUES (6, 'Sweden');
INSERT INTO public.teams VALUES (7, 'Brazil');
INSERT INTO public.teams VALUES (8, 'Uruguay');
INSERT INTO public.teams VALUES (9, 'Colombia');
INSERT INTO public.teams VALUES (10, 'Switzerland');
INSERT INTO public.teams VALUES (11, 'Japan');
INSERT INTO public.teams VALUES (12, 'Mexico');
INSERT INTO public.teams VALUES (13, 'Denmark');
INSERT INTO public.teams VALUES (14, 'Spain');
INSERT INTO public.teams VALUES (15, 'Portugal');
INSERT INTO public.teams VALUES (16, 'Argentina');
INSERT INTO public.teams VALUES (17, 'Germany');
INSERT INTO public.teams VALUES (18, 'Netherlands');
INSERT INTO public.teams VALUES (19, 'Costa Rica');
INSERT INTO public.teams VALUES (20, 'Chile');
INSERT INTO public.teams VALUES (21, 'Nigeria');
INSERT INTO public.teams VALUES (22, 'Algeria');
INSERT INTO public.teams VALUES (23, 'Greece');
INSERT INTO public.teams VALUES (24, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
