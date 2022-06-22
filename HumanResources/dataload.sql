--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-06-21 16:39:31

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
-- TOC entry 210 (class 1259 OID 16564)
-- Name: day; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.day (
    id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.day OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16663)
-- Name: day_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.day ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 16619)
-- Name: employee_evaluation_ireland; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_evaluation_ireland (
    id integer NOT NULL,
    qualification integer,
    commentary character varying(200),
    date date,
    identification_client character varying(50),
    id_employee_fk integer
);


ALTER TABLE public.employee_evaluation_ireland OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16662)
-- Name: employee_evaluation_ireland_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.employee_evaluation_ireland ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employee_evaluation_ireland_id_seq
    START WITH 3000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 16594)
-- Name: employee_evaluation_scotland; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_evaluation_scotland (
    id integer NOT NULL,
    qualification integer,
    commentary character varying(200),
    date date,
    identification_client character varying(50),
    id_employee_fk integer
);


ALTER TABLE public.employee_evaluation_scotland OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16661)
-- Name: employee_evaluation_scotland_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.employee_evaluation_scotland ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employee_evaluation_scotland_id_seq
    START WITH 2000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 16644)
-- Name: employee_evaluation_usa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_evaluation_usa (
    id integer NOT NULL,
    qualification integer,
    commentary character varying(200),
    date date,
    identification_client character varying(50),
    id_employee_fk integer
);


ALTER TABLE public.employee_evaluation_usa OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16660)
-- Name: employee_evaluation_usa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.employee_evaluation_usa ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employee_evaluation_usa_id_seq
    START WITH 1000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 214 (class 1259 OID 16604)
-- Name: employee_ireland; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_ireland (
    id integer NOT NULL,
    name character varying(50),
    surname_1 character varying(50),
    surname_2 character varying(50),
    identification character varying(50),
    age integer,
    salary money,
    hiring_date date,
    address character varying(200),
    phone character varying(50),
    id_schedule_fk integer,
    id_position_fk integer
);


ALTER TABLE public.employee_ireland OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16659)
-- Name: employee_ireland_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.employee_ireland ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employee_ireland_id_seq
    START WITH 3000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 212 (class 1259 OID 16579)
-- Name: employee_scotland; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_scotland (
    id integer NOT NULL,
    name character varying(50),
    surname_1 character varying(50),
    surname_2 character varying(50),
    identification character varying(50),
    age integer,
    salary money,
    hiring_date date,
    address character varying(200),
    phone character varying(50),
    id_schedule_fk integer,
    id_position_fk integer
);


ALTER TABLE public.employee_scotland OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16658)
-- Name: employee_scotland_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.employee_scotland ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employee_scotland_id_seq
    START WITH 2000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 16629)
-- Name: employee_usa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_usa (
    id integer NOT NULL,
    name character varying(50),
    surname_1 character varying(50),
    surname_2 character varying(50),
    identification character varying(50),
    age integer,
    salary money,
    hiring_date date,
    address character varying(200),
    phone character varying(50),
    id_schedule_fk integer,
    id_position_fk integer
);


ALTER TABLE public.employee_usa OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16657)
-- Name: employee_usa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.employee_usa ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employee_usa_id_seq
    START WITH 1000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 209 (class 1259 OID 16559)
-- Name: position; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."position" (
    id integer NOT NULL,
    name character varying(50),
    description character varying(100)
);


ALTER TABLE public."position" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16655)
-- Name: position_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."position" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.position_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 211 (class 1259 OID 16569)
-- Name: schedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schedule (
    id integer NOT NULL,
    checkin_time time(0) without time zone,
    departure_time time(0) without time zone,
    id_start_day_fk integer,
    id_end_day_fk integer
);


