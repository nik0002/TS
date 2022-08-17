--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-08-17 20:23:27

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
-- TOC entry 209 (class 1259 OID 16395)
-- Name: saved; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.saved (
    id integer,
    number integer
);


ALTER TABLE public.saved OWNER TO postgres;

--
-- TOC entry 3302 (class 0 OID 16395)
-- Dependencies: 209
-- Data for Name: saved; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.saved (id, number) VALUES (2, 1);
INSERT INTO public.saved (id, number) VALUES (2, 9);
INSERT INTO public.saved (id, number) VALUES (2, 15);
INSERT INTO public.saved (id, number) VALUES (2, 32);
INSERT INTO public.saved (id, number) VALUES (2, 92);
INSERT INTO public.saved (id, number) VALUES (3, 3);
INSERT INTO public.saved (id, number) VALUES (3, 5);
INSERT INTO public.saved (id, number) VALUES (3, 10);
INSERT INTO public.saved (id, number) VALUES (3, 11);
INSERT INTO public.saved (id, number) VALUES (3, 19);
INSERT INTO public.saved (id, number) VALUES (4, 3);
INSERT INTO public.saved (id, number) VALUES (4, 4);
INSERT INTO public.saved (id, number) VALUES (4, 5);
INSERT INTO public.saved (id, number) VALUES (5, 1);
INSERT INTO public.saved (id, number) VALUES (5, 4);
INSERT INTO public.saved (id, number) VALUES (5, 5);
INSERT INTO public.saved (id, number) VALUES (5, 8);
INSERT INTO public.saved (id, number) VALUES (5, 9);
INSERT INTO public.saved (id, number) VALUES (5, 12);
INSERT INTO public.saved (id, number) VALUES (6, 1);
INSERT INTO public.saved (id, number) VALUES (6, 2);
INSERT INTO public.saved (id, number) VALUES (6, 5);
INSERT INTO public.saved (id, number) VALUES (7, 3);
INSERT INTO public.saved (id, number) VALUES (7, 12);
INSERT INTO public.saved (id, number) VALUES (7, 19);
INSERT INTO public.saved (id, number) VALUES (8, 1);
INSERT INTO public.saved (id, number) VALUES (8, 2);
INSERT INTO public.saved (id, number) VALUES (8, 5);
INSERT INTO public.saved (id, number) VALUES (8, 9);
INSERT INTO public.saved (id, number) VALUES (9, 1);
INSERT INTO public.saved (id, number) VALUES (9, 5);
INSERT INTO public.saved (id, number) VALUES (9, 15);
INSERT INTO public.saved (id, number) VALUES (9, 32);
INSERT INTO public.saved (id, number) VALUES (9, 92);
INSERT INTO public.saved (id, number) VALUES (9, 94);
INSERT INTO public.saved (id, number) VALUES (0, 3);
INSERT INTO public.saved (id, number) VALUES (0, 4);
INSERT INTO public.saved (id, number) VALUES (0, 5);
INSERT INTO public.saved (id, number) VALUES (1, 3);
INSERT INTO public.saved (id, number) VALUES (1, 5);
INSERT INTO public.saved (id, number) VALUES (1, 10);
INSERT INTO public.saved (id, number) VALUES (1, 11);
INSERT INTO public.saved (id, number) VALUES (1, 19);


-- Completed on 2022-08-17 20:23:27

--
-- PostgreSQL database dump complete
--

