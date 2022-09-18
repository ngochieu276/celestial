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

DROP DATABASE number_guessing;
--
-- Name: number_guessing; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guessing WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guessing OWNER TO freecodecamp;

\connect number_guessing

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
    number_guess integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 1);
INSERT INTO public.games VALUES (2, 1, 2);
INSERT INTO public.games VALUES (3, 1, 2);
INSERT INTO public.games VALUES (4, 1, 3);
INSERT INTO public.games VALUES (5, 1, 3);
INSERT INTO public.games VALUES (6, 1, 2);
INSERT INTO public.games VALUES (7, 1, 2);
INSERT INTO public.games VALUES (8, 1, 2);
INSERT INTO public.games VALUES (9, 1, 4);
INSERT INTO public.games VALUES (10, 1, 4);
INSERT INTO public.games VALUES (11, 1, 5);
INSERT INTO public.games VALUES (12, 1, 5);
INSERT INTO public.games VALUES (13, 1, 4);
INSERT INTO public.games VALUES (14, 1, 4);
INSERT INTO public.games VALUES (15, 1, 4);
INSERT INTO public.games VALUES (16, 1, 6);
INSERT INTO public.games VALUES (17, 1, 6);
INSERT INTO public.games VALUES (18, 1, 7);
INSERT INTO public.games VALUES (19, 1, 7);
INSERT INTO public.games VALUES (20, 1, 6);
INSERT INTO public.games VALUES (21, 1, 6);
INSERT INTO public.games VALUES (22, 1, 6);
INSERT INTO public.games VALUES (23, 1, 1);
INSERT INTO public.games VALUES (24, 4, 1);
INSERT INTO public.games VALUES (25, 102, 8);
INSERT INTO public.games VALUES (26, 740, 8);
INSERT INTO public.games VALUES (27, 288, 9);
INSERT INTO public.games VALUES (28, 435, 9);
INSERT INTO public.games VALUES (29, 400, 8);
INSERT INTO public.games VALUES (30, 560, 8);
INSERT INTO public.games VALUES (31, 172, 8);
INSERT INTO public.games VALUES (32, 948, 10);
INSERT INTO public.games VALUES (33, 752, 10);
INSERT INTO public.games VALUES (34, 361, 11);
INSERT INTO public.games VALUES (35, 438, 11);
INSERT INTO public.games VALUES (36, 532, 10);
INSERT INTO public.games VALUES (37, 701, 10);
INSERT INTO public.games VALUES (38, 758, 10);
INSERT INTO public.games VALUES (39, 174, 12);
INSERT INTO public.games VALUES (40, 373, 12);
INSERT INTO public.games VALUES (41, 572, 13);
INSERT INTO public.games VALUES (42, 763, 13);
INSERT INTO public.games VALUES (43, 859, 12);
INSERT INTO public.games VALUES (44, 319, 12);
INSERT INTO public.games VALUES (45, 867, 12);
INSERT INTO public.games VALUES (46, 3, 1);
INSERT INTO public.games VALUES (47, 500, 14);
INSERT INTO public.games VALUES (48, 340, 14);
INSERT INTO public.games VALUES (49, 11, 15);
INSERT INTO public.games VALUES (50, 607, 15);
INSERT INTO public.games VALUES (51, 913, 14);
INSERT INTO public.games VALUES (52, 293, 14);
INSERT INTO public.games VALUES (53, 662, 14);
INSERT INTO public.games VALUES (54, 812, 16);
INSERT INTO public.games VALUES (55, 557, 16);
INSERT INTO public.games VALUES (56, 166, 17);
INSERT INTO public.games VALUES (57, 700, 17);
INSERT INTO public.games VALUES (58, 499, 16);
INSERT INTO public.games VALUES (59, 452, 16);
INSERT INTO public.games VALUES (60, 230, 16);
INSERT INTO public.games VALUES (61, 538, 18);
INSERT INTO public.games VALUES (62, 524, 18);
INSERT INTO public.games VALUES (63, 882, 19);
INSERT INTO public.games VALUES (64, 324, 19);
INSERT INTO public.games VALUES (65, 463, 18);
INSERT INTO public.games VALUES (66, 774, 18);
INSERT INTO public.games VALUES (67, 142, 18);
INSERT INTO public.games VALUES (68, 260, 20);
INSERT INTO public.games VALUES (69, 164, 20);
INSERT INTO public.games VALUES (70, 840, 21);
INSERT INTO public.games VALUES (71, 320, 21);
INSERT INTO public.games VALUES (72, 251, 20);
INSERT INTO public.games VALUES (73, 506, 20);
INSERT INTO public.games VALUES (74, 470, 20);
INSERT INTO public.games VALUES (75, 58, 22);
INSERT INTO public.games VALUES (76, 428, 22);
INSERT INTO public.games VALUES (77, 684, 23);
INSERT INTO public.games VALUES (78, 435, 23);
INSERT INTO public.games VALUES (79, 789, 22);
INSERT INTO public.games VALUES (80, 474, 22);
INSERT INTO public.games VALUES (81, 457, 22);
INSERT INTO public.games VALUES (82, 64, 24);
INSERT INTO public.games VALUES (83, 207, 24);
INSERT INTO public.games VALUES (84, 342, 25);
INSERT INTO public.games VALUES (85, 246, 25);
INSERT INTO public.games VALUES (86, 444, 24);
INSERT INTO public.games VALUES (87, 265, 24);
INSERT INTO public.games VALUES (88, 319, 24);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'hieu');
INSERT INTO public.users VALUES (2, 'user_1663493822437');
INSERT INTO public.users VALUES (3, 'user_1663493822436');
INSERT INTO public.users VALUES (4, 'user_1663493883187');
INSERT INTO public.users VALUES (5, 'user_1663493883186');
INSERT INTO public.users VALUES (6, 'user_1663494230219');
INSERT INTO public.users VALUES (7, 'user_1663494230218');
INSERT INTO public.users VALUES (8, 'user_1663494311570');
INSERT INTO public.users VALUES (9, 'user_1663494311569');
INSERT INTO public.users VALUES (10, 'user_1663494459173');
INSERT INTO public.users VALUES (11, 'user_1663494459172');
INSERT INTO public.users VALUES (12, 'user_1663494524620');
INSERT INTO public.users VALUES (13, 'user_1663494524619');
INSERT INTO public.users VALUES (14, 'user_1663494590478');
INSERT INTO public.users VALUES (15, 'user_1663494590477');
INSERT INTO public.users VALUES (16, 'user_1663494642789');
INSERT INTO public.users VALUES (17, 'user_1663494642788');
INSERT INTO public.users VALUES (18, 'user_1663494668002');
INSERT INTO public.users VALUES (19, 'user_1663494668001');
INSERT INTO public.users VALUES (20, 'user_1663494796070');
INSERT INTO public.users VALUES (21, 'user_1663494796069');
INSERT INTO public.users VALUES (22, 'user_1663494804562');
INSERT INTO public.users VALUES (23, 'user_1663494804561');
INSERT INTO public.users VALUES (24, 'user_1663494974547');
INSERT INTO public.users VALUES (25, 'user_1663494974546');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 88, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