ALTER TABLE public.schedule OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16656)
-- Name: schedule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.schedule ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3373 (class 0 OID 16564)
-- Dependencies: 210
-- Data for Name: day; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.day (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'Monday');
INSERT INTO public.day (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'Tuesday');
INSERT INTO public.day (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'Wednesday');
INSERT INTO public.day (id, name) OVERRIDING SYSTEM VALUE VALUES (4, 'Thursday');
INSERT INTO public.day (id, name) OVERRIDING SYSTEM VALUE VALUES (5, 'Friday');
INSERT INTO public.day (id, name) OVERRIDING SYSTEM VALUE VALUES (6, 'Saturday');
INSERT INTO public.day (id, name) OVERRIDING SYSTEM VALUE VALUES (7, 'Sunday');


--
-- TOC entry 3378 (class 0 OID 16619)
-- Dependencies: 215
-- Data for Name: employee_evaluation_ireland; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3376 (class 0 OID 16594)
-- Dependencies: 213
-- Data for Name: employee_evaluation_scotland; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3380 (class 0 OID 16644)
-- Dependencies: 217
-- Data for Name: employee_evaluation_usa; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3377 (class 0 OID 16604)
-- Dependencies: 214
-- Data for Name: employee_ireland; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3375 (class 0 OID 16579)
-- Dependencies: 212
-- Data for Name: employee_scotland; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3379 (class 0 OID 16629)
-- Dependencies: 216
-- Data for Name: employee_usa; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employee_usa (id, name, surname_1, surname_2, identification, age, salary, hiring_date, address, phone, id_schedule_fk, id_position_fk) OVERRIDING SYSTEM VALUE VALUES (1000, 'Damian', 'Macca', 'ncheese', '123456789', 30, '$5,000.00', '2022-06-19', '478 W. Fordham St. Wyandotte, MI 48192', '12345678', 1, 1);


--
-- TOC entry 3372 (class 0 OID 16559)
-- Dependencies: 209
-- Data for Name: position; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."position" (id, name, description) OVERRIDING SYSTEM VALUE VALUES (1, 'Worker', 'Just a regular worker');
INSERT INTO public."position" (id, name, description) OVERRIDING SYSTEM VALUE VALUES (2, 'Admin', 'Controls and regulates everything that has to do with databases');


--
-- TOC entry 3374 (class 0 OID 16569)
-- Dependencies: 211
-- Data for Name: schedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.schedule (id, checkin_time, departure_time, id_start_day_fk, id_end_day_fk) OVERRIDING SYSTEM VALUE VALUES (1, '07:00:00', '17:00:00', 1, 5);


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 226
-- Name: day_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.day_id_seq', 7, true);


--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 225
-- Name: employee_evaluation_ireland_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_evaluation_ireland_id_seq', 3000, false);


--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 224
-- Name: employee_evaluation_scotland_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_evaluation_scotland_id_seq', 2000, false);


--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 223
-- Name: employee_evaluation_usa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_evaluation_usa_id_seq', 1000, false);


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 222
-- Name: employee_ireland_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_ireland_id_seq', 3000, false);


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 221
-- Name: employee_scotland_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_scotland_id_seq', 2000, false);


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 220
-- Name: employee_usa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_usa_id_seq', 1000, true);


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 218
-- Name: position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.position_id_seq', 2, true);


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 219
-- Name: schedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schedule_id_seq', 1, true);


--
-- TOC entry 3207 (class 2606 OID 16568)
-- Name: day day_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.day
    ADD CONSTRAINT day_pkey PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 16623)
-- Name: employee_evaluation_ireland employee_evaluation_ireland_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_evaluation_ireland
    ADD CONSTRAINT employee_evaluation_ireland_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 16598)
-- Name: employee_evaluation_scotland employee_evaluation_scotland_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_evaluation_scotland
    ADD CONSTRAINT employee_evaluation_scotland_pkey PRIMARY KEY (id);


--
-- TOC entry 3221 (class 2606 OID 16648)
-- Name: employee_evaluation_usa employee_evaluation_usa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_evaluation_usa
    ADD CONSTRAINT employee_evaluation_usa_pkey PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 16608)
-- Name: employee_ireland employee_ireland_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_ireland
    ADD CONSTRAINT employee_ireland_pkey PRIMARY KEY (id);


