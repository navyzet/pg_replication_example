--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.12
-- Dumped by pg_dump version 9.6.12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: table_a; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.table_a (
    id integer NOT NULL,
    a_value character varying(255) NOT NULL
);


ALTER TABLE public.table_a OWNER TO postgres;

--
-- Name: table_a_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.table_a_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_a_id_seq OWNER TO postgres;

--
-- Name: table_a_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.table_a_id_seq OWNED BY public.table_a.id;


--
-- Name: table_b; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.table_b (
    id integer NOT NULL,
    b_value character varying(255) NOT NULL
);


ALTER TABLE public.table_b OWNER TO postgres;

--
-- Name: table_b_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.table_b_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_b_id_seq OWNER TO postgres;

--
-- Name: table_b_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.table_b_id_seq OWNED BY public.table_b.id;


--
-- Name: table_c; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.table_c (
    id integer NOT NULL,
    c_value character varying(255) NOT NULL
);


ALTER TABLE public.table_c OWNER TO postgres;

--
-- Name: table_c_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.table_c_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_c_id_seq OWNER TO postgres;

--
-- Name: table_c_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.table_c_id_seq OWNED BY public.table_c.id;


--
-- Name: table_a id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_a ALTER COLUMN id SET DEFAULT nextval('public.table_a_id_seq'::regclass);


--
-- Name: table_b id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_b ALTER COLUMN id SET DEFAULT nextval('public.table_b_id_seq'::regclass);


--
-- Name: table_c id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_c ALTER COLUMN id SET DEFAULT nextval('public.table_c_id_seq'::regclass);


--
-- Data for Name: table_a; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.table_a (id, a_value) FROM stdin;
1	100
2	1
3	2
4	3
5	4
6	5
7	6
8	7
9	8
10	9
11	10
\.


--
-- Name: table_a_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.table_a_id_seq', 11, true);


--
-- Data for Name: table_b; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.table_b (id, b_value) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
\.


--
-- Name: table_b_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.table_b_id_seq', 10, true);


--
-- Data for Name: table_c; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.table_c (id, c_value) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
\.


--
-- Name: table_c_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.table_c_id_seq', 10, true);


--
-- Name: table_a table_a_a_value_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_a
    ADD CONSTRAINT table_a_a_value_key UNIQUE (a_value);


--
-- Name: table_a table_a_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_a
    ADD CONSTRAINT table_a_pkey PRIMARY KEY (id);


--
-- Name: table_b table_b_b_value_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_b
    ADD CONSTRAINT table_b_b_value_key UNIQUE (b_value);


--
-- Name: table_b table_b_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_b
    ADD CONSTRAINT table_b_pkey PRIMARY KEY (id);


--
-- Name: table_c table_c_c_value_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_c
    ADD CONSTRAINT table_c_c_value_key UNIQUE (c_value);


--
-- Name: table_c table_c_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_c
    ADD CONSTRAINT table_c_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
