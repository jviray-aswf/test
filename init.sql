--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7 (Debian 12.7-1.pgdg100+1)
-- Dumped by pg_dump version 13.2

-- Started on 2021-09-07 19:01:24 MDT

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
-- TOC entry 202 (class 1259 OID 16385)
-- Name: alias; Type: TABLE; Schema: public; Owner: aswf
--

CREATE TABLE public.alias (
    id integer NOT NULL,
    character_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.alias OWNER TO aswf;

--
-- TOC entry 203 (class 1259 OID 16391)
-- Name: attribute_id_seq; Type: SEQUENCE; Schema: public; Owner: aswf
--

CREATE SEQUENCE public.attribute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attribute_id_seq OWNER TO aswf;

--
-- TOC entry 2971 (class 0 OID 0)
-- Dependencies: 203
-- Name: attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aswf
--

ALTER SEQUENCE public.attribute_id_seq OWNED BY public.alias.id;


--
-- TOC entry 204 (class 1259 OID 16393)
-- Name: character; Type: TABLE; Schema: public; Owner: aswf
--

CREATE TABLE public."character" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    durability smallint,
    energy smallint,
    fighting smallint,
    intelligence smallint,
    speed smallint,
    strength integer,
    secret_identity boolean NOT NULL,
    eyes character varying(50),
    hair character varying(50)
);


ALTER TABLE public."character" OWNER TO aswf;

--
-- TOC entry 205 (class 1259 OID 16399)
-- Name: character_id_seq; Type: SEQUENCE; Schema: public; Owner: aswf
--

CREATE SEQUENCE public.character_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.character_id_seq OWNER TO aswf;

--
-- TOC entry 2972 (class 0 OID 0)
-- Dependencies: 205
-- Name: character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aswf
--

ALTER SEQUENCE public.character_id_seq OWNED BY public."character".id;


--
-- TOC entry 206 (class 1259 OID 16401)
-- Name: character_power; Type: TABLE; Schema: public; Owner: aswf
--

CREATE TABLE public.character_power (
    character_id integer NOT NULL,
    power_id integer NOT NULL
);


ALTER TABLE public.character_power OWNER TO aswf;

--
-- TOC entry 207 (class 1259 OID 16404)
-- Name: power; Type: TABLE; Schema: public; Owner: aswf
--