--
-- TOC entry 3211 (class 2606 OID 16583)
-- Name: employee_scotland employee_scotland_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_scotland
    ADD CONSTRAINT employee_scotland_pkey PRIMARY KEY (id);


--
-- TOC entry 3219 (class 2606 OID 16633)
-- Name: employee_usa employee_usa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_usa
    ADD CONSTRAINT employee_usa_pkey PRIMARY KEY (id);


--
-- TOC entry 3205 (class 2606 OID 16563)
-- Name: position position_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."position"
    ADD CONSTRAINT position_pkey PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 16573)
-- Name: schedule schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (id);


--
-- TOC entry 3229 (class 2606 OID 16624)
-- Name: employee_evaluation_ireland FK_employee_evaluation_ireland.id_employee_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_evaluation_ireland
    ADD CONSTRAINT "FK_employee_evaluation_ireland.id_employee_fk" FOREIGN KEY (id_employee_fk) REFERENCES public.employee_ireland(id);


--
-- TOC entry 3226 (class 2606 OID 16599)
-- Name: employee_evaluation_scotland FK_employee_evaluation_scotland.id_employee_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_evaluation_scotland
    ADD CONSTRAINT "FK_employee_evaluation_scotland.id_employee_fk" FOREIGN KEY (id_employee_fk) REFERENCES public.employee_scotland(id);


--
-- TOC entry 3232 (class 2606 OID 16649)
-- Name: employee_evaluation_usa FK_employee_evaluation_usa.id_employee_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_evaluation_usa
    ADD CONSTRAINT "FK_employee_evaluation_usa.id_employee_fk" FOREIGN KEY (id_employee_fk) REFERENCES public.employee_usa(id);


--
-- TOC entry 3227 (class 2606 OID 16609)
-- Name: employee_ireland FK_employee_ireland.id_position_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_ireland
    ADD CONSTRAINT "FK_employee_ireland.id_position_fk" FOREIGN KEY (id_position_fk) REFERENCES public."position"(id);


--
-- TOC entry 3228 (class 2606 OID 16614)
-- Name: employee_ireland FK_employee_ireland.id_schedule_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_ireland
    ADD CONSTRAINT "FK_employee_ireland.id_schedule_fk" FOREIGN KEY (id_schedule_fk) REFERENCES public.schedule(id);


--
-- TOC entry 3224 (class 2606 OID 16584)
-- Name: employee_scotland FK_employee_scotland.id_position_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_scotland
    ADD CONSTRAINT "FK_employee_scotland.id_position_fk" FOREIGN KEY (id_position_fk) REFERENCES public."position"(id);


--
-- TOC entry 3225 (class 2606 OID 16589)
-- Name: employee_scotland FK_employee_scotland.id_schedule_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_scotland
    ADD CONSTRAINT "FK_employee_scotland.id_schedule_fk" FOREIGN KEY (id_schedule_fk) REFERENCES public.schedule(id);


--
-- TOC entry 3231 (class 2606 OID 16639)
-- Name: employee_usa FK_employee_usa.id_position_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_usa
    ADD CONSTRAINT "FK_employee_usa.id_position_fk" FOREIGN KEY (id_position_fk) REFERENCES public."position"(id);


--
-- TOC entry 3230 (class 2606 OID 16634)
-- Name: employee_usa FK_employee_usa.id_schedule_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_usa
    ADD CONSTRAINT "FK_employee_usa.id_schedule_fk" FOREIGN KEY (id_schedule_fk) REFERENCES public.schedule(id);


--
-- TOC entry 3223 (class 2606 OID 16678)
-- Name: schedule id_end_day_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT id_end_day_fk FOREIGN KEY (id_end_day_fk) REFERENCES public.day(id) NOT VALID;


--
-- TOC entry 3222 (class 2606 OID 16673)
-- Name: schedule id_start_day_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT id_start_day_fk FOREIGN KEY (id_start_day_fk) REFERENCES public.day(id) NOT VALID;


-- Completed on 2022-06-21 16:39:33

--
-- PostgreSQL database dump complete
--

