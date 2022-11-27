--
-- tadesse_alemayehuQL database dump
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
-- Name: addresses; Type: TABLE; Schema: public; Owner: tadesse_alemayehu
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


ALTER TABLE public.addresses OWNER TO tadesse_alemayehu;

--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse_alemayehu
--

CREATE SEQUENCE public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.addresses_id_seq OWNER TO tadesse_alemayehu;

--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse_alemayehu
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: tadesse_alemayehu
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO tadesse_alemayehu;

--
-- Name: messages; Type: TABLE; Schema: public; Owner: tadesse_alemayehu
--

CREATE TABLE public.messages (
    id bigint NOT NULL,
    full_name character varying,
    email character varying,
    message text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.messages OWNER TO tadesse_alemayehu;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse_alemayehu
--

CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO tadesse_alemayehu;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse_alemayehu
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: tadesse_alemayehu
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


ALTER TABLE public.projects OWNER TO tadesse_alemayehu;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse_alemayehu
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO tadesse_alemayehu;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse_alemayehu
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: projects_technologies; Type: TABLE; Schema: public; Owner: tadesse_alemayehu
--

CREATE TABLE public.projects_technologies (
    id bigint NOT NULL,
    project_id bigint NOT NULL,
    technology_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.projects_technologies OWNER TO tadesse_alemayehu;

--
-- Name: projects_technologies_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse_alemayehu
--

CREATE SEQUENCE public.projects_technologies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_technologies_id_seq OWNER TO tadesse_alemayehu;

--
-- Name: projects_technologies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse_alemayehu
--

ALTER SEQUENCE public.projects_technologies_id_seq OWNED BY public.projects_technologies.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: tadesse_alemayehu
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO tadesse_alemayehu;

--
-- Name: technologies; Type: TABLE; Schema: public; Owner: tadesse_alemayehu
--

CREATE TABLE public.technologies (
    id bigint NOT NULL,
    name character varying,
    icon character varying,
    skill_level integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.technologies OWNER TO tadesse_alemayehu;

--
-- Name: technologies_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse_alemayehu
--

CREATE SEQUENCE public.technologies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.technologies_id_seq OWNER TO tadesse_alemayehu;

--
-- Name: technologies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse_alemayehu
--

ALTER SEQUENCE public.technologies_id_seq OWNED BY public.technologies.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: tadesse_alemayehu
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    full_name character varying,
    role character varying DEFAULT 'user'::character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO tadesse_alemayehu;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse_alemayehu
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO tadesse_alemayehu;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse_alemayehu
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: projects_technologies id; Type: DEFAULT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.projects_technologies ALTER COLUMN id SET DEFAULT nextval('public.projects_technologies_id_seq'::regclass);


--
-- Name: technologies id; Type: DEFAULT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.technologies ALTER COLUMN id SET DEFAULT nextval('public.technologies_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: tadesse_alemayehu
--

COPY public.addresses (id, user_id, email, phone_no, po_box, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: tadesse_alemayehu
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2022-11-27 14:38:47.58315	2022-11-27 14:38:47.58315
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: tadesse_alemayehu
--

COPY public.messages (id, full_name, email, message, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: tadesse_alemayehu
--

COPY public.projects (id, name, title, description, mobile_pic, desktop_pic, source_code, live_link, created_at, updated_at) FROM stdin;
1	Yellow Room	An online hotel room reservation app	This is an online hotel room reservation app. We give it a fancy name of 'yellow room'\n      It's a fully functioning app with a backend setup in Rails and provides token base authentication.	images/pictures/project-snapshots/PNG/card/Yellow-Room.png	images/pictures/project-snapshots/PNG/Yellow-Room.png	https://github.com/Tadesse-Alemayehu/YellowRooms-Front	https://yellow-rooms.netlify.app/	2022-11-27 14:38:48.845471	2022-11-27 14:38:48.845471
2	I Spend	A mobile web application where you can manage your budget	a mobile web application where you can manage your budget: you have a list of transactions\n      associated with a category, so that you can see how much money you spent and on what.	images/pictures/project-snapshots/PNG/card/I-Spend.png	images/pictures/project-snapshots/PNG/I-Spend.png	https://github.com/Tadesse-Alemayehu/I-spend	https://quiet-beach-52239.herokuapp.com/	2022-11-27 14:38:48.853444	2022-11-27 14:38:48.853444
3	My weather	Check any city for a weather info	This app enables users to get instant Information regarding weather conditions.\n      If you share your location, it will fetch the top 10 cities near you and all the weather detail for each.\n      You can also search for any city in the world and get the detail. It makes use of 3 different APIs. To fetch data, map coordinates,\n      and locate your area and cities near you.	images/pictures/project-snapshots/PNG/card/My-weather.png	images/pictures/project-snapshots/PNG/My-weather.png	https://github.com/Tadesse-Alemayehu/My-weather	https://my-city-weather-app.netlify.app/	2022-11-27 14:38:48.858366	2022-11-27 14:38:48.858366
4	Book Store	Store and track your favorite books	The Bookstore is a website similar to the "Awesome Books" website. Here we will create an MVP version of it that allows you to:\n      Display a list of books, Add a book and Remove a selected book.	images/pictures/project-snapshots/PNG/card/book-store.png	images/pictures/project-snapshots/PNG/book-store.png	https://github.com/Tadesse-Alemayehu/Bookstore	https://tadesse-bookstore.netlify.app/	2022-11-27 14:38:48.863414	2022-11-27 14:38:48.863414
5	Space Travelers Hub	work with the real live data from the SpaceX API.	In this task, we will be working with the real live data from the SpaceX API.\n      Our task is to build a web application for a company that provides commercial and scientific space travel services.\n      The application will allow users to book rockets and join selected space missions.	images/pictures/project-snapshots/PNG/card/space-travel.png	images/pictures/project-snapshots/PNG/space-travel.png	https://github.com/Tadesse-Alemayehu/Space-Travelers	https://tadesse-jorge-space-travelers.netlify.app/	2022-11-27 14:38:48.868675	2022-11-27 14:38:48.868675
6	To do lists	To do list organizer	This is a single-page application (SPA) that you can use to organize your daily schedule. You can create a task ✍🏼, mark a task as completed ✔, update its details ⚒, or delete it 🚩.All this without needing to reload a page. ✔	images/pictures/project-snapshots/PNG/card/To-Do-list.png	images/pictures/project-snapshots/PNG/To-Do-list.png	https://github.com/Tadesse-Alemayehu/To-Do-list	https://tadesse-alemayehu.github.io/To-Do-list/	2022-11-27 14:38:48.873466	2022-11-27 14:38:48.873466
7	Learn to code	Learn to code	Learn to code is a website I plan to use for my coding class (website) ✍🏼 where I'll be teaching students all about programming and coding in general and web development in particular. 😎 This project is totally made with JavaScript, CSS3 and HTML only.	images/pictures/project-snapshots/PNG/card/LEARN-TO-CODE.png	images/pictures/project-snapshots/PNG/LEARN-TO-CODE.png	https://github.com/Tadesse-Alemayehu/LEARN-TO-CODE	https://tadesse-alemayehu.github.io/LEARN-TO-CODE/	2022-11-27 14:38:48.890244	2022-11-27 14:38:48.890244
8	Rock-Paper-Scissors	Learn to code	Play this with a computer see if you can beat it 😎	images/pictures/project-snapshots/PNG/card/Rock-Paper-Scissors-Advance.png	images/pictures/project-snapshots/PNG/Rock-Paper-Scissors-Advance.png	https://github.com/Tadesse-Alemayehu/Rock-Paper-Scissors-Advance	https://tadesse-alemayehu.github.io/Rock-Paper-Scissors-Advance/	2022-11-27 14:38:48.895563	2022-11-27 14:38:48.895563
9	Etch-A-Sketch	Project two(drawing board)	So you love to draw? Good! This is an Etch-a-sketch project and you can create an awesome drawing board with your pre-defined pixel range and draw your picture.	images/pictures/project-snapshots/PNG/card/Etch-A-Sketch.png	images/pictures/project-snapshots/PNG/Etch-A-Sketch.png	https://github.com/Tadesse-Alemayehu/Etch-A-Sketch	https://tadesse-alemayehu.github.io/Etch-A-Sketch/	2022-11-27 14:38:48.906076	2022-11-27 14:38:48.906076
10	YouTube-Clone	Project five. Microverse Bootcamp	Cloning a simple YouTube page with just HTML and CSS.	images/pictures/project-snapshots/PNG/card/YouTube-Clone.png	images/pictures/project-snapshots/PNG/YouTube-Clone.png	https://github.com/Tadesse-Alemayehu/YouTube-Clone	https://tadesse-alemayehu.github.io/YouTube-Clone/	2022-11-27 14:38:48.921866	2022-11-27 14:38:48.921866
\.


--
-- Data for Name: projects_technologies; Type: TABLE DATA; Schema: public; Owner: tadesse_alemayehu
--

COPY public.projects_technologies (id, project_id, technology_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: tadesse_alemayehu
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
-- Data for Name: technologies; Type: TABLE DATA; Schema: public; Owner: tadesse_alemayehu
--

COPY public.technologies (id, name, icon, skill_level, created_at, updated_at) FROM stdin;
1	HTML		9	2022-11-27 14:38:49.037099	2022-11-27 14:38:49.037099
2	CSS		9	2022-11-27 14:38:49.047773	2022-11-27 14:38:49.047773
3	JavaScript		9	2022-11-27 14:38:49.053229	2022-11-27 14:38:49.053229
4	Ruby		9	2022-11-27 14:38:49.058499	2022-11-27 14:38:49.058499
5	React/Redux		9	2022-11-27 14:38:49.063478	2022-11-27 14:38:49.063478
6	tadesse_alemayehuQL		7	2022-11-27 14:38:49.068477	2022-11-27 14:38:49.068477
7	Ruby on Rails		9	2022-11-27 14:38:49.073493	2022-11-27 14:38:49.073493
8	MERN		9	2022-11-27 14:38:49.078489	2022-11-27 14:38:49.078489
9	MongoDB		8	2022-11-27 14:38:49.083624	2022-11-27 14:38:49.083624
10	RSpec		7	2022-11-27 14:38:49.089472	2022-11-27 14:38:49.089472
11	Jest		7	2022-11-27 14:38:49.094252	2022-11-27 14:38:49.094252
12	Capybara		7	2022-11-27 14:38:49.100215	2022-11-27 14:38:49.100215
13	REST-API		7	2022-11-27 14:38:49.10538	2022-11-27 14:38:49.10538
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: tadesse_alemayehu
--

COPY public.users (id, full_name, role, created_at, updated_at) FROM stdin;
\.


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse_alemayehu
--

SELECT pg_catalog.setval('public.addresses_id_seq', 1, false);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse_alemayehu
--

SELECT pg_catalog.setval('public.messages_id_seq', 1, false);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse_alemayehu
--

SELECT pg_catalog.setval('public.projects_id_seq', 10, true);


--
-- Name: projects_technologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse_alemayehu
--

SELECT pg_catalog.setval('public.projects_technologies_id_seq', 1, false);


--
-- Name: technologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse_alemayehu
--

SELECT pg_catalog.setval('public.technologies_id_seq', 13, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse_alemayehu
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: projects_technologies projects_technologies_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.projects_technologies
    ADD CONSTRAINT projects_technologies_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: technologies technologies_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.technologies
    ADD CONSTRAINT technologies_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_addresses_on_user_id; Type: INDEX; Schema: public; Owner: tadesse_alemayehu
--

CREATE INDEX index_addresses_on_user_id ON public.addresses USING btree (user_id);


--
-- Name: index_projects_technologies_on_project_id; Type: INDEX; Schema: public; Owner: tadesse_alemayehu
--

CREATE INDEX index_projects_technologies_on_project_id ON public.projects_technologies USING btree (project_id);


--
-- Name: index_projects_technologies_on_project_id_and_technology_id; Type: INDEX; Schema: public; Owner: tadesse_alemayehu
--

CREATE UNIQUE INDEX index_projects_technologies_on_project_id_and_technology_id ON public.projects_technologies USING btree (project_id, technology_id);


--
-- Name: index_projects_technologies_on_technology_id; Type: INDEX; Schema: public; Owner: tadesse_alemayehu
--

CREATE INDEX index_projects_technologies_on_technology_id ON public.projects_technologies USING btree (technology_id);


--
-- Name: addresses fk_rails_48c9e0c5a2; Type: FK CONSTRAINT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT fk_rails_48c9e0c5a2 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: projects_technologies fk_rails_d8f511fde6; Type: FK CONSTRAINT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.projects_technologies
    ADD CONSTRAINT fk_rails_d8f511fde6 FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: projects_technologies fk_rails_ddd74c4e53; Type: FK CONSTRAINT; Schema: public; Owner: tadesse_alemayehu
--

ALTER TABLE ONLY public.projects_technologies
    ADD CONSTRAINT fk_rails_ddd74c4e53 FOREIGN KEY (technology_id) REFERENCES public.technologies(id);


--
-- tadesse_alemayehuQL database dump complete
--

