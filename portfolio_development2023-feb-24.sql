--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-1.pgdg22.04+1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-1.pgdg22.04+1)

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
-- Name: addresses; Type: TABLE; Schema: public; Owner: tadesse
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


ALTER TABLE public.addresses OWNER TO tadesse;

--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse
--

CREATE SEQUENCE public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.addresses_id_seq OWNER TO tadesse;

--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO tadesse;

--
-- Name: certifications; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.certifications (
    id bigint NOT NULL,
    title character varying,
    description character varying,
    image character varying,
    link character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    "from" character varying,
    picture_hash character varying
);


ALTER TABLE public.certifications OWNER TO tadesse;

--
-- Name: certifications_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse
--

CREATE SEQUENCE public.certifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certifications_id_seq OWNER TO tadesse;

--
-- Name: certifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse
--

ALTER SEQUENCE public.certifications_id_seq OWNED BY public.certifications.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.messages (
    id bigint NOT NULL,
    full_name character varying,
    email character varying,
    message text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    phone_number character varying
);


ALTER TABLE public.messages OWNER TO tadesse;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse
--

CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO tadesse;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: tadesse
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


ALTER TABLE public.projects OWNER TO tadesse;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO tadesse;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: projects_technologies; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.projects_technologies (
    id bigint NOT NULL,
    project_id bigint NOT NULL,
    technology_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.projects_technologies OWNER TO tadesse;

--
-- Name: projects_technologies_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse
--

CREATE SEQUENCE public.projects_technologies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_technologies_id_seq OWNER TO tadesse;

--
-- Name: projects_technologies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse
--

ALTER SEQUENCE public.projects_technologies_id_seq OWNED BY public.projects_technologies.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO tadesse;

--
-- Name: technologies; Type: TABLE; Schema: public; Owner: tadesse
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


ALTER TABLE public.technologies OWNER TO tadesse;

--
-- Name: technologies_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse
--

CREATE SEQUENCE public.technologies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.technologies_id_seq OWNER TO tadesse;

--
-- Name: technologies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse
--

ALTER SEQUENCE public.technologies_id_seq OWNED BY public.technologies.id;


--
-- Name: testimonies; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.testimonies (
    id bigint NOT NULL,
    name character varying,
    title character varying,
    image character varying,
    testimony character varying,
    email character varying,
    linkedin character varying,
    twitter character varying,
    github character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.testimonies OWNER TO tadesse;

--
-- Name: testimonies_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse
--

CREATE SEQUENCE public.testimonies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testimonies_id_seq OWNER TO tadesse;

--
-- Name: testimonies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse
--

ALTER SEQUENCE public.testimonies_id_seq OWNED BY public.testimonies.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    full_name character varying,
    role character varying DEFAULT 'user'::character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO tadesse;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO tadesse;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- Name: certifications id; Type: DEFAULT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.certifications ALTER COLUMN id SET DEFAULT nextval('public.certifications_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: projects_technologies id; Type: DEFAULT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.projects_technologies ALTER COLUMN id SET DEFAULT nextval('public.projects_technologies_id_seq'::regclass);


--
-- Name: technologies id; Type: DEFAULT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.technologies ALTER COLUMN id SET DEFAULT nextval('public.technologies_id_seq'::regclass);


--
-- Name: testimonies id; Type: DEFAULT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.testimonies ALTER COLUMN id SET DEFAULT nextval('public.testimonies_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.addresses (id, user_id, email, phone_no, po_box, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-02-24 07:35:04.508878	2023-02-24 07:35:04.508878
schema_sha1	fc5a691ebab3ea226b28e241de56be9dcb0af108	2023-02-24 07:35:04.547469	2023-02-24 07:35:04.547469
\.


--
-- Data for Name: certifications; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.certifications (id, title, description, image, link, created_at, updated_at, "from", picture_hash) FROM stdin;
1	MongoDB	I have learnt the fundamental concept behind NoSql. Including connecting to a MongoDB database, how to conduct simple CRUD operations, and key topics such as aggregation, indexing, data modeling, and transactions.	/certifications/mongodb.jpg	https://university.mongodb.com/course_completion/4f7bfb40-7afa-4299-937a-bed4a416f35f	2023-02-24 07:35:06.827347	2023-02-24 07:35:06.827347	MongoDB University	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
2	Comprehensive Ruby Programming	This course becomes one of my comprehensive Ruby coding guide. Starting with the foundational principles such as syntax and scaling up to advanced topics like MetaProgramming and Big data analysis	/certifications/Comprehensive-Ruby-Programming-udemy.jpg	https://udemy-certificate.s3.amazonaws.com/image/UC-f1caac68-990e-494e-bdbc-920198758557.jpg	2023-02-24 07:35:06.840605	2023-02-24 07:35:06.840605	Udemy	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
3	Ruby on Rails	Students earn this credential upon demonstrating mastery of Ruby on Rails by building multiple real-world Rails applications alongside software developers from all over the world.	/certifications/Ruby-on-Rails-microverse.png	https://www.credential.net/06ece38f-b526-475c-8d33-f4a6af71dc05	2023-02-24 07:35:06.85259	2023-02-24 07:35:06.85259	Microverse	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
4	Ruby/Databases	Students earn this credential after demonstrating thorough and complete understanding of Ruby and databases by building multiple projects while collaborating and pair programming remotely with developers across the world.	/certifications/Ruby-Databases-microverse.png	https://www.credential.net/55251571-eed4-4538-9bc7-2c33ac3f67d4	2023-02-24 07:35:06.864786	2023-02-24 07:35:06.864786	Microverse	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
5	Front End Development Libraries	I have learnt how to style my site quickly with Bootstrap. I also learnt how to add logic to my CSS styles and extend them with Sass. Later, I have built a shopping cart and other applications to learn how to create powerful Single Page Applications (SPAs) with React and Redux.	/certifications/Front-End-Development-Libraries-freecodecamp.png	https://www.freecodecamp.org/certification/tadesse-alemayehu/front-end-development-libraries	2023-02-24 07:35:06.876619	2023-02-24 07:35:06.876619	FreeCodeCamp	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
6	JavaScript (Intermediate)	I have learnt how to use JavaScript to manipulate web pages and create dynamic content. I also learnt how to use JavaScript to create interactive web pages and applications.	/certifications/JavaScript-Intermediate-hackerRank.png	https://www.hackerrank.com/certificates/dd15744ddc11	2023-02-24 07:35:06.888785	2023-02-24 07:35:06.888785	HackerRank	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
7	React & Redux	Students earn this credential after demonstrating thorough understanding and mastery of React and Redux. Over the course of this module, students build and develop multiple projects using React and Redux, working both independently and while remotely pair-programming.	/certifications/React-and-Redux-microverse.png	https://www.credential.net/93362c5b-2013-45a9-98da-7c05d2ed0b47	2023-02-24 07:35:06.900851	2023-02-24 07:35:06.900851	Microverse	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
8	React (Basic)	I have learnt how to use React to create interactive web pages and applications. I also learnt how to use React to create Single Page Applications (SPAs).	/certifications/React-Basic-hackerRank.png	https://www.hackerrank.com/certificates/11321bb89a70	2023-02-24 07:35:06.912795	2023-02-24 07:35:06.912795	HackerRank	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
9	JavaScript	Students earn this credential after demonstrating understanding and mastery of JavaScript. During the course of this module, they build several projects using JavaScript while pair-programming remotely with an international team of software developers.	/certifications/JavaScript-microverse.png	https://www.credential.net/c57edc97-05ce-4235-bf7b-df8eb62f45ac	2023-02-24 07:35:06.924761	2023-02-24 07:35:06.924761	Microverse	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
10	JavaScript (Basic)	I have learnt how to use JavaScript to manipulate web pages and create dynamic content. I also learnt how to use JavaScript to create interactive web pages and applications.	/certifications/JavaScript-Basic-hackerRank.png	https://www.hackerrank.com/certificates/62f1ea7d49fb	2023-02-24 07:35:06.93686	2023-02-24 07:35:06.93686	HackerRank	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
11	HTML/CSS	Students earn this credential after demonstrating industry standard HTML and CSS skills, achieved working on remote pair programming with teams from around the world.	/certifications/HTML-CSS-Redux-microverse.png	https://www.credential.net/55162051-4476-4ba3-b1bc-011bc5f09651	2023-02-24 07:35:06.94869	2023-02-24 07:35:06.94869	Microverse	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
12	Problem Solving (Basic)	I have solve solved data structures and algorithms problems using JavaScript. I have learn the fundamental concepts of data structures and algorithms, and how to apply them to solve real-world problems.	/certifications/Problem-Solving-Basic-hackerRank.png	https://www.hackerrank.com/certificates/fea59d345786	2023-02-24 07:35:06.960691	2023-02-24 07:35:06.960691	HackerRank	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
13	JavaScript Algorithms and Data Structures	I have learned fundamental programming concepts in JavaScript. I have started with basic data structures like numbers and strings. Then I also learn to work with arrays, objects, functions, loops, and more.	/certifications/JavaScript-Algorithms-and-Data-Structures-freecodecamp.png	https://www.freecodecamp.org/certification/tadesse-alemayehu/javascript-algorithms-and-data-structures	2023-02-24 07:35:06.972888	2023-02-24 07:35:06.972888	FreeCodeCamp	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
14	Responsive Web Design	 I have learnt how to make web pages look good on all devices (desktops, tablets, and phones). I also learnt how to write media queries to apply different CSS styles for different screen sizes.	/certifications/Responsive-W0eb-Design-freecodecamp.png	https://www.freecodecamp.org/certification/tadesse-alemayehu/responsive-web-design	2023-02-24 07:35:06.984865	2023-02-24 07:35:06.984865	FreeCodeCamp	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
15	Certificate of appreciation	I developed a web application with a complex database design that Helps the government manage the flow of faremaciuticals in the country	/certifications/Certificate-of-appreciation-BDU.jpg	https://www.linkedin.com/in/tadesse-alemayehu-full-stack-developer/overlay/education/796941109/multiple-media-viewer/?treasuryMediaId=1635506505774	2023-02-24 07:35:06.996696	2023-02-24 07:35:06.996696	Bahir Dar University	L9QJ[m}y5$$ut7f6t7oe0cx9VtWY
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.messages (id, full_name, email, message, created_at, updated_at, phone_number) FROM stdin;
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.projects (id, name, title, description, mobile_pic, desktop_pic, source_code, live_link, created_at, updated_at) FROM stdin;
1	Yellow Room	An online hotel room reservation app	This is an online hotel room reservation app. We give it a fancy name of 'yellow room'\n      It's a fully functioning app with a backend setup in Rails and provides token base authentication.	/images/pictures/project-snapshots/PNG/card/Yellow-Room.png	/images/pictures/project-snapshots/PNG/Yellow-Room.png	https://github.com/Tadesse-Alemayehu/YellowRooms-Front	https://yellow-rooms.netlify.app/	2023-02-24 07:35:06.548308	2023-02-24 07:35:06.548308
2	I Spend	A mobile web application where you can manage your budget	a mobile web application where you can manage your budget: you have a list of transactions\n      associated with a category, so that you can see how much money you spent and on what.	/images/pictures/project-snapshots/PNG/card/I-Spend.png	/images/pictures/project-snapshots/PNG/I-Spend.png	https://github.com/Tadesse-Alemayehu/I-spend	https://quiet-beach-52239.herokuapp.com/	2023-02-24 07:35:06.628411	2023-02-24 07:35:06.628411
3	My weather	Check any city for a weather info	This app enables users to get instant Information regarding weather conditions.\n      If you share your location, it will fetch the top 10 cities near you and all the weather detail for each.\n      You can also search for any city in the world and get the detail. It makes use of 3 different APIs. To fetch data, map coordinates,\n      and locate your area and cities near you.	/images/pictures/project-snapshots/PNG/card/My-weather.png	/images/pictures/project-snapshots/PNG/My-weather.png	https://github.com/Tadesse-Alemayehu/My-weather	https://my-city-weather-app.netlify.app/	2023-02-24 07:35:06.680089	2023-02-24 07:35:06.680089
4	Book Store	Store and track your favorite books	The Bookstore is a website similar to the "Awesome Books" website. Here we will create an MVP version of it that allows you to:\n      Display a list of books, Add a book and Remove a selected book.	/images/pictures/project-snapshots/PNG/card/book-store.png	/images/pictures/project-snapshots/PNG/book-store.png	https://github.com/Tadesse-Alemayehu/Bookstore	https://tadesse-bookstore.netlify.app/	2023-02-24 07:35:06.726394	2023-02-24 07:35:06.726394
5	Space Travelers Hub	work with the real live data from the SpaceX API.	In this task, we will be working with the real live data from the SpaceX API.\n      Our task is to build a web application for a company that provides commercial and scientific space travel services.\n      The application will allow users to book rockets and join selected space missions.	/images/pictures/project-snapshots/PNG/card/space-travel.png	/images/pictures/project-snapshots/PNG/space-travel.png	https://github.com/Tadesse-Alemayehu/Space-Travelers	https://tadesse-jorge-space-travelers.netlify.app/	2023-02-24 07:35:06.762631	2023-02-24 07:35:06.762631
\.


--
-- Data for Name: projects_technologies; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.projects_technologies (id, project_id, technology_id, created_at, updated_at) FROM stdin;
1	1	5	2023-02-24 07:35:06.558706	2023-02-24 07:35:06.558706
2	1	6	2023-02-24 07:35:06.566444	2023-02-24 07:35:06.566444
3	1	7	2023-02-24 07:35:06.57182	2023-02-24 07:35:06.57182
4	1	11	2023-02-24 07:35:06.577729	2023-02-24 07:35:06.577729
5	1	12	2023-02-24 07:35:06.583029	2023-02-24 07:35:06.583029
6	1	15	2023-02-24 07:35:06.589151	2023-02-24 07:35:06.589151
7	1	19	2023-02-24 07:35:06.594489	2023-02-24 07:35:06.594489
8	1	20	2023-02-24 07:35:06.600027	2023-02-24 07:35:06.600027
9	2	11	2023-02-24 07:35:06.636473	2023-02-24 07:35:06.636473
10	2	12	2023-02-24 07:35:06.642412	2023-02-24 07:35:06.642412
11	2	15	2023-02-24 07:35:06.647542	2023-02-24 07:35:06.647542
12	2	19	2023-02-24 07:35:06.653453	2023-02-24 07:35:06.653453
13	2	20	2023-02-24 07:35:06.658594	2023-02-24 07:35:06.658594
14	3	5	2023-02-24 07:35:06.688095	2023-02-24 07:35:06.688095
15	3	6	2023-02-24 07:35:06.692873	2023-02-24 07:35:06.692873
16	3	7	2023-02-24 07:35:06.698412	2023-02-24 07:35:06.698412
17	3	21	2023-02-24 07:35:06.70319	2023-02-24 07:35:06.70319
18	3	22	2023-02-24 07:35:06.707842	2023-02-24 07:35:06.707842
19	4	5	2023-02-24 07:35:06.733486	2023-02-24 07:35:06.733486
20	4	6	2023-02-24 07:35:06.737918	2023-02-24 07:35:06.737918
21	4	7	2023-02-24 07:35:06.742986	2023-02-24 07:35:06.742986
22	4	21	2023-02-24 07:35:06.747385	2023-02-24 07:35:06.747385
23	5	5	2023-02-24 07:35:06.769078	2023-02-24 07:35:06.769078
24	5	6	2023-02-24 07:35:06.773166	2023-02-24 07:35:06.773166
25	5	7	2023-02-24 07:35:06.777501	2023-02-24 07:35:06.777501
26	5	21	2023-02-24 07:35:06.781558	2023-02-24 07:35:06.781558
27	5	22	2023-02-24 07:35:06.786	2023-02-24 07:35:06.786
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.schema_migrations (version) FROM stdin;
20230122133857
20221017101044
20221017101244
20221017105616
20221017110245
20221020172555
20221021101324
20221022150651
20230104140720
20230104141242
20230107182508
20230116181131
\.


--
-- Data for Name: technologies; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.technologies (id, name, icon, skill_level, tech_type, description, created_at, updated_at) FROM stdin;
1	Adobe XD	/images/technologies/adobe_xd_480px.svg	6	Design	I can design and do a prototype of website interaction and intuitively communicate the design with clients before the development phase commences.	2023-02-24 07:35:05.617782	2023-02-24 07:35:05.617782
2	Illustrator	/images/technologies/adobe_illustrator_480px.svg	6	Design	I design professional logos and world-class vector graphics, from simple icons to complex 3D objects. Everything you see inside my portfolio is designed with AdobeXD and AdobeIL.	2023-02-24 07:35:05.647492	2023-02-24 07:35:05.647492
3	Figma	/images/technologies/figma_480px.svg	4	Design	Okay, 😊 Maybe I'm not as expert as much as AdobeXD, but I'm defiantly parsing many designs from Figma templates. I can discuss Figma design with UI/Ux designers to the point I can make a suggestion.	2023-02-24 07:35:05.66463	2023-02-24 07:35:05.66463
4	Adobe Photoshop	/images/technologies/adobe_photoshop_480px.svg	5	Design	It's a common task for a developer to be able to provide performance-wise pictures. I use Adobe Photoshop to deal with editing and optimizing raster images.	2023-02-24 07:35:05.682686	2023-02-24 07:35:05.682686
5	JavaScript	/images/technologies/javascript.svg	10	Frontend	I have more than five years of development experience with JavaScrip. In simple words, I'm the master of it. I know the ins and outs of most advanced concepts.	2023-02-24 07:35:05.700689	2023-02-24 07:35:05.700689
6	ReactJS	/images/technologies/react.svg	9	Frontend	Well, developing a web app with React is a joy. I have developed many web apps with React, and I'm still learning new things every day.	2023-02-24 07:35:05.718716	2023-02-24 07:35:05.718716
7	Redux	/images/technologies/redux_480px.svg	9	Frontend	Well, managing the application state could be achieved in many ways, but Redux is the best and worth mentioning, especially for large-scale apps.	2023-02-24 07:35:05.737198	2023-02-24 07:35:05.737198
8	VueJS	/images/technologies/vue.svg	9	Frontend	Next, to react, VueJs is my favorite frontend framework. I have developed many web apps with VueJs, and I'm still learning new skills every day.	2023-02-24 07:35:05.754967	2023-02-24 07:35:05.754967
9	TailwindCSS	/images/technologies/tailwindcss.svg	7	Frontend	An amazing utility-first CSS framework, I use it to build many web apps and enjoy the experience.	2023-02-24 07:35:05.772872	2023-02-24 07:35:05.772872
10	Bootstrap	/images/technologies/bootstrap.svg	7	Frontend	Bootstrap is among the common CSS frameworks in the web world, and I have hands-on experience with it.	2023-02-24 07:35:05.977907	2023-02-24 07:35:05.977907
11	Ruby	/images/technologies/ruby.svg	10	Backend	My love for OOP is deep. As a result, I have worked with many OOP languages, but Ruby happens to be my favorite. I can deal with networks, databases, promises, and other common concepts.	2023-02-24 07:35:05.994967	2023-02-24 07:35:05.994967
12	Ruby on Rails	/images/technologies/rails.svg	10	Backend	It's no secret I favor backend development. I love dealing with tasks that might intimidate most developers, like network request handling, schema design and optimization, and setting up security measures.	2023-02-24 07:35:06.012972	2023-02-24 07:35:06.012972
13	NodeJS	/images/technologies/Node_Js_240px.svg	9	Backend	As a JavaScript full-stack engineer, I have developed many apps and obviously, Node is the backbone behind all of the apps.	2023-02-24 07:35:06.030853	2023-02-24 07:35:06.030853
14	ExpressJS	/images/technologies/express.svg	9	Backend	ExpressJs is the most popular node framework, and I have used it to build many apps.	2023-02-24 07:35:06.048869	2023-02-24 07:35:06.048869
15	PostgreSQL	/images/technologies/postgresql_480px.svg	8	Database	PostgreSQL is my favorite database, I have used it to build many apps, and I'm still learning new things every day.	2023-02-24 07:35:06.066878	2023-02-24 07:35:06.066878
16	MongoDB	/images/technologies/mongodb_480px.svg	8	Database	MongoDB is a great database for many use cases. I'm a certified MongoDB engineer. I have used it to build many apps,  and I'm still learning new things every day.	2023-02-24 07:35:06.08497	2023-02-24 07:35:06.08497
17	MsSQL	/images/technologies/microsoft_sql_server_480px.svg	7	Database	I design my graduation project (BSC in computer sience) with Microsoft SQL Server, the experience was great, and I have used it to build many apps.	2023-02-24 07:35:06.102818	2023-02-24 07:35:06.102818
18	MySql	/images/technologies/MySQL_Logo_96px.svg	9	Database	I love working with relational databases and MySql is one of the most popular relational database out there.	2023-02-24 07:35:06.12082	2023-02-24 07:35:06.12082
19	RSpec	/images/technologies/rspec.svg	8	Test	Rspec is the most popular testing framework for Ruby, I have used it to test many apps, and I'm still learning new things every day.	2023-02-24 07:35:06.138823	2023-02-24 07:35:06.138823
20	Capybara	/images/technologies/capybara.svg	8	Test	Capybara is the most popular testing framework for Ruby, I have used it to test many apps, and I'm still learning new things every day.	2023-02-24 07:35:06.156803	2023-02-24 07:35:06.156803
21	Jest	/images/technologies/jest.svg	8	Test	Jest is the most popular testing framework for JavaScript, I have used it to test many apps, and I'm still learning new things every day.	2023-02-24 07:35:06.174983	2023-02-24 07:35:06.174983
22	React Test Library	/images/technologies/react_test_library.svg	9	Test	React Test Library is the most popular testing framework for React, I have used it to test many apps, and I'm still learning new things every day.	2023-02-24 07:35:06.192961	2023-02-24 07:35:06.192961
\.


--
-- Data for Name: testimonies; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.testimonies (id, name, title, image, testimony, email, linkedin, twitter, github, created_at, updated_at) FROM stdin;
1	Oshane Creary	Software Engineer	/testimonials/Oshane.jpeg	Tadesse has all the qualities and skill set of a world class Full Stack Web Developer. Very proficient in writing clean and functional code. He is also a excellent communicator, great professional and extremely knowledgeable about programming. The projects he has worked on and built are really impressive and amazing.	orlando.199creary@gmail.com	https://www.linkedin.com/in/ocreary/	https://twitter.com/ocrearyy	https://github.com/ocrearyy	2023-02-24 07:35:07.03888	2023-02-24 07:35:07.03888
2	Henry Nawrocki Sztanski	Ruby Full Stack Developer at BairesDev	/testimonials/Henry-Nawrocki-Sztanski.jpeg	I had the pleasure to work and code with Tadesse. He is not only a great web developer but also a great team member that will help you go through challenging situations.\nTadesse is constantly exploring new technologies and has a great skill set that makes him one of the best web developers to work with.\nHe will always find a way to solve a problem; he is persistent and is someone you can trust.	henry@sztanski.com	https://www.linkedin.com/in/henry-nawrocki/	https://twitter.com/hsztanski	https://github.com/hsztan	2023-02-24 07:35:07.058375	2023-02-24 07:35:07.058375
3	Selase Dewu 	Full-Stack Web Developer	/testimonials/Selase-Dewu.jpeg	I have had the pleasure of studying and working with Tadesse. In my estimation, Tadesse ranks amongst the top 10% of software developers I know. He has an excellent analytical mind, readily applying his skills and knowledge to new tasks and issues.\n\nHe possesses excellent written and verbal communication skills and a natural ability to motivate and lead others. I can attest to his ability to solve challenges efficiently, and you can trust him to deliver on schedule.\n\nIf you need a software developer to help move your team from point A to B, make Tadesse the choice. He is an individual I would readily accept on my team without reservation. I highly recommend him.	dewslyse@gmail.com	https://www.linkedin.com/in/selase-dewu/		https://github.com/dewslyse	2023-02-24 07:35:07.116596	2023-02-24 07:35:07.116596
4	Aaron Keegan	Full-stack developer	/testimonials/Aaron-Keegan.jpeg	I personally recommend Tadesse for any project or team in need of a good Developer. Beyond his coding skills, I have found that Tadesse holds a high level of skill with many needed soft-skills a good team member should have. A few of those skills are communication, teamwork, and collaboration.\n\nWhen needed, Tadesse had always taken opportunities to educate his peers when they are struggling. Tadesse is a natural mentor and loves to share his experiences with new coding techniques. I find that Tadesse is very active in contributing to the online community of developers and he is a great person to talk to which makes him very easy to work with.\n\nAny team would be lucky to have Tadesse working with them.	akeegan.dev@gmail.com	https://www.linkedin.com/in/akeegandev/	https://twitter.com/AkeeganDev	https://github.com/AKeeganDev	2023-02-24 07:35:07.152663	2023-02-24 07:35:07.152663
5	Augusto Galindo Ali	Full-Stack Developer	/testimonials/Augusto-Galindo-Ali.jpeg	Tadesse is a very knowledgeable guy, he was able to come up with solutions to tough challenges very quickly and explained it in an understandable way to his partners. Also, he is always willing to help someone stuck. I would love to work with him again.	augusto.galindo.9@icloud.com	https://www.linkedin.com/in/augustogalindo/		https://github.com/jsug9	2023-02-24 07:35:07.180757	2023-02-24 07:35:07.180757
6	Afam Ifeanyi (chrys) Malieze	Full-Stack Developer	/testimonials/Afam-Ifeanyi-Malieze.jpeg	Tadesse Alemayehu is a highly motivated, focused, result-driven Software Developer who is open to learning and willing to teach. I have reviewed some of his projects and find that he has depth in his insight into solving complex problems in a subtle and simplistic manner. I highly recommend him as a team member who can be relied upon and someone who is up to the task when it comes to working collaboratively and dealing with various challenges in any industry he finds himself in.	afam_ifeanyi@live.com	https://www.linkedin.com/in/afam-chrys/	https://twitter.com/afam_ifeanyi	https://github.com/chrystalme	2023-02-24 07:35:07.204109	2023-02-24 07:35:07.204109
7	Have Samuel Kabareebe	Full Stack Software Developer	/testimonials/Have-Samuel-Kabareebe.jpeg	During our journey at Microverse, we work as a team, Tadesse is one reliable teammate that you are very sure that any blockers are seen through. He empowers you while you are working and makes you want to always move ahead of the tasks on the table, Any company hiring will be unlucky if they missed him.	samiehave9@gmail.com	https://www.linkedin.com/in/have-samuel/	https://twitter.com/samhave	https://github.com/Have-Samuel	2023-02-24 07:35:07.22792	2023-02-24 07:35:07.22792
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.users (id, full_name, role, created_at, updated_at) FROM stdin;
\.


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse
--

SELECT pg_catalog.setval('public.addresses_id_seq', 1, false);


--
-- Name: certifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse
--

SELECT pg_catalog.setval('public.certifications_id_seq', 15, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse
--

SELECT pg_catalog.setval('public.messages_id_seq', 1, false);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse
--

SELECT pg_catalog.setval('public.projects_id_seq', 5, true);


--
-- Name: projects_technologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse
--

SELECT pg_catalog.setval('public.projects_technologies_id_seq', 27, true);


--
-- Name: technologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse
--

SELECT pg_catalog.setval('public.technologies_id_seq', 22, true);


--
-- Name: testimonies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse
--

SELECT pg_catalog.setval('public.testimonies_id_seq', 7, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: certifications certifications_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.certifications
    ADD CONSTRAINT certifications_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: projects_technologies projects_technologies_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.projects_technologies
    ADD CONSTRAINT projects_technologies_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: technologies technologies_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.technologies
    ADD CONSTRAINT technologies_pkey PRIMARY KEY (id);


--
-- Name: testimonies testimonies_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.testimonies
    ADD CONSTRAINT testimonies_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_addresses_on_user_id; Type: INDEX; Schema: public; Owner: tadesse
--

CREATE INDEX index_addresses_on_user_id ON public.addresses USING btree (user_id);


--
-- Name: index_projects_technologies_on_project_id; Type: INDEX; Schema: public; Owner: tadesse
--

CREATE INDEX index_projects_technologies_on_project_id ON public.projects_technologies USING btree (project_id);


--
-- Name: index_projects_technologies_on_project_id_and_technology_id; Type: INDEX; Schema: public; Owner: tadesse
--

CREATE UNIQUE INDEX index_projects_technologies_on_project_id_and_technology_id ON public.projects_technologies USING btree (project_id, technology_id);


--
-- Name: index_projects_technologies_on_technology_id; Type: INDEX; Schema: public; Owner: tadesse
--

CREATE INDEX index_projects_technologies_on_technology_id ON public.projects_technologies USING btree (technology_id);


--
-- Name: addresses fk_rails_48c9e0c5a2; Type: FK CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT fk_rails_48c9e0c5a2 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: projects_technologies fk_rails_d8f511fde6; Type: FK CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.projects_technologies
    ADD CONSTRAINT fk_rails_d8f511fde6 FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: projects_technologies fk_rails_ddd74c4e53; Type: FK CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.projects_technologies
    ADD CONSTRAINT fk_rails_ddd74c4e53 FOREIGN KEY (technology_id) REFERENCES public.technologies(id);


--
-- PostgreSQL database dump complete
--

