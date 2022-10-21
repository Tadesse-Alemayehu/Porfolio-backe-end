--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- Name: addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addresses (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    email character varying,
    phone_no character varying,
    po_box integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.addresses OWNER TO postgres;

--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.addresses_id_seq OWNER TO postgres;

--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    id bigint NOT NULL,
    name character varying,
    title character varying,
    description text,
    mobile_pic character varying,
    desktop_pic character varying,
    source_code character varying,
    live_link character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: projects_technologies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects_technologies (
    id bigint NOT NULL,
    project_id bigint NOT NULL,
    technology_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.projects_technologies OWNER TO postgres;

--
-- Name: projects_technologies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_technologies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_technologies_id_seq OWNER TO postgres;

--
-- Name: projects_technologies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_technologies_id_seq OWNED BY public.projects_technologies.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: technologies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.technologies (
    id bigint NOT NULL,
    name character varying,
    icon character varying,
    skill_level integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.technologies OWNER TO postgres;

--
-- Name: technologies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.technologies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.technologies_id_seq OWNER TO postgres;

--
-- Name: technologies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.technologies_id_seq OWNED BY public.technologies.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    full_name character varying,
    role character varying DEFAULT 'user'::character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: projects_technologies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_technologies ALTER COLUMN id SET DEFAULT nextval('public.projects_technologies_id_seq'::regclass);


--
-- Name: technologies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technologies ALTER COLUMN id SET DEFAULT nextval('public.technologies_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.addresses (id, user_id, email, phone_no, po_box, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2022-10-21 10:21:55.996853	2022-10-21 10:21:55.996853
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (id, name, title, description, mobile_pic, desktop_pic, source_code, live_link, created_at, updated_at) FROM stdin;
1	Yellow Room	An online hotel room reservation app	This is an online hotel room reservation app. We give it a fancy name of 'yellow room'\n      It's a fully functioning app with a backend setup in Rails and provides token base authentication.	./images/pictures/project-snapshots/PNG/card/Yellow-Room.png	./images/pictures/project-snapshots/PNG/Yellow-Room.png	https://github.com/Tadesse-Alemayehu/YellowRooms-Front	https://yellow-rooms.netlify.app/	2022-10-21 10:21:56.940703	2022-10-21 10:21:56.940703
2	I Spend	A mobile web application where you can manage your budget	a mobile web application where you can manage your budget: you have a list of transactions\n      associated with a category, so that you can see how much money you spent and on what.	./images/pictures/project-snapshots/PNG/card/I-Spend.png	./images/pictures/project-snapshots/PNG/I-Spend.png	https://github.com/Tadesse-Alemayehu/I-spend	https://quiet-beach-52239.herokuapp.com/	2022-10-21 10:21:56.953496	2022-10-21 10:21:56.953496
3	My weather	Check any city for a weather info	This app enables users to get instant Information regarding weather conditions.\n      If you share your location, it will fetch the top 10 cities near you and all the weather detail for each.\n      You can also search for any city in the world and get the detail. It makes use of 3 different APIs. To fetch data, map coordinates,\n      and locate your area and cities near you.	./images/pictures/project-snapshots/PNG/card/My-weather.png	./images/pictures/project-snapshots/PNG/My-weather.png	https://github.com/Tadesse-Alemayehu/My-weather	https://my-city-weather-app.netlify.app/	2022-10-21 10:21:56.969178	2022-10-21 10:21:56.969178
4	Book Store	Store and track your favorite books	The Bookstore is a website similar to the "Awesome Books" website. Here we will create an MVP version of it that allows you to:\n      Display a list of books, Add a book and Remove a selected book.	./images/pictures/project-snapshots/PNG/card/book-store.png	./images/pictures/project-snapshots/PNG/book-store.png	https://github.com/Tadesse-Alemayehu/Bookstore	https://tadesse-bookstore.netlify.app/	2022-10-21 10:21:56.977441	2022-10-21 10:21:56.977441
7	To do lists	To do list organizer	This is a single-page application (SPA) that you can use to organize your daily schedule. You can create a task ✍🏼, mark a task as completed ✔, update its details ⚒, or delete it 🚩.All this without needing to reload a page. ✔	./images/pictures/project-snapshots/PNG/card/To-Do-list.png	./images/pictures/project-snapshots/PNG/To-Do-list.png	https://github.com/Tadesse-Alemayehu/To-Do-list	https://tadesse-alemayehu.github.io/To-Do-list/	2022-10-21 10:21:57.00486	2022-10-21 10:21:57.00486
8	Learn to code	Learn to code	Learn to code is a website I plan to use for my coding class (website) ✍🏼 where I'll be teaching students all about programming and coding in general and web development in particular. 😎 This project is totally made with JavaScript, CSS3 and HTML only.	./images/pictures/project-snapshots/PNG/card/LEARN-TO-CODE.png	./images/pictures/project-snapshots/PNG/LEARN-TO-CODE.png	https://github.com/Tadesse-Alemayehu/LEARN-TO-CODE	https://tadesse-alemayehu.github.io/LEARN-TO-CODE/	2022-10-21 10:21:57.012584	2022-10-21 10:21:57.012584
9	Rock-Paper-Scissors	Learn to code	Play this with a computer see if you can beat it 😎	./images/pictures/project-snapshots/PNG/card/Rock-Paper-Scissors-Advance.png	./images/pictures/project-snapshots/PNG/Rock-Paper-Scissors-Advance.png	https://github.com/Tadesse-Alemayehu/Rock-Paper-Scissors-Advance	https://tadesse-alemayehu.github.io/Rock-Paper-Scissors-Advance/	2022-10-21 10:21:57.020176	2022-10-21 10:21:57.020176
10	Etch-A-Sketch	Project two(drawing board)	So you love to draw? Good! This is an Etch-a-sketch project and you can create an awesome drawing board with your pre-defined pixel range and draw your picture.	./images/pictures/project-snapshots/PNG/card/Etch-A-Sketch.png	./images/pictures/project-snapshots/PNG/Etch-A-Sketch.png	https://github.com/Tadesse-Alemayehu/Etch-A-Sketch	https://tadesse-alemayehu.github.io/Etch-A-Sketch/	2022-10-21 10:21:57.029471	2022-10-21 10:21:57.029471
11	YouTube-Clone	Project five. Microverse Bootcamp	Cloning a simple YouTube page with just HTML and CSS.	./images/pictures/project-snapshots/PNG/card/YouTube-Clone.png	./images/pictures/project-snapshots/PNG/YouTube-Clone.png	https://github.com/Tadesse-Alemayehu/YouTube-Clone	https://tadesse-alemayehu.github.io/YouTube-Clone/	2022-10-21 10:21:57.045244	2022-10-21 10:21:57.045244
5	Space Travelers Hub	work with the real live data from the SpaceX API.	In this task, we will be working with the real live data from the SpaceX API.\n      Our task is to build a web application for a company that provides commercial and scientific space travel services.\n      The application will allow users to book rockets and join selected space missions.	./images/pictures/project-snapshots/PNG/card/space-travel.png	./images/pictures/project-snapshots/PNG/space-travel.png	https://github.com/Tadesse-Alemayehu/Space-Travelers	https://tadesse-jorge-space-travelers.netlify.app/	2022-10-21 10:21:56.987565	2022-10-21 10:42:56.592652
\.


--
-- Data for Name: projects_technologies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects_technologies (id, project_id, technology_id, created_at, updated_at) FROM stdin;
1	1	4	2022-10-21 10:24:28.160402	2022-10-21 10:24:28.160402
3	1	5	2022-10-21 10:24:45.37589	2022-10-21 10:24:45.37589
4	1	6	2022-10-21 10:24:51.95794	2022-10-21 10:24:51.95794
5	1	12	2022-10-21 10:25:20.01487	2022-10-21 10:25:20.01487
6	1	10	2022-10-21 10:25:29.412157	2022-10-21 10:25:29.412157
7	1	7	2022-10-21 10:25:49.614171	2022-10-21 10:25:49.614171
9	2	7	2022-10-21 10:28:47.233967	2022-10-21 10:28:47.233967
10	2	10	2022-10-21 10:28:55.727711	2022-10-21 10:28:55.727711
11	2	12	2022-10-21 10:29:09.142991	2022-10-21 10:29:09.142991
12	2	6	2022-10-21 10:29:19.705015	2022-10-21 10:29:19.705015
13	2	4	2022-10-21 10:29:40.329577	2022-10-21 10:29:40.329577
14	3	5	2022-10-21 10:34:32.2421	2022-10-21 10:34:32.2421
15	3	3	2022-10-21 10:34:45.448232	2022-10-21 10:34:45.448232
16	3	13	2022-10-21 10:34:57.679143	2022-10-21 10:34:57.679143
17	3	11	2022-10-21 10:35:08.394352	2022-10-21 10:35:08.394352
18	4	5	2022-10-21 10:36:58.141293	2022-10-21 10:36:58.141293
19	4	3	2022-10-21 10:36:58.149033	2022-10-21 10:36:58.149033
20	4	13	2022-10-21 10:36:58.1526	2022-10-21 10:36:58.1526
21	4	11	2022-10-21 10:36:58.155392	2022-10-21 10:36:58.155392
22	5	3	2022-10-21 10:44:30.431777	2022-10-21 10:44:30.431777
23	5	5	2022-10-21 10:44:30.440184	2022-10-21 10:44:30.440184
24	5	11	2022-10-21 10:44:30.444266	2022-10-21 10:44:30.444266
25	5	13	2022-10-21 10:44:30.447798	2022-10-21 10:44:30.447798
26	7	5	2022-10-21 10:47:29.838971	2022-10-21 10:47:29.838971
27	7	3	2022-10-21 10:49:56.745367	2022-10-21 10:49:56.745367
28	7	2	2022-10-21 10:50:07.151461	2022-10-21 10:50:07.151461
29	7	1	2022-10-21 10:50:11.534635	2022-10-21 10:50:11.534635
30	8	3	2022-10-21 10:51:59.101402	2022-10-21 10:51:59.101402
31	8	2	2022-10-21 10:52:46.259349	2022-10-21 10:52:46.259349
32	8	1	2022-10-21 10:52:51.353733	2022-10-21 10:52:51.353733
33	9	3	2022-10-21 10:54:03.968613	2022-10-21 10:54:03.968613
34	9	2	2022-10-21 10:54:17.274252	2022-10-21 10:54:17.274252
35	9	1	2022-10-21 10:54:25.282577	2022-10-21 10:54:25.282577
36	10	3	2022-10-21 10:57:26.897701	2022-10-21 10:57:26.897701
37	10	2	2022-10-21 10:57:34.678979	2022-10-21 10:57:34.678979
38	10	1	2022-10-21 10:57:41.154726	2022-10-21 10:57:41.154726
39	11	3	2022-10-21 10:59:37.57405	2022-10-21 10:59:37.57405
40	11	1	2022-10-21 10:59:43.856439	2022-10-21 10:59:43.856439
41	11	2	2022-10-21 10:59:47.96914	2022-10-21 10:59:47.96914
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20221017101044
20221017101244
20221017105616
20221017110245
20221020172555
20221021101324
\.


--
-- Data for Name: technologies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.technologies (id, name, icon, skill_level, created_at, updated_at) FROM stdin;
1	HTML		9	2022-10-21 10:21:57.099146	2022-10-21 10:21:57.099146
2	CSS		9	2022-10-21 10:21:57.109617	2022-10-21 10:21:57.109617
4	Ruby		9	2022-10-21 10:21:57.126573	2022-10-21 10:21:57.126573
5	React/Redux		9	2022-10-21 10:21:57.134284	2022-10-21 10:21:57.134284
6	PostgreSQL		7	2022-10-21 10:21:57.143071	2022-10-21 10:21:57.143071
7	Ruby on Rails		9	2022-10-21 10:21:57.150613	2022-10-21 10:21:57.150613
8	MERN		9	2022-10-21 10:21:57.158506	2022-10-21 10:21:57.158506
9	MongoDB		8	2022-10-21 10:21:57.166963	2022-10-21 10:21:57.166963
10	RSpec		7	2022-10-21 10:21:57.17399	2022-10-21 10:21:57.17399
11	Jest		7	2022-10-21 10:21:57.181009	2022-10-21 10:21:57.181009
12	Capybara		7	2022-10-21 10:21:57.18839	2022-10-21 10:21:57.18839
13	REST-API		7	2022-10-21 10:21:57.195812	2022-10-21 10:21:57.195812
3	JavaScript		9	2022-10-21 10:21:57.119053	2022-10-21 10:49:49.056822
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, full_name, role, created_at, updated_at) FROM stdin;
\.


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addresses_id_seq', 1, false);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_id_seq', 11, true);


--
-- Name: projects_technologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_technologies_id_seq', 41, true);


--
-- Name: technologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.technologies_id_seq', 13, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: projects_technologies projects_technologies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_technologies
    ADD CONSTRAINT projects_technologies_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: technologies technologies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technologies
    ADD CONSTRAINT technologies_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_addresses_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_addresses_on_user_id ON public.addresses USING btree (user_id);


--
-- Name: index_projects_technologies_on_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_projects_technologies_on_project_id ON public.projects_technologies USING btree (project_id);


--
-- Name: index_projects_technologies_on_project_id_and_technology_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_projects_technologies_on_project_id_and_technology_id ON public.projects_technologies USING btree (project_id, technology_id);


--
-- Name: index_projects_technologies_on_technology_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_projects_technologies_on_technology_id ON public.projects_technologies USING btree (technology_id);


--
-- Name: addresses fk_rails_48c9e0c5a2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT fk_rails_48c9e0c5a2 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: projects_technologies fk_rails_d8f511fde6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_technologies
    ADD CONSTRAINT fk_rails_d8f511fde6 FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: projects_technologies fk_rails_ddd74c4e53; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_technologies
    ADD CONSTRAINT fk_rails_ddd74c4e53 FOREIGN KEY (technology_id) REFERENCES public.technologies(id);


--
-- PostgreSQL database dump complete
--

