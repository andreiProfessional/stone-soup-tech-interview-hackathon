--
-- PostgreSQL database dump
--

\restrict X90NGxX2YnaQEwhThrJDGoLaUBCtJboO7LNZKcYQxsJpy348rAudrXD5UjOMgjh

-- Dumped from database version 16.13 (Debian 16.13-1.pgdg13+1)
-- Dumped by pg_dump version 18.0 (Ubuntu 18.0-1.pgdg22.04+3)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: books; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.books (
    id bigint NOT NULL,
    title text NOT NULL,
    author text NOT NULL,
    published_year integer NOT NULL,
    isbn text NOT NULL
);


ALTER TABLE public.books OWNER TO "user";

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.books_id_seq OWNER TO "user";

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.books (id, title, author, published_year, isbn) FROM stdin;
1	Frankenstein	Mary Shelley	1818	9787000000001
2	Dracula	Bram Stoker	1897	9787000000002
3	The Time Machine	H. G. Wells	1895	9787000000003
4	The War of the Worlds	H. G. Wells	1898	9787000000004
5	Twenty Thousand Leagues Under the Seas	Jules Verne	1870	9787000000005
6	Journey to the Center of the Earth	Jules Verne	1864	9787000000006
7	The Invisible Man	H. G. Wells	1897	9787000000007
8	A Princess of Mars	Edgar Rice Burroughs	1912	9787000000008
9	The Lost World	Arthur Conan Doyle	1912	9787000000009
10	Flatland	Edwin A. Abbott	1884	9787000000010
11	The Moonstone	Wilkie Collins	1868	9787000000011
12	Treasure Island	Robert Louis Stevenson	1883	9787000000012
13	The Picture of Dorian Gray	Oscar Wilde	1890	9787000000013
14	The Scarlet Pimpernel	Baroness Orczy	1905	9787000000014
15	The Strange Case of Dr Jekyll and Mr Hyde	Robert Louis Stevenson	1886	9787000000015
16	The King in Yellow	Robert W. Chambers	1895	9787000000016
17	Chronicles of Arcane Towers Book 0001	Mira Thorne	1901	9787000000017
18	Expedition to Synthetic Minds Log 0002	Orion Hale	1902	9787000000018
19	Practical Distributed Systems Volume 0003	Grace Hopper	1953	9787000000019
20	Chronicles of Moonlit Forests Book 0004	Thalia Ember	1904	9787000000020
21	Expedition to Terraforming Log 0005	Elara Pulse	1905	9787000000021
22	Practical Networking Volume 0006	Margaret Hamilton	1956	9787000000022
23	Chronicles of Shadow Realms Book 0007	Bren Hollow	1907	9787000000023
24	Expedition to Alien Signals Log 0008	Rhea Vector	1908	9787000000024
25	Practical Machine Learning Volume 0009	Ken Thompson	1959	9787000000025
26	Chronicles of Dragon Lore Book 0010	Arin Starfall	1910	9787000000026
27	Expedition to Quantum Colonies Log 0011	Iris Quasar	1911	9787000000027
28	Practical Site Reliability Volume 0012	Radia Perlman	1962	9787000000028
29	Chronicles of Runic Seas Book 0013	Lyra Windmere	1913	9787000000029
30	Expedition to Deep Space Log 0014	Caden Rift	1914	9787000000030
31	Practical Cybersecurity Volume 0015	Frances Allen	1965	9787000000031
32	Chronicles of Ancient Prophecies Book 0016	Selene Frost	1916	9787000000032
33	Expedition to Nebula Cartography Log 0017	Tara Ion	1917	9787000000033
34	Practical Computer Graphics Volume 0018	Sophie Wilson	1968	9787000000034
35	Chronicles of Silver Blades Book 0019	Nora Ravencrest	1919	9787000000035
36	Expedition to Galactic Frontiers Log 0020	Nova Kepler	1920	9787000000036
37	Practical Data Structures Volume 0021	Alan Turing	1971	9787000000037
38	Chronicles of Forgotten Kingdoms Book 0022	Cedric Vale	1922	9787000000038
39	Expedition to Orbital Cities Log 0023	Vera Cosmo	1923	9787000000039
40	Practical Compilers Volume 0024	Donald Knuth	1974	9787000000040
41	Chronicles of Crystal Empires Book 0025	Orin Blackwood	1925	9787000000041
42	Expedition to Time Dilation Log 0026	Milo Zenith	1926	9787000000042
43	Practical Computer Architecture Volume 0027	John von Neumann	1977	9787000000043
44	Chronicles of Storm Riders Book 0028	Kael Ironhart	1928	9787000000044
45	Expedition to Dyson Habitats Log 0029	Juno Eclipse	1929	9787000000045
46	Practical Software Testing Volume 0030	Dennis Ritchie	1980	9787000000046
47	Chronicles of Arcane Towers Book 0031	Mira Thorne	1931	9787000000047
48	Expedition to Synthetic Minds Log 0032	Orion Hale	1932	9787000000048
49	Practical Cloud Native Volume 0033	Claude Shannon	1983	9787000000049
50	Chronicles of Moonlit Forests Book 0034	Thalia Ember	1934	9787000000050
51	Expedition to Terraforming Log 0035	Elara Pulse	1935	9787000000051
52	Practical Formal Methods Volume 0036	Tim Berners-Lee	1986	9787000000052
53	Chronicles of Shadow Realms Book 0037	Bren Hollow	1937	9787000000053
54	Expedition to Alien Signals Log 0038	Rhea Vector	1938	9787000000054
55	Practical Information Retrieval Volume 0039	Guido van Rossum	1989	9787000000055
56	Chronicles of Dragon Lore Book 0040	Arin Starfall	1940	9787000000056
57	Expedition to Quantum Colonies Log 0041	Iris Quasar	1941	9787000000057
58	Practical Operating Systems Volume 0042	Edsger Dijkstra	1992	9787000000058
59	Chronicles of Runic Seas Book 0043	Lyra Windmere	1943	9787000000059
60	Expedition to Deep Space Log 0044	Caden Rift	1944	9787000000060
61	Practical Databases Volume 0045	Barbara Liskov	1995	9787000000061
62	Chronicles of Ancient Prophecies Book 0046	Selene Frost	1946	9787000000062
63	Expedition to Nebula Cartography Log 0047	Tara Ion	1947	9787000000063
64	Practical Cryptography Volume 0048	Leslie Lamport	1998	9787000000064
65	Chronicles of Silver Blades Book 0049	Nora Ravencrest	1949	9787000000065
66	Expedition to Galactic Frontiers Log 0050	Nova Kepler	1950	9787000000066
67	Practical DevOps Volume 0051	Linus Torvalds	2001	9787000000067
68	Chronicles of Forgotten Kingdoms Book 0052	Cedric Vale	1952	9787000000068
69	Expedition to Orbital Cities Log 0053	Vera Cosmo	1953	9787000000069
70	Practical Concurrency Volume 0054	Niklaus Wirth	2004	9787000000070
71	Chronicles of Crystal Empires Book 0055	Orin Blackwood	1955	9787000000071
72	Expedition to Time Dilation Log 0056	Milo Zenith	1956	9787000000072
73	Practical Programming Languages Volume 0057	Vint Cerf	2007	9787000000073
74	Chronicles of Storm Riders Book 0058	Kael Ironhart	1958	9787000000074
75	Expedition to Dyson Habitats Log 0059	Juno Eclipse	1959	9787000000075
76	Practical Algorithms Volume 0060	Ada Lovelace	2010	9787000000076
77	Chronicles of Arcane Towers Book 0061	Mira Thorne	1961	9787000000077
78	Expedition to Synthetic Minds Log 0062	Orion Hale	1962	9787000000078
79	Practical Distributed Systems Volume 0063	Grace Hopper	2013	9787000000079
80	Chronicles of Moonlit Forests Book 0064	Thalia Ember	1964	9787000000080
81	Expedition to Terraforming Log 0065	Elara Pulse	1965	9787000000081
82	Practical Networking Volume 0066	Margaret Hamilton	2016	9787000000082
83	Chronicles of Shadow Realms Book 0067	Bren Hollow	1967	9787000000083
84	Expedition to Alien Signals Log 0068	Rhea Vector	1968	9787000000084
85	Practical Machine Learning Volume 0069	Ken Thompson	2019	9787000000085
86	Chronicles of Dragon Lore Book 0070	Arin Starfall	1970	9787000000086
87	Expedition to Quantum Colonies Log 0071	Iris Quasar	1971	9787000000087
88	Practical Site Reliability Volume 0072	Radia Perlman	2022	9787000000088
89	Chronicles of Runic Seas Book 0073	Lyra Windmere	1973	9787000000089
90	Expedition to Deep Space Log 0074	Caden Rift	1974	9787000000090
91	Practical Cybersecurity Volume 0075	Frances Allen	2025	9787000000091
92	Chronicles of Ancient Prophecies Book 0076	Selene Frost	1976	9787000000092
93	Expedition to Nebula Cartography Log 0077	Tara Ion	1977	9787000000093
94	Practical Computer Graphics Volume 0078	Sophie Wilson	1952	9787000000094
95	Chronicles of Silver Blades Book 0079	Nora Ravencrest	1979	9787000000095
96	Expedition to Galactic Frontiers Log 0080	Nova Kepler	1980	9787000000096
97	Practical Data Structures Volume 0081	Alan Turing	1955	9787000000097
98	Chronicles of Forgotten Kingdoms Book 0082	Cedric Vale	1982	9787000000098
99	Expedition to Orbital Cities Log 0083	Vera Cosmo	1983	9787000000099
100	Practical Compilers Volume 0084	Donald Knuth	1958	9787000000100
101	Chronicles of Crystal Empires Book 0085	Orin Blackwood	1985	9787000000101
102	Expedition to Time Dilation Log 0086	Milo Zenith	1986	9787000000102
103	Practical Computer Architecture Volume 0087	John von Neumann	1961	9787000000103
104	Chronicles of Storm Riders Book 0088	Kael Ironhart	1988	9787000000104
105	Expedition to Dyson Habitats Log 0089	Juno Eclipse	1989	9787000000105
106	Practical Software Testing Volume 0090	Dennis Ritchie	1964	9787000000106
107	Chronicles of Arcane Towers Book 0091	Mira Thorne	1991	9787000000107
108	Expedition to Synthetic Minds Log 0092	Orion Hale	1992	9787000000108
109	Practical Cloud Native Volume 0093	Claude Shannon	1967	9787000000109
110	Chronicles of Moonlit Forests Book 0094	Thalia Ember	1994	9787000000110
111	Expedition to Terraforming Log 0095	Elara Pulse	1995	9787000000111
112	Practical Formal Methods Volume 0096	Tim Berners-Lee	1970	9787000000112
113	Chronicles of Shadow Realms Book 0097	Bren Hollow	1997	9787000000113
114	Expedition to Alien Signals Log 0098	Rhea Vector	1998	9787000000114
115	Practical Information Retrieval Volume 0099	Guido van Rossum	1973	9787000000115
116	Chronicles of Dragon Lore Book 0100	Arin Starfall	2000	9787000000116
117	Expedition to Quantum Colonies Log 0101	Iris Quasar	2001	9787000000117
118	Practical Operating Systems Volume 0102	Edsger Dijkstra	1976	9787000000118
119	Chronicles of Runic Seas Book 0103	Lyra Windmere	2003	9787000000119
120	Expedition to Deep Space Log 0104	Caden Rift	2004	9787000000120
121	Practical Databases Volume 0105	Barbara Liskov	1979	9787000000121
122	Chronicles of Ancient Prophecies Book 0106	Selene Frost	2006	9787000000122
123	Expedition to Nebula Cartography Log 0107	Tara Ion	2007	9787000000123
124	Practical Cryptography Volume 0108	Leslie Lamport	1982	9787000000124
125	Chronicles of Silver Blades Book 0109	Nora Ravencrest	2009	9787000000125
126	Expedition to Galactic Frontiers Log 0110	Nova Kepler	2010	9787000000126
127	Practical DevOps Volume 0111	Linus Torvalds	1985	9787000000127
128	Chronicles of Forgotten Kingdoms Book 0112	Cedric Vale	2012	9787000000128
129	Expedition to Orbital Cities Log 0113	Vera Cosmo	2013	9787000000129
130	Practical Concurrency Volume 0114	Niklaus Wirth	1988	9787000000130
131	Chronicles of Crystal Empires Book 0115	Orin Blackwood	2015	9787000000131
132	Expedition to Time Dilation Log 0116	Milo Zenith	2016	9787000000132
133	Practical Programming Languages Volume 0117	Vint Cerf	1991	9787000000133
134	Chronicles of Storm Riders Book 0118	Kael Ironhart	2018	9787000000134
135	Expedition to Dyson Habitats Log 0119	Juno Eclipse	2019	9787000000135
136	Practical Algorithms Volume 0120	Ada Lovelace	1994	9787000000136
137	Chronicles of Arcane Towers Book 0121	Mira Thorne	2021	9787000000137
138	Expedition to Synthetic Minds Log 0122	Orion Hale	2022	9787000000138
139	Practical Distributed Systems Volume 0123	Grace Hopper	1997	9787000000139
140	Chronicles of Moonlit Forests Book 0124	Thalia Ember	2024	9787000000140
141	Expedition to Terraforming Log 0125	Elara Pulse	2025	9787000000141
142	Practical Networking Volume 0126	Margaret Hamilton	2000	9787000000142
143	Chronicles of Shadow Realms Book 0127	Bren Hollow	1901	9787000000143
144	Expedition to Alien Signals Log 0128	Rhea Vector	1902	9787000000144
145	Practical Machine Learning Volume 0129	Ken Thompson	2003	9787000000145
146	Chronicles of Dragon Lore Book 0130	Arin Starfall	1904	9787000000146
147	Expedition to Quantum Colonies Log 0131	Iris Quasar	1905	9787000000147
148	Practical Site Reliability Volume 0132	Radia Perlman	2006	9787000000148
149	Chronicles of Runic Seas Book 0133	Lyra Windmere	1907	9787000000149
150	Expedition to Deep Space Log 0134	Caden Rift	1908	9787000000150
151	Practical Cybersecurity Volume 0135	Frances Allen	2009	9787000000151
152	Chronicles of Ancient Prophecies Book 0136	Selene Frost	1910	9787000000152
153	Expedition to Nebula Cartography Log 0137	Tara Ion	1911	9787000000153
154	Practical Computer Graphics Volume 0138	Sophie Wilson	2012	9787000000154
155	Chronicles of Silver Blades Book 0139	Nora Ravencrest	1913	9787000000155
156	Expedition to Galactic Frontiers Log 0140	Nova Kepler	1914	9787000000156
157	Practical Data Structures Volume 0141	Alan Turing	2015	9787000000157
158	Chronicles of Forgotten Kingdoms Book 0142	Cedric Vale	1916	9787000000158
159	Expedition to Orbital Cities Log 0143	Vera Cosmo	1917	9787000000159
160	Practical Compilers Volume 0144	Donald Knuth	2018	9787000000160
161	Chronicles of Crystal Empires Book 0145	Orin Blackwood	1919	9787000000161
162	Expedition to Time Dilation Log 0146	Milo Zenith	1920	9787000000162
163	Practical Computer Architecture Volume 0147	John von Neumann	2021	9787000000163
164	Chronicles of Storm Riders Book 0148	Kael Ironhart	1922	9787000000164
165	Expedition to Dyson Habitats Log 0149	Juno Eclipse	1923	9787000000165
166	Practical Software Testing Volume 0150	Dennis Ritchie	2024	9787000000166
167	Chronicles of Arcane Towers Book 0151	Mira Thorne	1925	9787000000167
168	Expedition to Synthetic Minds Log 0152	Orion Hale	1926	9787000000168
169	Practical Cloud Native Volume 0153	Claude Shannon	1951	9787000000169
170	Chronicles of Moonlit Forests Book 0154	Thalia Ember	1928	9787000000170
171	Expedition to Terraforming Log 0155	Elara Pulse	1929	9787000000171
172	Practical Formal Methods Volume 0156	Tim Berners-Lee	1954	9787000000172
173	Chronicles of Shadow Realms Book 0157	Bren Hollow	1931	9787000000173
174	Expedition to Alien Signals Log 0158	Rhea Vector	1932	9787000000174
175	Practical Information Retrieval Volume 0159	Guido van Rossum	1957	9787000000175
176	Chronicles of Dragon Lore Book 0160	Arin Starfall	1934	9787000000176
177	Expedition to Quantum Colonies Log 0161	Iris Quasar	1935	9787000000177
178	Practical Operating Systems Volume 0162	Edsger Dijkstra	1960	9787000000178
179	Chronicles of Runic Seas Book 0163	Lyra Windmere	1937	9787000000179
180	Expedition to Deep Space Log 0164	Caden Rift	1938	9787000000180
181	Practical Databases Volume 0165	Barbara Liskov	1963	9787000000181
182	Chronicles of Ancient Prophecies Book 0166	Selene Frost	1940	9787000000182
183	Expedition to Nebula Cartography Log 0167	Tara Ion	1941	9787000000183
184	Practical Cryptography Volume 0168	Leslie Lamport	1966	9787000000184
185	Chronicles of Silver Blades Book 0169	Nora Ravencrest	1943	9787000000185
186	Expedition to Galactic Frontiers Log 0170	Nova Kepler	1944	9787000000186
187	Practical DevOps Volume 0171	Linus Torvalds	1969	9787000000187
188	Chronicles of Forgotten Kingdoms Book 0172	Cedric Vale	1946	9787000000188
189	Expedition to Orbital Cities Log 0173	Vera Cosmo	1947	9787000000189
190	Practical Concurrency Volume 0174	Niklaus Wirth	1972	9787000000190
191	Chronicles of Crystal Empires Book 0175	Orin Blackwood	1949	9787000000191
192	Expedition to Time Dilation Log 0176	Milo Zenith	1950	9787000000192
193	Practical Programming Languages Volume 0177	Vint Cerf	1975	9787000000193
194	Chronicles of Storm Riders Book 0178	Kael Ironhart	1952	9787000000194
195	Expedition to Dyson Habitats Log 0179	Juno Eclipse	1953	9787000000195
196	Practical Algorithms Volume 0180	Ada Lovelace	1978	9787000000196
197	Chronicles of Arcane Towers Book 0181	Mira Thorne	1955	9787000000197
198	Expedition to Synthetic Minds Log 0182	Orion Hale	1956	9787000000198
199	Practical Distributed Systems Volume 0183	Grace Hopper	1981	9787000000199
200	Chronicles of Moonlit Forests Book 0184	Thalia Ember	1958	9787000000200
201	Expedition to Terraforming Log 0185	Elara Pulse	1959	9787000000201
202	Practical Networking Volume 0186	Margaret Hamilton	1984	9787000000202
203	Chronicles of Shadow Realms Book 0187	Bren Hollow	1961	9787000000203
204	Expedition to Alien Signals Log 0188	Rhea Vector	1962	9787000000204
205	Practical Machine Learning Volume 0189	Ken Thompson	1987	9787000000205
206	Chronicles of Dragon Lore Book 0190	Arin Starfall	1964	9787000000206
207	Expedition to Quantum Colonies Log 0191	Iris Quasar	1965	9787000000207
208	Practical Site Reliability Volume 0192	Radia Perlman	1990	9787000000208
209	Chronicles of Runic Seas Book 0193	Lyra Windmere	1967	9787000000209
210	Expedition to Deep Space Log 0194	Caden Rift	1968	9787000000210
211	Practical Cybersecurity Volume 0195	Frances Allen	1993	9787000000211
212	Chronicles of Ancient Prophecies Book 0196	Selene Frost	1970	9787000000212
213	Expedition to Nebula Cartography Log 0197	Tara Ion	1971	9787000000213
214	Practical Computer Graphics Volume 0198	Sophie Wilson	1996	9787000000214
215	Chronicles of Silver Blades Book 0199	Nora Ravencrest	1973	9787000000215
216	Expedition to Galactic Frontiers Log 0200	Nova Kepler	1974	9787000000216
217	Practical Data Structures Volume 0201	Alan Turing	1999	9787000000217
218	Chronicles of Forgotten Kingdoms Book 0202	Cedric Vale	1976	9787000000218
219	Expedition to Orbital Cities Log 0203	Vera Cosmo	1977	9787000000219
220	Practical Compilers Volume 0204	Donald Knuth	2002	9787000000220
221	Chronicles of Crystal Empires Book 0205	Orin Blackwood	1979	9787000000221
222	Expedition to Time Dilation Log 0206	Milo Zenith	1980	9787000000222
223	Practical Computer Architecture Volume 0207	John von Neumann	2005	9787000000223
224	Chronicles of Storm Riders Book 0208	Kael Ironhart	1982	9787000000224
225	Expedition to Dyson Habitats Log 0209	Juno Eclipse	1983	9787000000225
226	Practical Software Testing Volume 0210	Dennis Ritchie	2008	9787000000226
227	Chronicles of Arcane Towers Book 0211	Mira Thorne	1985	9787000000227
228	Expedition to Synthetic Minds Log 0212	Orion Hale	1986	9787000000228
229	Practical Cloud Native Volume 0213	Claude Shannon	2011	9787000000229
230	Chronicles of Moonlit Forests Book 0214	Thalia Ember	1988	9787000000230
231	Expedition to Terraforming Log 0215	Elara Pulse	1989	9787000000231
232	Practical Formal Methods Volume 0216	Tim Berners-Lee	2014	9787000000232
233	Chronicles of Shadow Realms Book 0217	Bren Hollow	1991	9787000000233
234	Expedition to Alien Signals Log 0218	Rhea Vector	1992	9787000000234
235	Practical Information Retrieval Volume 0219	Guido van Rossum	2017	9787000000235
236	Chronicles of Dragon Lore Book 0220	Arin Starfall	1994	9787000000236
237	Expedition to Quantum Colonies Log 0221	Iris Quasar	1995	9787000000237
238	Practical Operating Systems Volume 0222	Edsger Dijkstra	2020	9787000000238
239	Chronicles of Runic Seas Book 0223	Lyra Windmere	1997	9787000000239
240	Expedition to Deep Space Log 0224	Caden Rift	1998	9787000000240
241	Practical Databases Volume 0225	Barbara Liskov	2023	9787000000241
242	Chronicles of Ancient Prophecies Book 0226	Selene Frost	2000	9787000000242
243	Expedition to Nebula Cartography Log 0227	Tara Ion	2001	9787000000243
244	Practical Cryptography Volume 0228	Leslie Lamport	1950	9787000000244
245	Chronicles of Silver Blades Book 0229	Nora Ravencrest	2003	9787000000245
246	Expedition to Galactic Frontiers Log 0230	Nova Kepler	2004	9787000000246
247	Practical DevOps Volume 0231	Linus Torvalds	1953	9787000000247
248	Chronicles of Forgotten Kingdoms Book 0232	Cedric Vale	2006	9787000000248
249	Expedition to Orbital Cities Log 0233	Vera Cosmo	2007	9787000000249
250	Practical Concurrency Volume 0234	Niklaus Wirth	1956	9787000000250
251	Chronicles of Crystal Empires Book 0235	Orin Blackwood	2009	9787000000251
252	Expedition to Time Dilation Log 0236	Milo Zenith	2010	9787000000252
253	Practical Programming Languages Volume 0237	Vint Cerf	1959	9787000000253
254	Chronicles of Storm Riders Book 0238	Kael Ironhart	2012	9787000000254
255	Expedition to Dyson Habitats Log 0239	Juno Eclipse	2013	9787000000255
256	Practical Algorithms Volume 0240	Ada Lovelace	1962	9787000000256
257	Chronicles of Arcane Towers Book 0241	Mira Thorne	2015	9787000000257
258	Expedition to Synthetic Minds Log 0242	Orion Hale	2016	9787000000258
259	Practical Distributed Systems Volume 0243	Grace Hopper	1965	9787000000259
260	Chronicles of Moonlit Forests Book 0244	Thalia Ember	2018	9787000000260
261	Expedition to Terraforming Log 0245	Elara Pulse	2019	9787000000261
262	Practical Networking Volume 0246	Margaret Hamilton	1968	9787000000262
263	Chronicles of Shadow Realms Book 0247	Bren Hollow	2021	9787000000263
264	Expedition to Alien Signals Log 0248	Rhea Vector	2022	9787000000264
265	Practical Machine Learning Volume 0249	Ken Thompson	1971	9787000000265
266	Chronicles of Dragon Lore Book 0250	Arin Starfall	2024	9787000000266
267	Expedition to Quantum Colonies Log 0251	Iris Quasar	2025	9787000000267
268	Practical Site Reliability Volume 0252	Radia Perlman	1974	9787000000268
269	Chronicles of Runic Seas Book 0253	Lyra Windmere	1901	9787000000269
270	Expedition to Deep Space Log 0254	Caden Rift	1902	9787000000270
271	Practical Cybersecurity Volume 0255	Frances Allen	1977	9787000000271
272	Chronicles of Ancient Prophecies Book 0256	Selene Frost	1904	9787000000272
273	Expedition to Nebula Cartography Log 0257	Tara Ion	1905	9787000000273
274	Practical Computer Graphics Volume 0258	Sophie Wilson	1980	9787000000274
275	Chronicles of Silver Blades Book 0259	Nora Ravencrest	1907	9787000000275
276	Expedition to Galactic Frontiers Log 0260	Nova Kepler	1908	9787000000276
277	Practical Data Structures Volume 0261	Alan Turing	1983	9787000000277
278	Chronicles of Forgotten Kingdoms Book 0262	Cedric Vale	1910	9787000000278
279	Expedition to Orbital Cities Log 0263	Vera Cosmo	1911	9787000000279
280	Practical Compilers Volume 0264	Donald Knuth	1986	9787000000280
281	Chronicles of Crystal Empires Book 0265	Orin Blackwood	1913	9787000000281
282	Expedition to Time Dilation Log 0266	Milo Zenith	1914	9787000000282
283	Practical Computer Architecture Volume 0267	John von Neumann	1989	9787000000283
284	Chronicles of Storm Riders Book 0268	Kael Ironhart	1916	9787000000284
285	Expedition to Dyson Habitats Log 0269	Juno Eclipse	1917	9787000000285
286	Practical Software Testing Volume 0270	Dennis Ritchie	1992	9787000000286
287	Chronicles of Arcane Towers Book 0271	Mira Thorne	1919	9787000000287
288	Expedition to Synthetic Minds Log 0272	Orion Hale	1920	9787000000288
289	Practical Cloud Native Volume 0273	Claude Shannon	1995	9787000000289
290	Chronicles of Moonlit Forests Book 0274	Thalia Ember	1922	9787000000290
291	Expedition to Terraforming Log 0275	Elara Pulse	1923	9787000000291
292	Practical Formal Methods Volume 0276	Tim Berners-Lee	1998	9787000000292
293	Chronicles of Shadow Realms Book 0277	Bren Hollow	1925	9787000000293
294	Expedition to Alien Signals Log 0278	Rhea Vector	1926	9787000000294
295	Practical Information Retrieval Volume 0279	Guido van Rossum	2001	9787000000295
296	Chronicles of Dragon Lore Book 0280	Arin Starfall	1928	9787000000296
297	Expedition to Quantum Colonies Log 0281	Iris Quasar	1929	9787000000297
298	Practical Operating Systems Volume 0282	Edsger Dijkstra	2004	9787000000298
299	Chronicles of Runic Seas Book 0283	Lyra Windmere	1931	9787000000299
300	Expedition to Deep Space Log 0284	Caden Rift	1932	9787000000300
301	Practical Databases Volume 0285	Barbara Liskov	2007	9787000000301
302	Chronicles of Ancient Prophecies Book 0286	Selene Frost	1934	9787000000302
303	Expedition to Nebula Cartography Log 0287	Tara Ion	1935	9787000000303
304	Practical Cryptography Volume 0288	Leslie Lamport	2010	9787000000304
305	Chronicles of Silver Blades Book 0289	Nora Ravencrest	1937	9787000000305
306	Expedition to Galactic Frontiers Log 0290	Nova Kepler	1938	9787000000306
307	Practical DevOps Volume 0291	Linus Torvalds	2013	9787000000307
308	Chronicles of Forgotten Kingdoms Book 0292	Cedric Vale	1940	9787000000308
309	Expedition to Orbital Cities Log 0293	Vera Cosmo	1941	9787000000309
310	Practical Concurrency Volume 0294	Niklaus Wirth	2016	9787000000310
311	Chronicles of Crystal Empires Book 0295	Orin Blackwood	1943	9787000000311
312	Expedition to Time Dilation Log 0296	Milo Zenith	1944	9787000000312
313	Practical Programming Languages Volume 0297	Vint Cerf	2019	9787000000313
314	Chronicles of Storm Riders Book 0298	Kael Ironhart	1946	9787000000314
315	Expedition to Dyson Habitats Log 0299	Juno Eclipse	1947	9787000000315
316	Practical Algorithms Volume 0300	Ada Lovelace	2022	9787000000316
317	Chronicles of Arcane Towers Book 0301	Mira Thorne	1949	9787000000317
318	Expedition to Synthetic Minds Log 0302	Orion Hale	1950	9787000000318
319	Practical Distributed Systems Volume 0303	Grace Hopper	2025	9787000000319
320	Chronicles of Moonlit Forests Book 0304	Thalia Ember	1952	9787000000320
321	Expedition to Terraforming Log 0305	Elara Pulse	1953	9787000000321
322	Practical Networking Volume 0306	Margaret Hamilton	1952	9787000000322
323	Chronicles of Shadow Realms Book 0307	Bren Hollow	1955	9787000000323
324	Expedition to Alien Signals Log 0308	Rhea Vector	1956	9787000000324
325	Practical Machine Learning Volume 0309	Ken Thompson	1955	9787000000325
326	Chronicles of Dragon Lore Book 0310	Arin Starfall	1958	9787000000326
327	Expedition to Quantum Colonies Log 0311	Iris Quasar	1959	9787000000327
328	Practical Site Reliability Volume 0312	Radia Perlman	1958	9787000000328
329	Chronicles of Runic Seas Book 0313	Lyra Windmere	1961	9787000000329
330	Expedition to Deep Space Log 0314	Caden Rift	1962	9787000000330
331	Practical Cybersecurity Volume 0315	Frances Allen	1961	9787000000331
332	Chronicles of Ancient Prophecies Book 0316	Selene Frost	1964	9787000000332
333	Expedition to Nebula Cartography Log 0317	Tara Ion	1965	9787000000333
334	Practical Computer Graphics Volume 0318	Sophie Wilson	1964	9787000000334
335	Chronicles of Silver Blades Book 0319	Nora Ravencrest	1967	9787000000335
336	Expedition to Galactic Frontiers Log 0320	Nova Kepler	1968	9787000000336
337	Practical Data Structures Volume 0321	Alan Turing	1967	9787000000337
338	Chronicles of Forgotten Kingdoms Book 0322	Cedric Vale	1970	9787000000338
339	Expedition to Orbital Cities Log 0323	Vera Cosmo	1971	9787000000339
340	Practical Compilers Volume 0324	Donald Knuth	1970	9787000000340
341	Chronicles of Crystal Empires Book 0325	Orin Blackwood	1973	9787000000341
342	Expedition to Time Dilation Log 0326	Milo Zenith	1974	9787000000342
343	Practical Computer Architecture Volume 0327	John von Neumann	1973	9787000000343
344	Chronicles of Storm Riders Book 0328	Kael Ironhart	1976	9787000000344
345	Expedition to Dyson Habitats Log 0329	Juno Eclipse	1977	9787000000345
346	Practical Software Testing Volume 0330	Dennis Ritchie	1976	9787000000346
347	Chronicles of Arcane Towers Book 0331	Mira Thorne	1979	9787000000347
348	Expedition to Synthetic Minds Log 0332	Orion Hale	1980	9787000000348
349	Practical Cloud Native Volume 0333	Claude Shannon	1979	9787000000349
350	Chronicles of Moonlit Forests Book 0334	Thalia Ember	1982	9787000000350
351	Expedition to Terraforming Log 0335	Elara Pulse	1983	9787000000351
352	Practical Formal Methods Volume 0336	Tim Berners-Lee	1982	9787000000352
353	Chronicles of Shadow Realms Book 0337	Bren Hollow	1985	9787000000353
354	Expedition to Alien Signals Log 0338	Rhea Vector	1986	9787000000354
355	Practical Information Retrieval Volume 0339	Guido van Rossum	1985	9787000000355
356	Chronicles of Dragon Lore Book 0340	Arin Starfall	1988	9787000000356
357	Expedition to Quantum Colonies Log 0341	Iris Quasar	1989	9787000000357
358	Practical Operating Systems Volume 0342	Edsger Dijkstra	1988	9787000000358
359	Chronicles of Runic Seas Book 0343	Lyra Windmere	1991	9787000000359
360	Expedition to Deep Space Log 0344	Caden Rift	1992	9787000000360
361	Practical Databases Volume 0345	Barbara Liskov	1991	9787000000361
362	Chronicles of Ancient Prophecies Book 0346	Selene Frost	1994	9787000000362
363	Expedition to Nebula Cartography Log 0347	Tara Ion	1995	9787000000363
364	Practical Cryptography Volume 0348	Leslie Lamport	1994	9787000000364
365	Chronicles of Silver Blades Book 0349	Nora Ravencrest	1997	9787000000365
366	Expedition to Galactic Frontiers Log 0350	Nova Kepler	1998	9787000000366
367	Practical DevOps Volume 0351	Linus Torvalds	1997	9787000000367
368	Chronicles of Forgotten Kingdoms Book 0352	Cedric Vale	2000	9787000000368
369	Expedition to Orbital Cities Log 0353	Vera Cosmo	2001	9787000000369
370	Practical Concurrency Volume 0354	Niklaus Wirth	2000	9787000000370
371	Chronicles of Crystal Empires Book 0355	Orin Blackwood	2003	9787000000371
372	Expedition to Time Dilation Log 0356	Milo Zenith	2004	9787000000372
373	Practical Programming Languages Volume 0357	Vint Cerf	2003	9787000000373
374	Chronicles of Storm Riders Book 0358	Kael Ironhart	2006	9787000000374
375	Expedition to Dyson Habitats Log 0359	Juno Eclipse	2007	9787000000375
376	Practical Algorithms Volume 0360	Ada Lovelace	2006	9787000000376
377	Chronicles of Arcane Towers Book 0361	Mira Thorne	2009	9787000000377
378	Expedition to Synthetic Minds Log 0362	Orion Hale	2010	9787000000378
379	Practical Distributed Systems Volume 0363	Grace Hopper	2009	9787000000379
380	Chronicles of Moonlit Forests Book 0364	Thalia Ember	2012	9787000000380
381	Expedition to Terraforming Log 0365	Elara Pulse	2013	9787000000381
382	Practical Networking Volume 0366	Margaret Hamilton	2012	9787000000382
383	Chronicles of Shadow Realms Book 0367	Bren Hollow	2015	9787000000383
384	Expedition to Alien Signals Log 0368	Rhea Vector	2016	9787000000384
385	Practical Machine Learning Volume 0369	Ken Thompson	2015	9787000000385
386	Chronicles of Dragon Lore Book 0370	Arin Starfall	2018	9787000000386
387	Expedition to Quantum Colonies Log 0371	Iris Quasar	2019	9787000000387
388	Practical Site Reliability Volume 0372	Radia Perlman	2018	9787000000388
389	Chronicles of Runic Seas Book 0373	Lyra Windmere	2021	9787000000389
390	Expedition to Deep Space Log 0374	Caden Rift	2022	9787000000390
391	Practical Cybersecurity Volume 0375	Frances Allen	2021	9787000000391
392	Chronicles of Ancient Prophecies Book 0376	Selene Frost	2024	9787000000392
393	Expedition to Nebula Cartography Log 0377	Tara Ion	2025	9787000000393
394	Practical Computer Graphics Volume 0378	Sophie Wilson	2024	9787000000394
395	Chronicles of Silver Blades Book 0379	Nora Ravencrest	1901	9787000000395
396	Expedition to Galactic Frontiers Log 0380	Nova Kepler	1902	9787000000396
397	Practical Data Structures Volume 0381	Alan Turing	1951	9787000000397
398	Chronicles of Forgotten Kingdoms Book 0382	Cedric Vale	1904	9787000000398
399	Expedition to Orbital Cities Log 0383	Vera Cosmo	1905	9787000000399
400	Practical Compilers Volume 0384	Donald Knuth	1954	9787000000400
401	Chronicles of Crystal Empires Book 0385	Orin Blackwood	1907	9787000000401
402	Expedition to Time Dilation Log 0386	Milo Zenith	1908	9787000000402
403	Practical Computer Architecture Volume 0387	John von Neumann	1957	9787000000403
404	Chronicles of Storm Riders Book 0388	Kael Ironhart	1910	9787000000404
405	Expedition to Dyson Habitats Log 0389	Juno Eclipse	1911	9787000000405
406	Practical Software Testing Volume 0390	Dennis Ritchie	1960	9787000000406
407	Chronicles of Arcane Towers Book 0391	Mira Thorne	1913	9787000000407
408	Expedition to Synthetic Minds Log 0392	Orion Hale	1914	9787000000408
409	Practical Cloud Native Volume 0393	Claude Shannon	1963	9787000000409
410	Chronicles of Moonlit Forests Book 0394	Thalia Ember	1916	9787000000410
411	Expedition to Terraforming Log 0395	Elara Pulse	1917	9787000000411
412	Practical Formal Methods Volume 0396	Tim Berners-Lee	1966	9787000000412
413	Chronicles of Shadow Realms Book 0397	Bren Hollow	1919	9787000000413
414	Expedition to Alien Signals Log 0398	Rhea Vector	1920	9787000000414
415	Practical Information Retrieval Volume 0399	Guido van Rossum	1969	9787000000415
416	Chronicles of Dragon Lore Book 0400	Arin Starfall	1922	9787000000416
417	Expedition to Quantum Colonies Log 0401	Iris Quasar	1923	9787000000417
418	Practical Operating Systems Volume 0402	Edsger Dijkstra	1972	9787000000418
419	Chronicles of Runic Seas Book 0403	Lyra Windmere	1925	9787000000419
420	Expedition to Deep Space Log 0404	Caden Rift	1926	9787000000420
421	Practical Databases Volume 0405	Barbara Liskov	1975	9787000000421
422	Chronicles of Ancient Prophecies Book 0406	Selene Frost	1928	9787000000422
423	Expedition to Nebula Cartography Log 0407	Tara Ion	1929	9787000000423
424	Practical Cryptography Volume 0408	Leslie Lamport	1978	9787000000424
425	Chronicles of Silver Blades Book 0409	Nora Ravencrest	1931	9787000000425
426	Expedition to Galactic Frontiers Log 0410	Nova Kepler	1932	9787000000426
427	Practical DevOps Volume 0411	Linus Torvalds	1981	9787000000427
428	Chronicles of Forgotten Kingdoms Book 0412	Cedric Vale	1934	9787000000428
429	Expedition to Orbital Cities Log 0413	Vera Cosmo	1935	9787000000429
430	Practical Concurrency Volume 0414	Niklaus Wirth	1984	9787000000430
431	Chronicles of Crystal Empires Book 0415	Orin Blackwood	1937	9787000000431
432	Expedition to Time Dilation Log 0416	Milo Zenith	1938	9787000000432
433	Practical Programming Languages Volume 0417	Vint Cerf	1987	9787000000433
434	Chronicles of Storm Riders Book 0418	Kael Ironhart	1940	9787000000434
435	Expedition to Dyson Habitats Log 0419	Juno Eclipse	1941	9787000000435
436	Practical Algorithms Volume 0420	Ada Lovelace	1990	9787000000436
437	Chronicles of Arcane Towers Book 0421	Mira Thorne	1943	9787000000437
438	Expedition to Synthetic Minds Log 0422	Orion Hale	1944	9787000000438
439	Practical Distributed Systems Volume 0423	Grace Hopper	1993	9787000000439
440	Chronicles of Moonlit Forests Book 0424	Thalia Ember	1946	9787000000440
441	Expedition to Terraforming Log 0425	Elara Pulse	1947	9787000000441
442	Practical Networking Volume 0426	Margaret Hamilton	1996	9787000000442
443	Chronicles of Shadow Realms Book 0427	Bren Hollow	1949	9787000000443
444	Expedition to Alien Signals Log 0428	Rhea Vector	1950	9787000000444
445	Practical Machine Learning Volume 0429	Ken Thompson	1999	9787000000445
446	Chronicles of Dragon Lore Book 0430	Arin Starfall	1952	9787000000446
447	Expedition to Quantum Colonies Log 0431	Iris Quasar	1953	9787000000447
448	Practical Site Reliability Volume 0432	Radia Perlman	2002	9787000000448
449	Chronicles of Runic Seas Book 0433	Lyra Windmere	1955	9787000000449
450	Expedition to Deep Space Log 0434	Caden Rift	1956	9787000000450
451	Practical Cybersecurity Volume 0435	Frances Allen	2005	9787000000451
452	Chronicles of Ancient Prophecies Book 0436	Selene Frost	1958	9787000000452
453	Expedition to Nebula Cartography Log 0437	Tara Ion	1959	9787000000453
454	Practical Computer Graphics Volume 0438	Sophie Wilson	2008	9787000000454
455	Chronicles of Silver Blades Book 0439	Nora Ravencrest	1961	9787000000455
456	Expedition to Galactic Frontiers Log 0440	Nova Kepler	1962	9787000000456
457	Practical Data Structures Volume 0441	Alan Turing	2011	9787000000457
458	Chronicles of Forgotten Kingdoms Book 0442	Cedric Vale	1964	9787000000458
459	Expedition to Orbital Cities Log 0443	Vera Cosmo	1965	9787000000459
460	Practical Compilers Volume 0444	Donald Knuth	2014	9787000000460
461	Chronicles of Crystal Empires Book 0445	Orin Blackwood	1967	9787000000461
462	Expedition to Time Dilation Log 0446	Milo Zenith	1968	9787000000462
463	Practical Computer Architecture Volume 0447	John von Neumann	2017	9787000000463
464	Chronicles of Storm Riders Book 0448	Kael Ironhart	1970	9787000000464
465	Expedition to Dyson Habitats Log 0449	Juno Eclipse	1971	9787000000465
466	Practical Software Testing Volume 0450	Dennis Ritchie	2020	9787000000466
467	Chronicles of Arcane Towers Book 0451	Mira Thorne	1973	9787000000467
468	Expedition to Synthetic Minds Log 0452	Orion Hale	1974	9787000000468
469	Practical Cloud Native Volume 0453	Claude Shannon	2023	9787000000469
470	Chronicles of Moonlit Forests Book 0454	Thalia Ember	1976	9787000000470
471	Expedition to Terraforming Log 0455	Elara Pulse	1977	9787000000471
472	Practical Formal Methods Volume 0456	Tim Berners-Lee	1950	9787000000472
473	Chronicles of Shadow Realms Book 0457	Bren Hollow	1979	9787000000473
474	Expedition to Alien Signals Log 0458	Rhea Vector	1980	9787000000474
475	Practical Information Retrieval Volume 0459	Guido van Rossum	1953	9787000000475
476	Chronicles of Dragon Lore Book 0460	Arin Starfall	1982	9787000000476
477	Expedition to Quantum Colonies Log 0461	Iris Quasar	1983	9787000000477
478	Practical Operating Systems Volume 0462	Edsger Dijkstra	1956	9787000000478
479	Chronicles of Runic Seas Book 0463	Lyra Windmere	1985	9787000000479
480	Expedition to Deep Space Log 0464	Caden Rift	1986	9787000000480
481	Practical Databases Volume 0465	Barbara Liskov	1959	9787000000481
482	Chronicles of Ancient Prophecies Book 0466	Selene Frost	1988	9787000000482
483	Expedition to Nebula Cartography Log 0467	Tara Ion	1989	9787000000483
484	Practical Cryptography Volume 0468	Leslie Lamport	1962	9787000000484
485	Chronicles of Silver Blades Book 0469	Nora Ravencrest	1991	9787000000485
486	Expedition to Galactic Frontiers Log 0470	Nova Kepler	1992	9787000000486
487	Practical DevOps Volume 0471	Linus Torvalds	1965	9787000000487
488	Chronicles of Forgotten Kingdoms Book 0472	Cedric Vale	1994	9787000000488
489	Expedition to Orbital Cities Log 0473	Vera Cosmo	1995	9787000000489
490	Practical Concurrency Volume 0474	Niklaus Wirth	1968	9787000000490
491	Chronicles of Crystal Empires Book 0475	Orin Blackwood	1997	9787000000491
492	Expedition to Time Dilation Log 0476	Milo Zenith	1998	9787000000492
493	Practical Programming Languages Volume 0477	Vint Cerf	1971	9787000000493
494	Chronicles of Storm Riders Book 0478	Kael Ironhart	2000	9787000000494
495	Expedition to Dyson Habitats Log 0479	Juno Eclipse	2001	9787000000495
496	Practical Algorithms Volume 0480	Ada Lovelace	1974	9787000000496
497	Chronicles of Arcane Towers Book 0481	Mira Thorne	2003	9787000000497
498	Expedition to Synthetic Minds Log 0482	Orion Hale	2004	9787000000498
499	Practical Distributed Systems Volume 0483	Grace Hopper	1977	9787000000499
500	Chronicles of Moonlit Forests Book 0484	Thalia Ember	2006	9787000000500
501	Expedition to Terraforming Log 0485	Elara Pulse	2007	9787000000501
502	Practical Networking Volume 0486	Margaret Hamilton	1980	9787000000502
503	Chronicles of Shadow Realms Book 0487	Bren Hollow	2009	9787000000503
504	Expedition to Alien Signals Log 0488	Rhea Vector	2010	9787000000504
505	Practical Machine Learning Volume 0489	Ken Thompson	1983	9787000000505
506	Chronicles of Dragon Lore Book 0490	Arin Starfall	2012	9787000000506
507	Expedition to Quantum Colonies Log 0491	Iris Quasar	2013	9787000000507
508	Practical Site Reliability Volume 0492	Radia Perlman	1986	9787000000508
509	Chronicles of Runic Seas Book 0493	Lyra Windmere	2015	9787000000509
510	Expedition to Deep Space Log 0494	Caden Rift	2016	9787000000510
511	Practical Cybersecurity Volume 0495	Frances Allen	1989	9787000000511
512	Chronicles of Ancient Prophecies Book 0496	Selene Frost	2018	9787000000512
513	Expedition to Nebula Cartography Log 0497	Tara Ion	2019	9787000000513
514	Practical Computer Graphics Volume 0498	Sophie Wilson	1992	9787000000514
515	Chronicles of Silver Blades Book 0499	Nora Ravencrest	2021	9787000000515
516	Expedition to Galactic Frontiers Log 0500	Nova Kepler	2022	9787000000516
517	Practical Data Structures Volume 0501	Alan Turing	1995	9787000000517
518	Chronicles of Forgotten Kingdoms Book 0502	Cedric Vale	2024	9787000000518
519	Expedition to Orbital Cities Log 0503	Vera Cosmo	2025	9787000000519
520	Practical Compilers Volume 0504	Donald Knuth	1998	9787000000520
521	Chronicles of Crystal Empires Book 0505	Orin Blackwood	1901	9787000000521
522	Expedition to Time Dilation Log 0506	Milo Zenith	1902	9787000000522
523	Practical Computer Architecture Volume 0507	John von Neumann	2001	9787000000523
524	Chronicles of Storm Riders Book 0508	Kael Ironhart	1904	9787000000524
525	Expedition to Dyson Habitats Log 0509	Juno Eclipse	1905	9787000000525
526	Practical Software Testing Volume 0510	Dennis Ritchie	2004	9787000000526
527	Chronicles of Arcane Towers Book 0511	Mira Thorne	1907	9787000000527
528	Expedition to Synthetic Minds Log 0512	Orion Hale	1908	9787000000528
529	Practical Cloud Native Volume 0513	Claude Shannon	2007	9787000000529
530	Chronicles of Moonlit Forests Book 0514	Thalia Ember	1910	9787000000530
531	Expedition to Terraforming Log 0515	Elara Pulse	1911	9787000000531
532	Practical Formal Methods Volume 0516	Tim Berners-Lee	2010	9787000000532
533	Chronicles of Shadow Realms Book 0517	Bren Hollow	1913	9787000000533
534	Expedition to Alien Signals Log 0518	Rhea Vector	1914	9787000000534
535	Practical Information Retrieval Volume 0519	Guido van Rossum	2013	9787000000535
536	Chronicles of Dragon Lore Book 0520	Arin Starfall	1916	9787000000536
537	Expedition to Quantum Colonies Log 0521	Iris Quasar	1917	9787000000537
538	Practical Operating Systems Volume 0522	Edsger Dijkstra	2016	9787000000538
539	Chronicles of Runic Seas Book 0523	Lyra Windmere	1919	9787000000539
540	Expedition to Deep Space Log 0524	Caden Rift	1920	9787000000540
541	Practical Databases Volume 0525	Barbara Liskov	2019	9787000000541
542	Chronicles of Ancient Prophecies Book 0526	Selene Frost	1922	9787000000542
543	Expedition to Nebula Cartography Log 0527	Tara Ion	1923	9787000000543
544	Practical Cryptography Volume 0528	Leslie Lamport	2022	9787000000544
545	Chronicles of Silver Blades Book 0529	Nora Ravencrest	1925	9787000000545
546	Expedition to Galactic Frontiers Log 0530	Nova Kepler	1926	9787000000546
547	Practical DevOps Volume 0531	Linus Torvalds	2025	9787000000547
548	Chronicles of Forgotten Kingdoms Book 0532	Cedric Vale	1928	9787000000548
549	Expedition to Orbital Cities Log 0533	Vera Cosmo	1929	9787000000549
550	Practical Concurrency Volume 0534	Niklaus Wirth	1952	9787000000550
551	Chronicles of Crystal Empires Book 0535	Orin Blackwood	1931	9787000000551
552	Expedition to Time Dilation Log 0536	Milo Zenith	1932	9787000000552
553	Practical Programming Languages Volume 0537	Vint Cerf	1955	9787000000553
554	Chronicles of Storm Riders Book 0538	Kael Ironhart	1934	9787000000554
555	Expedition to Dyson Habitats Log 0539	Juno Eclipse	1935	9787000000555
556	Practical Algorithms Volume 0540	Ada Lovelace	1958	9787000000556
557	Chronicles of Arcane Towers Book 0541	Mira Thorne	1937	9787000000557
558	Expedition to Synthetic Minds Log 0542	Orion Hale	1938	9787000000558
559	Practical Distributed Systems Volume 0543	Grace Hopper	1961	9787000000559
560	Chronicles of Moonlit Forests Book 0544	Thalia Ember	1940	9787000000560
561	Expedition to Terraforming Log 0545	Elara Pulse	1941	9787000000561
562	Practical Networking Volume 0546	Margaret Hamilton	1964	9787000000562
563	Chronicles of Shadow Realms Book 0547	Bren Hollow	1943	9787000000563
564	Expedition to Alien Signals Log 0548	Rhea Vector	1944	9787000000564
565	Practical Machine Learning Volume 0549	Ken Thompson	1967	9787000000565
566	Chronicles of Dragon Lore Book 0550	Arin Starfall	1946	9787000000566
567	Expedition to Quantum Colonies Log 0551	Iris Quasar	1947	9787000000567
568	Practical Site Reliability Volume 0552	Radia Perlman	1970	9787000000568
569	Chronicles of Runic Seas Book 0553	Lyra Windmere	1949	9787000000569
570	Expedition to Deep Space Log 0554	Caden Rift	1950	9787000000570
571	Practical Cybersecurity Volume 0555	Frances Allen	1973	9787000000571
572	Chronicles of Ancient Prophecies Book 0556	Selene Frost	1952	9787000000572
573	Expedition to Nebula Cartography Log 0557	Tara Ion	1953	9787000000573
574	Practical Computer Graphics Volume 0558	Sophie Wilson	1976	9787000000574
575	Chronicles of Silver Blades Book 0559	Nora Ravencrest	1955	9787000000575
576	Expedition to Galactic Frontiers Log 0560	Nova Kepler	1956	9787000000576
577	Practical Data Structures Volume 0561	Alan Turing	1979	9787000000577
578	Chronicles of Forgotten Kingdoms Book 0562	Cedric Vale	1958	9787000000578
579	Expedition to Orbital Cities Log 0563	Vera Cosmo	1959	9787000000579
580	Practical Compilers Volume 0564	Donald Knuth	1982	9787000000580
581	Chronicles of Crystal Empires Book 0565	Orin Blackwood	1961	9787000000581
582	Expedition to Time Dilation Log 0566	Milo Zenith	1962	9787000000582
583	Practical Computer Architecture Volume 0567	John von Neumann	1985	9787000000583
584	Chronicles of Storm Riders Book 0568	Kael Ironhart	1964	9787000000584
585	Expedition to Dyson Habitats Log 0569	Juno Eclipse	1965	9787000000585
586	Practical Software Testing Volume 0570	Dennis Ritchie	1988	9787000000586
587	Chronicles of Arcane Towers Book 0571	Mira Thorne	1967	9787000000587
588	Expedition to Synthetic Minds Log 0572	Orion Hale	1968	9787000000588
589	Practical Cloud Native Volume 0573	Claude Shannon	1991	9787000000589
590	Chronicles of Moonlit Forests Book 0574	Thalia Ember	1970	9787000000590
591	Expedition to Terraforming Log 0575	Elara Pulse	1971	9787000000591
592	Practical Formal Methods Volume 0576	Tim Berners-Lee	1994	9787000000592
593	Chronicles of Shadow Realms Book 0577	Bren Hollow	1973	9787000000593
594	Expedition to Alien Signals Log 0578	Rhea Vector	1974	9787000000594
595	Practical Information Retrieval Volume 0579	Guido van Rossum	1997	9787000000595
596	Chronicles of Dragon Lore Book 0580	Arin Starfall	1976	9787000000596
597	Expedition to Quantum Colonies Log 0581	Iris Quasar	1977	9787000000597
598	Practical Operating Systems Volume 0582	Edsger Dijkstra	2000	9787000000598
599	Chronicles of Runic Seas Book 0583	Lyra Windmere	1979	9787000000599
600	Expedition to Deep Space Log 0584	Caden Rift	1980	9787000000600
601	Practical Databases Volume 0585	Barbara Liskov	2003	9787000000601
602	Chronicles of Ancient Prophecies Book 0586	Selene Frost	1982	9787000000602
603	Expedition to Nebula Cartography Log 0587	Tara Ion	1983	9787000000603
604	Practical Cryptography Volume 0588	Leslie Lamport	2006	9787000000604
605	Chronicles of Silver Blades Book 0589	Nora Ravencrest	1985	9787000000605
606	Expedition to Galactic Frontiers Log 0590	Nova Kepler	1986	9787000000606
607	Practical DevOps Volume 0591	Linus Torvalds	2009	9787000000607
608	Chronicles of Forgotten Kingdoms Book 0592	Cedric Vale	1988	9787000000608
609	Expedition to Orbital Cities Log 0593	Vera Cosmo	1989	9787000000609
610	Practical Concurrency Volume 0594	Niklaus Wirth	2012	9787000000610
611	Chronicles of Crystal Empires Book 0595	Orin Blackwood	1991	9787000000611
612	Expedition to Time Dilation Log 0596	Milo Zenith	1992	9787000000612
613	Practical Programming Languages Volume 0597	Vint Cerf	2015	9787000000613
614	Chronicles of Storm Riders Book 0598	Kael Ironhart	1994	9787000000614
615	Expedition to Dyson Habitats Log 0599	Juno Eclipse	1995	9787000000615
616	Practical Algorithms Volume 0600	Ada Lovelace	2018	9787000000616
617	Chronicles of Arcane Towers Book 0601	Mira Thorne	1997	9787000000617
618	Expedition to Synthetic Minds Log 0602	Orion Hale	1998	9787000000618
619	Practical Distributed Systems Volume 0603	Grace Hopper	2021	9787000000619
620	Chronicles of Moonlit Forests Book 0604	Thalia Ember	2000	9787000000620
621	Expedition to Terraforming Log 0605	Elara Pulse	2001	9787000000621
622	Practical Networking Volume 0606	Margaret Hamilton	2024	9787000000622
623	Chronicles of Shadow Realms Book 0607	Bren Hollow	2003	9787000000623
624	Expedition to Alien Signals Log 0608	Rhea Vector	2004	9787000000624
625	Practical Machine Learning Volume 0609	Ken Thompson	1951	9787000000625
626	Chronicles of Dragon Lore Book 0610	Arin Starfall	2006	9787000000626
627	Expedition to Quantum Colonies Log 0611	Iris Quasar	2007	9787000000627
628	Practical Site Reliability Volume 0612	Radia Perlman	1954	9787000000628
629	Chronicles of Runic Seas Book 0613	Lyra Windmere	2009	9787000000629
630	Expedition to Deep Space Log 0614	Caden Rift	2010	9787000000630
631	Practical Cybersecurity Volume 0615	Frances Allen	1957	9787000000631
632	Chronicles of Ancient Prophecies Book 0616	Selene Frost	2012	9787000000632
633	Expedition to Nebula Cartography Log 0617	Tara Ion	2013	9787000000633
634	Practical Computer Graphics Volume 0618	Sophie Wilson	1960	9787000000634
635	Chronicles of Silver Blades Book 0619	Nora Ravencrest	2015	9787000000635
636	Expedition to Galactic Frontiers Log 0620	Nova Kepler	2016	9787000000636
637	Practical Data Structures Volume 0621	Alan Turing	1963	9787000000637
638	Chronicles of Forgotten Kingdoms Book 0622	Cedric Vale	2018	9787000000638
639	Expedition to Orbital Cities Log 0623	Vera Cosmo	2019	9787000000639
640	Practical Compilers Volume 0624	Donald Knuth	1966	9787000000640
641	Chronicles of Crystal Empires Book 0625	Orin Blackwood	2021	9787000000641
642	Expedition to Time Dilation Log 0626	Milo Zenith	2022	9787000000642
643	Practical Computer Architecture Volume 0627	John von Neumann	1969	9787000000643
644	Chronicles of Storm Riders Book 0628	Kael Ironhart	2024	9787000000644
645	Expedition to Dyson Habitats Log 0629	Juno Eclipse	2025	9787000000645
646	Practical Software Testing Volume 0630	Dennis Ritchie	1972	9787000000646
647	Chronicles of Arcane Towers Book 0631	Mira Thorne	1901	9787000000647
648	Expedition to Synthetic Minds Log 0632	Orion Hale	1902	9787000000648
649	Practical Cloud Native Volume 0633	Claude Shannon	1975	9787000000649
650	Chronicles of Moonlit Forests Book 0634	Thalia Ember	1904	9787000000650
651	Expedition to Terraforming Log 0635	Elara Pulse	1905	9787000000651
652	Practical Formal Methods Volume 0636	Tim Berners-Lee	1978	9787000000652
653	Chronicles of Shadow Realms Book 0637	Bren Hollow	1907	9787000000653
654	Expedition to Alien Signals Log 0638	Rhea Vector	1908	9787000000654
655	Practical Information Retrieval Volume 0639	Guido van Rossum	1981	9787000000655
656	Chronicles of Dragon Lore Book 0640	Arin Starfall	1910	9787000000656
657	Expedition to Quantum Colonies Log 0641	Iris Quasar	1911	9787000000657
658	Practical Operating Systems Volume 0642	Edsger Dijkstra	1984	9787000000658
659	Chronicles of Runic Seas Book 0643	Lyra Windmere	1913	9787000000659
660	Expedition to Deep Space Log 0644	Caden Rift	1914	9787000000660
661	Practical Databases Volume 0645	Barbara Liskov	1987	9787000000661
662	Chronicles of Ancient Prophecies Book 0646	Selene Frost	1916	9787000000662
663	Expedition to Nebula Cartography Log 0647	Tara Ion	1917	9787000000663
664	Practical Cryptography Volume 0648	Leslie Lamport	1990	9787000000664
665	Chronicles of Silver Blades Book 0649	Nora Ravencrest	1919	9787000000665
666	Expedition to Galactic Frontiers Log 0650	Nova Kepler	1920	9787000000666
667	Practical DevOps Volume 0651	Linus Torvalds	1993	9787000000667
668	Chronicles of Forgotten Kingdoms Book 0652	Cedric Vale	1922	9787000000668
669	Expedition to Orbital Cities Log 0653	Vera Cosmo	1923	9787000000669
670	Practical Concurrency Volume 0654	Niklaus Wirth	1996	9787000000670
671	Chronicles of Crystal Empires Book 0655	Orin Blackwood	1925	9787000000671
672	Expedition to Time Dilation Log 0656	Milo Zenith	1926	9787000000672
673	Practical Programming Languages Volume 0657	Vint Cerf	1999	9787000000673
674	Chronicles of Storm Riders Book 0658	Kael Ironhart	1928	9787000000674
675	Expedition to Dyson Habitats Log 0659	Juno Eclipse	1929	9787000000675
676	Practical Algorithms Volume 0660	Ada Lovelace	2002	9787000000676
677	Chronicles of Arcane Towers Book 0661	Mira Thorne	1931	9787000000677
678	Expedition to Synthetic Minds Log 0662	Orion Hale	1932	9787000000678
679	Practical Distributed Systems Volume 0663	Grace Hopper	2005	9787000000679
680	Chronicles of Moonlit Forests Book 0664	Thalia Ember	1934	9787000000680
681	Expedition to Terraforming Log 0665	Elara Pulse	1935	9787000000681
682	Practical Networking Volume 0666	Margaret Hamilton	2008	9787000000682
683	Chronicles of Shadow Realms Book 0667	Bren Hollow	1937	9787000000683
684	Expedition to Alien Signals Log 0668	Rhea Vector	1938	9787000000684
685	Practical Machine Learning Volume 0669	Ken Thompson	2011	9787000000685
686	Chronicles of Dragon Lore Book 0670	Arin Starfall	1940	9787000000686
687	Expedition to Quantum Colonies Log 0671	Iris Quasar	1941	9787000000687
688	Practical Site Reliability Volume 0672	Radia Perlman	2014	9787000000688
689	Chronicles of Runic Seas Book 0673	Lyra Windmere	1943	9787000000689
690	Expedition to Deep Space Log 0674	Caden Rift	1944	9787000000690
691	Practical Cybersecurity Volume 0675	Frances Allen	2017	9787000000691
692	Chronicles of Ancient Prophecies Book 0676	Selene Frost	1946	9787000000692
693	Expedition to Nebula Cartography Log 0677	Tara Ion	1947	9787000000693
694	Practical Computer Graphics Volume 0678	Sophie Wilson	2020	9787000000694
695	Chronicles of Silver Blades Book 0679	Nora Ravencrest	1949	9787000000695
696	Expedition to Galactic Frontiers Log 0680	Nova Kepler	1950	9787000000696
697	Practical Data Structures Volume 0681	Alan Turing	2023	9787000000697
698	Chronicles of Forgotten Kingdoms Book 0682	Cedric Vale	1952	9787000000698
699	Expedition to Orbital Cities Log 0683	Vera Cosmo	1953	9787000000699
700	Practical Compilers Volume 0684	Donald Knuth	1950	9787000000700
701	Chronicles of Crystal Empires Book 0685	Orin Blackwood	1955	9787000000701
702	Expedition to Time Dilation Log 0686	Milo Zenith	1956	9787000000702
703	Practical Computer Architecture Volume 0687	John von Neumann	1953	9787000000703
704	Chronicles of Storm Riders Book 0688	Kael Ironhart	1958	9787000000704
705	Expedition to Dyson Habitats Log 0689	Juno Eclipse	1959	9787000000705
706	Practical Software Testing Volume 0690	Dennis Ritchie	1956	9787000000706
707	Chronicles of Arcane Towers Book 0691	Mira Thorne	1961	9787000000707
708	Expedition to Synthetic Minds Log 0692	Orion Hale	1962	9787000000708
709	Practical Cloud Native Volume 0693	Claude Shannon	1959	9787000000709
710	Chronicles of Moonlit Forests Book 0694	Thalia Ember	1964	9787000000710
711	Expedition to Terraforming Log 0695	Elara Pulse	1965	9787000000711
712	Practical Formal Methods Volume 0696	Tim Berners-Lee	1962	9787000000712
713	Chronicles of Shadow Realms Book 0697	Bren Hollow	1967	9787000000713
714	Expedition to Alien Signals Log 0698	Rhea Vector	1968	9787000000714
715	Practical Information Retrieval Volume 0699	Guido van Rossum	1965	9787000000715
716	Chronicles of Dragon Lore Book 0700	Arin Starfall	1970	9787000000716
717	Expedition to Quantum Colonies Log 0701	Iris Quasar	1971	9787000000717
718	Practical Operating Systems Volume 0702	Edsger Dijkstra	1968	9787000000718
719	Chronicles of Runic Seas Book 0703	Lyra Windmere	1973	9787000000719
720	Expedition to Deep Space Log 0704	Caden Rift	1974	9787000000720
721	Practical Databases Volume 0705	Barbara Liskov	1971	9787000000721
722	Chronicles of Ancient Prophecies Book 0706	Selene Frost	1976	9787000000722
723	Expedition to Nebula Cartography Log 0707	Tara Ion	1977	9787000000723
724	Practical Cryptography Volume 0708	Leslie Lamport	1974	9787000000724
725	Chronicles of Silver Blades Book 0709	Nora Ravencrest	1979	9787000000725
726	Expedition to Galactic Frontiers Log 0710	Nova Kepler	1980	9787000000726
727	Practical DevOps Volume 0711	Linus Torvalds	1977	9787000000727
728	Chronicles of Forgotten Kingdoms Book 0712	Cedric Vale	1982	9787000000728
729	Expedition to Orbital Cities Log 0713	Vera Cosmo	1983	9787000000729
730	Practical Concurrency Volume 0714	Niklaus Wirth	1980	9787000000730
731	Chronicles of Crystal Empires Book 0715	Orin Blackwood	1985	9787000000731
732	Expedition to Time Dilation Log 0716	Milo Zenith	1986	9787000000732
733	Practical Programming Languages Volume 0717	Vint Cerf	1983	9787000000733
734	Chronicles of Storm Riders Book 0718	Kael Ironhart	1988	9787000000734
735	Expedition to Dyson Habitats Log 0719	Juno Eclipse	1989	9787000000735
736	Practical Algorithms Volume 0720	Ada Lovelace	1986	9787000000736
737	Chronicles of Arcane Towers Book 0721	Mira Thorne	1991	9787000000737
738	Expedition to Synthetic Minds Log 0722	Orion Hale	1992	9787000000738
739	Practical Distributed Systems Volume 0723	Grace Hopper	1989	9787000000739
740	Chronicles of Moonlit Forests Book 0724	Thalia Ember	1994	9787000000740
741	Expedition to Terraforming Log 0725	Elara Pulse	1995	9787000000741
742	Practical Networking Volume 0726	Margaret Hamilton	1992	9787000000742
743	Chronicles of Shadow Realms Book 0727	Bren Hollow	1997	9787000000743
744	Expedition to Alien Signals Log 0728	Rhea Vector	1998	9787000000744
745	Practical Machine Learning Volume 0729	Ken Thompson	1995	9787000000745
746	Chronicles of Dragon Lore Book 0730	Arin Starfall	2000	9787000000746
747	Expedition to Quantum Colonies Log 0731	Iris Quasar	2001	9787000000747
748	Practical Site Reliability Volume 0732	Radia Perlman	1998	9787000000748
749	Chronicles of Runic Seas Book 0733	Lyra Windmere	2003	9787000000749
750	Expedition to Deep Space Log 0734	Caden Rift	2004	9787000000750
751	Practical Cybersecurity Volume 0735	Frances Allen	2001	9787000000751
752	Chronicles of Ancient Prophecies Book 0736	Selene Frost	2006	9787000000752
753	Expedition to Nebula Cartography Log 0737	Tara Ion	2007	9787000000753
754	Practical Computer Graphics Volume 0738	Sophie Wilson	2004	9787000000754
755	Chronicles of Silver Blades Book 0739	Nora Ravencrest	2009	9787000000755
756	Expedition to Galactic Frontiers Log 0740	Nova Kepler	2010	9787000000756
757	Practical Data Structures Volume 0741	Alan Turing	2007	9787000000757
758	Chronicles of Forgotten Kingdoms Book 0742	Cedric Vale	2012	9787000000758
759	Expedition to Orbital Cities Log 0743	Vera Cosmo	2013	9787000000759
760	Practical Compilers Volume 0744	Donald Knuth	2010	9787000000760
761	Chronicles of Crystal Empires Book 0745	Orin Blackwood	2015	9787000000761
762	Expedition to Time Dilation Log 0746	Milo Zenith	2016	9787000000762
763	Practical Computer Architecture Volume 0747	John von Neumann	2013	9787000000763
764	Chronicles of Storm Riders Book 0748	Kael Ironhart	2018	9787000000764
765	Expedition to Dyson Habitats Log 0749	Juno Eclipse	2019	9787000000765
766	Practical Software Testing Volume 0750	Dennis Ritchie	2016	9787000000766
767	Chronicles of Arcane Towers Book 0751	Mira Thorne	2021	9787000000767
768	Expedition to Synthetic Minds Log 0752	Orion Hale	2022	9787000000768
769	Practical Cloud Native Volume 0753	Claude Shannon	2019	9787000000769
770	Chronicles of Moonlit Forests Book 0754	Thalia Ember	2024	9787000000770
771	Expedition to Terraforming Log 0755	Elara Pulse	2025	9787000000771
772	Practical Formal Methods Volume 0756	Tim Berners-Lee	2022	9787000000772
773	Chronicles of Shadow Realms Book 0757	Bren Hollow	1901	9787000000773
774	Expedition to Alien Signals Log 0758	Rhea Vector	1902	9787000000774
775	Practical Information Retrieval Volume 0759	Guido van Rossum	2025	9787000000775
776	Chronicles of Dragon Lore Book 0760	Arin Starfall	1904	9787000000776
777	Expedition to Quantum Colonies Log 0761	Iris Quasar	1905	9787000000777
778	Practical Operating Systems Volume 0762	Edsger Dijkstra	1952	9787000000778
779	Chronicles of Runic Seas Book 0763	Lyra Windmere	1907	9787000000779
780	Expedition to Deep Space Log 0764	Caden Rift	1908	9787000000780
781	Practical Databases Volume 0765	Barbara Liskov	1955	9787000000781
782	Chronicles of Ancient Prophecies Book 0766	Selene Frost	1910	9787000000782
783	Expedition to Nebula Cartography Log 0767	Tara Ion	1911	9787000000783
784	Practical Cryptography Volume 0768	Leslie Lamport	1958	9787000000784
785	Chronicles of Silver Blades Book 0769	Nora Ravencrest	1913	9787000000785
786	Expedition to Galactic Frontiers Log 0770	Nova Kepler	1914	9787000000786
787	Practical DevOps Volume 0771	Linus Torvalds	1961	9787000000787
788	Chronicles of Forgotten Kingdoms Book 0772	Cedric Vale	1916	9787000000788
789	Expedition to Orbital Cities Log 0773	Vera Cosmo	1917	9787000000789
790	Practical Concurrency Volume 0774	Niklaus Wirth	1964	9787000000790
791	Chronicles of Crystal Empires Book 0775	Orin Blackwood	1919	9787000000791
792	Expedition to Time Dilation Log 0776	Milo Zenith	1920	9787000000792
793	Practical Programming Languages Volume 0777	Vint Cerf	1967	9787000000793
794	Chronicles of Storm Riders Book 0778	Kael Ironhart	1922	9787000000794
795	Expedition to Dyson Habitats Log 0779	Juno Eclipse	1923	9787000000795
796	Practical Algorithms Volume 0780	Ada Lovelace	1970	9787000000796
797	Chronicles of Arcane Towers Book 0781	Mira Thorne	1925	9787000000797
798	Expedition to Synthetic Minds Log 0782	Orion Hale	1926	9787000000798
799	Practical Distributed Systems Volume 0783	Grace Hopper	1973	9787000000799
800	Chronicles of Moonlit Forests Book 0784	Thalia Ember	1928	9787000000800
801	Expedition to Terraforming Log 0785	Elara Pulse	1929	9787000000801
802	Practical Networking Volume 0786	Margaret Hamilton	1976	9787000000802
803	Chronicles of Shadow Realms Book 0787	Bren Hollow	1931	9787000000803
804	Expedition to Alien Signals Log 0788	Rhea Vector	1932	9787000000804
805	Practical Machine Learning Volume 0789	Ken Thompson	1979	9787000000805
806	Chronicles of Dragon Lore Book 0790	Arin Starfall	1934	9787000000806
807	Expedition to Quantum Colonies Log 0791	Iris Quasar	1935	9787000000807
808	Practical Site Reliability Volume 0792	Radia Perlman	1982	9787000000808
809	Chronicles of Runic Seas Book 0793	Lyra Windmere	1937	9787000000809
810	Expedition to Deep Space Log 0794	Caden Rift	1938	9787000000810
811	Practical Cybersecurity Volume 0795	Frances Allen	1985	9787000000811
812	Chronicles of Ancient Prophecies Book 0796	Selene Frost	1940	9787000000812
813	Expedition to Nebula Cartography Log 0797	Tara Ion	1941	9787000000813
814	Practical Computer Graphics Volume 0798	Sophie Wilson	1988	9787000000814
815	Chronicles of Silver Blades Book 0799	Nora Ravencrest	1943	9787000000815
816	Expedition to Galactic Frontiers Log 0800	Nova Kepler	1944	9787000000816
817	Practical Data Structures Volume 0801	Alan Turing	1991	9787000000817
818	Chronicles of Forgotten Kingdoms Book 0802	Cedric Vale	1946	9787000000818
819	Expedition to Orbital Cities Log 0803	Vera Cosmo	1947	9787000000819
820	Practical Compilers Volume 0804	Donald Knuth	1994	9787000000820
821	Chronicles of Crystal Empires Book 0805	Orin Blackwood	1949	9787000000821
822	Expedition to Time Dilation Log 0806	Milo Zenith	1950	9787000000822
823	Practical Computer Architecture Volume 0807	John von Neumann	1997	9787000000823
824	Chronicles of Storm Riders Book 0808	Kael Ironhart	1952	9787000000824
825	Expedition to Dyson Habitats Log 0809	Juno Eclipse	1953	9787000000825
826	Practical Software Testing Volume 0810	Dennis Ritchie	2000	9787000000826
827	Chronicles of Arcane Towers Book 0811	Mira Thorne	1955	9787000000827
828	Expedition to Synthetic Minds Log 0812	Orion Hale	1956	9787000000828
829	Practical Cloud Native Volume 0813	Claude Shannon	2003	9787000000829
830	Chronicles of Moonlit Forests Book 0814	Thalia Ember	1958	9787000000830
831	Expedition to Terraforming Log 0815	Elara Pulse	1959	9787000000831
832	Practical Formal Methods Volume 0816	Tim Berners-Lee	2006	9787000000832
833	Chronicles of Shadow Realms Book 0817	Bren Hollow	1961	9787000000833
834	Expedition to Alien Signals Log 0818	Rhea Vector	1962	9787000000834
835	Practical Information Retrieval Volume 0819	Guido van Rossum	2009	9787000000835
836	Chronicles of Dragon Lore Book 0820	Arin Starfall	1964	9787000000836
837	Expedition to Quantum Colonies Log 0821	Iris Quasar	1965	9787000000837
838	Practical Operating Systems Volume 0822	Edsger Dijkstra	2012	9787000000838
839	Chronicles of Runic Seas Book 0823	Lyra Windmere	1967	9787000000839
840	Expedition to Deep Space Log 0824	Caden Rift	1968	9787000000840
841	Practical Databases Volume 0825	Barbara Liskov	2015	9787000000841
842	Chronicles of Ancient Prophecies Book 0826	Selene Frost	1970	9787000000842
843	Expedition to Nebula Cartography Log 0827	Tara Ion	1971	9787000000843
844	Practical Cryptography Volume 0828	Leslie Lamport	2018	9787000000844
845	Chronicles of Silver Blades Book 0829	Nora Ravencrest	1973	9787000000845
846	Expedition to Galactic Frontiers Log 0830	Nova Kepler	1974	9787000000846
847	Practical DevOps Volume 0831	Linus Torvalds	2021	9787000000847
848	Chronicles of Forgotten Kingdoms Book 0832	Cedric Vale	1976	9787000000848
849	Expedition to Orbital Cities Log 0833	Vera Cosmo	1977	9787000000849
850	Practical Concurrency Volume 0834	Niklaus Wirth	2024	9787000000850
851	Chronicles of Crystal Empires Book 0835	Orin Blackwood	1979	9787000000851
852	Expedition to Time Dilation Log 0836	Milo Zenith	1980	9787000000852
853	Practical Programming Languages Volume 0837	Vint Cerf	1951	9787000000853
854	Chronicles of Storm Riders Book 0838	Kael Ironhart	1982	9787000000854
855	Expedition to Dyson Habitats Log 0839	Juno Eclipse	1983	9787000000855
856	Practical Algorithms Volume 0840	Ada Lovelace	1954	9787000000856
857	Chronicles of Arcane Towers Book 0841	Mira Thorne	1985	9787000000857
858	Expedition to Synthetic Minds Log 0842	Orion Hale	1986	9787000000858
859	Practical Distributed Systems Volume 0843	Grace Hopper	1957	9787000000859
860	Chronicles of Moonlit Forests Book 0844	Thalia Ember	1988	9787000000860
861	Expedition to Terraforming Log 0845	Elara Pulse	1989	9787000000861
862	Practical Networking Volume 0846	Margaret Hamilton	1960	9787000000862
863	Chronicles of Shadow Realms Book 0847	Bren Hollow	1991	9787000000863
864	Expedition to Alien Signals Log 0848	Rhea Vector	1992	9787000000864
865	Practical Machine Learning Volume 0849	Ken Thompson	1963	9787000000865
866	Chronicles of Dragon Lore Book 0850	Arin Starfall	1994	9787000000866
867	Expedition to Quantum Colonies Log 0851	Iris Quasar	1995	9787000000867
868	Practical Site Reliability Volume 0852	Radia Perlman	1966	9787000000868
869	Chronicles of Runic Seas Book 0853	Lyra Windmere	1997	9787000000869
870	Expedition to Deep Space Log 0854	Caden Rift	1998	9787000000870
871	Practical Cybersecurity Volume 0855	Frances Allen	1969	9787000000871
872	Chronicles of Ancient Prophecies Book 0856	Selene Frost	2000	9787000000872
873	Expedition to Nebula Cartography Log 0857	Tara Ion	2001	9787000000873
874	Practical Computer Graphics Volume 0858	Sophie Wilson	1972	9787000000874
875	Chronicles of Silver Blades Book 0859	Nora Ravencrest	2003	9787000000875
876	Expedition to Galactic Frontiers Log 0860	Nova Kepler	2004	9787000000876
877	Practical Data Structures Volume 0861	Alan Turing	1975	9787000000877
878	Chronicles of Forgotten Kingdoms Book 0862	Cedric Vale	2006	9787000000878
879	Expedition to Orbital Cities Log 0863	Vera Cosmo	2007	9787000000879
880	Practical Compilers Volume 0864	Donald Knuth	1978	9787000000880
881	Chronicles of Crystal Empires Book 0865	Orin Blackwood	2009	9787000000881
882	Expedition to Time Dilation Log 0866	Milo Zenith	2010	9787000000882
883	Practical Computer Architecture Volume 0867	John von Neumann	1981	9787000000883
884	Chronicles of Storm Riders Book 0868	Kael Ironhart	2012	9787000000884
885	Expedition to Dyson Habitats Log 0869	Juno Eclipse	2013	9787000000885
886	Practical Software Testing Volume 0870	Dennis Ritchie	1984	9787000000886
887	Chronicles of Arcane Towers Book 0871	Mira Thorne	2015	9787000000887
888	Expedition to Synthetic Minds Log 0872	Orion Hale	2016	9787000000888
889	Practical Cloud Native Volume 0873	Claude Shannon	1987	9787000000889
890	Chronicles of Moonlit Forests Book 0874	Thalia Ember	2018	9787000000890
891	Expedition to Terraforming Log 0875	Elara Pulse	2019	9787000000891
892	Practical Formal Methods Volume 0876	Tim Berners-Lee	1990	9787000000892
893	Chronicles of Shadow Realms Book 0877	Bren Hollow	2021	9787000000893
894	Expedition to Alien Signals Log 0878	Rhea Vector	2022	9787000000894
895	Practical Information Retrieval Volume 0879	Guido van Rossum	1993	9787000000895
896	Chronicles of Dragon Lore Book 0880	Arin Starfall	2024	9787000000896
897	Expedition to Quantum Colonies Log 0881	Iris Quasar	2025	9787000000897
898	Practical Operating Systems Volume 0882	Edsger Dijkstra	1996	9787000000898
899	Chronicles of Runic Seas Book 0883	Lyra Windmere	1901	9787000000899
900	Expedition to Deep Space Log 0884	Caden Rift	1902	9787000000900
901	Practical Databases Volume 0885	Barbara Liskov	1999	9787000000901
902	Chronicles of Ancient Prophecies Book 0886	Selene Frost	1904	9787000000902
903	Expedition to Nebula Cartography Log 0887	Tara Ion	1905	9787000000903
904	Practical Cryptography Volume 0888	Leslie Lamport	2002	9787000000904
905	Chronicles of Silver Blades Book 0889	Nora Ravencrest	1907	9787000000905
906	Expedition to Galactic Frontiers Log 0890	Nova Kepler	1908	9787000000906
907	Practical DevOps Volume 0891	Linus Torvalds	2005	9787000000907
908	Chronicles of Forgotten Kingdoms Book 0892	Cedric Vale	1910	9787000000908
909	Expedition to Orbital Cities Log 0893	Vera Cosmo	1911	9787000000909
910	Practical Concurrency Volume 0894	Niklaus Wirth	2008	9787000000910
911	Chronicles of Crystal Empires Book 0895	Orin Blackwood	1913	9787000000911
912	Expedition to Time Dilation Log 0896	Milo Zenith	1914	9787000000912
913	Practical Programming Languages Volume 0897	Vint Cerf	2011	9787000000913
914	Chronicles of Storm Riders Book 0898	Kael Ironhart	1916	9787000000914
915	Expedition to Dyson Habitats Log 0899	Juno Eclipse	1917	9787000000915
916	Practical Algorithms Volume 0900	Ada Lovelace	2014	9787000000916
917	Chronicles of Arcane Towers Book 0901	Mira Thorne	1919	9787000000917
918	Expedition to Synthetic Minds Log 0902	Orion Hale	1920	9787000000918
919	Practical Distributed Systems Volume 0903	Grace Hopper	2017	9787000000919
920	Chronicles of Moonlit Forests Book 0904	Thalia Ember	1922	9787000000920
921	Expedition to Terraforming Log 0905	Elara Pulse	1923	9787000000921
922	Practical Networking Volume 0906	Margaret Hamilton	2020	9787000000922
923	Chronicles of Shadow Realms Book 0907	Bren Hollow	1925	9787000000923
924	Expedition to Alien Signals Log 0908	Rhea Vector	1926	9787000000924
925	Practical Machine Learning Volume 0909	Ken Thompson	2023	9787000000925
926	Chronicles of Dragon Lore Book 0910	Arin Starfall	1928	9787000000926
927	Expedition to Quantum Colonies Log 0911	Iris Quasar	1929	9787000000927
928	Practical Site Reliability Volume 0912	Radia Perlman	1950	9787000000928
929	Chronicles of Runic Seas Book 0913	Lyra Windmere	1931	9787000000929
930	Expedition to Deep Space Log 0914	Caden Rift	1932	9787000000930
931	Practical Cybersecurity Volume 0915	Frances Allen	1953	9787000000931
932	Chronicles of Ancient Prophecies Book 0916	Selene Frost	1934	9787000000932
933	Expedition to Nebula Cartography Log 0917	Tara Ion	1935	9787000000933
934	Practical Computer Graphics Volume 0918	Sophie Wilson	1956	9787000000934
935	Chronicles of Silver Blades Book 0919	Nora Ravencrest	1937	9787000000935
936	Expedition to Galactic Frontiers Log 0920	Nova Kepler	1938	9787000000936
937	Practical Data Structures Volume 0921	Alan Turing	1959	9787000000937
938	Chronicles of Forgotten Kingdoms Book 0922	Cedric Vale	1940	9787000000938
939	Expedition to Orbital Cities Log 0923	Vera Cosmo	1941	9787000000939
940	Practical Compilers Volume 0924	Donald Knuth	1962	9787000000940
941	Chronicles of Crystal Empires Book 0925	Orin Blackwood	1943	9787000000941
942	Expedition to Time Dilation Log 0926	Milo Zenith	1944	9787000000942
943	Practical Computer Architecture Volume 0927	John von Neumann	1965	9787000000943
944	Chronicles of Storm Riders Book 0928	Kael Ironhart	1946	9787000000944
945	Expedition to Dyson Habitats Log 0929	Juno Eclipse	1947	9787000000945
946	Practical Software Testing Volume 0930	Dennis Ritchie	1968	9787000000946
947	Chronicles of Arcane Towers Book 0931	Mira Thorne	1949	9787000000947
948	Expedition to Synthetic Minds Log 0932	Orion Hale	1950	9787000000948
949	Practical Cloud Native Volume 0933	Claude Shannon	1971	9787000000949
950	Chronicles of Moonlit Forests Book 0934	Thalia Ember	1952	9787000000950
951	Expedition to Terraforming Log 0935	Elara Pulse	1953	9787000000951
952	Practical Formal Methods Volume 0936	Tim Berners-Lee	1974	9787000000952
953	Chronicles of Shadow Realms Book 0937	Bren Hollow	1955	9787000000953
954	Expedition to Alien Signals Log 0938	Rhea Vector	1956	9787000000954
955	Practical Information Retrieval Volume 0939	Guido van Rossum	1977	9787000000955
956	Chronicles of Dragon Lore Book 0940	Arin Starfall	1958	9787000000956
957	Expedition to Quantum Colonies Log 0941	Iris Quasar	1959	9787000000957
958	Practical Operating Systems Volume 0942	Edsger Dijkstra	1980	9787000000958
959	Chronicles of Runic Seas Book 0943	Lyra Windmere	1961	9787000000959
960	Expedition to Deep Space Log 0944	Caden Rift	1962	9787000000960
961	Practical Databases Volume 0945	Barbara Liskov	1983	9787000000961
962	Chronicles of Ancient Prophecies Book 0946	Selene Frost	1964	9787000000962
963	Expedition to Nebula Cartography Log 0947	Tara Ion	1965	9787000000963
964	Practical Cryptography Volume 0948	Leslie Lamport	1986	9787000000964
965	Chronicles of Silver Blades Book 0949	Nora Ravencrest	1967	9787000000965
966	Expedition to Galactic Frontiers Log 0950	Nova Kepler	1968	9787000000966
967	Practical DevOps Volume 0951	Linus Torvalds	1989	9787000000967
968	Chronicles of Forgotten Kingdoms Book 0952	Cedric Vale	1970	9787000000968
969	Expedition to Orbital Cities Log 0953	Vera Cosmo	1971	9787000000969
970	Practical Concurrency Volume 0954	Niklaus Wirth	1992	9787000000970
971	Chronicles of Crystal Empires Book 0955	Orin Blackwood	1973	9787000000971
972	Expedition to Time Dilation Log 0956	Milo Zenith	1974	9787000000972
973	Practical Programming Languages Volume 0957	Vint Cerf	1995	9787000000973
974	Chronicles of Storm Riders Book 0958	Kael Ironhart	1976	9787000000974
975	Expedition to Dyson Habitats Log 0959	Juno Eclipse	1977	9787000000975
976	Practical Algorithms Volume 0960	Ada Lovelace	1998	9787000000976
977	Chronicles of Arcane Towers Book 0961	Mira Thorne	1979	9787000000977
978	Expedition to Synthetic Minds Log 0962	Orion Hale	1980	9787000000978
979	Practical Distributed Systems Volume 0963	Grace Hopper	2001	9787000000979
980	Chronicles of Moonlit Forests Book 0964	Thalia Ember	1982	9787000000980
981	Expedition to Terraforming Log 0965	Elara Pulse	1983	9787000000981
982	Practical Networking Volume 0966	Margaret Hamilton	2004	9787000000982
983	Chronicles of Shadow Realms Book 0967	Bren Hollow	1985	9787000000983
984	Expedition to Alien Signals Log 0968	Rhea Vector	1986	9787000000984
985	Practical Machine Learning Volume 0969	Ken Thompson	2007	9787000000985
986	Chronicles of Dragon Lore Book 0970	Arin Starfall	1988	9787000000986
987	Expedition to Quantum Colonies Log 0971	Iris Quasar	1989	9787000000987
988	Practical Site Reliability Volume 0972	Radia Perlman	2010	9787000000988
989	Chronicles of Runic Seas Book 0973	Lyra Windmere	1991	9787000000989
990	Expedition to Deep Space Log 0974	Caden Rift	1992	9787000000990
991	Practical Cybersecurity Volume 0975	Frances Allen	2013	9787000000991
992	Chronicles of Ancient Prophecies Book 0976	Selene Frost	1994	9787000000992
993	Expedition to Nebula Cartography Log 0977	Tara Ion	1995	9787000000993
994	Practical Computer Graphics Volume 0978	Sophie Wilson	2016	9787000000994
995	Chronicles of Silver Blades Book 0979	Nora Ravencrest	1997	9787000000995
996	Expedition to Galactic Frontiers Log 0980	Nova Kepler	1998	9787000000996
997	Practical Data Structures Volume 0981	Alan Turing	2019	9787000000997
998	Chronicles of Forgotten Kingdoms Book 0982	Cedric Vale	2000	9787000000998
999	Expedition to Orbital Cities Log 0983	Vera Cosmo	2001	9787000000999
1000	Practical Compilers Volume 0984	Donald Knuth	2022	9787000001000
1001	Chronicles of Crystal Empires Book 0985	Orin Blackwood	2003	9787000001001
1002	Expedition to Time Dilation Log 0986	Milo Zenith	2004	9787000001002
1003	Practical Computer Architecture Volume 0987	John von Neumann	2025	9787000001003
1004	Chronicles of Storm Riders Book 0988	Kael Ironhart	2006	9787000001004
1005	Expedition to Dyson Habitats Log 0989	Juno Eclipse	2007	9787000001005
1006	Practical Software Testing Volume 0990	Dennis Ritchie	1952	9787000001006
1007	Chronicles of Arcane Towers Book 0991	Mira Thorne	2009	9787000001007
1008	Expedition to Synthetic Minds Log 0992	Orion Hale	2010	9787000001008
1009	Practical Cloud Native Volume 0993	Claude Shannon	1955	9787000001009
1010	Chronicles of Moonlit Forests Book 0994	Thalia Ember	2012	9787000001010
1011	Expedition to Terraforming Log 0995	Elara Pulse	2013	9787000001011
1012	Practical Formal Methods Volume 0996	Tim Berners-Lee	1958	9787000001012
1013	Chronicles of Shadow Realms Book 0997	Bren Hollow	2015	9787000001013
1014	Expedition to Alien Signals Log 0998	Rhea Vector	2016	9787000001014
1015	Practical Information Retrieval Volume 0999	Guido van Rossum	1961	9787000001015
1016	Chronicles of Dragon Lore Book 1000	Arin Starfall	2018	9787000001016
1017	Expedition to Quantum Colonies Log 1001	Iris Quasar	2019	9787000001017
1018	Practical Operating Systems Volume 1002	Edsger Dijkstra	1964	9787000001018
1019	Chronicles of Runic Seas Book 1003	Lyra Windmere	2021	9787000001019
1020	Expedition to Deep Space Log 1004	Caden Rift	2022	9787000001020
1021	Practical Databases Volume 1005	Barbara Liskov	1967	9787000001021
1022	Chronicles of Ancient Prophecies Book 1006	Selene Frost	2024	9787000001022
1023	Expedition to Nebula Cartography Log 1007	Tara Ion	2025	9787000001023
1024	Practical Cryptography Volume 1008	Leslie Lamport	1970	9787000001024
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.books_id_seq', 1024, true);


--
-- Name: books books_isbn_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_isbn_key UNIQUE (isbn);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: books books_unique_identity; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_unique_identity UNIQUE (title, author, published_year);


--
-- PostgreSQL database dump complete
--

\unrestrict X90NGxX2YnaQEwhThrJDGoLaUBCtJboO7LNZKcYQxsJpy348rAudrXD5UjOMgjh