CREATE TABLE public.power (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.power OWNER TO aswf;

--
-- TOC entry 208 (class 1259 OID 16410)
-- Name: power_id_seq; Type: SEQUENCE; Schema: public; Owner: aswf
--

CREATE SEQUENCE public.power_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.power_id_seq OWNER TO aswf;

--
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 208
-- Name: power_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aswf
--

ALTER SEQUENCE public.power_id_seq OWNED BY public.power.id;


--
-- TOC entry 209 (class 1259 OID 16412)
-- Name: team; Type: TABLE; Schema: public; Owner: aswf
--

CREATE TABLE public.team (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    headquarters text,
    founded_on date
);


ALTER TABLE public.team OWNER TO aswf;

--
-- TOC entry 210 (class 1259 OID 16418)
-- Name: team_character; Type: TABLE; Schema: public; Owner: aswf
--

CREATE TABLE public.team_character (
    team_id integer NOT NULL,
    character_id integer NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.team_character OWNER TO aswf;

--
-- TOC entry 211 (class 1259 OID 16421)
-- Name: team_id_seq; Type: SEQUENCE; Schema: public; Owner: aswf
--

CREATE SEQUENCE public.team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_id_seq OWNER TO aswf;

--
-- TOC entry 2974 (class 0 OID 0)
-- Dependencies: 211
-- Name: team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aswf
--

ALTER SEQUENCE public.team_id_seq OWNED BY public.team.id;


--
-- TOC entry 2807 (class 2604 OID 16423)
-- Name: alias id; Type: DEFAULT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public.alias ALTER COLUMN id SET DEFAULT nextval('public.attribute_id_seq'::regclass);


--
-- TOC entry 2808 (class 2604 OID 16424)
-- Name: character id; Type: DEFAULT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public."character" ALTER COLUMN id SET DEFAULT nextval('public.character_id_seq'::regclass);


--
-- TOC entry 2809 (class 2604 OID 16425)
-- Name: power id; Type: DEFAULT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public.power ALTER COLUMN id SET DEFAULT nextval('public.power_id_seq'::regclass);


--
-- TOC entry 2810 (class 2604 OID 16426)
-- Name: team id; Type: DEFAULT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public.team ALTER COLUMN id SET DEFAULT nextval('public.team_id_seq'::regclass);


--
-- TOC entry 2956 (class 0 OID 16385)
-- Dependencies: 202
-- Data for Name: alias; Type: TABLE DATA; Schema: public; Owner: aswf
--

COPY public.alias (id, character_id, name) FROM stdin;
1005	1000	A-Bomb; formerly Bucky
1006	1000	the Hulk
1012	1001	Aaron Stack
1013	1001	Jack Kubrick
1014	1001	Sentinel Supreme
1015	1001	Mister Machine
1021	1002	Agent R-7
1022	1002	the Ravager of Worlds
1031	1004	Adam of Ravenscroft
1037	1005	Agent Brand
1038	1005	Commander
1039	1005	Abby
1045	1006	Alex Hayden
1051	1007	Formerly Maverick
1052	1007	David North
1053	1007	Agent Zero
1059	1008	Nova Centurion
1060	1008	the Archangel Gabriel
1066	1009	Tecumotzin
1067	1009	Lord of Flight
1078	1011	Merlin
1079	1011	the Grail Hermit
1095	1014	Alicia Reiss (birth name); the name Alicia Masters-Storm was used by Skrull impostor Lyja
1096	1014	but was popularly believed to have been used by Alicia
1102	1015	Amanda Sefton
1103	1015	Magicienne
1104	1015	Daytripper
1113	1017	Christine Collins
1114	1017	Helen Eve
1115	1017	Amora Incantare
1116	1017	Amora Lorelei
1117	1017	Leena Moran
1118	1017	Valkyrie
1124	1018	unrevealed
1130	1019	bTsan Saa
1131	1019	the High Lama
1132	1019	the Master
1133	1019	the Mystic
1134	1019	the Spirit Leopard
1140	1020	Archangel
1141	1020	Formerly Death
1142	1020	Dark Angel
1143	1020	Angel
1144	1020	Avenging Angel
1150	1021	The Living Death That Walks
1151	1021	Lord of the Negative Zone
1162	1023	High Lord
1163	1023	Forever Walker
1164	1023	Son of the Morning Fire
1165	1023	The First One
1166	1023	Set
1167	1023	Huitxilopochti
1168	1023	Sauru
1169	1023	Kali-Ma
1170	1023	Aten
1171	1023	many others
1177	1024	Water Wizard
1183	1025	Spider-Woman; considered using Ariadne
1189	1026	Mister A
1190	1026	Mad Monk
1191	1026	Pinball Wizard
1192	1026	A.R. Cadenski
1203	1028	Mars (Roman name)
1204	1028	John Aaron
1205	1028	Mr. Talon
1206	1028	Warhawk
1217	1030	Bio-Fanatic
1223	1031	Gert
1229	1032	Darkling
1230	1032	Henry Gallante
1231	1032	Manny Gallante
1237	1033	Power Man
1238	1033	Smuggler
1239	1033	Goliath
1245	1034	Once mistaken for Danielle Belmonde
1251	1035	Beelzebub
1252	1035	Satan
1253	1035	Duma
1254	1035	Keriel
1255	1035	Mastema
1256	1035	Beliar
1257	1035	Gadreel
1258	1035	numerous others
1264	1036	Irish
1265	1036	presumably many undercover aliases
1271	1037	unrevealed
1277	1038	Iron Cross
1278	1038	Citizen V
1279	1038	Mark Evanier
1280	1038	Phoenix
1286	1039	Barracuda
1287	1039	Cap’n Barracuda
1288	1039	One-Eye
1294	1040	Template
1295	1040	Sebastion Gilberti
1296	1040	Nimrod
1297	1040	Master Mold
1308	1042	Blackwing
1314	1043	Formerly Kreature
1315	1043	Mutate #666
1326	1045	Hardshell
1332	1046	Benjamin Jacob Grimm
1333	1046	Bashful Benjy
1334	1046	Uncle Benjy
1335	1046	The Ever-Lovin' Blue-Eyed Thing
1336	1046	Idol of Millions (self-proclaimed)
1337	1046	Grim Ben
1338	1046	Dr. Josiah Verpoorteen
1339	1046	Blackbeard the Pirate
1345	1047	Ben
1346	1047	Uncle Ben
1347	1047	Unca' Ben
1358	1049	Beta Ray Thor
1359	1049	Simon Walters
1365	1050	Betty Brant-Leeds
1371	1051	Kosmos
1372	1051	Cosmos; formerly the Beyonder
1373	1051	Frank
1384	1053	Round Ravager of the Ring
1385	1053	Circular Crushing King
1386	1053	Dynamic Donut of Destruction
1397	1055	Felicity Harmon
1398	1055	Cat
1399	1055	Licia
1400	1055	Leesh
1401	1055	Fee-Fee
1407	1056	Ms
1408	1056	Steed
1409	1056	formerly Black Queen
1415	1057	Deathless One
1421	1058	Barrington
1427	1059	Natalia Natasha Romanova
1428	1059	Nadine Roman
1429	1059	Nat
1430	1059	Tsarina
1431	1059	Oktober
1432	1059	Laura Matthers
1433	1059	Nancy Rushman
1434	1059	Black Pearl
1435	1059	Natalia Shostakova
1436	1059	Natuska
1437	1059	Czarina
1443	1060	Lord Blackheart
1444	1060	Black King
1445	1060	Voice
1456	1062	Mark Daniels
1462	1063	The Living Bomb Burst
1483	1067	Rainbow
1494	1069	Bloodsport
1499	1070	Blue Bomber of Battle
1500	1070	Magnificent Master of Might
1501	1070	Man of Marvels
1532	1076	Houngan Supreme
1533	1076	Lord of the Loa
1534	1076	He-Who-Has-Died-Twice
1535	1076	Voodoo Lord; Master of All Reptiles
1536	1076	the Voudoun
1537	1076	and the Spirit World
1543	1077	Robert Bruce Banner
1544	1077	Breaker of Worlds
1545	1077	Patient #133
1546	1077	Green King
1547	1077	Green Scar
1548	1077	Holku
1549	1077	Sakaarson
1550	1077	Green One
1551	1077	Eye of Rage
1552	1077	World Breaker
1553	1077	Harkanon
1554	1077	Haarg
1555	1077	Once-Savage
1556	1077	Two-Minds
1557	1077	Captain Universe
1558	1077	Professor
1559	1077	War
1560	1077	Maestro
1561	1077	Joe Fixit
1562	1077	Mr. Fixit
1563	1077	Annihilator
1564	1077	Mechano
1565	1077	Bruce Barnes
1566	1077	Bruce Smith
1567	1077	Glenn Summers
1568	1077	Ross Oppenheimer
1569	1077	Fred Pottsworth
1570	1077	Bob Danner
1571	1077	Bruce Ross
1572	1077	Bruce Jones
1573	1077	Bruce Roberts
1574	1077	Mr. Bergen
1575	1077	Bruce Franklin
1576	1077	Bruce Green
1577	1077	Bruce Bancroft
1578	1077	Bruce Baxter
1579	1077	Bruce Davidson
1580	1077	David Bannon
1581	1077	Robert Baker
1582	1077	Bruce Bixby
1583	1077	David Banner
1584	1077	David Bixby
1585	1077	Two-Hands
1586	1077	Greenskin
1587	1077	Mr. Green
1588	1077	Jade Jaws
1589	1077	Green Goliath
1590	1077	Jade Giant
1591	1077	Gray Goliath
1592	1077	Mighty Bob
1593	1077	Anti-Hulk
1594	1077	Friday
1595	1077	Green Golem
1596	1077	Golem
1602	1078	James Buchanan Barnes
1603	1078	Captain America
1609	1079	The Galactic Warrior
1610	1079	Loverbug
1621	1081	Butterfly
1627	1082	Soldier X
1628	1082	X-32
1629	1082	Nathan Winters
1630	1082	Nathan Dayspring Summers
1631	1082	Son of Tomorrow
1632	1082	Man of Tomorrow
1633	1082	Traveler
1634	1082	Chosen One
1635	1082	Nathan Dayspring Askani'son
1651	1085	Steven Rogers
1652	1085	Brett Hendrick
1653	1085	Buck Jones
1654	1085	Yeoman America
1655	1085	Nathan Hale
1656	1085	The Captain
1657	1085	Anthony Schwarz
1658	1085	Roger Grant
1659	1085	Steven Grant Rogers
1660	1085	Nomad
1661	1085	The Man Without a Country
1662	1085	Roger Stevens
1663	1085	Lord of the Frozen Ice
1664	1085	Blondie
1665	1085	The Living Legend
1666	1085	Granny
1667	1085	Cap
1668	1085	The Sentinel of LIberty
1669	1085	The Brooklyn Project
1675	1086	Samuel Thomas Sam Wilson
1676	1086	Blackbird
1677	1086	Snap Wilson
1678	1086	Captain America
1679	1086	Brother Super-Hero
1680	1086	Brother Falcon
1681	1086	Willie Samuels
1687	1087	Bee
1688	1087	Black Bishop
1689	1087	Britanic
1690	1087	Captain Britain-616
1691	1087	Captain Wakanda
1692	1087	Custodian
1693	1087	Fast Buck
1694	1087	Jungle Man
1695	1087	Lionheart of Avalon
1701	1088	Ace
1702	1088	Binary
1703	1088	Lady Marvel
1704	1088	Warbird
1709	1089	Pietro Frank
1710	1089	Gypsy Davey
1711	1089	Mateo Maximoff
1717	1090	Rachel Grey
1718	1090	formerly Phoenix
1719	1090	Mother Askani
1720	1090	Bright Lady
1721	1090	Aly'zrn Summerset
1727	1091	Blacksmith
1738	1093	Lord Ravenous
1749	1095	General Ross
1750	1095	Thunderbolt Ross
1751	1095	Red Hulk
1752	1095	Rulk
1753	1095	Red
1754	1095	Red man
1755	1095	Redeemer
1756	1095	Zzzax
1762	1096	Harpy
1763	1096	Mr. Blue
1764	1096	Agent S-3
1765	1096	Betty Danner
1776	1098	Dell Rusk
1777	1098	Bettman P. Lyles
1778	1098	the Agent of a Thousand Faces
1779	1098	The Man
1780	1098	Cyrus Fenton
1781	1098	Teacher
1782	1098	Tod March
1783	1098	John Smith
1784	1098	Aleksander Lukin.
1790	1100	T-Rex Boy
1793	1101	Betsy Braddock
1794	1101	Psylocke
1800	1102	Alex O’Hirn
1801	1102	Ryan O’Smith
1802	1102	Mecha-Rhino
1803	1102	Santa Claus
1804	1102	Rhines
1805	1102	Gray Man
1806	1102	Horn-head
1807	1102	Horn-Face (latter three nicknames by Hulk/Bruce Banner)
1808	1102	Rampaging Rhino
1814	1103	The Schemer
1815	1103	Supreme Hydra
1816	1103	the Rose
1817	1103	Blood Rose
1828	1105	Robbie
1834	1106	Rocky Raccoon
1835	1106	Ranger Rocket
1841	1107	Robert Johnson
1847	1108	Anna Marie (full name unrevealed)
1848	1108	Anna Raven
1849	1108	Doctor Kellogg
1850	1108	Mutate #9602
1851	1108	Irene Adler
1852	1108	Miss Smith
1858	1109	Tyranus
1864	1110	The Ivan
1870	1111	Der Schlächter (The Butcher in German)
1871	1111	Slasher
1872	1111	El Tigre
1873	1111	others
1889	1114	Flint Marko
1890	1114	Sylvester Mann
1891	1114	Quarryman
1892	1114	Mud-Thing
1898	1115	Box
1899	1115	Wanda Langkowski
1905	1116	The Devil's Daughter
1906	1116	Judith Camber
1907	1116	Julia
1908	1116	Mistress of the Basilisk
1919	1118	Umberto the Uncanny
1925	1119	Peter Parker
1926	1119	Scarlet Spider
1927	1119	Spider-Man
1928	1119	Spider-Carnage
1934	1120	Gypsy Witch
1935	1120	Wanda Frank
1936	1120	Wanda Magnus
1937	1120	Ana Maximoff
1948	1122	Impersonated Spider-Man (Peter Parker)
1954	1123	Black King
1955	1123	Lord Imperial
1961	1124	Black Queen
1972	1126	Full name unrevealed
1973	1126	Professor X
1974	1126	Ananasi
1975	1126	Amahl Farouk
1976	1126	Evil One
1977	1126	Master of the Games
1978	1126	He also impersonated the following mind-controlled subjects (in chronological order): Alexander Flynn
1979	1126	Karma
1980	1126	Cypher
1981	1126	Jacob Reisz
1982	1126	Donald Pierce
1983	1126	and probably others
1989	1127	Shadowcat
1990	1127	Cat
1991	1127	Kitten
1992	1127	formerly Ariel
1993	1127	Sprite
2014	1131	Benjamin Russell
2020	1132	Jennifer Jen Walters
2021	1132	Jade Giantess
2022	1132	Shulkie
2028	1133	Black King
2044	1137	Sandra Deel
2045	1137	First Lady of the Carnage Family
2051	1138	Little Shadow
2057	1139	Zora de Plata
2058	1139	presumably many others
2069	1141	Silver Shogun
2070	1141	Ishiro Tagara
2076	1142	Daughter of the Volcano God
2077	1142	La Garra Argentada
2078	1142	La Garra Plata
2084	1143	Supreme Hydra
2090	1144	Son of Hulk
2091	1144	Sakaarson
2092	1144	Worldbreaker
2098	1145	Angelo Torres
2117	1149	Rick Sheridan
2118	1149	Sleepy
2134	1152	Formerly Anne McKenzie-Thompson
2140	1153	Screaming Mimi
2141	1153	Mimi Schwartz
2142	1153	Margie Green
2153	1155	Jim Sanders
2154	1155	Harvey James
2155	1155	the Whizzer
2161	1156	Arañita
2162	1156	formerly the Hunter
2168	1157	Gwendolyne Gwen Stacy
2169	1157	Spider-Gwen
2170	1157	Spider-Woman
2171	1157	Gwendy
2177	1158	Peter Benjamin Parker
2178	1158	Friendly Neighborhood Spider-Man
2179	1158	The Amazing Spider-Man
2180	1158	The Sensational Spider-Man
2181	1158	The Spectacular Spider-Man
2182	1158	Tiger
2183	1158	Spidey
2184	1158	Webhead
2185	1158	Webslinger
2186	1158	Wall-crawler
2187	1158	Little Man
2188	1158	(formerly) The Amazing Octo-Spidey
2189	1158	Bag-Man
2190	1158	Bookworm
2191	1158	Captain Universe
2192	1158	Dusk
2193	1158	Hornet
2194	1158	Mad Dog #336
2195	1158	Man-Spider
2196	1158	Prodigy
2197	1158	Puny Parker
2198	1158	Ricochet
2199	1158	Scarlet Spider
2200	1158	Spider-Hulk
2201	1158	Spider-Phoenix
2207	1159	Spirit
2213	1160	Jackie Falsworth
2214	1160	Lady Crichton
2225	1162	Peter Jason Quill
2226	1162	Peter Quill
2227	1162	Boyo
2243	1165	Knave of Hearts
2247	1166	Cassie
2248	1166	Giant Girl
2249	1166	Ant-Girl
2255	1167	Leah Princess
2261	1168	Master
2262	1168	Teacher
2263	1168	Yamato-Take (possibly reincarnation of)
2264	1168	Karen (possibly reincarnated to become)
2270	1169	Beauty
2271	1169	Wind-Rider
2272	1169	Stormy
2273	1169	Mutate #20
2274	1169	White King
2275	1169	Goddess of the Plains
2276	1169	'Ro
2277	1169	Ororo Iqadi T’Challa
2278	1169	Ororo Komo Wakandas (short form
2279	1169	full title takes about 5 minutes to recite in Hausa dialect)
2280	1169	la Reine Storm
2281	1169	’Roro
2282	1169	Goddess of Thunder
2298	1172	The Chaos-Bringer
2299	1172	Nathan Summers
2305	1173	Namor the First
2306	1173	The Avenging Son
2307	1173	The Old Man
2308	1173	Rex
2309	1173	Sealord
2310	1173	Joe Pierre
2316	1174	Madam Menace
2322	1175	Robert DaCosta
2323	1175	Bobby; Black Rook
2324	1175	Black King
2325	1175	Reignfire
2331	1176	Adaptoid
2332	1176	Alessandro Brannex
2333	1176	Captain America
2334	1176	Fixer
2335	1176	Jarvis
2336	1176	Cyborg Sinister
2337	1176	Supreme Adaptoid
2338	1176	Cassandra Lang
2344	1177	Invincible Man
2345	1177	Lon Zelig
2346	1177	Bobby Wright (Captain Hero)
2347	1177	Joshua Plague; has impersonated many beings including Hulkling
2348	1177	Franklin Richards
2349	1177	Iron Fist
2350	1177	Thing
2351	1177	Denny Marek
2352	1177	Captain Mar-Vell
2353	1177	Carol Danvers
2354	1177	Walter Lawson
2355	1177	Franklin Storm
2361	1178	Hybrid
2367	1179	Supremor
2386	1183	Luke Charles
2387	1183	Black Leopard
2388	1183	Nubian Prince
2389	1183	The Client
2390	1183	Coal Tiger
2396	1185	Unknown
2402	1186	Captain America
2403	1186	Contingency T
2404	1186	Tony Masters
2410	1187	Tenebrous of the Darkness
2411	1187	Tenebrous of the Darkness Between
2417	1188	Terrax the Tamer
2418	1188	Tyros
2424	1189	Don Shreck
2425	1189	Espanto
2426	1189	Groza
2427	1189	Kongbu
2428	1189	Ru'b
2429	1189	Shrecken
2430	1189	Terrore
2431	1189	Vrees; Terror
2432	1189	Inc
2443	1191	Mad Titan
2444	1191	Master
2445	1191	Thanos Rex
2446	1191	Masterlord
2447	1191	Overmaster
2458	1193	Hans Grubervelt
2459	1193	The Evil One
2465	1194	Thena Eliot
2466	1194	Corona
2467	1194	Minerva/Athena (Often mistaken for the Olympian goddess).
2473	1195	Donald M. Blake
2474	1195	God of Thunder
2475	1195	Son of Odin
2476	1195	The Thunderer
2477	1195	Lord of Asgard
2478	1195	Jake Olson
2479	1195	Sigurd Jarlson
2480	1195	Donar
2481	1195	Donner
2482	1195	Hloriddi
2483	1195	Unhappy Hrungnir’s Playmate
2484	1195	Veur
2485	1195	Hrodr’s Foe-Man
2486	1195	Longbeard’s Son
2487	1195	Vingthor the Hurler
2488	1195	Siegfried
2489	1195	Siegmund
2490	1195	Woe-King
2491	1195	(impersonated) Hercules
2492	1195	Harokin
2493	1195	Freya
2494	1195	formerly bound to Eric Masterson
2500	1196	The Designate
2501	1196	the Supreme
2502	1196	Tara Olson
2503	1196	Hammer Girl
2504	1196	Thorita
2505	1196	Hammerette
2506	1196	Thor Lass
2507	1196	Asgard Lass
2508	1196	Thoretta
2509	1196	Hammer Lass
2510	1196	the Destroyer; Spirit of the Jewel (in alternate future)
2526	1200	Aryls Tigershark
2542	1203	Skeeter
2548	1204	The Terrible Toad-King
2559	1206	Anthony Edward Tony Stark
2560	1206	Shellhead
2561	1206	Golden Avenger
2562	1206	Tetsujin
2563	1206	Formerly Crimson Dynamo
2564	1206	Formerly Iron Knight
2565	1206	Formerly Hogan Potts
2566	1206	Formerly Randall Pierce
2567	1206	Formerly Spare Parts Man
2568	1206	Impersonated Cobalt Man (Ralph Roberts)
2574	1207	Human Torch
2580	1208	Larry
2596	1211	Tyger Tiger
2597	1212	Mary Mezinis
2598	1212	Bloody Mary I
2599	1212	Virgin Mary
2605	1213	Tele-Girl
2606	1213	Bacon and Eggs Easy
2612	1214	The Watcher
2618	1215	Ulik
2619	1215	the Unstoppable Troll; Ulik
2620	1215	the Unconquerable Troll
2625	1216	The Doomsday Machine
2626	1216	The Devastator
2627	1216	He-Who-Destroys
2633	1217	Crimson Cowl
2634	1217	Great Devil
2635	1217	Great Ultron
2636	1217	Iron Man
2637	1217	Mark
2638	1217	Omega
2639	1217	Ultimate Ultron
2640	1217	Ultron-5 (and hundreds of other sequential numerical designations)
2641	1217	Ultron Mark Twelve
2642	1217	Ho Yinsen
2648	1218	Umar the Unrelenting
2659	1220	Unus the Untouchable
2660	1220	Unuscione
2666	1221	Valeria von Doom
2667	1221	Marvel Girl
2673	1222	Samantha Sam Parrington
2674	1222	Sammie
2675	1222	Brunnhilde
2701	1227	Venus Dee-Lightful
2707	1228	Vermin
2715	1230	Calculator Kid
2716	1230	Zapper
2722	1231	The Master
2723	1231	Invincible Man
2724	1231	Vincent Vaughn
2725	1231	Hans
2726	1231	has inhabited the body of Daredevil
2727	1231	The body of Norman McArthur
2728	1231	The body of Fantastic Four
2734	1232	Rookie
2740	1233	Formerly Guardian
2746	1234	Holden Tooks
2752	1235	Sabrina Bentley (nom d' plume)
2758	1236	Wallow
2764	1237	Iron Patriot
2765	1237	Rhodey
2766	1237	Formerly Iron Man
2772	1238	Adam Magus
2773	1238	Magus
2774	1238	Savior
2775	1238	Mr. Smith
2776	1238	X-23
2777	1238	Jake Miller
2778	1238	Ultimate Avenger
2779	1238	God Slayer
2780	1238	Demon
2781	1238	Avenging Hand of Light
2782	1238	Him
2787	1239	Proudstar
2788	1239	Thunderbird
2799	1241	Janet Jan Van Dyne
2800	1241	Pixie
2801	1241	Doctor Spectrum
2802	1241	(formerly) Giant-Woman
2803	1241	Janet Pym
2804	1241	Invisible Girl
2810	1242	John Doe
2811	1242	Russ Jackson
2812	1242	Werewolf by Night
2813	1242	Wildman of Borneo
2824	1244	La Tigresa Blanca
2830	1245	Weapon Omega
2831	1245	Wildheart
2840	1247	Sofia Mantega-Barrett
2846	1248	unrevealed
2852	1249	Grimfang
2853	1249	Mutate 490
2854	1249	Queen Rain of Geshem
2860	1250	James Howlett
2861	1250	Logan
2862	1250	Wolvie
2863	1250	Runt
2864	1250	(formerly) Weapon Ten
2865	1250	Death
2866	1250	Mutate #9601
2867	1250	Jim Logan
2868	1250	Patch
2869	1250	Canucklehead
2870	1250	Emilio Garra
2871	1250	Weapon Chi
2872	1250	Weapon X
2873	1250	Experiment X
2874	1250	Agent Ten
2875	1250	Canada
2876	1250	Wildboy
2877	1250	Peter Richards
2878	1250	Patient X
2879	1250	Canucklehead
2880	1250	Amazing Immortal Man
2881	1250	many others
2892	1252	Wongshot
2908	1255	Golden Claw
2909	1255	Master Plan
2910	1255	the Claw
2911	1255	Tzing Jao
2912	1255	Bhagwan Sri Ananda
2913	1255	The One
2914	1255	others
2920	1256	Commander Zo
2926	1257	Zodiac Killer
2927	1257	Zodiak Killer
2933	1258	Thunderbolt Ross
2944	1260	Variable
2945	1260	in the past has included: Captain Ray Coffin
2946	1260	Doctor Strange
2947	1260	Professor Swann
2948	1260	Commander Arcturus Rann
2949	1260	a member of the Badoon race
2950	1260	Guardian of Eternity
2951	1260	The Avenging Angel
2952	1260	The Hero That Could Be You
2963	1262	Old man
2977	1266	Cassandra Nova
2978	1266	Mummudrai
2979	1266	Anti-Self
2980	1266	Immensity
2986	1267	Sharon Smith
2997	1269	Captain Tomorrow
2998	1269	Justice Man
2999	1269	Flying Fossil
3000	1269	Old Man
3011	1272	Decibel
3017	1273	Dr. Ashley Kafka
3018	1273	Dr. Turner
3019	1273	J. Jonah Jameson
3020	1273	Torpedo
3021	1273	Rick Jones
3022	1273	Dr. Henry Pym
3023	1273	Peter Parker
3024	1273	Captain George Stacy
3025	1273	Dr. Robert Bruce Banner
3026	1273	General Thunderbolt Ross
3027	1273	Captain America
3028	1273	Kraven the Hunter
3029	1273	Spider-Man
3030	1273	Professor Newton
3031	1273	others
3037	1274	Morph
3038	1274	Professor X
3039	1274	Professor Charles Xavier
3050	1276	Talkback
3051	1276	Neo (considered)
3057	1277	Gaslight Frail
3068	1279	Clinton Francis Clint Barton
3069	1279	Dr. Rogers
3070	1279	The Marksman
3071	1279	Br'er Hawkeye
3072	1279	Seagate Superhuman Cellblock Prisoner 334556
3073	1279	Longbow
3074	1279	Goliath
3075	1279	Father Time
3076	1279	Ronin
3077	1279	Bruno
3078	1279	Louis
3079	1279	Robin Hood
3080	1279	The Hawkeye Kid
3081	1279	Golden Archer
3082	1279	Purple Man
3083	1279	Impersonated Constrictor &amp; Dreadknight
3099	1282	Peter Rasputin
3100	1282	formerly Peter Nicholas
3101	1282	the Proletarian
3112	1284	Alexander Basel
3126	1287	Stox
3127	1287	Dream Maker
3128	1287	Dream Master
3137	1289	The Crimson Dynamo
3143	1290	Bingo
3144	1290	Frag
3145	1290	Mr. Bones
3151	1291	Krule
3160	1293	Numerous assumed identities
3171	1295	Slim; formerly Slym Dayspring
3172	1295	Mutate #007
3173	1295	Erik the Red
3184	1297	Lady Light
3190	1298	Akihiro
3191	1298	Mongrel (English translation of name)
3192	1298	Wolverine
3203	1300	Matthew Murdock
3204	1300	DD
3205	1300	The Man without Fear
3206	1300	Ray Mallory
3207	1300	Kingpin of Crime
3208	1300	Jack Batlin
3209	1300	Laurent LeVasseur
3210	1300	Nameless One
3211	1300	Red Man
3212	1300	Michael Mike Murdock
3218	1301	Beast
3219	1301	Black Beast
3225	1302	Redd
3226	1302	Ms. Psyche
3227	1302	Jeannie
3228	1302	Marvel Girl
3229	1302	Dark Phoenix
3235	1303	The Edge-Man
3236	1303	Falconer
3247	1305	The Evolving Boy
3262	1308	Merc with a Mouth
3263	1308	Big Dee Pee
3264	1308	Captain Wilson
3265	1308	Johnny Salvini
3266	1308	Armando Khan
3267	1308	Mithras
3268	1308	Dr. Koffer
3269	1308	Takehiko Adachi
3270	1308	Wade T. Wilson
3271	1308	Test-o'clees
3272	1308	Jack
3273	1308	Chiyonosake (The Wolf of the Rice Wine)
3274	1308	Rhodes
3275	1308	Corpus
3276	1308	Lopez
3277	1308	Hobgoblin
3278	1308	Thom Cruz
3279	1308	Peter Parker
3285	1309	Mistress Death; formerly the Unknown
3286	1309	Death Ryder
3287	1309	Marcia Lang
3288	1309	the Little Man
3289	1309	X-8-8
3290	1309	Carlos Muerte; allegedly Mister Death
3291	1309	Madame La Morte
3297	1310	Formerly War
3298	1310	Death Phoenix
3309	1312	The Demolisher
3320	1314	Formerly Hobgoblin (while merged with Macendale)
3325	1316	Devil
3331	1317	The Devastator
3342	1319	Wisconsin's Winged Wonder
3343	1319	Ms. Rodan '97
3349	1320	Stephen Vincent Strange
3350	1320	Sherlock
3351	1320	Stephen Sanders
3352	1320	Captain Universe
3353	1320	Red Rajah
3354	1320	Sorcerer Supreme
3355	1320	Vincent Stevens
3356	1320	Master of the Mystic Arts
3362	1321	Possibly Daap
3368	1322	The Dread One
3369	1322	Eater of Souls
3370	1322	Lord of Chaos
3371	1322	Lord of Darkness
3372	1322	The Great Enigma
3373	1322	Flyx
3384	1324	Turaab (Dust in Arabic)
3395	1326	Crimson Cowl
3399	1327	Ego the Living Planet
3405	1328	Little Amber
3406	1328	Epsilon
3407	1328	Perfect Death
3408	1328	Impersonated Chastity McBryde and Sandy Newton
3409	1328	Numerous aliases throughout mercenary career
3430	1332	Formerly M-Plate (with sisters)
3441	1334	Sai Anand
3442	1334	Socrates Carvopolis
3443	1334	Entropy
3444	1334	Ivan
3445	1334	Adam Qadmon
3446	1334	Shakti
3467	1338	Jean-Phillipe
3468	1338	Weapon XIII
3479	1340	Jane Doe
3485	1341	He Whose Limbs Shatter Mountains and Whose Back Scrapes the Sun
3491	1342	Pajaro Del Fuego
3492	1342	Firemaiden
3493	1342	La Espirita
3504	1344	Lady Comet
3505	1344	Angel
3516	1346	Cheyenne
3517	1346	Maker
3523	1347	Gilgamesh
3524	1347	Hero
3525	1347	Hercules
3526	1347	Samson
3527	1347	many other aliases as yet unrevealed
3533	1348	Frank G. Castle (born Castiglione)
3534	1348	Big Nothing
3535	1348	Major Bateman
3536	1348	Ted Bishop
3537	1348	Cliff Callador
3538	1348	Castigo
3539	1348	Chaloner
3540	1348	Fred D'Amato
3541	1348	Eastman
3542	1348	Charles Fort
3543	1348	Frank Loomis
3544	1348	McRook
3545	1348	Melchior
3546	1348	Joe Rainey
3547	1348	Frank Rook
3548	1348	Richard Rook
3549	1348	Tony Knowlen Ross
3550	1348	Francis Stronghold
3551	1348	Johnny Tower
3552	1348	Dmitri Velikoff
3553	1348	Frankie Villa
3554	1348	Yousoufian
3555	1348	numerous others
3566	1350	Armadillo Man
3572	1351	Bambi Long
3573	1351	Astral Samuri
3574	1351	The Most Dangerous Woman in the Universe
3575	1351	The Most Dangerous Woman in the Galaxy
3581	1352	Weapon X
3592	1354	Mistaken for
3598	1355	Tolliver
3604	1356	Roberto Robbie Reyes
3610	1357	Ant-Man
3611	1357	Giant-Man
3612	1357	Goliath
3613	1357	Yellowjacket
3614	1357	Wasp
3615	1357	Scientist Supreme
3616	1357	the Mage
3617	1357	Grand Acquisitioner
3618	1357	High-Pockets
3619	1357	Man-Mountain
3620	1357	Dr. Pym the Scientific Adventurer
3621	1357	the Master of Many Sizes
3622	1357	The Workhorse
3623	1357	impersonated Charlie-27
3624	1357	Daredevil
3625	1357	Myron MacLain
3626	1357	Ultron
3627	1357	Henry Pym
3643	1360	Glorian
3644	1360	the Dreamer
3665	1364	War Machine (James Rhodes)
3666	1364	Goblin-Lord
3667	1364	Overlord
3673	1365	Paul St. Pierre
3684	1367	Mister H
3690	1368	Henry Kagle
3696	1369	The Living Cobalt Time-Bomb
3697	1369	the Walking Bomb
3698	1369	Iron Man
3699	1369	the Freak
3700	1369	Hap
3706	1370	Cardinal
3712	1371	Formerly the Green Goblin
3726	1374	Dr. Wyndham
3727	1374	Lord High Evolutionary
3728	1374	HE
3734	1375	Nemesis
3740	1376	Count Drakula
3741	1376	Dirk Byrd
3742	1376	Dark Mallard of the Night
3743	1376	Dopey Duck
3744	1376	Drakula
3745	1376	the Drivin' Drake
3746	1376	Duckboy
3747	1376	Duck-Man
3748	1376	the Ducknight Detective
3749	1376	the Feathered Fury
3750	1376	Howard the Human
3751	1376	Iron Duck
3752	1376	Killmallard
3753	1376	Leonard the Duck
3754	1376	Master of Quak Fu
3755	1376	Mister Duck
3756	1376	Pondhopper
3757	1376	Santa Claus
3758	1376	Shang-Op
3759	1376	Son of Satan
3760	1376	Osama el-Braka
3771	1378	Jonathan Lowell Spencer Johnny Storm
3772	1378	Matchstick Johnny
3773	1378	Doug Brown
3779	1379	The Bug-Man of Alcatraz
3780	1379	Red Baron
3796	1382	Morrie
3797	1382	Mud-Thing
3813	1385	Formerly Mister Friese
3814	1385	Drake Roberts
3815	1385	Rampage
3821	1386	Ike Harris
3822	1386	Iceberg
3823	1386	Sovereign
3832	1388	Impy
3833	1388	Ottoman; impersonated Bridget O’Shaughnessy and innumerable others
3839	1389	The Barrier between Dichotomies
3840	1389	He Who Stands in Shadow
3841	1389	the Separator of Actualities
3842	1389	Ankh the Wind-Giver
3843	1389	Ankh the Sun Holder
3844	1389	Ankh the Cosmic All of Our Dimension
3860	1392	Baroness Von Doom
3861	1392	Stormy Sue
3862	1392	Malice
3863	1392	Mistress of Hate
3864	1392	Susan Benjamin
3865	1392	Invisible Girl
3866	1392	Mrs.Fantastic
3867	1392	Invisible Woman
3878	1394	Daniel Danny Thomas Rand-K'ai
3879	1394	Cooper Payton
3880	1394	Daniel Thomas Rand
3881	1394	the Living Weapon
3882	1394	Young Dragon
3883	1394	Impersonated Spider-Man. Impersonated Daredevil
3889	1395	Kang The Conqueror
3890	1395	Young Kang
3891	1395	others
3907	1398	Formerly King Cobra
3908	1398	AZ-1260
3924	1401	Sara Ehret
3935	1403	Jaz; impersonated Darqon Par
3936	1403	General Eng
3937	1403	Jenifer Walters
3938	1403	Mrs. Murphy
3939	1403	others
3947	1405	Jimmy Woo
3948	1405	Woo Yen Jet
3949	1405	Master Woo
3950	1405	Khan of the Eternal Empire
3956	1406	Johnathon Johnny Blaze
3957	1406	Brimstone Biker
3958	1406	Spirit of Vengeance
3959	1406	Stuntmaster
3960	1406	Ghost Biker
3961	1406	Frank Ryder
3972	1408	Josiah X
3973	1408	Justice
3974	1408	Josiah Smith
3975	1408	A-39
3986	1410	Formerly Exemplar of Physical Power
3992	1411	Danny Vincent
3998	1412	Marvel Boy
3999	1412	Marvel Man
4000	1412	Manglin' John Mahoney
4001	1412	the Astounding Astrovik
4002	1412	Superhuman Penitentary Prisoner 344678
4003	1412	Squire Justice
4004	1412	Super Tights
4005	1412	Vance Astro
4016	1414	Blue Man
4017	1414	Victor Timely
4018	1414	Blue Totem
4019	1414	Scarlet Centurion
4020	1414	Rama-Tut
4021	1414	King of Kings
4022	1414	Master of Men
4023	1414	Lord of the Seven Suns
4029	1415	Shan
4035	1416	The Shatterer
4046	1418	Harold Simmons
4052	1419	Formerly Black Panther
4053	1419	N'Jadaka
4059	1420	Master of Sound
4060	1420	Murderous Master of Sound
4061	1420	Ronald Pershing
4062	1420	Sound Master
4063	1420	Sultan of Sound
4074	1423	Bright Lord
4075	1423	Clockwork Lord
4076	1423	The Enemy
4077	1423	Jaboa Murphy; impersonated Uatu the Watcher
4078	1423	Kang
4084	1424	Kronos
4095	1426	The Night (English translation of codename)
4101	1427	Maki Matsumoto
4107	1428	unrevealed
4111	1429	Leader
4127	1432	Formerly Molecula Mistress of Destiny
4128	1432	Starstreak
4144	1435	Lilith Drake (for legal purposes)
4145	1435	Daughter of Dracula
4149	1436	Captain Britain
4155	1437	El Relampago Vivo
4156	1437	Sir Fulminator
4162	1438	The Mummy
4163	1438	Captain Ace Bandages
4184	1442	Lockheed
4185	1442	Dragon
4191	1443	Slobberchops
4192	1443	Sparky
4193	1443	Droopy
4194	1443	Puppy Boy
4200	1444	Scarlet Witch
4201	1444	Gem-Keeper
4202	1444	Walter Lawson
4203	1444	Lester
4204	1444	Loren Olsen
4205	1444	Tyfon
4206	1444	Father Williams
4207	1444	Willie
4208	1444	Tso Zhung
4209	1444	Satan
4210	1444	Has also impersonated hundreds of others.
4216	1445	Lucky One
4217	1445	Fallen Messiah
4223	1446	K
4224	1446	'Lina Bean
4230	1447	Alicia Masters
4231	1447	Lyja The Lazerfist
4232	1447	Laura Green
4237	1448	MODOK
4238	1448	Gerlach
4239	1448	MODOC
4240	1448	Scientist Supreme
4241	1448	Damocles Rivas
4242	1448	the Saint
4253	1450	Malcom Stromberg
4254	1450	The Cosmic Assassin
4255	1450	Anomaly II
4261	1451	Lady Magdalene
4272	1453	Darkchilde Archimage
4273	1453	Red Flag #133
4274	1453	Illyana Nikolievna Rasputina
4275	1453	Illyana Rasputin
4281	1454	Alison Crestmere
4287	1455	Erik Magnus Lehnsherr
4288	1455	Erik the Red
4289	1455	Grey King
4290	1455	White King
4291	1455	Michael Xavier
4292	1455	The Creator
4293	1455	White Pilgrim
4294	1455	Prisoner #214782
4295	1455	others
4299	1456	The Director
4310	1458	K'ad-Mon of the Fallen Stars
4311	1458	the Man of Lineage
4312	1458	the Swamp God
4313	1458	the Keeper of Illusion
4319	1459	Hensley Fargus
4340	1463	Sarah Rushman
4351	1465	MJ
4352	1465	Crimson She-Devil
4358	1466	Aunt May
4359	1466	May Reilly
4360	1466	May
4366	1467	Madam Medusa
4367	1467	Madame Medusa
4368	1467	Red
4374	1468	Menace of Manhattan
4375	1468	Grey Goblin
4376	1468	Mock-Goblin
4382	1469	Think Tank
4390	1471	Thomas
4391	1471	Thorton
4392	1471	Junichi
4393	1471	The Wizard
4394	1471	others
4400	1472	Mr. Right
4406	1473	The Blonde Phantom
4407	1473	Millie the Marvel
4408	1473	the Blonde Bombshell
4414	1474	Cal
4415	1474	Wolverine
4426	1476	USA
4427	1476	Miss America
4428	1476	The Demiurge
4429	1476	Princess
4435	1477	Sinister
4436	1477	Robert Windsor
4437	1477	Arnold Bocklin
4438	1477	Mike Milbury
4439	1477	Apocalypse
4440	1477	Steven Shaffran
4441	1477	Edmond Atkinson
4442	1477	Nate
4443	1477	Administrator Pearson
4444	1477	Nosferatu
4445	1477	Nathan Milbury
4446	1477	Pale Man
4452	1478	Last name frequently misspelled MacTaggart
4468	1481	Bruiser
4469	1481	Princess Powerful
4485	1484	Jake Lockley
4486	1484	Steven Grant
4487	1484	Fist of Khonshu
4488	1484	Yitzak Topol
4494	1485	Madame MacEvil
4495	1485	H.D. Steckley
4496	1485	Priestess Selene
4507	1487	The Berzeker
4513	1488	Devourer of Totems
4524	1490	Doctor Doom
4525	1490	Richard Reed
4526	1490	Invincible Man
4527	1490	Reed Benjamin
4528	1490	Man in the Mystery Mask
4529	1490	Mister Elastic
4540	1492	Mr. I
4541	1492	Immy
4547	1493	Martin Li
4548	1493	Martian Li
4549	1493	Martin the Martyr
4565	1496	Raven Darkhölme
4566	1496	Foxx
4567	1496	Helmut Stein
4568	1496	Mallory Brickman
4569	1496	B. Byron Biggs
4570	1496	Surge
4571	1496	Ronnie Lake
4572	1496	Holt Adler
4573	1496	Leni Zauber
4574	1496	Raven Wagner
4575	1496	Randy Green
4576	1496	others
4582	1497	Sub-Mariner
4583	1497	Avenging Daughter
4584	1497	the Sea Beauty
4590	1498	Kymaera
4591	1498	Hard
4597	1499	Adrienne Hatros
4598	1499	Priestess of Darkness
4604	1501	Fuzzy Elf
4605	1501	formerly Gainsborough
4616	1503	Queen of the Werewolves
4617	1503	Deadly Nightshade
4618	1503	Dr. N
4619	1503	Dr. Nightshade
4625	1504	Bucky
4626	1504	Scourge
4632	1505	Jean-Paul Martin
4638	1506	Agent Simpson
4639	1506	Scourge
4645	1507	Vasyliev Arkady among several others
4651	1508	Sam
4657	1509	Charlie
4658	1509	Charles Xavier
4659	1509	Magneto
4660	1509	That Which Shall Survive
4671	1511	Ord of the Breakworld
4677	1512	Doc Ock; formerly Master Planner
4678	1512	Bowrey Bum
4679	1512	Master Programmer
4680	1512	Prisoner #4756689
4686	1513	Power Skrull
4692	1514	Paul Denning
4698	1515	Pan
4714	1518	Formerly Speedball
4715	1518	Masked Marvel
4716	1518	Toothpick
4717	1518	Babykiller
4718	1518	Speedy
4724	1519	Cheese
4725	1519	Agent Coulson
4726	1519	Philip Coulson
4727	1519	Phillip Coulson
4733	1520	Captain Marvel
4734	1520	Legacy
4735	1520	Genny
4736	1520	Starface
4742	1521	Martyr
4743	1521	formerly Quasar
4754	1523	Pipman
4755	1523	King Pip
4756	1523	Formerly Dr. DeTroll
4772	1526	Lorna Dane (legal name since adoption
4773	1526	given name unrevealed)
4774	1526	Pestilence
4775	1526	(formerly) Malice
4776	1526	Polarity
4777	1526	Magnetrix
4778	1526	M-2
4779	1526	Magneto the Second
4795	1529	Unknown
4811	1532	Green Mist of Death
4817	1533	Doctor X
4818	1533	Professor Xavier
4819	1533	formerly Prisoner M-13
4830	1535	Gordo Fraley
4836	1536	Tarata
4837	1536	Cowboy-Cat
4843	1537	Killgrave the Purple Man
4844	1537	Killy
\.


--
-- TOC entry 2958 (class 0 OID 16393)
-- Dependencies: 204
-- Data for Name: character; Type: TABLE DATA; Schema: public; Owner: aswf
--

COPY public."character" (id, name, durability, energy, fighting, intelligence, speed, strength, secret_identity, eyes, hair) FROM stdin;
1000	Rick Jones	3	0	5	4	3	3	f	\N	\N
1016	Amiko	\N	\N	\N	\N	\N	\N	f	\N	black
1039	Captain Barracuda	\N	\N	\N	\N	\N	\N	f	\N	Black
1086	Falcon	2	1	4	2	3	2	f	Brown	Black
1087	Captain Britain	7	7	7	7	7	7	f	Blue	Blond
1088	Captain Marvel	6	6	4	3	5	5	f	Blue	Blonde
1014	Alicia Masters	2	0	0	4	2	2	f	\N	\N
1089	QUICKSILVER	2	2	4	3	7	2	f	Blue	Silver
1090	Marvel Girl	4	7	4	3	6	3	f	Green	Red
1091	Rage	\N	\N	\N	\N	\N	\N	f	Brown	None
1092	Rattler	\N	\N	\N	\N	\N	\N	f	Brown	Gray
1093	Ravenous	\N	\N	\N	\N	\N	\N	f	Red	None
1094	Red Ghost	3	2	2	4	2	2	t	Brown	White
1101	Revanche	\N	\N	\N	\N	\N	\N	f	Purple	Purple
1102	Rhino	7	0	6	0	7	7	f	Brown	Brown
1104	Risque	2	4	2	2	2	2	t	Brown	Black
1032	Asylum	7	7	7	7	7	7	f	\N	\N
1033	ATLAS	7	0	4	2	2	7	f	\N	\N
1035	Azazel	\N	\N	\N	\N	\N	\N	f	\N	\N
1036	Banshee	3	7	4	3	4	2	f	\N	\N
1105	Joseph	\N	\N	\N	\N	\N	\N	f	Brown	White
1107	Rocket Racer	2	2	2	4	3	2	f	Brown	Black
1111	Sabretooth	4	1	7	2	2	4	f	Amber	Blond
1112	Sage	2	0	5	6	4	3	t	Blue	Black
1113	Salo	\N	\N	\N	\N	\N	\N	f	\N	None
1114	Sandman	7	4	5	4	4	5	f	Brown	Brown
1118	Scarecrow	\N	\N	\N	\N	\N	\N	f	Brown	Brown
1120	Scarlet Witch	2	6	3	3	2	2	f	Blue	Auburn
1051	Maker	7	7	3	4	7	7	f	\N	\N
1121	Scrambler	\N	\N	\N	\N	\N	\N	t	Brown	Black
1123	Sebastian Shaw	\N	\N	\N	\N	\N	\N	f	Brown	Black
1127	Kate Pryde	3	2	4	4	2	2	t	Hazel	Brown
1128	Shadu the Shady	\N	\N	\N	\N	\N	\N	f	Brown	Brown
1129	Shang-Chi	4	3	7	4	4	3	f	Brown	Black
1130	Shard	\N	\N	\N	\N	\N	\N	t	White	Blonde
1060	Blackheart	7	6	5	6	6	6	f	\N	\N
1131	Shatterstar	4	3	6	3	3	3	t	Blue	Blond
1133	Shinobi Shaw	\N	\N	\N	\N	\N	\N	f	Blue	Black
1134	Shiva	\N	\N	\N	\N	\N	\N	f	Red	None
1068	Bloodaxe	\N	\N	\N	\N	\N	\N	f	\N	\N
1136	Shockwave	\N	\N	\N	\N	\N	\N	f	Green	Black
1139	Silver Fox	\N	\N	\N	\N	\N	\N	f	Blue	Black
1141	Silver Samurai	4	5	6	3	2	3	f	Brown	Black
1144	Skaar	7	1	6	3	5	7	f	Green	Black
1145	Skin	\N	\N	\N	\N	\N	\N	t	Brown	Brown
1077	Hulk	7	5	4	6	3	7	f	\N	\N
1146	Skreet	\N	\N	\N	\N	\N	\N	f	Pink	Black
1150	Slipstream	\N	\N	\N	\N	\N	\N	t	Blue	Blond
1151	Slyde	4	5	6	6	7	4	t	Brown	Black
1154	Speed	4	3	2	2	4	3	t	Silver	White
1082	Cable	4	4	6	3	7	4	f	\N	\N
1155	Speed Demon	3	0	3	3	5	3	f	Brown	Grey
1156	Spider-Girl	5	1	4	2	3	4	f	Brown	Brown
1157	Ghost-Spider	3	1	3	3	3	4	f	Blue	Blonde
1158	Spider-Man	3	1	4	4	3	4	t	Hazel	Brown
1165	Starfox	6	0	5	5	6	7	f	Blue	Red
1166	Stature	2	0	3	2	2	2	t	Blue	Blonde
1167	Stellaris	\N	\N	\N	\N	\N	\N	t	Brown	Black
1168	Stick	6	3	6	3	7	2	t	Blue	White
1171	Strong Guy	4	0	4	3	2	6	f	Blue	White
1174	Sunset Bain	2	0	3	5	2	2	t	Brown	Brown
1175	Sunspot	4	7	5	4	4	5	t	Brown	Black
1095	Red Hulk	7	2	5	5	4	7	f	\N	\N
1096	Red She-Hulk	\N	\N	\N	\N	\N	\N	f	\N	\N
1099	Red Wolf	\N	\N	\N	\N	\N	\N	f	\N	\N
1178	Supernaut	\N	\N	\N	\N	\N	\N	f	Brown	Black
1179	Supreme Intelligence	\N	\N	\N	\N	\N	\N	f	None	None
1180	Swarm	7	0	2	4	3	0	f	White	None
1106	Rocket	2	1	4	3	2	2	f	\N	\N
1181	Sway	\N	\N	\N	\N	\N	\N	f	Brown	Black
1183	Black Panther	3	3	5	5	2	3	f	Brown	Black
1185	Tana Nile	\N	\N	\N	\N	\N	\N	f	Blue	Black
1188	Terrax	7	6	6	5	6	7	f	Grey	None
1190	Texas Twister	\N	\N	\N	\N	\N	\N	t	Blue	Red
1191	Thanos	6	6	4	6	7	7	f	Red	Bald
1194	Thena	\N	\N	\N	\N	\N	\N	f	Blue	Blonde
1195	Thor	6	6	4	2	7	7	f	Blue	Blond
1197	Thunderball	\N	\N	\N	\N	\N	\N	f	Brown	Black
1199	THUNDRA	\N	\N	\N	\N	\N	\N	f	Green	Red
1200	Tiger Shark	6	0	2	2	3	6	f	Grey	Brown
1201	Timeslip	\N	\N	\N	\N	\N	\N	f	Blue	Black
1204	Toad	4	3	6	5	5	5	t	Brown	Brown
1205	TOMBSTONE	6	2	5	3	3	5	f	Pink	White
1206	Iron Man	6	6	4	6	5	6	f	Blue	Black
1207	Toro	\N	\N	\N	\N	\N	\N	t	Blue	Black
1208	Toxin	5	1	3	5	3	6	t	Blue	Brown
1209	Triton	3	1	4	3	3	5	t	Green	None
1210	Two-Gun Kid	\N	\N	\N	\N	\N	\N	f	blue	white
1211	Tyger Tiger	\N	\N	\N	\N	\N	\N	t	Brown	Black
1213	U-Go Girl	2	0	2	2	2	0	t	Green	Red
1216	Ultimo	7	5	7	2	3	7	f	yellow	none
1218	Umar	\N	\N	\N	\N	\N	\N	f	Green	Black
1219	Unicorn	\N	\N	\N	\N	\N	\N	t	Brown	Red
1220	Unus	6	2	3	2	2	2	f	Blue	Black
1221	Valeria Richards	\N	\N	\N	\N	\N	\N	f	Blue	Blonde
1222	Valkyrie	4	1	5	3	2	5	t	Blue	Blonde
1223	Vampiro	\N	\N	\N	\N	\N	\N	f	White	Black
1225	Vargas	3	0	6	3	2	3	t	Brown	Black
1228	Vermin	3	0	4	0	3	4	t	Red	Brown
1229	Vertigo	\N	\N	\N	\N	\N	\N	t	Blue	Green
1116	Satana	\N	\N	\N	\N	\N	\N	f	\N	Red
1124	Selene	\N	\N	\N	\N	\N	\N	f	\N	Black
1137	Shriek	2	0	2	2	0	0	f	\N	Black
1138	Silhouette	3	5	2	2	7	4	f	\N	Black
1169	Storm	2	5	4	2	3	2	f	\N	White
1173	Namor the Sub-Mariner	6	2	4	2	3	6	f	\N	Black
1126	Shadow King	7	5	1	3	7	1	f	\N	\N
1189	Terror	\N	\N	\N	\N	\N	\N	f	\N	None
1214	Uatu the Watcher	6	6	3	7	6	5	f	\N	None
1224	Vapor	\N	\N	\N	\N	\N	\N	f	\N	Auburn
1230	Victor Mancha	\N	\N	\N	\N	\N	\N	f	\N	Brown
1231	Doctor Doom	6	6	4	6	5	4	f	Brown	Brown
1135	Shiver Man	\N	\N	\N	\N	\N	\N	f	\N	\N
1232	Vin Gonzales	\N	\N	\N	\N	\N	\N	f	Brown	Black
1233	Vindicator	\N	\N	\N	\N	\N	\N	f	Green	Red
1241	Wasp	2	4	4	3	3	5	f	Blue	Auburn
1244	WHITE TIGER	\N	\N	\N	\N	\N	\N	t	Brown	Brown
1245	Wild Child	4	0	3	2	2	3	f	Blue	Blonde
1246	William Stryker	2	0	3	4	2	2	t	Blue	White
1247	Wind Dancer	\N	\N	\N	\N	\N	\N	t	Brown	Brown
1248	Wither	\N	\N	\N	\N	\N	\N	f	Brown	Brown
1250	Wolverine	4	1	7	2	2	4	f	Blue	Black
1253	Wrecker	\N	\N	\N	\N	\N	\N	f	Blue	Brown
1258	Zzzax	\N	\N	\N	\N	\N	\N	f	White	None
1159	Spirit	\N	\N	\N	\N	\N	\N	f	\N	\N
1259	George Stacy	\N	\N	\N	\N	\N	\N	f	Blue	Gray
1161	Spot	3	0	2	5	2	2	f	\N	\N
1261	Cardiac	\N	\N	\N	\N	\N	\N	t	Brown	Black
1262	Caretaker	\N	\N	\N	\N	\N	\N	f	Blue	White
1263	Carlie Cooper	\N	\N	\N	\N	\N	\N	f	Blue	Brown
1176	Super-Adaptoid	\N	\N	\N	\N	\N	\N	f	\N	\N
1177	Super-Skrull	6	6	4	3	3	6	f	\N	\N
1264	Carmella Unuscione	\N	\N	\N	\N	\N	\N	t	Black	Brown
1268	Cecilia Reyes	\N	\N	\N	\N	\N	\N	t	Hazel	Brown
1269	Centennial	3	0	6	2	2	4	f	Brown	White
1274	Changeling	\N	\N	\N	\N	\N	\N	t	Brown	Black
1276	Chase Stein	2	1	2	2	2	2	f	Blue	Blond
1184	Talos	\N	\N	\N	\N	\N	\N	f	\N	\N
1277	Chimera	\N	\N	\N	\N	\N	\N	f	Blue	Blonde
1187	Tenebrous	7	7	7	6	7	7	f	\N	\N
1278	Clea	2	4	2	4	7	2	f	Blue	White
1279	Hawkeye	2	1	4	2	2	2	f	Blue	Blond
1280	Cloak	5	3	2	2	7	3	t	Brown	Black
1284	Controller	4	7	3	6	2	5	t	White	Black
1286	Cottonmouth	\N	\N	\N	\N	\N	\N	f	Grey	White
1287	Count Nefaria	7	7	6	7	7	7	f	Blue	Black
1290	Crossbones	4	3	7	4	3	4	f	Brown	Black
1291	Crule	\N	\N	\N	\N	\N	\N	t	White	Orange
1198	Thunderbolt	\N	\N	\N	\N	\N	\N	f	\N	\N
1292	Crusher Hogan	\N	\N	\N	\N	\N	\N	f	Blue	None
1293	Cuckoo	\N	\N	\N	\N	\N	\N	t	Brown	Black
1296	Cypher	\N	\N	\N	\N	\N	\N	t	Blue	Blond
1297	Dagger	2	6	5	2	2	2	t	Blue	Blonde
1298	Daken	4	0	7	2	3	4	t	Blue	Black
1300	Daredevil	2	4	5	3	2	3	f	Blue	Red
1304	Darkstar	3	5	4	2	3	2	f	Brown	Blonde
1212	TYPHOID MARY	\N	\N	\N	\N	\N	\N	f	\N	\N
1306	Deacon Frost	\N	\N	\N	\N	\N	\N	f	Red	White
1313	Lady Deathstrike	7	7	7	7	7	7	t	Brown	Black
1217	Ultron	7	6	4	4	3	6	f	\N	\N
1314	Demogoblin	5	6	6	3	5	6	t	Red	None
1316	Devil Dinosaur	5	1	4	2	3	4	t	Yellow	None
1317	Devos	\N	\N	\N	\N	\N	\N	f	White	Blond
1318	Diamondback	2	1	5	2	2	2	f	Brown	Black
1226	Vector	\N	\N	\N	\N	\N	\N	f	\N	\N
1319	Dinah Soar	\N	\N	\N	\N	\N	\N	f	Black	None
1323	Dragon Man	\N	\N	\N	\N	\N	\N	f	Black	None
1325	Earthquake	\N	\N	\N	\N	\N	\N	t	Black	None
1326	Edwin Jarvis	\N	\N	\N	\N	\N	\N	f	Blue	Black
1329	Elixir	\N	\N	\N	\N	\N	\N	t	Blue	Blond
1330	Elloe Kaifi	\N	\N	\N	\N	\N	\N	f	Crimson	Black
1331	Elsa Bloodstone	\N	\N	\N	\N	\N	\N	f	Blue	Blonde
1335	Ezekiel	4	1	3	4	5	4	t	Blue	Gray
1336	Fabian Cortez	\N	\N	\N	\N	\N	\N	f	Blue	Brown
1338	Fantomex	5	4	5	6	4	4	t	Blue	Black
1339	Fat Cobra	\N	\N	\N	\N	\N	\N	f	Black	Black
1341	Fin Fang Foom	\N	\N	\N	\N	\N	\N	t	Red	None
1342	Firebird	5	7	4	6	7	6	t	Brown	Black
1344	Firestar	3	7	3	3	6	3	f	Green	Red
1345	Puppet Master	3	4	4	5	2	2	f	Brown	Bald
1346	Forge	2	1	4	4	2	2	f	Brown	Black
1347	Forgotten One	\N	\N	\N	\N	\N	\N	t	Blue	Black
1348	Punisher	2	1	6	3	2	3	f	Blue	Black
1349	Franklin Storm	\N	\N	\N	\N	\N	\N	f	Blue	Gray
1353	Gateway	\N	\N	\N	\N	\N	\N	t	Brown	Grey
1355	Genesis	\N	\N	\N	\N	\N	\N	t	Blue	Blond
1357	Hank Pym	3	6	3	6	3	7	f	Blue	Blond
1358	Gideon	\N	\N	\N	\N	\N	\N	f	Blue	Green
1359	Glenn Talbot	\N	\N	\N	\N	\N	\N	f	Blue	Brown
1360	Glorian	\N	\N	\N	\N	\N	\N	t	Pink	Orange
1361	Gorgon	4	1	4	2	2	4	t	Brown	Brown
1363	Gravity	\N	\N	\N	\N	\N	\N	t	Blue	Brown
1367	Hammerhead	5	0	4	5	2	4	t	Blue	Black
1368	Hannibal King	5	3	5	5	4	4	t	Brown	Brown
1003	Abyss	5	3	4	3	4	6	t	\N	Black
1238	Magus	6	6	2	3	7	5	f	\N	Gold
1236	Wallow	\N	\N	\N	\N	\N	\N	f	\N	\N
1239	Warpath	6	1	5	3	5	5	f	\N	Black
1243	Destiny	\N	\N	\N	\N	\N	\N	f	\N	Silver
1242	Werewolf By Night	5	3	5	3	4	5	f	\N	\N
1256	Zarek	\N	\N	\N	\N	\N	\N	f	Blue	None
1283	Constrictor	\N	\N	\N	\N	\N	\N	f	\N	Black
1295	Cyclops	\N	\N	\N	\N	\N	\N	f	\N	Brown
1299	Dakota North	\N	\N	\N	\N	\N	\N	f	\N	Red
1302	Phoenix	\N	\N	\N	\N	\N	\N	f	\N	Red
1328	Elektra	3	1	6	3	2	2	f	\N	Black
1334	Eternity	7	7	7	7	7	7	f	\N	None
1370	Harrier	5	0	4	2	3	3	f	Brown	Black
1372	Hellion	2	6	3	4	4	2	t	Blue	Black
1373	Hex	\N	\N	\N	\N	\N	\N	t	White	Red
1374	High Evolutionary	7	6	2	6	2	3	t	Brown	Brown
1377	Human Robot	5	6	3	4	3	4	f	Yellow	None
1265	Carnage	5	3	4	4	3	5	f	\N	\N
1266	Cassandra Nova	\N	\N	\N	\N	\N	\N	f	\N	\N
1379	Humbug	2	4	2	4	2	2	f	Hazel	Brown
1270	Cerebro	\N	\N	\N	\N	\N	\N	f	\N	\N
1381	Hussar	\N	\N	\N	\N	\N	\N	t	White	Blonde
1383	HYPERION	7	7	7	7	7	7	f	Blue	Brown
1384	Hypno-Hustler	\N	\N	\N	\N	\N	\N	f	Brown	Black
1385	ICEMAN	4	5	3	2	4	3	f	Brown	Brown
1386	Ikaris	7	6	6	2	7	5	t	Blue	Blond
1390	Inertia	\N	\N	\N	\N	\N	\N	f	Brown	Brown
1391	Infant Terrible	\N	\N	\N	\N	\N	\N	t	Green	None
1392	Invisible Woman	6	7	5	5	5	4	f	Blue	Blonde
1393	Iron Cross	\N	\N	\N	\N	\N	\N	t	Blue	Blonde
1394	Iron Fist	3	3	6	3	2	2	f	Blue	Blond
1395	Iron Lad	5	6	3	4	7	4	t	Brown	Brown
1396	Iron Monger	6	5	2	5	2	6	t	Blue	Bald
1400	Jackal	\N	\N	\N	\N	\N	\N	f	Green	Gray
1002	Abomination	6	1	2	2	2	7	t	\N	\N
1402	Jamie Braddock	2	6	0	2	2	2	f	Blue	Black
1405	Jimmy Woo	\N	\N	\N	\N	\N	\N	f	Brown	Black
1409	Joystick	3	3	4	2	5	4	f	Hazel	Brown
1410	Juggernaut	7	1	3	2	4	7	f	Blue	Red
1411	Junta	2	5	4	2	2	2	f	Brown	Brown
1412	Justice	2	5	3	3	3	2	f	Hazel	Brown
1413	Justin Hammer	\N	\N	\N	\N	\N	\N	f	Blue	Gray
1414	Kang the Conqueror	5	6	3	4	7	2	t	Brown	Brown
1456	Malcolm Colcord	2	0	3	4	2	2	f	Brown	Black
1457	Malice	3	1	6	3	2	4	f	Brown	Black
1309	Death	7	7	6	7	7	7	f	\N	\N
1310	Deathbird	1	1	1	1	1	1	f	\N	\N
1312	Deathlok	4	3	7	3	3	4	f	\N	\N
1315	Deviants	\N	\N	\N	\N	\N	\N	f	\N	\N
1461	Maria Hill	2	1	4	4	2	2	f	Brown	Black
1462	Mariko Yashida	\N	\N	\N	\N	\N	\N	f	Brown	Black
1463	Marrow	4	3	6	3	3	4	t	Blue	Purple
1464	Marvel Boy	\N	\N	\N	\N	\N	\N	f	Blue	Blonde
1465	Mary Jane Watson	\N	\N	\N	\N	\N	\N	f	Green	Red
1322	Dormammu	7	7	4	6	7	7	f	\N	\N
1467	Medusa	3	1	4	3	2	3	t	Green	Red
1469	Mentallo	\N	\N	\N	\N	\N	\N	f	Brown	Brown
1327	Ego	7	7	2	6	7	7	f	\N	\N
1470	Mercury	\N	\N	\N	\N	\N	\N	t	\N	Black
1472	Micromax	2	0	2	2	2	2	f	Blue	Brown
1333	Epoch	6	6	2	6	7	4	f	\N	\N
1475	Mindworm	\N	\N	\N	\N	\N	\N	f	Brown	Brown
1476	America	6	5	3	3	3	5	t	Brown	Black
1477	Mister Sinister	6	6	6	7	5	5	t	Red	Black
1478	Moira MacTaggert	\N	\N	\N	\N	\N	\N	f	Blue	Brown
1479	Mole Man	\N	\N	\N	\N	\N	\N	t	Brown	Gray
1480	Molecule Man	0	7	1	3	0	0	t	Brown	Brown
1481	Molly Hayes	3	1	2	2	2	4	t	Blue	Brown
1482	Molten Man	6	5	4	3	2	5	f	Gold	Gold
1486	Baron Mordo	4	6	3	3	7	2	t	Brown	Gray
1494	Multiple Man	7	7	6	6	7	6	f	Blue	Brown
1495	MVP	\N	\N	\N	\N	\N	\N	f	Blue	Brown
1497	Namora	\N	\N	\N	\N	\N	\N	f	Blue	Blonde
1498	Namorita	7	7	6	7	7	7	f	Blue	Blonde
1499	Nekra	5	0	4	3	2	4	t	Black	Black
1503	Nightshade	2	1	4	6	2	2	f	Brown	Black
1504	Nomad	2	1	3	1	1	3	f	Brown	Brown
1506	Nuke	3	1	6	1	3	3	t	Blue	Blond
1508	Omega	\N	\N	\N	\N	\N	\N	t	Blue	Black
1511	Ord	\N	\N	\N	\N	\N	\N	t	Red	Black
1512	Doctor Octopus	2	1	4	6	2	2	f	Brown	Brown
1513	Paibok	6	6	4	2	5	4	f	Green	None
1514	Paladin	0	0	7	5	0	6	t	Brown	Brown
1515	Pandemic	\N	\N	\N	\N	\N	\N	t	Blue	Black
1516	Paper Doll	\N	\N	\N	\N	\N	\N	t	Yellow	Black
1518	Penance	6	4	4	2	3	3	f	Blue	Blond
1519	Phil Coulson	2	1	4	3	2	2	f	Brown	Brown
1351	Gamora	3	1	6	3	4	3	f	\N	Black
1352	Garrison Kane	5	6	6	2	3	5	f	\N	Black
1362	Grandmaster	7	6	2	6	7	4	f	\N	White
1378	Human Torch	4	6	4	4	5	4	f	\N	Blond
1354	Geiger	\N	\N	\N	\N	\N	\N	f	\N	\N
1389	In-Betweener	7	7	2	6	7	7	f	\N	None
1404	Jeryn Hogarth	\N	\N	\N	\N	\N	\N	f	\N	Brown
1442	Lockheed	\N	\N	\N	\N	\N	\N	f	\N	None
1445	Longshot	\N	\N	\N	\N	\N	\N	f	\N	Blond
1365	Grey Gargoyle	6	2	4	5	2	5	f	\N	\N
1448	M.O.D.O.K.	1	4	0	6	1	1	f	\N	Brown
1369	Happy Hogan	\N	\N	\N	\N	\N	\N	f	\N	\N
1521	Quasar	4	5	4	4	7	5	f	Blue	White
1522	Piledriver	\N	\N	\N	\N	\N	\N	f	Blue	Blonde
1523	Pip the Troll	1	1	2	4	1	1	f	Pink	Red
1525	Plazm	\N	\N	\N	\N	\N	\N	t	Red	None
1527	Post	\N	\N	\N	\N	\N	\N	f	Red	Black
1528	Power Man	\N	\N	\N	\N	\N	\N	t	Brown	Black
1532	Prince of Orphans	\N	\N	\N	\N	\N	\N	t	Brown	None
1535	Puff Adder	\N	\N	\N	\N	\N	\N	t	Brown	Black
1537	Purple Man	2	3	1	2	2	2	f	Purple	Purple
1388	Impossible Man	6	6	0	2	7	6	f	\N	\N
1538	Quasimodo	\N	\N	\N	\N	\N	\N	t	White	Brown
1397	Ironclad	\N	\N	\N	\N	\N	\N	f	\N	\N
1403	Jazinda	\N	\N	\N	\N	\N	\N	f	\N	\N
1406	Ghost Rider	5	4	2	2	3	4	f	\N	\N
1421	Korath	\N	\N	\N	\N	\N	\N	f	\N	\N
1423	Korvac	\N	\N	\N	\N	\N	\N	f	\N	\N
1431	Lifeguard	4	3	4	3	3	4	f	\N	\N
1439	Living Tribunal	7	7	7	7	7	7	f	\N	\N
1441	Lizard	5	1	2	5	2	4	f	\N	\N
1117	Sauron	2	4	2	2	4	3	t	\N	\N
1075	Bride of Nine Spiders	\N	\N	\N	\N	\N	\N	t	\N	Black
1100	Reptil	\N	\N	\N	\N	\N	\N	t	\N	Black
1484	Moon Knight	4	1	3	3	3	4	f	\N	Brown
1487	Morg	\N	\N	\N	\N	\N	\N	f	\N	Gray
1501	NIGHTCRAWLER	5	7	7	5	7	4	f	\N	Indigo
1507	Omega Red	5	4	6	4	3	5	f	\N	Blond
1529	Praxagora	\N	\N	\N	\N	\N	\N	f	\N	None
1530	Preak	\N	\N	\N	\N	\N	\N	f	\N	None
1489	Morph	7	5	7	7	7	5	f	\N	\N
1500	Nick Fury	\N	\N	\N	\N	\N	\N	f	\N	\N
1509	Onslaught	7	7	7	7	7	7	f	\N	\N
1534	Psycho-Man	\N	\N	\N	\N	\N	\N	f	\N	\N
1049	Beta Ray Bill	7	7	7	5	7	7	t	\N	\N
1061	Blacklash	\N	\N	\N	\N	\N	\N	t	\N	\N
1073	Boom	\N	\N	\N	\N	\N	\N	t	\N	\N
1097	Red Shift	\N	\N	\N	\N	\N	\N	t	\N	\N
1098	Red Skull	3	0	5	4	3	3	t	\N	\N
1115	Sasquatch	7	7	7	7	7	7	t	\N	\N
1164	Stardust	7	7	6	6	7	6	t	\N	None
1172	Stryfe	3	4	6	5	3	4	t	\N	White
1186	Taskmaster	2	1	7	4	2	3	t	\N	Brown
1240	Warstar	\N	\N	\N	\N	\N	\N	t	\N	None
1257	Zodiak	\N	\N	\N	\N	\N	\N	t	\N	Brown
1282	Colossus	7	5	5	4	4	7	t	\N	Black
1147	SLAPSTICK	\N	\N	\N	\N	\N	\N	t	\N	\N
1148	Slayback	1	1	1	1	1	1	t	\N	\N
1149	Sleepwalker	\N	\N	\N	\N	\N	\N	t	\N	\N
1305	Darwin	5	5	5	5	5	5	t	\N	None
1332	Emplate	3	2	2	3	2	2	t	\N	Gray
1152	SNOWBIRD	4	1	4	3	4	4	t	\N	\N
1163	Starbolt	\N	\N	\N	\N	\N	\N	t	\N	\N
1235	Wallop	\N	\N	\N	\N	\N	\N	t	\N	\N
1254	Xorn	4	7	5	6	4	4	t	\N	\N
1260	Captain Universe	7	7	7	7	7	7	t	\N	\N
1267	Catseye	5	0	4	4	6	5	t	\N	\N
1303	Darkhawk	4	4	2	3	2	4	t	\N	\N
1307	Dead Girl	6	3	3	3	3	3	t	\N	\N
1311	Deathcry	\N	\N	\N	\N	\N	\N	t	\N	\N
1399	Jack O'Lantern	\N	\N	\N	\N	\N	\N	t	\N	Bald
1415	Karma	\N	\N	\N	\N	\N	\N	t	\N	Black
1425	Kylun	2	0	5	2	2	3	t	\N	Orange
1451	Magdalene	\N	\N	\N	\N	\N	\N	t	\N	Black
1471	Mesmero	\N	\N	\N	\N	\N	\N	t	\N	Green
1350	Freak	\N	\N	\N	\N	\N	\N	t	\N	\N
1356	Ghost Rider	5	3	4	2	3	4	t	\N	\N
1375	Holocaust	6	6	3	4	2	5	t	\N	\N
1380	Husk	\N	\N	\N	\N	\N	\N	t	\N	\N
1424	Kronos	\N	\N	\N	\N	\N	\N	t	\N	\N
1447	Lyja	\N	\N	\N	\N	\N	\N	t	\N	\N
1468	Menace	\N	\N	\N	\N	\N	\N	t	\N	\N
1474	Mimic	3	4	3	2	3	4	t	\N	\N
1488	Morlun	3	0	4	3	3	4	t	\N	\N
1493	Mr. Negative	4	4	4	3	3	5	t	\N	\N
1496	Mystique	4	0	5	4	2	2	t	\N	\N
1526	Polaris	\N	\N	\N	\N	\N	\N	t	\N	\N
1252	Wong	2	1	5	2	2	2	f	Brown	\N
1004	Adam Destine	\N	\N	\N	\N	\N	\N	t	Blue	Blonde
1005	Abigail Brand	\N	\N	\N	\N	\N	\N	f	Green	Green
1008	Air-Walker	\N	\N	\N	\N	\N	\N	t	Black	Black
1009	Ajak	7	6	4	3	7	4	t	Grey	Black
1012	Alex Wilder	2	1	3	4	2	2	f	Brown	Black
1013	Alice	\N	\N	\N	\N	\N	\N	f	Green	Blonde
1015	Magik	\N	\N	\N	\N	\N	\N	t	Blue	Blonde
1017	Enchantress	5	5	5	6	4	3	f	Green	Blonde
1018	Amun	0	2	5	2	3	2	t	Blue	Black
1020	Angel	4	1	3	3	3	3	f	Blue	Blond
1021	Annihilus	6	7	5	5	5	6	f	Green	None
1022	Anole	\N	\N	\N	\N	\N	\N	f	Green	None
1023	Apocalypse	6	7	7	7	7	7	t	Blue	None
1026	Arcade	2	0	3	5	2	2	t	Blue	Red
1027	Arclight	\N	\N	\N	\N	\N	\N	t	Violet	Purple
1028	Ares	6	1	7	2	2	5	f	Brown	Brown
1029	Armadillo	\N	\N	\N	\N	\N	\N	t	Brown	None
1030	Arnim Zola	3	0	0	6	3	3	f	Brown	None
1034	Aurora	3	3	3	2	6	2	t	Blue	Black
1037	Baron Strucker	4	3	5	4	2	3	f	Blue	Bald
1040	Bastion	7	4	4	5	3	4	t	Hazel	White
1041	Battering Ram	6	0	2	2	2	6	t	White	None
1042	Beak	0	0	6	0	0	0	t	Black	White
1045	Beetle	\N	\N	\N	\N	\N	\N	f	Green	Black
1047	Uncle Ben	\N	\N	\N	\N	\N	\N	f	Blue	White
1048	Ben Urich	\N	\N	\N	\N	\N	\N	f	Brown	Brown
1050	Betty Brant	0	0	5	5	2	0	f	Brown	Brown
1053	Big Wheel	5	4	1	2	4	3	f	Brown	Gray
1054	Black Bolt	3	5	4	2	3	5	t	Blue	Black
1056	Black Queen	\N	\N	\N	\N	\N	\N	f	Brown	Black
1057	Black Tarantula	4	3	5	4	4	5	f	Brown	Black
1062	Blackout	\N	\N	\N	\N	\N	\N	f	Grey	Brown
1063	Blastaar	6	5	4	3	5	5	f	Gray	Gray
1064	Blink	2	4	4	3	7	2	t	Green	Magenta
1065	Blob	6	2	3	2	2	4	f	Brown	Brown
1069	Bloodscream	7	7	7	7	7	7	t	Black	White
1071	Blue Shield	\N	\N	\N	\N	\N	\N	f	Blue	Brown
1072	Bob	\N	\N	\N	\N	\N	\N	f	Unknown	Unknown
1074	Box	\N	\N	\N	\N	\N	\N	f	Blue	Red
1078	Winter Soldier	4	1	6	2	2	4	f	Brown	Brown
1080	Bushwacker	\N	\N	\N	\N	\N	\N	f	Blue	Blonde
1083	Callisto	4	2	7	4	5	4	f	Blue	Black
1084	Cammi	\N	\N	\N	\N	\N	\N	f	Brown	Brown
1085	Captain America	3	1	6	3	2	3	f	Blue	Blond
1001	Machine Man	6	6	4	4	3	4	t	Red	\N
1006	Agent X	7	4	0	0	0	0	t	Brown	\N
1007	Agent Zero	7	4	7	5	3	4	f	Blue	\N
1010	Ajaxis	\N	\N	\N	\N	\N	\N	f	Black	\N
1011	Albion	3	3	4	3	4	4	t	Blue	\N
1019	Ancient One	\N	\N	\N	\N	\N	\N	f	Brown	\N
1024	Aqueduct	\N	\N	\N	\N	\N	\N	f	Brown	\N
1025	Arachne	2	0	3	3	5	3	f	Blue	\N
1031	Gertrude Yorkes	2	1	1	4	2	1	t	Green	\N
1038	Baron Zemo	5	7	7	5	3	4	f	Blue	\N
1043	Beast	4	1	4	6	3	4	f	Blue	\N
1044	Beef	\N	\N	\N	\N	\N	\N	t	Blue	\N
1046	The Thing	6	1	4	2	2	6	f	Blue	\N
1052	Big Bertha	6	4	4	4	4	6	t	Blue	\N
1055	Black Cat	2	3	3	2	3	4	f	Green	\N
1058	Black Tom	7	7	7	6	6	7	f	Blue	\N
1059	Black Widow	3	3	6	3	2	3	f	Blue	\N
1066	Blockbuster	\N	\N	\N	\N	\N	\N	t	Blue	\N
1067	Bloke	5	2	2	2	2	6	t	White	\N
1070	BLUE MARVEL	\N	\N	\N	\N	\N	\N	f	brown	\N
1076	Doctor Voodoo	4	7	4	5	3	2	f	Brown	\N
1079	Bug	3	4	4	3	2	2	f	Yellow	\N
1081	Layla Miller	2	0	2	4	2	2	f	Green	\N
1103	Richard Fisk	2	0	3	3	2	2	t	Blue	\N
1108	Rogue	7	7	7	7	7	7	t	Green	\N
1109	Romulus	\N	\N	\N	\N	\N	\N	t	Brown	\N
1110	Russian	6	0	5	2	3	4	f	Blue.	\N
1119	Scarlet Spider	3	3	4	4	3	4	t	Hazel	\N
1122	Screwball	\N	\N	\N	\N	\N	\N	f	Blue	\N
1125	Tri-Sentinel	\N	\N	\N	\N	\N	\N	f	Black	\N
1132	She-Hulk	6	1	4	3	3	7	f	Green	\N
1140	Silver Sable	\N	\N	\N	\N	\N	\N	f	Blue	\N
1142	Silverclaw	\N	\N	\N	\N	\N	\N	t	Brown	\N
1143	Silvermane	\N	\N	\N	\N	\N	\N	f	Blue	\N
1153	SONGBIRD	\N	\N	\N	\N	\N	\N	f	Green	\N
1160	Spitfire	3	1	3	3	6	2	f	Blue	\N
1162	Star-Lord	3	1	4	4	2	3	t	Blue	\N
1170	Stranger	6	7	2	7	7	7	f	Black	\N
1182	Synch	\N	\N	\N	\N	\N	\N	t	Brown	\N
1192	The Captain	\N	\N	\N	\N	\N	\N	f	Blue	\N
1193	Executioner	6	6	6	2	7	5	f	Blue	\N
1196	THOR GIRL	6	7	7	7	6	6	f	Blue	\N
1202	Tinkerer	0	0	0	6	2	0	t	Brown	\N
1203	Titania	5	0	4	2	2	6	f	Blue	\N
1215	Ulik	\N	\N	\N	\N	\N	\N	f	Brown	\N
1227	Venus Dee Milo	4	6	2	2	2	1	f	Yellow	\N
1234	Vulture	5	1	2	5	3	3	f	Hazel	\N
1237	War Machine	6	6	4	3	5	6	f	Brown	\N
1249	Wolfsbane	3	0	3	2	3	3	f	Green	\N
1251	Wonder Man	6	7	5	5	4	6	f	Red	\N
1255	Yellow Claw	\N	\N	\N	\N	\N	\N	t	Brown	\N
1271	Cerise	\N	\N	\N	\N	\N	\N	f	Brown	\N
1272	Chamber	6	4	4	3	2	2	t	Brown	\N
1273	Chameleon	2	3	2	4	2	0	t	Brown	\N
1275	Charles Xavier	\N	\N	\N	\N	\N	\N	f	Blue	\N
1281	Colleen Wing	2	1	6	2	2	2	f	Blue	\N
1285	Cosmo	\N	\N	\N	\N	\N	\N	t	Brown	\N
1288	Crimson Crusader	\N	\N	\N	\N	\N	\N	t	Blue	\N
1289	Crimson Dynamo	\N	\N	\N	\N	\N	\N	f	Brown	\N
1294	Cyber	\N	\N	\N	\N	\N	\N	t	Hazel	\N
1301	Dark Beast	4	1	4	5	3	4	f	Blue	\N
1308	Deadpool	4	1	6	2	7	4	f	Brown	\N
1320	Doctor Strange	3	6	3	4	7	2	f	Grey	\N
1321	Doop	6	4	3	5	3	5	f	Fuchsia	\N
1324	Dust	5	5	4	4	6	4	t	Brown	\N
1337	Fallen One	\N	\N	\N	\N	\N	\N	f	Black	\N
1340	Nemesis	\N	\N	\N	\N	\N	\N	t	Green	\N
1343	Firelord	3	5	2	3	4	4	t	White	\N
1364	Green Goblin	4	3	3	4	3	4	f	Blue	\N
1366	Grim Reaper	7	7	7	7	7	7	f	Blue	\N
1371	Harry Osborn	4	5	5	4	5	4	f	Blue	\N
1376	HOWARD THE DUCK	3	1	3	4	2	2	f	Brown	\N
1382	Hydro-Man	6	6	5	4	5	5	f	Brown	\N
1387	Imp	\N	\N	\N	\N	\N	\N	t	Blue	\N
1398	Jack Flag	4	0	6	3	3	4	t	Blue	\N
1401	Jackpot	\N	\N	\N	\N	\N	\N	f	Green	\N
1407	Joshua Kane	\N	\N	\N	\N	\N	\N	f	Blue	\N
1408	Josiah X	\N	\N	\N	\N	\N	\N	t	Brown	\N
1416	Karnak	3	3	6	3	2	4	t	Blue	\N
1429	Leader	2	0	2	6	2	2	f	Green	\N
1430	Lieutenant Marcus Stone	\N	\N	\N	\N	\N	\N	f	Brown	\N
1432	Lightspeed	\N	\N	\N	\N	\N	\N	t	Blue	\N
1438	Living Mummy	6	4	3	4	3	5	f	Brown	\N
1444	Loki	6	6	3	5	7	5	f	Green	\N
1455	Magneto	2	6	4	5	5	2	t	Blue	\N
1458	Man-Thing	6	5	4	4	4	5	t	Red	\N
1460	Manta	\N	\N	\N	\N	\N	\N	t	White	\N
1466	Aunt May	0	0	0	2	2	1	f	Blue	\N
1473	Millie The Model	\N	\N	\N	\N	\N	\N	f	Blue	\N
1483	Mongoose	\N	\N	\N	\N	\N	\N	t	Brown	\N
1485	Moondragon	4	7	5	4	4	3	t	Blue	\N
1490	Mister Fantastic	6	1	2	6	2	3	f	Brown	\N
1491	Mister Hyde	5	3	4	3	3	5	f	Brown	\N
1492	MISTER IMMORTAL	\N	\N	\N	\N	\N	\N	f	Blue	\N
1502	Nighthawk	3	4	4	3	3	4	f	Brown	\N
1505	Northstar	0	2	0	1	2	1	f	Blue	\N
1510	Oracle	\N	\N	\N	\N	\N	\N	f	Pink	\N
1517	Patriot	4	1	5	3	4	4	t	Brown	\N
1520	Photon	7	6	3	2	7	5	f	Blue	\N
1524	Pixie	2	4	1	2	5	2	f	Black	\N
1531	Pretty Boy	\N	\N	\N	\N	\N	\N	t	Green	\N
1533	Professor X	4	7	4	7	2	4	f	Blue	\N
1536	Puma	4	0	5	3	3	4	f	Green	\N
1417	Ken Ellis	2	0	2	2	2	2	f	Brown	Brown
1418	Killer Shrike	\N	\N	\N	\N	\N	\N	f	Brown	Brown
1419	Killmonger	3	1	5	5	2	4	f	Brown	Black
1420	Klaw	7	5	4	4	4	4	f	Red	None
1422	Korg	\N	\N	\N	\N	\N	\N	f	Hazel	None
1426	La Nuit	3	5	2	3	3	2	f	Yellow	Black
1427	Lady Bullseye	\N	\N	\N	\N	\N	\N	t	Brown	Black
1428	Lady Mastermind	\N	\N	\N	\N	\N	\N	t	Blue	Blonde
1433	Lila Cheney	2	0	3	2	7	2	f	Blue	Black
1434	Lilandra Neramani	0	2	0	1	0	0	f	Blue	Black
1435	Lilith	5	2	4	3	5	4	f	Red	Black
1436	Lionheart	\N	\N	\N	\N	\N	\N	t	Blue	Blonde
1437	Living Lightning	3	6	2	2	4	2	f	Brown	Black
1440	Liz Osborn	2	0	2	2	2	2	f	Blue	Blonde
1443	Lockjaw	3	3	4	2	7	6	f	Brown	Brown
1446	Karolina Dean	5	4	2	2	3	3	t	Blue	Blonde
1449	Mad Thinker	2	0	0	5	2	0	t	Blue	Brown
1450	Maelstrom	3	5	2	6	2	4	f	Purple	Purple
1452	Maggott	1	1	1	1	1	1	t	Brown	White
1453	Magik	2	7	4	7	3	2	t	Blue	Blonde
1454	Magma	\N	\N	\N	\N	\N	\N	t	Blue	Blonde
1459	Mandrill	\N	\N	\N	\N	\N	\N	f	Brown	Brown
\.


--
-- TOC entry 2960 (class 0 OID 16401)
-- Dependencies: 206
-- Data for Name: character_power; Type: TABLE DATA; Schema: public; Owner: aswf
--

COPY public.character_power (character_id, power_id) FROM stdin;
1031	1000
1054	1001
1054	1002
1054	1003
1054	1004
1054	1005
1054	1006
1054	1007
1054	1008
1054	1009
1055	1010
1055	1011
1059	1012
1059	1009
1064	1013
1064	1004
1064	1014
1077	1015
1077	1009
1077	1006
1077	1016
1077	1017
1078	1018
1078	1006
1078	1019
1082	1020
1082	1000
1082	1007
1082	1013
1085	1021
1085	1003
1085	1009
1085	1022
1085	1006
1086	1014
1086	1000
1088	1008
1088	1023
1088	1009
1088	1006
1106	1024
1106	1021
1106	1008
1106	1025
1106	1026
1108	1027
1108	1028
1108	1008
1108	1006
1108	1022
1120	1029
1120	1030
1120	1031
1120	1032
1120	1033
1120	1011
1120	1034
1120	1035
1120	1036
1120	1037
1120	1015
1120	1038
1120	1039
1120	1040
1120	1041
1126	1000
1126	1013
1126	1037
1126	1042
1126	1015
1126	1043
1132	1006
1132	1009
1132	1042
1132	1016
1157	1006
1157	1009
1157	1021
1157	1044
1157	1045
1158	1006
1158	1005
1158	1022
1158	1009
1158	1015
1158	1045
1158	1024
1158	1044
1162	1007
1162	1015
1162	1006
1162	1025
1162	1046
1162	1018
1162	1039
1162	1008
1162	1047
1162	1005
1162	1026
1168	1005
1168	1048
1168	1000
1168	1024
1168	1021
1168	1018
1168	1026
1168	1049
1168	1046
1169	1050
1169	1040
1169	1039
1169	1008
1169	1024
1173	1039
1173	1051
1173	1000
1173	1008
1173	1052
1173	1006
1173	1009
1173	1022
1173	1021
1183	1024
1183	1053
1183	1014
1183	1006
1191	1006
1191	1009
1191	1036
1191	1043
1191	1054
1191	1055
1193	1006
1193	1009
1193	1022
1193	1005
1193	1015
1193	1056
1195	1057
1195	1058
1195	1006
1195	1009
1195	1005
1195	1022
1195	1039
1195	1014
1195	1046
1206	1024
1206	1006
1206	1042
1206	1017
1209	1059
1209	1051
1209	1060
1217	1006
1217	1009
1217	1008
1217	1023
1217	1037
1217	1061
1222	1006
1222	1009
1222	1024
1222	1013
1222	1062
1231	1036
1231	1006
1231	1017
1234	1008
1234	1006
1234	1009
1237	1014
1237	1063
1237	1008
1237	1023
1237	1064
1237	1047
1237	1051
1238	1021
1238	1003
1238	1000
1238	1004
1238	1015
1241	1016
1241	1005
1241	1006
1250	1024
1250	1042
1250	1006
1250	1009
1250	1005
1250	1022
1252	1036
1252	1065
1276	1066
1279	1014
1279	1025
1280	1013
1280	1067
1281	1015
1281	1065
1281	1068
1286	1014
1297	1040
1297	1069
1300	1024
1308	1014
1308	1015
1308	1055
1308	1025
1316	1006
1316	1070
1318	1014
1320	1036
1320	1065
1320	1004
1320	1013
1320	1071
1322	1039
1322	1072
1322	1031
1322	1013
1322	1036
1322	1000
1322	1016
1327	1039
1327	1016
1327	1020
1327	1000
1327	1008
1328	1065
1328	1000
1328	1020
1328	1015
1328	1046
1348	1073
1348	1018
1348	1014
1348	1025
1348	1074
1351	1035
1351	1009
1351	1005
1351	1006
1351	1046
1351	1014
1356	1075
1356	1015
1356	1013
1357	1016
1357	1005
1357	1065
1357	1017
1361	1004
1361	1006
1362	1071
1362	1004
1362	1015
1362	1016
1362	1017
1364	1076
1364	1006
1364	1005
1364	1022
1364	1015
1364	1017
1394	1075
1394	1015
1394	1065
1394	1014
1394	1068
1406	1025
1406	1006
1406	1015
1406	1075
1416	1077
1416	1078
1416	1006
1416	1005
1416	1076
1416	1021
1416	1079
1419	1014
1420	1080
1420	1081
1420	1016
1420	1023
1420	1061
1420	1006
1443	1013
1443	1020
1443	1082
1443	1002
1444	1006
1444	1077
1444	1009
1444	1008
1444	1083
1444	1000
1444	1061
1444	1013
1444	1084
1444	1085
1444	1086
1444	1023
1444	1002
1446	1004
1446	1008
1446	1023
1446	1087
1446	1088
1455	1039
1455	1089
1455	1004
1455	1008
1455	1090
1455	1005
1455	1007
1457	1065
1457	1021
1457	1006
1457	1091
1461	1018
1461	1025
1467	1092
1467	1006
1467	1005
1467	1009
1476	1005
1476	1006
1476	1009
1476	1002
1476	1008
1476	1088
1476	1093
1476	1013
1481	1006
1481	1088
1493	1067
1493	1015
1493	1006
1493	1037
1493	1061
1493	1046
1503	1065
1503	1061
1503	1037
1506	1073
1506	1014
1506	1063
1506	1074
1519	1014
1519	1025
1526	1089
1526	1007
1526	1004
1526	1008
1526	1024
1526	1006
1526	1009
1526	1039
1537	1037
1537	1015
\.


--
-- TOC entry 2961 (class 0 OID 16404)
-- Dependencies: 207
-- Data for Name: power; Type: TABLE DATA; Schema: public; Owner: aswf
--

COPY public.power (id, name) FROM stdin;
1000	Telepathy
1001	Sonic Scream
1002	Inter-Dimensional Travel
1003	Superhuman Stamina
1004	Energy Manipulation
1005	Superhuman Speed
1006	Superhuman Strength
1007	Force Field
1008	Flight
1009	Superhuman Durability
1010	Bad Luck Aura
1011	Probability Alteration
1012	Slowed Aging
1013	Teleportation
1014	Hand-to-Hand Combat
1015	Healing Factor
1016	Size and Shape Alteration
1017	Genius Intelligence
1018	Unarmed Combat
1019	Marksman
1020	Telekinesis
1021	Superhuman Agility
1022	Superhuman Reflexes
1023	Energy Blasts
1024	Heightened Senses
1025	Superior Marksmanship
1026	Superhuman Intuition
1027	Power Mimicry
1028	Nigh Invulnerability
1029	Illumination
1030	Magic (Chaos Magic)
1031	Matter Transmutation
1032	Nexus Being
1033	Powers of Life and Death
1034	Psychometry
1035	Precognition
1036	Magic
1037	Mind Control
1038	Reality Warping
1039	Control of Elements
1040	Psionics
1041	Communing with Deceased Spirits
1042	Regeneration
1043	Mysticism
1044	Wallcrawling
1045	Spider-Sense Alert
1046	Sword-Fighting
1047	Interstellar Travel
1048	Proximity Sense
1049	Life-Force Absorption
1050	Atmokinetic Combat
1051	Underwater Combat
1052	Water Manipulation
1053	Night Vision
1054	Black Arts
1055	Immortality
1056	Heightened Perception
1057	Odinpower
1058	Warrior's Madness (Berserker Rage)
1059	Adapted to Aquatic Life
1060	Zero-G Combat
1061	Hypnosis
1062	Deathglow Vision
1063	Cyborg
1064	Remote Interfacing (with other computer systems)
1065	Martial Artist
1066	Fire Blasts
1067	Darkforce
1068	Harness Spiritual Energy (Chi)
1069	Lightforce
1070	Neuralkinesis
1071	Chronokinesis
1072	Creation of Artificial Beings
1073	Peak Human Strength
1074	Pain Immunity
1075	Pyrokinesis
1076	Superhuman Endurance
1077	Extended Lifespan
1078	Extrasensory Ability
1079	Weakness/Vulnerability Detection
1080	Sonic Blasts
1081	Damage Immunity
1082	Super-Strength
1083	Illusion-Casting
1084	Shapeshifting
1085	Astral Projection
1086	Molecular Rearrangement
1087	Energy Aura
1088	Bioluminescence
1089	Magnetism
1090	Superhuman Intelligence
1091	Superhuman Accuracy
1092	Prehensile Hair
1093	Bulletproof Skin
\.


--
-- TOC entry 2963 (class 0 OID 16412)
-- Dependencies: 209
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: aswf
--

COPY public.team (id, name, headquarters, founded_on) FROM stdin;
1018	A-Force	\N	2015-05-01
1015	Frightful Four	New York	1965-03-01
1010	Secret Avengers	New York	2010-07-01
1012	Illuminati	\N	2005-07-01
1005	Masters of Evil	Colorado	1964-07-01
1000	Avengers	New York	2021-09-01
1011	Fantastic Four	New York	1961-11-01
1025	Midnight Sons	\N	1992-08-01
1004	Runaways	Los Angeles	2003-07-01
1016	Guardians of the Galaxy	Space	1969-01-01
1007	X-Men	New York	1963-09-01
1021	New Mutants	New York	1982-09-01
1003	Eternals	\N	1976-01-01
1008	Hydra	\N	1965-08-01
1027	A.I.M.	\N	1966-07-01
1009	Thunderbolts	Colorado	1997-01-01
1023	Hellions (Hellfire Club)	Massachusetts	1980-01-01
1024	Roxxon	International	1974-12-01
1006	Defenders	New York	1971-12-01
1001	S.W.O.R.D.	Earth	2004-12-01
1014	S.H.I.E.L.D.	\N	1965-08-01
1022	Black Order	Space	2013-10-01
1017	Alpha Flight	Canada	1979-04-01
1002	Heralds of Galactus	Space	1966-03-01
1026	Skrulls	Space	1962-01-01
1019	Kree	Space	1967-08-01
1020	Avengers West Coast	California	1984-09-01
1013	Inhumans	Atlantic Ocean	1965-12-01
\.


--
-- TOC entry 2964 (class 0 OID 16418)
-- Dependencies: 210
-- Data for Name: team_character; Type: TABLE DATA; Schema: public; Owner: aswf
--

COPY public.team_character (team_id, character_id, is_active) FROM stdin;
1000	1001	t
1001	1005	f
1002	1008	t
1003	1009	f
1004	1012	f
1005	1017	f
1006	1020	t
1007	1020	t
1000	1028	f
1008	1030	t
1004	1031	t
1006	1033	f
1009	1033	f
1007	1036	t
1008	1037	t
1009	1038	f
1006	1043	t
1010	1043	f
1007	1043	f
1001	1043	t
1000	1046	f
1011	1046	t
1012	1054	t
1013	1054	f
1000	1059	t
1014	1059	f
1010	1059	t
1015	1063	t
1000	1077	t
1006	1077	f
1016	1079	f
1007	1082	t
1000	1085	t
1010	1085	f
1006	1086	t
1017	1088	t
1000	1088	f
1018	1088	f
1019	1088	t
1000	1089	f
1007	1090	f
1000	1091	f
1002	1097	t
1008	1098	t
1007	1101	f
1016	1106	f
1007	1108	t
1007	1111	t
1007	1112	f
1000	1114	f
1015	1114	f
1000	1120	t
1020	1120	t
1007	1127	t
1000	1132	f
1006	1132	t
1011	1132	f
1018	1132	t
1007	1150	f
1009	1153	f
1015	1158	f
1016	1162	t
1002	1164	f
1007	1169	t
1012	1173	f
1021	1175	f
1019	1179	f
1007	1181	f
1000	1183	t
1015	1186	t
1014	1186	t
1010	1186	f
1009	1186	f
1002	1188	f
1022	1191	f
1003	1194	f
1000	1195	t
1002	1195	t
1015	1199	f
1000	1206	f
1020	1206	t
1012	1206	f
1014	1206	f
1013	1209	f
1011	1221	f
1006	1222	f
1010	1222	t
1004	1230	f
1010	1237	t
1016	1238	f
1023	1239	f
1000	1241	f
1023	1249	f
1021	1249	t
1007	1250	t
1000	1251	f
1020	1251	f
1016	1251	f
1007	1254	f
1023	1267	f
1007	1268	t
1007	1272	f
1007	1274	t
1004	1276	f
1006	1278	f
1020	1279	f
1006	1279	f
1006	1282	t
1007	1282	f
1015	1283	f
1016	1285	t
1007	1295	f
1023	1296	f
1021	1296	t
1006	1300	f
1007	1302	f
1006	1303	f
1007	1305	t
1015	1308	t
1000	1320	f
1006	1320	f
1012	1320	f
1002	1337	t
1024	1340	t
1002	1343	f
1007	1346	f
1016	1351	f
1000	1356	f
1025	1368	f
1000	1378	t
1011	1378	f
1002	1378	t
1006	1385	f
1007	1385	f
1003	1386	f
1000	1392	f
1011	1392	f
1006	1394	f
1014	1405	t
1025	1406	f
1007	1410	t
1006	1411	t
1021	1415	f
1013	1416	t
1024	1418	f
1007	1428	f
1007	1431	f
1007	1442	f
1001	1442	f
1007	1445	f
1004	1446	f
1026	1447	t
1027	1448	f
1007	1452	f
1023	1453	t
1021	1453	f
1007	1453	f
1023	1454	f
1021	1454	f
1014	1461	f
1007	1463	f
1011	1467	f
1015	1467	t
1013	1467	f
1018	1467	f
1007	1474	t
1024	1477	f
1004	1481	t
1000	1484	f
1010	1484	t
1000	1485	f
1006	1485	t
1002	1487	t
1011	1490	f
1012	1490	f
1007	1496	f
1011	1498	f
1007	1501	t
1006	1502	t
1006	1514	t
1019	1520	t
1016	1521	t
1019	1521	f
1012	1533	f
1007	1533	t
\.


--
-- TOC entry 2975 (class 0 OID 0)
-- Dependencies: 203
-- Name: attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aswf
--

SELECT pg_catalog.setval('public.attribute_id_seq', 100000, true);


--
-- TOC entry 2976 (class 0 OID 0)
-- Dependencies: 205
-- Name: character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aswf
--

SELECT pg_catalog.setval('public.character_id_seq', 100000, true);


--
-- TOC entry 2977 (class 0 OID 0)
-- Dependencies: 208
-- Name: power_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aswf
--

SELECT pg_catalog.setval('public.power_id_seq', 100000, true);


--
-- TOC entry 2978 (class 0 OID 0)
-- Dependencies: 211
-- Name: team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aswf
--

SELECT pg_catalog.setval('public.team_id_seq', 100000, true);


--
-- TOC entry 2812 (class 2606 OID 16428)
-- Name: alias attribute_pk; Type: CONSTRAINT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public.alias
    ADD CONSTRAINT attribute_pk PRIMARY KEY (id);


--
-- TOC entry 2814 (class 2606 OID 16430)
-- Name: character character_pk; Type: CONSTRAINT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT character_pk PRIMARY KEY (id);


--
-- TOC entry 2816 (class 2606 OID 16432)
-- Name: character_power character_power_pk; Type: CONSTRAINT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public.character_power
    ADD CONSTRAINT character_power_pk PRIMARY KEY (character_id, power_id);


--
-- TOC entry 2819 (class 2606 OID 16434)
-- Name: power power_pk; Type: CONSTRAINT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public.power
    ADD CONSTRAINT power_pk PRIMARY KEY (id);


--
-- TOC entry 2824 (class 2606 OID 16436)
-- Name: team_character team_character_pk; Type: CONSTRAINT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public.team_character
    ADD CONSTRAINT team_character_pk PRIMARY KEY (team_id, character_id);


--
-- TOC entry 2822 (class 2606 OID 16438)
-- Name: team team_pk; Type: CONSTRAINT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pk PRIMARY KEY (id);


--
-- TOC entry 2817 (class 1259 OID 16439)
-- Name: power_name_uindex; Type: INDEX; Schema: public; Owner: aswf
--

CREATE UNIQUE INDEX power_name_uindex ON public.power USING btree (name);


--
-- TOC entry 2820 (class 1259 OID 16440)
-- Name: team_name_uindex; Type: INDEX; Schema: public; Owner: aswf
--

CREATE UNIQUE INDEX team_name_uindex ON public.team USING btree (name);


--
-- TOC entry 2825 (class 2606 OID 16441)
-- Name: alias attribute_character_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public.alias
    ADD CONSTRAINT attribute_character_id_fk FOREIGN KEY (character_id) REFERENCES public."character"(id);


--
-- TOC entry 2826 (class 2606 OID 16446)
-- Name: character_power character_power_character_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public.character_power
    ADD CONSTRAINT character_power_character_id_fk FOREIGN KEY (character_id) REFERENCES public."character"(id);


--
-- TOC entry 2827 (class 2606 OID 16451)
-- Name: character_power character_power_power_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public.character_power
    ADD CONSTRAINT character_power_power_id_fk FOREIGN KEY (power_id) REFERENCES public.power(id);


--
-- TOC entry 2828 (class 2606 OID 16456)
-- Name: team_character team_character_character_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public.team_character
    ADD CONSTRAINT team_character_character_id_fk FOREIGN KEY (character_id) REFERENCES public."character"(id);


--
-- TOC entry 2829 (class 2606 OID 16461)
-- Name: team_character team_character_team_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: aswf
--

ALTER TABLE ONLY public.team_character
    ADD CONSTRAINT team_character_team_id_fk FOREIGN KEY (team_id) REFERENCES public.team(id);


-- Completed on 2021-09-07 19:01:25 MDT

--
-- PostgreSQL database dump complete
--

