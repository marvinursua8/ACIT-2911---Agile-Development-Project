SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict z3QnNIehxdbBZY5Rcp5bkAjsbj64mNHHRIX55EjbY8HxO9p0gaSiLghBFXOCYUA

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."admin" ("id", "username", "password_hash") VALUES
	(1, 'my_admin_name', 'scrypt:32768:8:1$gztNDoAxh1aDRAnk$72803675334ccfca19fb3360184e5106780a16c09d2c2815d40b0ff8b7f2c4017cff4b86c8caa5b2b28d53481bd3af3e8322f656d3ccf7c2f343dd9b2760b543');


--
-- Data for Name: animals; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."animals" ("id", "name", "species", "breed", "gender", "age", "size", "color", "house_trained", "description", "adopted") VALUES
	(1, 'Robin', 'Dog', 'Dachshund', 'Male', 9, 'medium', 'brown', 'House trained', 'Marvin''s dog yaaaaaaaaaaay', true),
	(108, 'Dylan', 'Human', 'yes', 'male', 18, 'large', 'yeah', 'Not house trained', 'a loveable guy', true),
	(55, 'Roxy', 'Goby', 'Unknown', 'female', 2, 'small', 'Brown', 'Not house trained', 'Glop glop', true),
	(3, 'Fifi', 'Dog', 'Pomeranian', 'Female', 5, 'small', 'white', 'House trained', 'awwwwww', false),
	(56, 'Sunny', 'Sun bear', 'Unknown', 'male', 5, 'large', 'Black', 'Not house trained', 'Crazy long tongue', false),
	(61, 'Sunbringer', 'Cat', 'Khao Manee', 'female', 8, 'small', 'White', 'House trained', 'First-generation Void Hunter', false),
	(125, 'Neo', 'Cat', 'Cat', 'male', 7, 'small', 'White and gray', 'House trained', 'Neo is a sweet, quiet, and independent boy, except when he wants the occasional pet or when he''s hungry! He is very laid-back and appreciates his space. He would do well in a quiet home preferably as the only pet in the home.', false),
	(127, 'Aqua', 'Cat', 'Tabby', 'female', 3, 'small', 'Light Brown', 'House trained', 'Very warm and soft when cuddling', false),
	(128, 'Felix', 'Cat', '???', 'male', 5, 'small', 'White', 'House trained', 'Likes to sneak around', false),
	(132, 'Gerald II', 'Cat', 'British Shorthair', 'Male', 11, 'small', 'Gray', 'Not house trained', 'Adopt him or else', false),
	(149, 'DYLAN2.0', 'HUMAN', 'DEFINITELY', 'male', 67, 'large', 'WHITE', 'Not house trained', '6767676767676767676767676767667', false),
	(154, 'Nilla', 'Cat', 'American Short Hair', 'female', 10, 'small', 'Tortoiseshell', 'House trained', 'Nilla bean :)', true),
	(130, 'Joe', 'Dog', 'Unknown', 'Male', 4, 'large', 'brown', 'House trained', 'Woof', true),
	(2, 'Rocco', 'Dog', 'German Shepard', 'Male', 7, 'large', 'light brown', 'House trained', 'Will protecc', true),
	(174, 'froo', 'frog', 'tree frog', 'male', 3, 'medium', 'green', 'House trained', 'slimey', false),
	(212, 'aa', 'aa', 'aa', 'female', 3, 'small', 'aa', 'House trained', 'aa', false);


