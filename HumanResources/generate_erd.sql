-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.day
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT day_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.employee_evaluation_ireland
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 3000 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    qualification integer,
    commentary character varying(200) COLLATE pg_catalog."default",
    date date,
    identification_client character varying(50) COLLATE pg_catalog."default",
    id_employee_fk integer,
    CONSTRAINT employee_evaluation_ireland_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.employee_evaluation_scotland
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 2000 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    qualification integer,
    commentary character varying(200) COLLATE pg_catalog."default",
    date date,
    identification_client character varying(50) COLLATE pg_catalog."default",
    id_employee_fk integer,
    CONSTRAINT employee_evaluation_scotland_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.employee_evaluation_usa
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1000 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    qualification integer,
    commentary character varying(200) COLLATE pg_catalog."default",
    date date,
    identification_client character varying(50) COLLATE pg_catalog."default",
    id_employee_fk integer,
    CONSTRAINT employee_evaluation_usa_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.employee_ireland
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 3000 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying(50) COLLATE pg_catalog."default",
    surname_1 character varying(50) COLLATE pg_catalog."default",
    surname_2 character varying(50) COLLATE pg_catalog."default",
    identification character varying(50) COLLATE pg_catalog."default",
    age integer,
    salary money,
    hiring_date date,
    address character varying(200) COLLATE pg_catalog."default",
    phone character varying(50) COLLATE pg_catalog."default",
    id_schedule_fk integer,
    id_position_fk integer,
    CONSTRAINT employee_ireland_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.employee_scotland
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 2000 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying(50) COLLATE pg_catalog."default",
    surname_1 character varying(50) COLLATE pg_catalog."default",
    surname_2 character varying(50) COLLATE pg_catalog."default",
    identification character varying(50) COLLATE pg_catalog."default",
    age integer,
    salary money,
    hiring_date date,
    address character varying(200) COLLATE pg_catalog."default",
    phone character varying(50) COLLATE pg_catalog."default",
    id_schedule_fk integer,
    id_position_fk integer,
    CONSTRAINT employee_scotland_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.employee_usa
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1000 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying(50) COLLATE pg_catalog."default",
    surname_1 character varying(50) COLLATE pg_catalog."default",
    surname_2 character varying(50) COLLATE pg_catalog."default",
    identification character varying(50) COLLATE pg_catalog."default",
    age integer,
    salary money,
    hiring_date date,
    address character varying(200) COLLATE pg_catalog."default",
    phone character varying(50) COLLATE pg_catalog."default",
    id_schedule_fk integer,
    id_position_fk integer,
    CONSTRAINT employee_usa_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public."position"
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying(50) COLLATE pg_catalog."default",
    description character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT position_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.schedule
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    checkin_time time(0) without time zone,
    departure_time time(0) without time zone,
    id_start_day_fk integer,
    id_end_day_fk integer,
    CONSTRAINT schedule_pkey PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.employee_evaluation_ireland
    ADD CONSTRAINT "FK_employee_evaluation_ireland.id_employee_fk" FOREIGN KEY (id_employee_fk)
    REFERENCES public.employee_ireland (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.employee_evaluation_scotland
    ADD CONSTRAINT "FK_employee_evaluation_scotland.id_employee_fk" FOREIGN KEY (id_employee_fk)
    REFERENCES public.employee_scotland (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.employee_evaluation_usa
    ADD CONSTRAINT "FK_employee_evaluation_usa.id_employee_fk" FOREIGN KEY (id_employee_fk)
    REFERENCES public.employee_usa (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.employee_ireland
    ADD CONSTRAINT "FK_employee_ireland.id_position_fk" FOREIGN KEY (id_position_fk)
    REFERENCES public."position" (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.employee_ireland
    ADD CONSTRAINT "FK_employee_ireland.id_schedule_fk" FOREIGN KEY (id_schedule_fk)
    REFERENCES public.schedule (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.employee_scotland
    ADD CONSTRAINT "FK_employee_scotland.id_position_fk" FOREIGN KEY (id_position_fk)
    REFERENCES public."position" (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.employee_scotland
    ADD CONSTRAINT "FK_employee_scotland.id_schedule_fk" FOREIGN KEY (id_schedule_fk)
    REFERENCES public.schedule (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.employee_usa
    ADD CONSTRAINT "FK_employee_usa.id_position_fk" FOREIGN KEY (id_position_fk)
    REFERENCES public."position" (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.employee_usa
    ADD CONSTRAINT "FK_employee_usa.id_schedule_fk" FOREIGN KEY (id_schedule_fk)
    REFERENCES public.schedule (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.schedule
    ADD CONSTRAINT id_end_day_fk FOREIGN KEY (id_end_day_fk)
    REFERENCES public.day (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.schedule
    ADD CONSTRAINT id_start_day_fk FOREIGN KEY (id_start_day_fk)
    REFERENCES public.day (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;