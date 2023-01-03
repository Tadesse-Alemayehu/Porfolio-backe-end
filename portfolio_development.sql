--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messages (
    id bigint NOT NULL,
    full_name character varying,
    email character varying,
    message text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.messages OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


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
    icon text,
    skill_level integer,
    tech_type character varying,
    description text,
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
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


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
environment	development	2022-12-11 18:27:44.648322	2022-12-11 18:27:44.648322
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.messages (id, full_name, email, message, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (id, name, title, description, mobile_pic, desktop_pic, source_code, live_link, created_at, updated_at) FROM stdin;
1	Yellow Room	An online hotel room reservation app	This is an online hotel room reservation app. We give it a fancy name of 'yellow room'\n      It's a fully functioning app with a backend setup in Rails and provides token base authentication.	images/pictures/project-snapshots/PNG/card/Yellow-Room.png	images/pictures/project-snapshots/PNG/Yellow-Room.png	https://github.com/Tadesse-Alemayehu/YellowRooms-Front	https://yellow-rooms.netlify.app/	2022-12-11 18:27:45.330409	2022-12-11 18:27:45.330409
2	I Spend	A mobile web application where you can manage your budget	a mobile web application where you can manage your budget: you have a list of transactions\n      associated with a category, so that you can see how much money you spent and on what.	images/pictures/project-snapshots/PNG/card/I-Spend.png	images/pictures/project-snapshots/PNG/I-Spend.png	https://github.com/Tadesse-Alemayehu/I-spend	https://quiet-beach-52239.herokuapp.com/	2022-12-11 18:27:45.352466	2022-12-11 18:27:45.352466
3	My weather	Check any city for a weather info	This app enables users to get instant Information regarding weather conditions.\n      If you share your location, it will fetch the top 10 cities near you and all the weather detail for each.\n      You can also search for any city in the world and get the detail. It makes use of 3 different APIs. To fetch data, map coordinates,\n      and locate your area and cities near you.	images/pictures/project-snapshots/PNG/card/My-weather.png	images/pictures/project-snapshots/PNG/My-weather.png	https://github.com/Tadesse-Alemayehu/My-weather	https://my-city-weather-app.netlify.app/	2022-12-11 18:27:45.365841	2022-12-11 18:27:45.365841
4	Book Store	Store and track your favorite books	The Bookstore is a website similar to the "Awesome Books" website. Here we will create an MVP version of it that allows you to:\n      Display a list of books, Add a book and Remove a selected book.	images/pictures/project-snapshots/PNG/card/book-store.png	images/pictures/project-snapshots/PNG/book-store.png	https://github.com/Tadesse-Alemayehu/Bookstore	https://tadesse-bookstore.netlify.app/	2022-12-11 18:27:45.37888	2022-12-11 18:27:45.37888
5	Space Travelers Hub	work with the real live data from the SpaceX API.	In this task, we will be working with the real live data from the SpaceX API.\n      Our task is to build a web application for a company that provides commercial and scientific space travel services.\n      The application will allow users to book rockets and join selected space missions.	images/pictures/project-snapshots/PNG/card/space-travel.png	images/pictures/project-snapshots/PNG/space-travel.png	https://github.com/Tadesse-Alemayehu/Space-Travelers	https://tadesse-jorge-space-travelers.netlify.app/	2022-12-11 18:27:45.390217	2022-12-11 18:27:45.390217
\.


--
-- Data for Name: projects_technologies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects_technologies (id, project_id, technology_id, created_at, updated_at) FROM stdin;
1	1	5	2022-12-11 18:27:45.333931	2022-12-11 18:27:45.333931
2	1	6	2022-12-11 18:27:45.337662	2022-12-11 18:27:45.337662
3	1	7	2022-12-11 18:27:45.339298	2022-12-11 18:27:45.339298
4	1	10	2022-12-11 18:27:45.340784	2022-12-11 18:27:45.340784
5	1	11	2022-12-11 18:27:45.342839	2022-12-11 18:27:45.342839
6	1	14	2022-12-11 18:27:45.344342	2022-12-11 18:27:45.344342
7	1	18	2022-12-11 18:27:45.345908	2022-12-11 18:27:45.345908
8	1	19	2022-12-11 18:27:45.347337	2022-12-11 18:27:45.347337
9	2	10	2022-12-11 18:27:45.354772	2022-12-11 18:27:45.354772
10	2	11	2022-12-11 18:27:45.356181	2022-12-11 18:27:45.356181
11	2	14	2022-12-11 18:27:45.357814	2022-12-11 18:27:45.357814
12	2	18	2022-12-11 18:27:45.359483	2022-12-11 18:27:45.359483
13	2	19	2022-12-11 18:27:45.361007	2022-12-11 18:27:45.361007
14	3	5	2022-12-11 18:27:45.36805	2022-12-11 18:27:45.36805
15	3	6	2022-12-11 18:27:45.369497	2022-12-11 18:27:45.369497
16	3	7	2022-12-11 18:27:45.371028	2022-12-11 18:27:45.371028
17	3	20	2022-12-11 18:27:45.372462	2022-12-11 18:27:45.372462
18	3	21	2022-12-11 18:27:45.373989	2022-12-11 18:27:45.373989
19	4	5	2022-12-11 18:27:45.381117	2022-12-11 18:27:45.381117
20	4	6	2022-12-11 18:27:45.38257	2022-12-11 18:27:45.38257
21	4	7	2022-12-11 18:27:45.384094	2022-12-11 18:27:45.384094
22	4	20	2022-12-11 18:27:45.385509	2022-12-11 18:27:45.385509
23	5	5	2022-12-11 18:27:45.392849	2022-12-11 18:27:45.392849
24	5	6	2022-12-11 18:27:45.394341	2022-12-11 18:27:45.394341
25	5	7	2022-12-11 18:27:45.395841	2022-12-11 18:27:45.395841
26	5	20	2022-12-11 18:27:45.397133	2022-12-11 18:27:45.397133
27	5	21	2022-12-11 18:27:45.398573	2022-12-11 18:27:45.398573
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
20221022150651
\.


--
-- Data for Name: technologies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.technologies (id, name, icon, skill_level, tech_type, description, created_at, updated_at) FROM stdin;
1	Adobe XD	images/technologies/adobe_xd_480px.svg	9	Design		2022-12-11 18:27:45.184103	2022-12-11 18:27:45.184103
2	Illustrator	images/technologies/adobe_illustrator_480px.svg	9	Design		2022-12-11 18:27:45.18984	2022-12-11 18:27:45.18984
3	Figma	images/technologies/figma_480px.svg	9	Design		2022-12-11 18:27:45.193706	2022-12-11 18:27:45.193706
4	Adobe Photoshop	images/technologies/adobe_photoshop_480px.svg	9	Design		2022-12-11 18:27:45.197018	2022-12-11 18:27:45.197018
5	JavaScript	images/technologies/javascript.svg	9	Frontend		2022-12-11 18:27:45.20035	2022-12-11 18:27:45.20035
6	React	images/technologies/react.svg	9	Frontend		2022-12-11 18:27:45.203707	2022-12-11 18:27:45.203707
7	Redux	images/technologies/redux_480px.svg	9	Frontend		2022-12-11 18:27:45.207231	2022-12-11 18:27:45.207231
8	Bootstrap	images/technologies/bootstrap.svg	9	Frontend		2022-12-11 18:27:45.211537	2022-12-11 18:27:45.211537
9	CSS3	images/technologies/css.svg	9	Frontend		2022-12-11 18:27:45.214877	2022-12-11 18:27:45.214877
10	Ruby	images/technologies/ruby.svg	9	Backend		2022-12-11 18:27:45.218255	2022-12-11 18:27:45.218255
11	Ruby on Rails	images/technologies/rails.svg	9	Backend		2022-12-11 18:27:45.221928	2022-12-11 18:27:45.221928
12	NodeJS	images/technologies/Node_Js_240px.svg	9	Backend		2022-12-11 18:27:45.232166	2022-12-11 18:27:45.232166
13	ExpressJS	images/technologies/express.svg	9	Backend		2022-12-11 18:27:45.236386	2022-12-11 18:27:45.236386
14	PostgreSQL	images/technologies/postgresql_480px.svg	9	Database		2022-12-11 18:27:45.239969	2022-12-11 18:27:45.239969
15	MongoDB	images/technologies/mongodb_480px.svg	9	Database		2022-12-11 18:27:45.243965	2022-12-11 18:27:45.243965
16	MsSQL	images/technologies/microsoft_sql_server_480px.svg	9	Database		2022-12-11 18:27:45.247262	2022-12-11 18:27:45.247262
17	MySql	images/technologies/MySQL_Logo_96px.svg	9	Database		2022-12-11 18:27:45.250741	2022-12-11 18:27:45.250741
18	RSpec	images/technologies/rspec.svg	9	Test		2022-12-11 18:27:45.25387	2022-12-11 18:27:45.25387
19	Capybara	images/technologies/	9	Test		2022-12-11 18:27:45.257089	2022-12-11 18:27:45.257089
20	Jest	images/technologies/jest.svg	9	Test		2022-12-11 18:27:45.260809	2022-12-11 18:27:45.260809
21	React Test Library	images/technologies/react_test_library.svg	9	Test		2022-12-11 18:27:45.264299	2022-12-11 18:27:45.264299
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
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messages_id_seq', 1, false);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_id_seq', 5, true);


--
-- Name: projects_technologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_technologies_id_seq', 27, true);


--
-- Name: technologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.technologies_id_seq', 21, true);


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
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


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