--
-- Data for Name: connectiontest; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."connectiontest" ("id", "status") VALUES
	(1, 'Hello from Peewee!'),
	(2, 'Hello from Peewee!'),
	(3, 'Hello from Peewee!'),
	(4, 'Hello from Peewee!'),
	(5, 'Hello from Peewee!'),
	(6, 'Hello from Peewee!'),
	(7, 'Hello from Peewee!'),
	(8, 'Hello from Peewee!'),
	(9, 'Hello from Peewee!'),
	(10, 'Hello from Peewee!'),
	(11, 'Hello from Peewee!'),
	(12, 'Hello from Peewee!'),
	(13, 'Hello from Peewee!'),
	(14, 'Hello from Peewee!'),
	(15, 'Hello from Peewee!'),
	(16, 'Hello from Peewee!'),
	(17, 'Hello from Peewee!'),
	(18, 'Hello from Peewee!'),
	(19, 'Hello from Peewee!'),
	(20, 'Hello from Peewee!'),
	(21, 'Hello from Peewee!'),
	(22, 'Hello from Peewee!'),
	(23, 'Hello from Peewee!'),
	(24, 'Hello from Peewee!'),
	(25, 'Hello from Peewee!'),
	(26, 'Hello from Peewee!'),
	(27, 'Hello from Peewee!'),
	(28, 'Hello from Peewee!'),
	(29, 'Hello from Peewee!'),
	(30, 'Hello from Peewee!'),
	(31, 'Hello from Peewee!');


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."contacts" ("id", "name", "email", "phone", "animal", "message", "approved") VALUES
	(28, 'MARVIN LOIS MILLIGAN URSUA', 'MARVINLU19@GMAIL.COM', '6043415550', '108', 'yeeeee', false),
	(2, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(3, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(4, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(5, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(6, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(7, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(8, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(9, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(10, 'Carlos', 'CARLOS@EMAIL.COM', '1234567890', '2', 'i want him', false),
	(11, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(12, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(13, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(14, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(15, 'MARVIN LOIS MILLIGAN URSUA', 'MARVINLU19@GMAIL.COM', '6043415550', '108', 'I want to Adopt Dylan!', false),
	(16, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(17, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(18, 'George', 'george123@gmail.com', '6043415550', '3', 'I would love to adopt this pet because i love him so very much!', false),
	(19, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(20, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(21, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(22, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(23, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(24, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(25, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(26, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(27, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(29, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(30, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false),
	(31, 'Test User', 'test@email.com', '6041234567', '1', 'Hello', false);


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."images" ("id", "url", "animal_id", "is_primary") VALUES
	(259, 'https://images.weserv.nl/?url=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F13369505%2Fpexels-photo-13369505.jpeg&w=500&fit=cover', 132, true),
	(260, 'https://images.weserv.nl/?url=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F10503544%2Fpexels-photo-10503544.jpeg&w=500&fit=cover', 132, false),
	(261, 'https://images.weserv.nl/?url=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F20054401%2Fpexels-photo-20054401.jpeg&w=500&fit=cover', 132, false),
	(262, 'https://media.istockphoto.com/id/1319774380/photo/british-cat-lying-cat-tree-scratching-post.jpg?b=1&s=612x612&w=0&k=20&c=5Iyr5NbfRmLaDnM0r-mr2ViGBijJqPIHsGLbSkTbIzQ=', 132, false),
	(263, 'https://images.weserv.nl/?url=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F16691263%2Fpexels-photo-16691263.jpeg&w=500&fit=cover', 132, false),
	(264, 'https://images.weserv.nl/?url=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F35279222%2Fpexels-photo-35279222.jpeg&w=500&fit=cover', 132, false),
	(265, 'https://images.weserv.nl/?url=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F13773025%2Fpexels-photo-13773025.jpeg&w=500&fit=cover', 132, false),
	(266, 'https://cdn.discordapp.com/attachments/1498433978372194467/1504171661010796594/jail.gif?ex=6a07fec6&is=6a06ad46&hm=70a38e5870e32cbc76e4cc318498ac969b0d0b2d05727e3805b5cbcb5da5933e&', 149, true),
	(274, 'https://cdn.discordapp.com/attachments/419741937868734475/1505052537261133834/IMG_5159.jpg?ex=6a0938e7&is=6a07e767&hm=7667d92c306504c6f1ee15c26d5f75686a9577deae8a31af02f359ca6cf82a9d&', 154, true),
	(312, 'https://images.weserv.nl/?url=https%3A%2F%2Fi.natgeofe.com%2Fk%2F8fa25ea4-6409-47fb-b3cc-4af8e0dc9616%2Fred-eyed-tree-frog-on-leaves-3-2_3x4.jpg&w=500&fit=cover', 174, true),
	(313, 'https://www.fakesite.com/fails.jpg', 130, false),
	(1, 'https://images.weserv.nl/?url=https%3A%2F%2Fxrygojfhrciovwsakyxk.supabase.co%2Fstorage%2Fv1%2Fobject%2Fpublic%2Fimages%2FIMG_2709.jpg&w=500&fit=cover', 1, true),
	(2, 'https://images.weserv.nl/?url=https%3A%2F%2Fxrygojfhrciovwsakyxk.supabase.co%2Fstorage%2Fv1%2Fobject%2Fpublic%2Fimages%2FIMG_2647.jpg&w=500&fit=cover', 1, false),
	(3, 'https://images.weserv.nl/?url=https%3A%2F%2Fxrygojfhrciovwsakyxk.supabase.co%2Fstorage%2Fv1%2Fobject%2Fpublic%2Fimages%2Fbest-guard-dogs-1650302456.avif&w=500&fit=cover', 2, true),
	(4, 'https://images.weserv.nl/?url=https%3A%2F%2Fxrygojfhrciovwsakyxk.supabase.co%2Fstorage%2Fv1%2Fobject%2Fpublic%2Fimages%2Fcute-puppy-pomeranian-mixed-breed-pekingese-dog-run-on-the-grass-with-happiness-photo.jpg&w=500&fit=cover', 3, true),
	(45, 'https://images.weserv.nl/?url=https%3A%2F%2Fimages.squarespace-cdn.com%2Fcontent%2Fv1%2F5fe4bcefd0fd9113745e2f8a%2Fd5e606aa-da14-4a69-af7d-c50b9a9d14bb%2FPXL_20230509_132656083.jpg&w=500&fit=cover', 55, true),
	(46, 'https://images.weserv.nl/?url=https%3A%2F%2Fstatic.toiimg.com%2Fthumb%2F113629455%2F113629455.jpg%3Fheight%3D746%26width%3D420%26resizemode%3D76%26imgsize%3D38580&w=500&fit=cover', 56, true),
	(104, 'https://images.weserv.nl/?url=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F2%2F2d%2FCane_corso_g%25C5%2582owa_profil_493o.jpg%3Futm_source%3Dcommons.wikimedia.org%26utm_campaign%3Dindex%26utm_content%3Doriginal&w=500&fit=cover', 130, true),
	(154, 'https://images.weserv.nl/?url=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F9144981%2Fpexels-photo-9144981.jpeg&w=500&fit=cover', 130, false),
	(155, 'https://images.weserv.nl/?url=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F6%2F66%2FMastiff_-_English_Mastiff.jpg&w=500&fit=cover', 130, false),
	(156, 'https://shorturl.at/ORkbJ', 61, true),
	(226, 'https://cdn.discordapp.com/attachments/1487145865419165716/1504592464789508227/IMG_0340.jpg?ex=6a078c6d&is=6a063aed&hm=c7bbc7b546327bbe6fc2c519b534670b478e748a8e85308532ff5aac6bca9a53&', 108, true),
	(255, 'https://cdn.discordapp.com/attachments/1468078954438201437/1503491155420250263/image0.jpg?ex=6a077f40&is=6a062dc0&hm=6b088d3162774992a59c9f1ee3d7b08353a30f578138f48983ad3e55546f3dd7&', 125, true),
	(257, 'https://images.weserv.nl/?url=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fc%2Fc7%2FTabby_cat_with_blue_eyes-3336579.jpg%2F960px-Tabby_cat_with_blue_eyes-3336579.jpg%3Futm_source%3Dcommons.wikimedia.org%26utm_campaign%3Dimageinfo%26utm_content%3Dthumbnail&w=500&fit=cover', 127, true),
	(258, 'https://images.weserv.nl/?url=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fe%2Fe5%2FBlue-eyed_domestic_cat_%2528Felis_silvestris_catus%2529.jpg%2F960px-Blue-eyed_domestic_cat_%2528Felis_silvestris_catus%2529.jpg%3Futm_source%3Dcommons.wikimedia.org%26utm_campaign%3Dimageinfo%26utm_content%3Dthumbnail&w=500&fit=cover', 128, true),
	(367, 'rsvds', 212, true),
	(368, '', 212, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") VALUES
	('images', 'images', NULL, '2026-05-03 06:30:08.71652+00', '2026-05-03 06:30:08.71652+00', true, false, NULL, NULL, NULL, 'STANDARD');


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") VALUES
	('fe24aa0c-151f-4d2e-85f3-b6d2cce3bb09', 'images', 'IMG_2709.jpg', NULL, '2026-05-03 06:30:21.727245+00', '2026-05-03 06:30:21.727245+00', '2026-05-03 06:30:21.727245+00', '{"eTag": "\"ebf6fb7be1d43158edd995606bd2ea7b-1\"", "size": 875602, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-05-03T06:30:22.000Z", "contentLength": 875602, "httpStatusCode": 200}', '6ea3e63e-8add-44f3-bc9a-5c5c751b4f61', NULL, NULL),
	('6b879bc2-bda4-4db4-a550-2544023faa42', 'images', 'IMG_2647.jpg', NULL, '2026-05-03 08:20:39.445636+00', '2026-05-03 08:20:39.445636+00', '2026-05-03 08:20:39.445636+00', '{"eTag": "\"338a94e3eb8839b284393f96a3ed9c31-1\"", "size": 641180, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-05-03T08:20:39.000Z", "contentLength": 641180, "httpStatusCode": 200}', '1655a83c-b1dd-4a36-bfa9-d62c692fbbdf', NULL, NULL),
	('d5a81ff1-87b2-4aba-8f89-6d54d4c789dc', 'images', 'best-guard-dogs-1650302456.avif', NULL, '2026-05-03 08:33:33.555026+00', '2026-05-03 08:33:33.555026+00', '2026-05-03 08:33:33.555026+00', '{"eTag": "\"ef232306812ea50014ea268a8271f93a-1\"", "size": 115576, "mimetype": "image/avif", "cacheControl": "max-age=3600", "lastModified": "2026-05-03T08:33:34.000Z", "contentLength": 115576, "httpStatusCode": 200}', 'f006bd6f-3662-41e8-8c67-3afae47ee3dc', NULL, NULL),
	('3272ec7b-dc8b-4b4c-aa59-64b67108ebb2', 'images', 'dog-puppy-on-garden-royalty-free-image-1586966191.avif', NULL, '2026-05-03 08:35:52.789255+00', '2026-05-03 08:35:52.789255+00', '2026-05-03 08:35:52.789255+00', '{"eTag": "\"1c00d719b78a6715475e18f0e3807b6c-1\"", "size": 103543, "mimetype": "image/avif", "cacheControl": "max-age=3600", "lastModified": "2026-05-03T08:35:53.000Z", "contentLength": 103543, "httpStatusCode": 200}', '5599a389-7e05-48c3-8e51-ab04de9e52ee', NULL, NULL),
	('73263828-0e4d-4faa-b918-81bc0afca41b', 'images', 'cute-puppy-pomeranian-mixed-breed-pekingese-dog-run-on-the-grass-with-happiness-photo.jpg', NULL, '2026-05-03 08:35:58.768249+00', '2026-05-03 08:35:58.768249+00', '2026-05-03 08:35:58.768249+00', '{"eTag": "\"0aa5a09d275520cfe2c1b929e439fdd8-1\"", "size": 23681, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-05-03T08:35:59.000Z", "contentLength": 23681, "httpStatusCode": 200}', 'dde50ee1-23e8-47c4-81ac-096600a799a6', NULL, NULL);


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."admin_id_seq"', 1, false);


--
-- Name: animals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."animals_id_seq"', 228, true);


--
-- Name: connectiontest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."connectiontest_id_seq"', 31, true);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."contacts_id_seq"', 31, true);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."images_id_seq"', 396, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."users_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

-- \unrestrict z3QnNIehxdbBZY5Rcp5bkAjsbj64mNHHRIX55EjbY8HxO9p0gaSiLghBFXOCYUA

RESET ALL;
