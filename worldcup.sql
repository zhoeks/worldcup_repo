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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner character varying(30) NOT NULL,
    opponent character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (130, 2018, 'Final', 'France', 'Croatia', 4, 2, 581, 583);
INSERT INTO public.games VALUES (131, 2018, 'Third Place', 'Belgium', 'England', 2, 0, 582, 584);
INSERT INTO public.games VALUES (132, 2018, 'Semi-Final', 'Croatia', 'England', 2, 1, 583, 584);
INSERT INTO public.games VALUES (133, 2018, 'Semi-Final', 'France', 'Belgium', 1, 0, 581, 582);
INSERT INTO public.games VALUES (134, 2018, 'Quarter-Final', 'Croatia', 'Russia', 3, 2, 583, 587);
INSERT INTO public.games VALUES (135, 2018, 'Quarter-Final', 'England', 'Sweden', 2, 0, 584, 585);
INSERT INTO public.games VALUES (136, 2018, 'Quarter-Final', 'Belgium', 'Brazil', 2, 1, 582, 586);
INSERT INTO public.games VALUES (137, 2018, 'Quarter-Final', 'France', 'Uruguay', 2, 0, 581, 588);
INSERT INTO public.games VALUES (138, 2018, 'Eighth-Final', 'England', 'Colombia', 2, 1, 584, 592);
INSERT INTO public.games VALUES (139, 2018, 'Eighth-Final', 'Sweden', 'Switzerland', 1, 0, 585, 594);
INSERT INTO public.games VALUES (140, 2018, 'Eighth-Final', 'Belgium', 'Japan', 3, 2, 582, 595);
INSERT INTO public.games VALUES (141, 2018, 'Eighth-Final', 'Brazil', 'Mexico', 2, 0, 586, 596);
INSERT INTO public.games VALUES (142, 2018, 'Eighth-Final', 'Croatia', 'Denmark', 2, 1, 583, 597);
INSERT INTO public.games VALUES (143, 2018, 'Eighth-Final', 'Russia', 'Spain', 2, 1, 587, 598);
INSERT INTO public.games VALUES (144, 2018, 'Eighth-Final', 'Uruguay', 'Portugal', 2, 1, 588, 599);
INSERT INTO public.games VALUES (145, 2018, 'Eighth-Final', 'France', 'Argentina', 4, 3, 581, 591);
INSERT INTO public.games VALUES (146, 2014, 'Final', 'Germany', 'Argentina', 1, 0, 589, 591);
INSERT INTO public.games VALUES (147, 2014, 'Third Place', 'Netherlands', 'Brazil', 3, 0, 590, 586);
INSERT INTO public.games VALUES (148, 2014, 'Semi-Final', 'Argentina', 'Netherlands', 1, 0, 591, 590);
INSERT INTO public.games VALUES (149, 2014, 'Semi-Final', 'Germany', 'Brazil', 7, 1, 589, 586);
INSERT INTO public.games VALUES (150, 2014, 'Quarter-Final', 'Netherlands', 'Costa Rica', 1, 0, 590, 593);
INSERT INTO public.games VALUES (151, 2014, 'Quarter-Final', 'Argentina', 'Belgium', 1, 0, 591, 582);
INSERT INTO public.games VALUES (152, 2014, 'Quarter-Final', 'Brazil', 'Colombia', 2, 1, 586, 592);
INSERT INTO public.games VALUES (153, 2014, 'Quarter-Final', 'Germany', 'France', 1, 0, 589, 581);
INSERT INTO public.games VALUES (154, 2014, 'Eighth-Final', 'Brazil', 'Chile', 2, 1, 586, 600);
INSERT INTO public.games VALUES (155, 2014, 'Eighth-Final', 'Colombia', 'Uruguay', 2, 0, 592, 588);
INSERT INTO public.games VALUES (156, 2014, 'Eighth-Final', 'France', 'Nigeria', 2, 0, 581, 601);
INSERT INTO public.games VALUES (157, 2014, 'Eighth-Final', 'Germany', 'Algeria', 2, 1, 589, 602);
INSERT INTO public.games VALUES (158, 2014, 'Eighth-Final', 'Netherlands', 'Mexico', 2, 1, 590, 596);
INSERT INTO public.games VALUES (159, 2014, 'Eighth-Final', 'Costa Rica', 'Greece', 2, 1, 593, 603);
INSERT INTO public.games VALUES (160, 2014, 'Eighth-Final', 'Argentina', 'Switzerland', 1, 0, 591, 594);
INSERT INTO public.games VALUES (161, 2014, 'Eighth-Final', 'Belgium', 'United States', 2, 1, 582, 604);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (581, 'France');
INSERT INTO public.teams VALUES (582, 'Belgium');
INSERT INTO public.teams VALUES (583, 'Croatia');
INSERT INTO public.teams VALUES (584, 'England');
INSERT INTO public.teams VALUES (585, 'Sweden');
INSERT INTO public.teams VALUES (586, 'Brazil');
INSERT INTO public.teams VALUES (587, 'Russia');
INSERT INTO public.teams VALUES (588, 'Uruguay');
INSERT INTO public.teams VALUES (589, 'Germany');
INSERT INTO public.teams VALUES (590, 'Netherlands');
INSERT INTO public.teams VALUES (591, 'Argentina');
INSERT INTO public.teams VALUES (592, 'Colombia');
INSERT INTO public.teams VALUES (593, 'Costa Rica');
INSERT INTO public.teams VALUES (594, 'Switzerland');
INSERT INTO public.teams VALUES (595, 'Japan');
INSERT INTO public.teams VALUES (596, 'Mexico');
INSERT INTO public.teams VALUES (597, 'Denmark');
INSERT INTO public.teams VALUES (598, 'Spain');
INSERT INTO public.teams VALUES (599, 'Portugal');
INSERT INTO public.teams VALUES (600, 'Chile');
INSERT INTO public.teams VALUES (601, 'Nigeria');
INSERT INTO public.teams VALUES (602, 'Algeria');
INSERT INTO public.teams VALUES (603, 'Greece');
INSERT INTO public.teams VALUES (604, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 161, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 604, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

