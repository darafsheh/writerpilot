SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.5 (Ubuntu 15.5-1.pgdg20.04+1)

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '3f7329a0-3a04-4b0b-9352-502b10c50097', '{"action":"user_confirmation_requested","actor_id":"aace0f77-8098-4940-8faf-26a20f3d2eaa","actor_username":"shar@test.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-03-17 01:48:58.23288+00', ''),
	('00000000-0000-0000-0000-000000000000', '55158c20-f2df-40b0-ab08-14f952565e7d', '{"action":"user_confirmation_requested","actor_id":"d42e81b7-5fe5-4227-8cf3-ec97a21453fe","actor_username":"shardaraf@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-03-17 01:49:43.589743+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f1f65663-9275-409d-a250-37c429c219c5', '{"action":"user_confirmation_requested","actor_id":"d42e81b7-5fe5-4227-8cf3-ec97a21453fe","actor_username":"shardaraf@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-03-17 02:03:29.812109+00', ''),
	('00000000-0000-0000-0000-000000000000', '70a74aba-8a41-4b0b-85ec-40601a492e86', '{"action":"user_signedup","actor_id":"d42e81b7-5fe5-4227-8cf3-ec97a21453fe","actor_username":"shardaraf@gmail.com","actor_via_sso":false,"log_type":"team"}', '2024-03-17 02:04:01.440656+00', ''),
	('00000000-0000-0000-0000-000000000000', '3cd551d0-530f-4d0f-aecb-4026336fefc0', '{"action":"login","actor_id":"d42e81b7-5fe5-4227-8cf3-ec97a21453fe","actor_username":"shardaraf@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 02:04:20.582082+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ac719f0-f00f-4d37-a435-724454e2c37b', '{"action":"logout","actor_id":"d42e81b7-5fe5-4227-8cf3-ec97a21453fe","actor_username":"shardaraf@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-03-17 02:13:39.50122+00', ''),
	('00000000-0000-0000-0000-000000000000', '612b223b-da54-4c23-87a0-84057f1a5b75', '{"action":"user_confirmation_requested","actor_id":"f0b83f78-daa2-40e8-b375-708bac3c8399","actor_username":"shardaraf+1@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-03-17 02:14:02.531453+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e495b10d-a99f-4572-bd26-2f95a344f2ff', '{"action":"user_signedup","actor_id":"f0b83f78-daa2-40e8-b375-708bac3c8399","actor_username":"shardaraf+1@gmail.com","actor_via_sso":false,"log_type":"team"}', '2024-03-17 02:14:11.801047+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c4d54df-f46d-49b2-85c2-702d92c8ea2b', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"shardaraf+2@gmail.com","user_id":"4290f408-55b2-4282-85ab-b9c8735110f0","user_phone":""}}', '2024-03-17 02:23:36.016447+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c7f83ce9-3071-45c6-b3e4-e8d5754c9dfb', '{"action":"user_signedup","actor_id":"93eb3b92-54eb-4cef-a594-86d460495e90","actor_username":"shardaraf+4@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-03-17 02:40:39.107619+00', ''),
	('00000000-0000-0000-0000-000000000000', '60433113-93c6-4080-83e1-abfb2369e186', '{"action":"login","actor_id":"93eb3b92-54eb-4cef-a594-86d460495e90","actor_username":"shardaraf+4@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 02:40:39.110478+00', ''),
	('00000000-0000-0000-0000-000000000000', '629c9ee1-01bb-40f1-9368-74c919ca5177', '{"action":"logout","actor_id":"93eb3b92-54eb-4cef-a594-86d460495e90","actor_username":"shardaraf+4@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-03-17 03:09:19.227742+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a97ecc87-e06a-4f71-aaad-9f2b74405e66', '{"action":"user_signedup","actor_id":"0df60a88-e060-4e67-ae62-16e683cff696","actor_username":"shardaraf+5@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-03-17 03:12:41.519751+00', ''),
	('00000000-0000-0000-0000-000000000000', '2a53d009-cecc-4036-930f-62b76fccebd1', '{"action":"login","actor_id":"0df60a88-e060-4e67-ae62-16e683cff696","actor_username":"shardaraf+5@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 03:12:41.522467+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b80e122-deb2-4741-8a57-432aa1b81d10', '{"action":"user_modified","actor_id":"0df60a88-e060-4e67-ae62-16e683cff696","actor_name":"Shar Dara","actor_username":"shardaraf+5@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-03-17 03:13:26.081374+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f1eda62b-efe7-482e-adff-6000a7f615a7', '{"action":"logout","actor_id":"0df60a88-e060-4e67-ae62-16e683cff696","actor_name":"Shar Dara","actor_username":"shardaraf+5@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-03-17 04:02:46.153759+00', ''),
	('00000000-0000-0000-0000-000000000000', '670a999f-5c64-4b22-82df-5480f9ffaa8e', '{"action":"user_signedup","actor_id":"a441a82e-87bf-455a-aa3d-502c45f1a52e","actor_username":"shardaraf+6@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-03-17 04:03:07.203096+00', ''),
	('00000000-0000-0000-0000-000000000000', '23018e0c-3948-4500-93bb-615ab839032c', '{"action":"login","actor_id":"a441a82e-87bf-455a-aa3d-502c45f1a52e","actor_username":"shardaraf+6@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 04:03:07.205359+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae870e04-316b-4faf-9a66-2b81c5c2e24e', '{"action":"logout","actor_id":"a441a82e-87bf-455a-aa3d-502c45f1a52e","actor_username":"shardaraf+6@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-03-17 04:15:23.722807+00', ''),
	('00000000-0000-0000-0000-000000000000', '0b7e2e39-3341-442c-b720-cd579d626a99', '{"action":"user_signedup","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-03-17 04:29:36.271127+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eba96ac5-ad1d-4649-9ba5-15f37e9aa6f6', '{"action":"login","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-17 04:29:36.273571+00', ''),
	('00000000-0000-0000-0000-000000000000', '9bcf0934-d298-4d86-9d72-e4e32d2db71b', '{"action":"user_signedup","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-03-18 02:32:28.968587+00', ''),
	('00000000-0000-0000-0000-000000000000', '692243f8-e1b3-4103-8d03-3088dd814d62', '{"action":"login","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-18 02:32:28.971713+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd82ac2fc-d574-4b82-9add-057c36c42290', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 18:16:16.39457+00', ''),
	('00000000-0000-0000-0000-000000000000', '96f67257-6fcc-4f90-9ce8-67142dead97b', '{"action":"token_revoked","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 18:16:16.395212+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cfad350e-708b-4820-bbbf-511bd8cad279', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 18:16:17.663416+00', ''),
	('00000000-0000-0000-0000-000000000000', '671abcf5-9a34-4e17-8792-d199ba0ab8b4', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 18:16:17.676508+00', ''),
	('00000000-0000-0000-0000-000000000000', '42479542-6a16-4d7a-90bf-dd9e1da59cf4', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 18:16:18.107186+00', ''),
	('00000000-0000-0000-0000-000000000000', 'caf0df2b-bd69-484a-ab82-df8f342bbf7f', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 18:16:18.249323+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae62f2b4-1e4b-4c99-9c47-ad4f034bed44', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 18:16:18.706446+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e29ab095-d830-49e5-9946-381125c915c7', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 18:16:18.735911+00', ''),
	('00000000-0000-0000-0000-000000000000', '18695551-cfa6-4765-9c6e-2be602ecf1ef', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 19:32:36.798053+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e231c6bb-55c7-4111-ae6e-89b9459e8474', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 19:32:37.059396+00', ''),
	('00000000-0000-0000-0000-000000000000', '770d56c4-ff05-4290-a813-9f400d526361', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 19:32:37.072788+00', ''),
	('00000000-0000-0000-0000-000000000000', '35b44e00-5889-4e98-96df-a0a97ec1ba29', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 19:32:37.186763+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c861e7f7-d218-470a-b245-0b3e02bb1273', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 19:32:37.35546+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a338962-af46-4ac8-9985-a631adafc30d', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 19:32:37.606507+00', ''),
	('00000000-0000-0000-0000-000000000000', '11b19826-f614-4021-a8eb-45a16948053d', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 19:32:37.632246+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0db1039-9885-4621-a725-f83dcfbe7449', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 19:32:38.128712+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ad578a5-cb2a-43af-ae6e-667dd0a6facd', '{"action":"token_refreshed","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 19:32:38.371402+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de4670f3-ce94-4621-a30c-d603acc0cd8b', '{"action":"logout","actor_id":"052646be-5760-44dc-b5f4-5af3e87b81e9","actor_username":"shardaraf+11@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-03-18 19:32:38.418103+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd92fbd70-b2d5-4706-bc00-2bbfaf63bbbe', '{"action":"user_signedup","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-03-18 19:32:54.427307+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3b43ac5-7188-481a-89f7-509df15637c5', '{"action":"login","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-18 19:32:54.43026+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1c15d06-735d-4ddc-8149-7a3eaa5d899b', '{"action":"token_refreshed","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 20:41:20.722155+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4a414c9-b920-43dd-8548-a0b34728d312', '{"action":"token_revoked","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 20:41:20.722844+00', ''),
	('00000000-0000-0000-0000-000000000000', '7284959f-d28a-45d7-bc28-93c764889a1d', '{"action":"token_refreshed","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 20:41:21.880172+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c952c50b-eace-40a2-b997-08a50e7af0ac', '{"action":"token_refreshed","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 20:41:21.906581+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c0c81ef-2904-4ac8-b66e-d99618e509f9', '{"action":"token_refreshed","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 20:41:22.216978+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c8441547-7900-4378-bc03-585e4c5bf222', '{"action":"token_refreshed","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 20:41:22.42252+00', ''),
	('00000000-0000-0000-0000-000000000000', '8ff0258d-0c7f-4b5f-b82a-b1b68e215efe', '{"action":"token_refreshed","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 20:41:22.718756+00', ''),
	('00000000-0000-0000-0000-000000000000', '18724770-b07e-45b3-8c1b-23330ad31359', '{"action":"token_refreshed","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 20:41:22.747431+00', ''),
	('00000000-0000-0000-0000-000000000000', '56414483-22bb-4b14-8894-7080281eb3fd', '{"action":"token_refreshed","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 20:41:24.495927+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a124b4cb-93ba-40fc-8a14-80ef186fc367', '{"action":"token_refreshed","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-18 20:41:24.74202+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fdbfe0f9-f2bd-43cb-be5d-c99ce182d0d4', '{"action":"token_refreshed","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 01:10:04.065472+00', ''),
	('00000000-0000-0000-0000-000000000000', '31282dfe-c88c-4146-9afc-6d00a2913b43', '{"action":"token_revoked","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 01:10:04.066243+00', ''),
	('00000000-0000-0000-0000-000000000000', '8812dd6a-caab-4467-83a2-3f5b4ccf9a71', '{"action":"token_refreshed","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 01:10:05.210622+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d5445dc-e630-4db8-a519-9238e2c2083a', '{"action":"logout","actor_id":"63681a40-d728-41b5-8530-e2046c0a0898","actor_username":"shardaraf+12@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-03-19 01:10:05.322663+00', ''),
	('00000000-0000-0000-0000-000000000000', '6115c901-11e2-4a95-b071-3cca77e70d34', '{"action":"user_signedup","actor_id":"8a4004ea-1d7d-4816-9972-9730b843d3d9","actor_username":"shardaraf+13@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-03-19 01:10:21.414088+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ebb2c01-b50d-46b0-beef-80797644b57b', '{"action":"login","actor_id":"8a4004ea-1d7d-4816-9972-9730b843d3d9","actor_username":"shardaraf+13@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-19 01:10:21.416209+00', ''),
	('00000000-0000-0000-0000-000000000000', '6abce975-7a85-46ca-89ad-b027d0a88065', '{"action":"logout","actor_id":"8a4004ea-1d7d-4816-9972-9730b843d3d9","actor_username":"shardaraf+13@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-03-19 01:16:40.705139+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f020c294-e365-4686-8b65-b0071a67bc60', '{"action":"user_signedup","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-03-19 01:16:59.423296+00', ''),
	('00000000-0000-0000-0000-000000000000', '6651da7d-40d1-4dc1-9427-f83f477f0300', '{"action":"login","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-19 01:16:59.425678+00', ''),
	('00000000-0000-0000-0000-000000000000', '432b20ad-74b4-48eb-8f81-14bb8a0de3be', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:42.739552+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d21faf4-c593-436f-8efe-0b3f33f94850', '{"action":"token_revoked","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:42.740181+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f857139-1d08-4c8c-972d-8e36f48b60c8', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:43.050387+00', ''),
	('00000000-0000-0000-0000-000000000000', '57fa26e8-5012-4f41-9db7-3935e800afce', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:43.062927+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d75494c-a720-4d67-8a43-20137d040a12', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:43.194385+00', ''),
	('00000000-0000-0000-0000-000000000000', '48f1a83f-b01e-4a5a-811f-497f08dbf0c8', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:43.353511+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fe66ada9-3dc3-4dd9-a3c2-d9e4974604d4', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:43.467462+00', ''),
	('00000000-0000-0000-0000-000000000000', '46a9e3e4-9de2-496b-962d-226932f7ca20', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:43.675326+00', ''),
	('00000000-0000-0000-0000-000000000000', '456d56fc-8fbf-47e3-b2b6-67ca21636333', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:43.765866+00', ''),
	('00000000-0000-0000-0000-000000000000', '52c8ce50-45d9-4579-90e1-80f5ec651cd2', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:44.633935+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd1f9f3eb-3d2b-4921-ba06-246330d86d71', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:44.774113+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c42b6b16-6f35-4901-8163-78cf0fa2e65f', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:44.793173+00', ''),
	('00000000-0000-0000-0000-000000000000', '117414da-d40d-45eb-944e-d58a87891843', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:44.894836+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd40f7d29-58c6-4f93-9852-ffe258bbb866', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:44.996445+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e44cb66a-e990-4b6d-a32b-6aa4d47dbdc5', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:45.125375+00', ''),
	('00000000-0000-0000-0000-000000000000', '1fd452c5-ee14-41d3-a1c3-8a38def252ac', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:45.340234+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e93ec064-bd1a-40cf-87b6-5b001a8d62e7', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:45.350282+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd1835cff-479c-4a9c-af46-72c3048b095d', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:46.937303+00', ''),
	('00000000-0000-0000-0000-000000000000', 'deda9b81-abcf-4f40-8102-2e14268e3bef', '{"action":"token_refreshed","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 02:17:47.184652+00', ''),
	('00000000-0000-0000-0000-000000000000', '4fcc8d08-16df-42f9-acce-8f0a3e2932f5', '{"action":"logout","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-03-19 02:17:47.258607+00', ''),
	('00000000-0000-0000-0000-000000000000', '0f7800e0-3c2a-4b4e-b80b-1f3644645199', '{"action":"user_repeated_signup","actor_id":"deac59ce-1181-4188-bf6e-835df747a82e","actor_username":"shardaraf+14@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-03-19 02:17:58.082643+00', ''),
	('00000000-0000-0000-0000-000000000000', '67baf98f-3023-4538-b929-fb68cfaacd65', '{"action":"user_signedup","actor_id":"df5514b6-7544-42eb-ad9f-c09aaa63bd05","actor_username":"shardaraf+15@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-03-19 02:18:02.205627+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a10c683-091c-41a0-9b87-a72a00b71636', '{"action":"login","actor_id":"df5514b6-7544-42eb-ad9f-c09aaa63bd05","actor_username":"shardaraf+15@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-19 02:18:02.208042+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c10bf5f-7851-4d2d-bf42-c5f53b293966', '{"action":"token_refreshed","actor_id":"df5514b6-7544-42eb-ad9f-c09aaa63bd05","actor_username":"shardaraf+15@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 14:13:13.845447+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dcfc797c-da75-473b-b350-ef8a9048b28b', '{"action":"token_revoked","actor_id":"df5514b6-7544-42eb-ad9f-c09aaa63bd05","actor_username":"shardaraf+15@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 14:13:13.847623+00', ''),
	('00000000-0000-0000-0000-000000000000', '7d3729e9-1194-48b2-b2c5-1b754731493a', '{"action":"token_refreshed","actor_id":"df5514b6-7544-42eb-ad9f-c09aaa63bd05","actor_username":"shardaraf+15@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 14:13:16.319265+00', ''),
	('00000000-0000-0000-0000-000000000000', '2bcc7d23-849d-4a73-9ed7-dfc765f1715a', '{"action":"token_refreshed","actor_id":"df5514b6-7544-42eb-ad9f-c09aaa63bd05","actor_username":"shardaraf+15@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 14:13:16.73615+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c63aba5-7b75-483c-903a-14eb7355bf9f', '{"action":"logout","actor_id":"df5514b6-7544-42eb-ad9f-c09aaa63bd05","actor_username":"shardaraf+15@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-03-19 14:13:16.836099+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ec83510-e7ec-4e8c-8243-070e3fdb4500', '{"action":"user_signedup","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-03-19 14:14:14.011329+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed129a45-583a-4a47-acaf-771402ab94a4', '{"action":"login","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-19 14:14:14.013932+00', ''),
	('00000000-0000-0000-0000-000000000000', '5e1fac97-f940-4d28-95b5-e0a0d46015a5', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 18:01:34.131488+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e81c906b-3dab-4887-84d9-36b58084481f', '{"action":"token_revoked","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 18:01:34.132107+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d9bceef-019b-408a-913c-791079343ee9', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 18:01:35.493116+00', ''),
	('00000000-0000-0000-0000-000000000000', '201a53d4-e335-465d-a3a8-0b8178238be9', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 18:01:35.507824+00', ''),
	('00000000-0000-0000-0000-000000000000', '07c2e037-e5aa-4407-9cd6-f7a1f1b1196a', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 18:01:35.839716+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f4855b36-0da7-41bd-a48e-c02b6b692aba', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 18:01:36.000472+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee4f0aa3-96fb-4525-8e1b-f1fe33566e80', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 18:01:36.145605+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8837403-aa27-4dea-aae4-876742546787', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 18:01:36.501131+00', ''),
	('00000000-0000-0000-0000-000000000000', '67260c8f-6f86-4310-ab1b-4ff94b0c789b', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-19 18:01:36.532783+00', ''),
	('00000000-0000-0000-0000-000000000000', '1bba26fb-248e-4cb1-b7bb-3505240c4cfd', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:14:26.213952+00', ''),
	('00000000-0000-0000-0000-000000000000', '11703d19-2ddb-4147-a375-6296e313e16f', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:14:27.557027+00', ''),
	('00000000-0000-0000-0000-000000000000', '454e1988-95fd-401d-a0ba-4b3142e971d3', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:14:27.579041+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c92c0f1b-ff0e-4e22-94d0-f25b4e8278e5', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:14:27.879603+00', ''),
	('00000000-0000-0000-0000-000000000000', '8f32cf58-8d81-47fe-96f5-280c84c9b71a', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:14:28.081679+00', ''),
	('00000000-0000-0000-0000-000000000000', '12be61a3-56eb-459e-90f8-a047a4bfa5f5', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:14:28.222112+00', ''),
	('00000000-0000-0000-0000-000000000000', '0f5588e7-c8a6-4b11-b277-327ecfaadc23', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:14:28.611795+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ef88361b-3bf8-43cd-a0b2-965da533c3e1', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:14:28.631919+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cd5ed395-60f8-4fd9-a8e2-85611a964f3b', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:28.253151+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed4b7b7e-2146-40ca-8689-737b367c581e', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:28.541214+00', ''),
	('00000000-0000-0000-0000-000000000000', '97f25b12-49a3-4d5c-a240-ee4ecf54465d', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:28.569235+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0c68dfd-d027-4d36-8293-b771e3e4ec25', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:28.668535+00', ''),
	('00000000-0000-0000-0000-000000000000', 'db680de4-df5e-4f89-b521-a8de79768867', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:28.842564+00', ''),
	('00000000-0000-0000-0000-000000000000', '1dcbf2ec-1034-49b9-9860-8df7a8142d79', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:28.965899+00', ''),
	('00000000-0000-0000-0000-000000000000', '00c5c74d-d181-4caf-842b-f4d068c8c28a', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:31.197708+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e739c8fe-84f8-47fc-9406-a4d29defc442', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:31.366158+00', ''),
	('00000000-0000-0000-0000-000000000000', '516067a8-4b29-4579-8c65-fe43ac00146a', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:31.37987+00', ''),
	('00000000-0000-0000-0000-000000000000', '94aaaeee-6540-4164-ba2c-2b27bd6c2a38', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:31.487165+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b10b93b9-e9d8-4eeb-8269-0cc832acef17', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:31.619384+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca9cee58-0453-4d1b-adab-8eb2b17514a4', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:31.753775+00', ''),
	('00000000-0000-0000-0000-000000000000', '33fcd360-0693-48ff-9105-3d6c9747e59b', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:31.992758+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd01f13a1-afec-4f0f-a9a5-aee6b21eb042', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:19:32.018894+00', ''),
	('00000000-0000-0000-0000-000000000000', '88077c79-fcbf-4381-bdff-83587846c167', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:51.832187+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b6012a4d-94e1-4e58-acca-e98298a9899d', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:52.303338+00', ''),
	('00000000-0000-0000-0000-000000000000', '47143985-db0b-43ed-80b0-eac8dfbcb3f7', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:52.311039+00', ''),
	('00000000-0000-0000-0000-000000000000', '46539214-7843-4e02-b66c-6ab3f1fb7e89', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:52.44021+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ea5ce14d-a7bd-4b6c-92d6-c3882adf3051', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:52.570467+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cada1b80-a129-47d6-8f81-8ec04c8a92dd', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:52.723232+00', ''),
	('00000000-0000-0000-0000-000000000000', '8a674724-8226-444b-9206-92a24e3281b3', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:52.986625+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b46b5633-488f-4f07-9fba-cdda23c81fe5', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:52.996009+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d9321c2-19bf-4752-9ce6-2d8fb78d44f9', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:54.650595+00', ''),
	('00000000-0000-0000-0000-000000000000', '12c72042-7760-42ab-a354-7c4fdb753581', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:54.885866+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d6b98a3-62d6-44af-a918-c738fce378ca', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:54.917199+00', ''),
	('00000000-0000-0000-0000-000000000000', '573fc971-b13e-4f7e-a05e-06545c05e0a7', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:55.00951+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd882efa7-cf93-4c56-baef-950f9aa1fc2b', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:55.123917+00', ''),
	('00000000-0000-0000-0000-000000000000', '8cd5a9d0-30b2-4b0c-8c5b-1293919183f1', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:55.250963+00', ''),
	('00000000-0000-0000-0000-000000000000', 'caad4e19-c611-43a6-89ed-a55ed273f101', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:55.547942+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8675147-62a3-4603-b584-feea58ba26eb', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:55.563453+00', ''),
	('00000000-0000-0000-0000-000000000000', '798738dd-6052-4bc2-8c44-d5873b4bbe39', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:58.705529+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b539c87-e3bc-401c-8441-6dd26ede3d11', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:58.891001+00', ''),
	('00000000-0000-0000-0000-000000000000', 'babb69c7-8533-4a49-92bc-7b8f70894c15', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:58.924762+00', ''),
	('00000000-0000-0000-0000-000000000000', '84d36074-8f73-485d-acfa-d00a6e32964f', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:59.019252+00', ''),
	('00000000-0000-0000-0000-000000000000', '09a71c29-73d7-4184-adff-2633b3adbf7f', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:59.139483+00', ''),
	('00000000-0000-0000-0000-000000000000', '8e8d6c9c-701c-4f5a-872a-dfdd042b7eb2', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:59.257696+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f70e67f-66b1-40bb-beb2-e16b882c52e3', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:59.507289+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e039f68-7739-4861-8eb2-7c5072160080', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:24:59.537814+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d065808-a482-40ee-aebd-83879d67a729', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:38.29226+00', ''),
	('00000000-0000-0000-0000-000000000000', '1989a191-8747-45b4-b043-0f54043ef175', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:38.572927+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4546ed1-183a-43d1-9669-a2fc95c5431f', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:38.58039+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a9c53385-f2cb-4fc0-aba5-93af550dbe57', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:38.732914+00', ''),
	('00000000-0000-0000-0000-000000000000', '39953df6-8a94-4189-96dc-e827a91bc8a9', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:38.869468+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ef2751c7-0b1d-489e-ac9d-f1e12dbfe7ce', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:38.996487+00', ''),
	('00000000-0000-0000-0000-000000000000', '6055a757-7fe5-4909-a964-a7e9d3bacffe', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:39.318554+00', ''),
	('00000000-0000-0000-0000-000000000000', '84967900-12e3-4a00-b8f4-8dfdcec28a48', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:39.327246+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b1594c86-9378-4d71-9191-98114c7cdec5', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:40.809529+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cdc94fe4-e8e2-4c31-88ba-48ae768c51e9', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:40.976413+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f32c0f5d-7cd6-487e-9b8e-bf6405370125', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:41.004257+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d6894aa-d2b4-4cec-aa7f-26f09c497f4f', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:41.116583+00', ''),
	('00000000-0000-0000-0000-000000000000', '9cd5202c-9fd2-4b5a-83f5-c0807ca8d566', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:41.242625+00', ''),
	('00000000-0000-0000-0000-000000000000', 'faf6fccd-e1ce-4ba4-ab83-fbdbd5305c31', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:41.373385+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c27212a7-a859-4057-8166-5b4eb62da4fa', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:41.623598+00', ''),
	('00000000-0000-0000-0000-000000000000', '76ee735b-e9a1-4aef-bdaa-f1e1d54b626a', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:27:41.631564+00', ''),
	('00000000-0000-0000-0000-000000000000', '57aef18c-8c81-4e2a-99a8-9fc7e302418a', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:29:52.366137+00', ''),
	('00000000-0000-0000-0000-000000000000', '04a2c0d4-3736-4e55-86fc-6da99aebe4fc', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:29:52.545246+00', ''),
	('00000000-0000-0000-0000-000000000000', '039ad1ec-4cf3-489d-b39b-e006a70fa116', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:29:52.670694+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a0db801-37e0-4f47-b7a9-1a9e810f7da1', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:29:52.77972+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c69fc5b-b3b0-44fd-a41d-cfea1986e3a3', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:37:35.443696+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dfa60750-2085-4af0-9435-73e6d280ec31', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:38:41.849782+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aefcfbeb-618b-4e01-8852-ab437b20f575', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:38:42.301539+00', ''),
	('00000000-0000-0000-0000-000000000000', '94a31fb5-9d52-420d-ae27-f834d3c47b54', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:38:42.326802+00', ''),
	('00000000-0000-0000-0000-000000000000', '04a2b365-1ae6-4dff-af93-bf1739af46e8', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:38:42.539922+00', ''),
	('00000000-0000-0000-0000-000000000000', '4bff6830-8037-457e-9dbc-056c3a6dc05b', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:38:42.78432+00', ''),
	('00000000-0000-0000-0000-000000000000', '25089c47-c76c-4540-9f67-8e4c420e2328', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:38:42.906043+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3402548-0f08-4b19-80fa-a0924801837d', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:38:43.211369+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f4194917-4876-4e36-b675-6a18a3e2ae38', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:38:43.224635+00', ''),
	('00000000-0000-0000-0000-000000000000', '22ca696f-bb81-4c62-9591-cc843d8922d6', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:40:52.687281+00', ''),
	('00000000-0000-0000-0000-000000000000', '3cf0ec0e-e863-47b8-ba72-162421e6b0b3', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:40:52.93316+00', ''),
	('00000000-0000-0000-0000-000000000000', '3298f6c9-cc75-43dc-985a-d867902fcef9', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:40:52.980813+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e4352dea-af57-4787-bd29-88b761c38bd0', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:40:53.068927+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd65b165b-274a-4ce0-a3b3-61602bc76c86', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:40:53.194833+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd57970f-66e9-4db7-b154-8e4be7a93ad0', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:40:53.322802+00', ''),
	('00000000-0000-0000-0000-000000000000', '5f28acac-6701-415c-950f-36357139a77e', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:40:53.6074+00', ''),
	('00000000-0000-0000-0000-000000000000', '39b8f9a8-302a-4f50-862e-4bbba3fe205e', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-20 21:40:53.616174+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b24f0a5d-3fa1-47a2-9470-964407d67a2b', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-22 20:53:42.362171+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cd10cc2b-5e89-4913-ab70-ace0f9c1012d', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-23 23:06:23.219443+00', ''),
	('00000000-0000-0000-0000-000000000000', '111d533e-da22-46a0-848b-4e40279fba85', '{"action":"token_revoked","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-23 23:06:23.220057+00', ''),
	('00000000-0000-0000-0000-000000000000', '282168cd-33e5-452c-b39d-4b1778b67e5d', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-23 23:06:24.406923+00', ''),
	('00000000-0000-0000-0000-000000000000', '3a04c574-d54d-47ec-acb6-f15cc30e8c18', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-23 23:06:24.432136+00', ''),
	('00000000-0000-0000-0000-000000000000', '057dded1-e081-4aba-aa94-a7e1a0714fc7', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-23 23:06:24.774533+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bfa57b95-fa2f-4f67-a28a-f0040f5d3912', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-23 23:06:24.938001+00', ''),
	('00000000-0000-0000-0000-000000000000', '3ad2da51-33f3-46dd-90ba-e7b1ad75cc8e', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-23 23:06:25.056194+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9b2f105-cf2e-4fc6-ad09-15531eac4b20', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-23 23:06:28.007589+00', ''),
	('00000000-0000-0000-0000-000000000000', '838798b9-cba4-4a15-885b-e0bf3c400870', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-23 23:06:28.129795+00', ''),
	('00000000-0000-0000-0000-000000000000', '863edf13-cdf8-40f7-8b2a-db6be0683799', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-23 23:06:28.160646+00', ''),
	('00000000-0000-0000-0000-000000000000', '30792b73-82a7-4a89-9758-6a88402044ed', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-23 23:06:28.254749+00', ''),
	('00000000-0000-0000-0000-000000000000', '43e04439-fb59-4809-9ad4-2a2797303b8c', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-23 23:06:28.373066+00', ''),
	('00000000-0000-0000-0000-000000000000', '022b1e1f-f41e-4bc1-9ed0-708496152722', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-23 23:06:28.511314+00', ''),
	('00000000-0000-0000-0000-000000000000', 'efb4fac0-55aa-417d-936a-a378309b4c96', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 00:48:11.475367+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0326af9-a222-4601-9fe8-c55ab59e7741', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 00:48:12.63679+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d9e8732-22ec-4292-b602-95a9f5c92bc2', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 00:48:12.659221+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e35982c5-ef5b-4798-8672-963ea920d57c', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 00:48:12.90928+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c5e1d71-0f74-4ec0-be9f-dfe53cab610d', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 00:48:13.106501+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee409224-0b70-4cc5-8716-c32320da8626', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 00:48:13.399002+00', ''),
	('00000000-0000-0000-0000-000000000000', '8bb060d7-3b49-46c2-974c-4597bd68a646', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 00:48:13.663987+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8a18815-1da6-4c77-85ad-7a90bb195a1a', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 00:48:13.695606+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f5a0a205-d84e-4514-bc0f-1346cd67c7a3', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 00:48:17.386458+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e7857758-5400-4ea0-9ab5-b3d31b62743c', '{"action":"token_refreshed","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 00:48:17.620629+00', ''),
	('00000000-0000-0000-0000-000000000000', '4bd5fead-353a-48cf-b84b-10f1414d21ac', '{"action":"logout","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-03-24 00:48:17.672322+00', ''),
	('00000000-0000-0000-0000-000000000000', '61adcba9-63ca-43de-866e-a399d97cda51', '{"action":"login","actor_id":"e4d58d83-b44d-4830-a2f6-7b5f6b1d2778","actor_username":"shardaraf+16@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-03-24 00:48:40.502616+00', ''),
	('00000000-0000-0000-0000-000000000000', '353a2649-759a-46c9-baa2-03526533e4f2', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:10:43.576751+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ffd2377-6bfa-4833-9237-045da03d6fa0', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:10:44.812476+00', ''),
	('00000000-0000-0000-0000-000000000000', '3a767d6a-fa39-4943-807b-583b77d2565f', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:10:44.877051+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd902f86d-cc89-41d6-9a88-08f1fb2c662e', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:10:46.047383+00', ''),
	('00000000-0000-0000-0000-000000000000', '2928dffa-71e1-4ef1-87fd-2b3c570f836f', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:10:46.053775+00', ''),
	('00000000-0000-0000-0000-000000000000', '77312efa-751b-4b0c-bf9e-79489885146e', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:10:46.785003+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8b4fbb7-0615-4a72-a1d2-0e8ed87e2832', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:10:46.944532+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f4d7870-dc3c-4a07-8a76-6b52ed621c4b', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:10:46.961831+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f570d473-108b-4828-b4ef-02fa833423ff', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:10:47.073274+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d3e48a4-7e4e-4fd0-8314-15e446d23c38', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:10:47.194965+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e75be9b5-ca57-45f6-b348-7034595ba1d4', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:10:47.310467+00', ''),
	('00000000-0000-0000-0000-000000000000', '72afe311-3284-47f6-b689-62e2dfd681dd', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:10:59.914982+00', ''),
	('00000000-0000-0000-0000-000000000000', '9dda2474-25ee-45e7-9b60-60bda3aeaf91', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:00.188153+00', ''),
	('00000000-0000-0000-0000-000000000000', '5fb081a6-93ba-44b7-9390-cde7a5b8d612', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:00.201299+00', ''),
	('00000000-0000-0000-0000-000000000000', '0075975a-9daa-4fd0-8722-96b629a0a090', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:00.323101+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f89c9c52-77e3-4f3d-8dba-7cdca05f4a13', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:00.438761+00', ''),
	('00000000-0000-0000-0000-000000000000', '2503682c-07cc-44da-8820-352049028c0c', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:00.766968+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9bb3390-02ff-4488-b57b-166992e0b90e', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:00.933331+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e18b39d9-b2a0-4db9-adb6-a6adb9d6096d', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:12.391243+00', ''),
	('00000000-0000-0000-0000-000000000000', '69d806b2-988f-498d-98e1-7162fc8d2264', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:12.536396+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dca0be15-0d4e-4b8e-9b1d-33dba78ab530', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:12.639608+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cecc2408-8811-4edd-833b-fbfb43455c55', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:12.762618+00', ''),
	('00000000-0000-0000-0000-000000000000', '7d76272f-97e5-4c01-b3fe-2b56ef476e3e', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:12.885092+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1a6b643-372b-4bce-8952-3d8d1ed61695', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:14.140137+00', ''),
	('00000000-0000-0000-0000-000000000000', '136d2632-2f41-4114-b419-d2ad36b9bf1a', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:14.268823+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba50f6db-fa5f-4252-a5ce-e65f3ba03066', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:14.284641+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b006f020-bc10-4ee0-965d-0abbc3ebcd6f', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:14.374804+00', ''),
	('00000000-0000-0000-0000-000000000000', 'befe5773-d1af-4493-bd1f-a6d9e958185a', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:14.477536+00', ''),
	('00000000-0000-0000-0000-000000000000', '0f480738-a687-4023-969a-6c5ee7041f92', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:14.576184+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ef81a07-57a0-4c60-b687-545238d4c99c', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:15.791038+00', ''),
	('00000000-0000-0000-0000-000000000000', '57ca8c2c-1e8a-4212-8fc3-a668c4e04756', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:15.924285+00', ''),
	('00000000-0000-0000-0000-000000000000', '50bd3594-ff96-4999-b986-1508d82897f0', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:15.930736+00', ''),
	('00000000-0000-0000-0000-000000000000', '6dedf0cb-e2ad-4663-93f3-61f913c470c9', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:16.061459+00', ''),
	('00000000-0000-0000-0000-000000000000', '854be300-c926-47a8-a6cc-b6b1ea9139ff', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:16.198044+00', ''),
	('00000000-0000-0000-0000-000000000000', '528f6a1e-9190-46bb-a067-b648bf36c650', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:16.479589+00', ''),
	('00000000-0000-0000-0000-000000000000', '4bfd9c39-01f0-4fa4-b0d2-fbb37eb2cef1', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:16.503865+00', ''),
	('00000000-0000-0000-0000-000000000000', '4c93f169-6ef4-4e00-ae90-09e2a726ee23', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:20.939065+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f4495f10-5383-463b-80a9-cb16596d705c', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:21.076121+00', ''),
	('00000000-0000-0000-0000-000000000000', '957ef34c-efbc-410e-a27c-efeeaf3dcb2f', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:21.212164+00', ''),
	('00000000-0000-0000-0000-000000000000', '153cef98-161b-4453-bad1-72ad7a70526b', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:21.353389+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bec5e810-4ede-4b05-b2b6-ac6b35258828', '{"action":"token_refreshed","actor_id":"979657be-8309-4e23-8d52-1f97ec10fc9a","actor_username":"shardaraf+10@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-03-24 02:11:21.464474+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method") VALUES
	('555b938b-51e1-4791-a9d4-eaaf4c9ee56e', 'aace0f77-8098-4940-8faf-26a20f3d2eaa', 'b97b52a2-7e41-4187-b486-670b845e83b0', 's256', '23gIsTX9yJ_tk-VVWAbkWn9p20k2fwiEd8qz-OmD__M', 'email', '', '', '2024-03-17 01:48:58.235015+00', '2024-03-17 01:48:58.235015+00', 'email/signup'),
	('7c6ac83f-578f-47a0-9b84-5cc61f264a99', 'd42e81b7-5fe5-4227-8cf3-ec97a21453fe', 'aac01e57-034c-47c2-9bf2-d07dd19cfc00', 's256', '6Cn1WXZctIeS-cktXddanfglGKEcpvosmEjMU_qUIjE', 'email', '', '', '2024-03-17 01:49:43.590308+00', '2024-03-17 01:49:43.590308+00', 'email/signup'),
	('bbb11dac-2461-45fb-b1f0-47722634e94d', 'd42e81b7-5fe5-4227-8cf3-ec97a21453fe', 'ad27942e-ddd9-414c-aebf-cb07d9076e79', 's256', 'xqgD1hxikp1U8fcD2h8jGLuZwaHnZpHYP0Ug9ln-FHQ', 'email', '', '', '2024-03-17 02:03:29.813109+00', '2024-03-17 02:03:29.813109+00', 'email/signup'),
	('a1f521aa-2696-43b3-8ccb-88e3f40b3606', 'f0b83f78-daa2-40e8-b375-708bac3c8399', '359da454-c9b4-4f0d-b180-9694e12b1f7f', 's256', 'zpTWXMpUFlu8QmZGGnJH8wrJr4rqSdW8LIuDAdcPvi0', 'email', '', '', '2024-03-17 02:14:02.532144+00', '2024-03-17 02:14:02.532144+00', 'email/signup');


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'f0b83f78-daa2-40e8-b375-708bac3c8399', 'authenticated', 'authenticated', 'shardaraf+1@gmail.com', '$2a$10$RVi862WtXwhylI4FnK7odO.EYTXbqk9j2ShNtUcLM9Ig5v5w6cFMW', '2024-03-17 02:14:11.801625+00', NULL, '', '2024-03-17 02:14:02.532772+00', '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"sub": "f0b83f78-daa2-40e8-b375-708bac3c8399", "email": "shardaraf+1@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-03-17 02:14:02.52541+00', '2024-03-17 02:14:11.803391+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '0df60a88-e060-4e67-ae62-16e683cff696', 'authenticated', 'authenticated', 'shardaraf+5@gmail.com', '$2a$10$9lj1c0WjbQkHkqkbShCa4.EkQhZ4qINkhEc.lk2qzFWA9FKmc8JMK', '2024-03-17 03:12:41.520295+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-03-17 03:12:41.523127+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "0df60a88-e060-4e67-ae62-16e683cff696", "email": "shardaraf+5@gmail.com", "full_name": "Shar Dara", "email_verified": false, "phone_verified": false}', NULL, '2024-03-17 03:12:41.512376+00', '2024-03-17 03:13:26.080882+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'aace0f77-8098-4940-8faf-26a20f3d2eaa', 'authenticated', 'authenticated', 'shar@test.com', '$2a$10$4MLQ7EMNBf2xyZcIDw/C/ecLi/uQxH1CrcSpMKhY7.cgL6sgrJzOO', NULL, NULL, 'pkce_e898af97a57885a2423691a953cc3f752f0e088259663c2d4e1b7eec', '2024-03-17 01:48:58.236104+00', '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"sub": "aace0f77-8098-4940-8faf-26a20f3d2eaa", "email": "shar@test.com", "email_verified": false, "phone_verified": false}', NULL, '2024-03-17 01:48:58.219774+00', '2024-03-17 01:48:58.537954+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '4290f408-55b2-4282-85ab-b9c8735110f0', 'authenticated', 'authenticated', 'shardaraf+2@gmail.com', '$2a$10$ZSTBIYnaHVNBRedEa8RkcevwL2iRtYPTim/29xknqpP1hGe/fPdoG', '2024-03-17 02:23:36.018031+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-03-17 02:23:36.01257+00', '2024-03-17 02:23:36.018257+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'd42e81b7-5fe5-4227-8cf3-ec97a21453fe', 'authenticated', 'authenticated', 'shardaraf@gmail.com', '$2a$10$VDdY.UTEoxgr19u7F0oLluH7ZHzz98Ykty5Km9n.yiwEsGwybq0Vu', '2024-03-17 02:04:01.441576+00', NULL, '', '2024-03-17 02:03:29.814028+00', '', NULL, '', '', NULL, '2024-03-17 02:04:20.583518+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "d42e81b7-5fe5-4227-8cf3-ec97a21453fe", "email": "shardaraf@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-03-17 01:49:43.58527+00', '2024-03-17 02:04:20.587743+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'df5514b6-7544-42eb-ad9f-c09aaa63bd05', 'authenticated', 'authenticated', 'shardaraf+15@gmail.com', '$2a$10$bGbGLcwwicH.2zP1rtjfD.xjchHHwDhsUS5X4Hr0BB.C84Nkcrbcm', '2024-03-19 02:18:02.206162+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-03-19 02:18:02.208567+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "df5514b6-7544-42eb-ad9f-c09aaa63bd05", "email": "shardaraf+15@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-03-19 02:18:02.200553+00', '2024-03-19 14:13:13.849695+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '93eb3b92-54eb-4cef-a594-86d460495e90', 'authenticated', 'authenticated', 'shardaraf+4@gmail.com', '$2a$10$fDsOy8/sbNhGxQFRsg9ZR.c8EUBjkvMq/i5abLzKWYQ/HoGQyeNk.', '2024-03-17 02:40:39.108403+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-03-17 02:40:39.111032+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "93eb3b92-54eb-4cef-a594-86d460495e90", "email": "shardaraf+4@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-03-17 02:40:39.100179+00', '2024-03-17 02:40:39.113835+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'a441a82e-87bf-455a-aa3d-502c45f1a52e', 'authenticated', 'authenticated', 'shardaraf+6@gmail.com', '$2a$10$UrOfqVg.s8XI8uw8W/EmYuP9UM7gWuL7eHkITcmTcO0lOUttffcuu', '2024-03-17 04:03:07.203578+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-03-17 04:03:07.205863+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "a441a82e-87bf-455a-aa3d-502c45f1a52e", "email": "shardaraf+6@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-03-17 04:03:07.197667+00', '2024-03-17 04:03:07.207738+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '63681a40-d728-41b5-8530-e2046c0a0898', 'authenticated', 'authenticated', 'shardaraf+12@gmail.com', '$2a$10$GnRSAvZHkZoJ0FnNd6Tg9.wv3wnIre9q9G4eY8/f1IzidT9spOMPC', '2024-03-18 19:32:54.42777+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-03-18 19:32:54.430707+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "63681a40-d728-41b5-8530-e2046c0a0898", "email": "shardaraf+12@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-03-18 19:32:54.422589+00', '2024-03-19 01:10:04.068158+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '052646be-5760-44dc-b5f4-5af3e87b81e9', 'authenticated', 'authenticated', 'shardaraf+11@gmail.com', '$2a$10$oXzHo52Xk5eozzUa304ATubRHFwMGF6NTTQaKE3W7LEg7OrUWtz8q', '2024-03-18 02:32:28.969115+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-03-18 02:32:28.972313+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "052646be-5760-44dc-b5f4-5af3e87b81e9", "email": "shardaraf+11@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-03-18 02:32:28.961822+00', '2024-03-18 18:16:16.398245+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'deac59ce-1181-4188-bf6e-835df747a82e', 'authenticated', 'authenticated', 'shardaraf+14@gmail.com', '$2a$10$YZOiAoUYYPL9N4YeCBG0jeM1tGZKNmCAuKOGo68njbSjzycpTc1A6', '2024-03-19 01:16:59.423827+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-03-19 01:16:59.426159+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "deac59ce-1181-4188-bf6e-835df747a82e", "email": "shardaraf+14@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-03-19 01:16:59.418456+00', '2024-03-19 02:17:42.742143+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'e4d58d83-b44d-4830-a2f6-7b5f6b1d2778', 'authenticated', 'authenticated', 'shardaraf+16@gmail.com', '$2a$10$pzM.PePSzGXOppJZDLok3O/xuvaBwKVO3AuyXXVEA4wDhcNPLLhwW', '2024-03-19 14:14:14.011941+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-03-24 00:48:40.503381+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "e4d58d83-b44d-4830-a2f6-7b5f6b1d2778", "email": "shardaraf+16@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-03-19 14:14:14.005689+00', '2024-03-24 00:48:40.505886+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '8a4004ea-1d7d-4816-9972-9730b843d3d9', 'authenticated', 'authenticated', 'shardaraf+13@gmail.com', '$2a$10$7Gd.VhdvFUWr6Rx/TBMpoOWrMgl7CCHEzLsH1VQVlm2ZegLzCGqGS', '2024-03-19 01:10:21.414568+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-03-19 01:10:21.416666+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "8a4004ea-1d7d-4816-9972-9730b843d3d9", "email": "shardaraf+13@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-03-19 01:10:21.409255+00', '2024-03-19 01:10:21.41833+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '979657be-8309-4e23-8d52-1f97ec10fc9a', 'authenticated', 'authenticated', 'shardaraf+10@gmail.com', '$2a$10$pmSbiH.D5k9lwLyvE6xg9eeeVRxK4ZF9l43k/mZdseS/ZopafBfVK', '2024-03-17 04:29:36.271721+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-03-17 04:29:36.276446+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "979657be-8309-4e23-8d52-1f97ec10fc9a", "email": "shardaraf+10@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-03-17 04:29:36.265775+00', '2024-03-23 23:06:23.225567+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('aace0f77-8098-4940-8faf-26a20f3d2eaa', 'aace0f77-8098-4940-8faf-26a20f3d2eaa', '{"sub": "aace0f77-8098-4940-8faf-26a20f3d2eaa", "email": "shar@test.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-17 01:48:58.229759+00', '2024-03-17 01:48:58.229818+00', '2024-03-17 01:48:58.229818+00', 'd5e3de3a-cb5c-4366-87bf-394a41396b71'),
	('d42e81b7-5fe5-4227-8cf3-ec97a21453fe', 'd42e81b7-5fe5-4227-8cf3-ec97a21453fe', '{"sub": "d42e81b7-5fe5-4227-8cf3-ec97a21453fe", "email": "shardaraf@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-17 01:49:43.587591+00', '2024-03-17 01:49:43.587637+00', '2024-03-17 01:49:43.587637+00', '74bd354b-cc70-4b15-a1dc-60967f13797e'),
	('f0b83f78-daa2-40e8-b375-708bac3c8399', 'f0b83f78-daa2-40e8-b375-708bac3c8399', '{"sub": "f0b83f78-daa2-40e8-b375-708bac3c8399", "email": "shardaraf+1@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-17 02:14:02.529038+00', '2024-03-17 02:14:02.529093+00', '2024-03-17 02:14:02.529093+00', 'bf77afa4-f32e-4c35-bbdd-33738b805823'),
	('4290f408-55b2-4282-85ab-b9c8735110f0', '4290f408-55b2-4282-85ab-b9c8735110f0', '{"sub": "4290f408-55b2-4282-85ab-b9c8735110f0", "email": "shardaraf+2@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-17 02:23:36.015281+00', '2024-03-17 02:23:36.015348+00', '2024-03-17 02:23:36.015348+00', '59d70528-3bbd-4fc6-bf5f-d734044ddb1e'),
	('93eb3b92-54eb-4cef-a594-86d460495e90', '93eb3b92-54eb-4cef-a594-86d460495e90', '{"sub": "93eb3b92-54eb-4cef-a594-86d460495e90", "email": "shardaraf+4@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-17 02:40:39.104812+00', '2024-03-17 02:40:39.104866+00', '2024-03-17 02:40:39.104866+00', 'ff60702e-9ae3-434f-a8aa-a75171500591'),
	('0df60a88-e060-4e67-ae62-16e683cff696', '0df60a88-e060-4e67-ae62-16e683cff696', '{"sub": "0df60a88-e060-4e67-ae62-16e683cff696", "email": "shardaraf+5@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-17 03:12:41.516823+00', '2024-03-17 03:12:41.516887+00', '2024-03-17 03:12:41.516887+00', '0dfd325e-a120-432d-8d90-1204de907047'),
	('a441a82e-87bf-455a-aa3d-502c45f1a52e', 'a441a82e-87bf-455a-aa3d-502c45f1a52e', '{"sub": "a441a82e-87bf-455a-aa3d-502c45f1a52e", "email": "shardaraf+6@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-17 04:03:07.201061+00', '2024-03-17 04:03:07.201109+00', '2024-03-17 04:03:07.201109+00', '89ad924b-a2b1-44e4-9b9e-6cdc99ff52fb'),
	('979657be-8309-4e23-8d52-1f97ec10fc9a', '979657be-8309-4e23-8d52-1f97ec10fc9a', '{"sub": "979657be-8309-4e23-8d52-1f97ec10fc9a", "email": "shardaraf+10@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-17 04:29:36.268742+00', '2024-03-17 04:29:36.268809+00', '2024-03-17 04:29:36.268809+00', '8b095387-3bf4-4022-8094-08a89ced2e63'),
	('052646be-5760-44dc-b5f4-5af3e87b81e9', '052646be-5760-44dc-b5f4-5af3e87b81e9', '{"sub": "052646be-5760-44dc-b5f4-5af3e87b81e9", "email": "shardaraf+11@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-18 02:32:28.966212+00', '2024-03-18 02:32:28.966259+00', '2024-03-18 02:32:28.966259+00', 'd1f194b8-94a3-4c31-8c98-aa3f4d3c3574'),
	('63681a40-d728-41b5-8530-e2046c0a0898', '63681a40-d728-41b5-8530-e2046c0a0898', '{"sub": "63681a40-d728-41b5-8530-e2046c0a0898", "email": "shardaraf+12@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-18 19:32:54.425195+00', '2024-03-18 19:32:54.425245+00', '2024-03-18 19:32:54.425245+00', '1f5ec66a-8ddb-4007-9a2c-a985ec10b4ea'),
	('8a4004ea-1d7d-4816-9972-9730b843d3d9', '8a4004ea-1d7d-4816-9972-9730b843d3d9', '{"sub": "8a4004ea-1d7d-4816-9972-9730b843d3d9", "email": "shardaraf+13@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-19 01:10:21.411933+00', '2024-03-19 01:10:21.411982+00', '2024-03-19 01:10:21.411982+00', 'f938f4d3-3282-4dfa-ab19-c6152f7a6b9d'),
	('deac59ce-1181-4188-bf6e-835df747a82e', 'deac59ce-1181-4188-bf6e-835df747a82e', '{"sub": "deac59ce-1181-4188-bf6e-835df747a82e", "email": "shardaraf+14@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-19 01:16:59.421041+00', '2024-03-19 01:16:59.421099+00', '2024-03-19 01:16:59.421099+00', 'f59fd0bc-cbfe-47d7-9c60-46462642ef93'),
	('df5514b6-7544-42eb-ad9f-c09aaa63bd05', 'df5514b6-7544-42eb-ad9f-c09aaa63bd05', '{"sub": "df5514b6-7544-42eb-ad9f-c09aaa63bd05", "email": "shardaraf+15@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-19 02:18:02.203413+00', '2024-03-19 02:18:02.203459+00', '2024-03-19 02:18:02.203459+00', '5a219dec-765b-4601-b684-c18e7f227054'),
	('e4d58d83-b44d-4830-a2f6-7b5f6b1d2778', 'e4d58d83-b44d-4830-a2f6-7b5f6b1d2778', '{"sub": "e4d58d83-b44d-4830-a2f6-7b5f6b1d2778", "email": "shardaraf+16@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-03-19 14:14:14.008816+00', '2024-03-19 14:14:14.008876+00', '2024-03-19 14:14:14.008876+00', 'c57dec15-138d-440f-87ee-54ed3952a83e');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('1a41c205-9501-4ad5-8814-1382d5250dfa', 'e4d58d83-b44d-4830-a2f6-7b5f6b1d2778', '2024-03-24 00:48:40.503458+00', '2024-03-24 00:48:40.503458+00', NULL, 'aal1', NULL, NULL, 'node', '54.145.212.232', NULL),
	('ddf021fb-878b-4e5f-9597-977380dbafb5', '979657be-8309-4e23-8d52-1f97ec10fc9a', '2024-03-17 04:29:36.276529+00', '2024-03-24 02:11:21.466049+00', NULL, 'aal1', NULL, '2024-03-24 02:11:21.46597', 'node', '3.82.105.58', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('ddf021fb-878b-4e5f-9597-977380dbafb5', '2024-03-17 04:29:36.278552+00', '2024-03-17 04:29:36.278552+00', 'password', 'f10f7cb7-0d79-4c67-b939-6aff9f3a86d0'),
	('1a41c205-9501-4ad5-8814-1382d5250dfa', '2024-03-24 00:48:40.506233+00', '2024-03-24 00:48:40.506233+00', 'password', 'ae6a2adc-8385-4840-979a-efcead43054b');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 5, 'tCamdhHK5obMHXhI-4OfTw', '979657be-8309-4e23-8d52-1f97ec10fc9a', true, '2024-03-17 04:29:36.277309+00', '2024-03-23 23:06:23.220552+00', NULL, 'ddf021fb-878b-4e5f-9597-977380dbafb5'),
	('00000000-0000-0000-0000-000000000000', 18, 'QG8KXZ7U06tkJit7WbaEjQ', '979657be-8309-4e23-8d52-1f97ec10fc9a', false, '2024-03-23 23:06:23.224318+00', '2024-03-23 23:06:23.224318+00', 'tCamdhHK5obMHXhI-4OfTw', 'ddf021fb-878b-4e5f-9597-977380dbafb5'),
	('00000000-0000-0000-0000-000000000000', 19, 'vDaZsH_6c2O1WWBiVs60eA', 'e4d58d83-b44d-4830-a2f6-7b5f6b1d2778', false, '2024-03-24 00:48:40.504817+00', '2024-03-24 00:48:40.504817+00', NULL, '1a41c205-9501-4ad5-8814-1382d5250dfa');


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
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."customers" ("id", "stripe_customer_id", "access") VALUES
	('93eb3b92-54eb-4cef-a594-86d460495e90', 'cus_PkfQpWqUV5DfDP', NULL),
	('0df60a88-e060-4e67-ae62-16e683cff696', 'cus_PkfUDJBI49FwQa', NULL),
	('979657be-8309-4e23-8d52-1f97ec10fc9a', 'cus_PkgjZ1pGneJPiX', NULL),
	('052646be-5760-44dc-b5f4-5af3e87b81e9', 'cus_Pl24NT2dQaP7II', NULL),
	('63681a40-d728-41b5-8530-e2046c0a0898', 'cus_PlIW44zHJEe23J', '{"{\"id\": \"ent_test_61Q5B9rFSB9jiR6co41KQnrcgpBBRF6W\", \"object\": \"customer_entitlement\", \"feature\": \"feat_test_61Q4tCsYXWlYUFQ2B41KQnrcgpBBR1BA\", \"livemode\": false, \"lookup_key\": \"templates\"}","{\"id\": \"ent_test_61Q5B9r7p1ub6rb8141KQnrcgpBBR6Ce\", \"object\": \"customer_entitlement\", \"feature\": \"feat_test_61Q4tCaaI9IqF4klA41KQnrcgpBBRLD6\", \"livemode\": false, \"lookup_key\": \"editor\"}"}'),
	('8a4004ea-1d7d-4816-9972-9730b843d3d9', 'cus_PlNyw90ryCiZwR', '{"{\"id\": \"ent_test_61Q5FB03QtzyYj0tD41KQnrcgpBBREES\", \"object\": \"customer_entitlement\", \"feature\": \"feat_test_61Q4tCaaI9IqF4klA41KQnrcgpBBRLD6\", \"livemode\": false, \"lookup_key\": \"editor\"}"}'),
	('deac59ce-1181-4188-bf6e-835df747a82e', 'cus_PlO4po6dCP0Awh', '{"{\"id\": \"ent_test_61Q5FGstCl988pAby41KQnrcgpBBRNFY\", \"object\": \"customer_entitlement\", \"feature\": \"feat_test_61Q4tCaaI9IqF4klA41KQnrcgpBBRLD6\", \"livemode\": false, \"lookup_key\": \"editor\"}"}'),
	('df5514b6-7544-42eb-ad9f-c09aaa63bd05', 'cus_PlP3atLMYbdwNq', '{"{\"id\": \"ent_test_61Q5GEUUD8A4BnqJb41KQnrcgpBBRKDI\", \"object\": \"customer_entitlement\", \"feature\": \"feat_test_61Q4tCaaI9IqF4klA41KQnrcgpBBRLD6\", \"livemode\": false, \"lookup_key\": \"editor\"}"}'),
	('e4d58d83-b44d-4830-a2f6-7b5f6b1d2778', 'cus_PlabujNYD7eQVL', '{"{\"id\": \"ent_test_61Q5RPVib3FeA1Q5l41KQnrcgpBBRAsa\", \"object\": \"customer_entitlement\", \"feature\": \"feat_test_61Q4tCaaI9IqF4klA41KQnrcgpBBRLD6\", \"livemode\": false, \"lookup_key\": \"editor\"}"}');


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."products" ("id", "active", "name", "description", "image", "metadata") VALUES
	('prod_PkfS6l5ryT31uZ', true, 'Premium', NULL, NULL, '{}'),
	('prod_PmuP9WymdZXOJ3', true, 'Advanced', NULL, NULL, '{}'),
	('prod_Pl0zyVrhBWGci8', true, 'Basic', NULL, NULL, '{}');


--
-- Data for Name: prices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."prices" ("id", "product_id", "active", "description", "unit_amount", "currency", "type", "interval", "interval_count", "trial_period_days", "metadata") VALUES
	('price_1OvA7iKQnrcgpBBRRMPFT7q9', 'prod_PkfS6l5ryT31uZ', true, NULL, 10000, 'usd', 'recurring', 'month', 1, 0, NULL),
	('price_1OvUxRKQnrcgpBBRD1jxJ00f', 'prod_Pl0zyVrhBWGci8', true, NULL, 0, 'usd', 'recurring', 'month', 1, 0, NULL),
	('price_1OxKaeKQnrcgpBBRE3TK2VMT', 'prod_PmuP9WymdZXOJ3', true, NULL, 20000, 'usd', 'recurring', 'month', 1, 0, NULL);


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."subscriptions" ("id", "user_id", "status", "metadata", "price_id", "quantity", "cancel_at_period_end", "created", "current_period_start", "current_period_end", "ended_at", "cancel_at", "canceled_at", "trial_start", "trial_end") VALUES
	('sub_1OvADfKQnrcgpBBRk5fl50E8', '0df60a88-e060-4e67-ae62-16e683cff696', 'active', '{}', 'price_1OvA7iKQnrcgpBBRRMPFT7q9', 1, false, '2024-03-17 03:17:07+00', '2024-03-17 03:17:07+00', '2024-04-17 03:17:07+00', NULL, NULL, NULL, NULL, NULL),
	('sub_1OvACwKQnrcgpBBRHRw2c82P', '0df60a88-e060-4e67-ae62-16e683cff696', 'canceled', '{}', 'price_1OvA7iKQnrcgpBBRRMPFT7q9', 1, false, '2024-03-17 03:16:22+00', '2024-03-17 03:16:22+00', '2024-04-17 03:16:22+00', '2024-03-17 03:17:32+00', NULL, '2024-03-17 03:17:32+00', NULL, NULL),
	('sub_1OvW01KQnrcgpBBRuZxwpHsS', '052646be-5760-44dc-b5f4-5af3e87b81e9', 'active', '{}', 'price_1OvUxRKQnrcgpBBRD1jxJ00f', 1, false, '2024-03-18 02:32:29+00', '2024-03-18 02:32:29+00', '2024-04-18 02:32:29+00', NULL, NULL, NULL, NULL, NULL),
	('sub_1Ovn0EKQnrcgpBBREXuTpIOZ', '63681a40-d728-41b5-8530-e2046c0a0898', 'active', '{}', 'price_1OvA7iKQnrcgpBBRRMPFT7q9', 1, false, '2024-03-18 20:41:50+00', '2024-03-18 20:41:50+00', '2024-04-18 20:41:50+00', NULL, NULL, NULL, NULL, NULL),
	('sub_1OvlvXKQnrcgpBBR1Se7Kfsc', '63681a40-d728-41b5-8530-e2046c0a0898', 'canceled', '{}', 'price_1OvUxRKQnrcgpBBRD1jxJ00f', 1, false, '2024-03-18 19:32:55+00', '2024-03-18 19:32:55+00', '2024-04-18 19:32:55+00', '2024-03-18 20:53:07+00', NULL, '2024-03-18 20:52:14+00', NULL, NULL),
	('sub_1OvrC6KQnrcgpBBReis9bwS2', '8a4004ea-1d7d-4816-9972-9730b843d3d9', 'active', '{}', 'price_1OvUxRKQnrcgpBBRD1jxJ00f', 1, false, '2024-03-19 01:10:22+00', '2024-03-19 01:10:22+00', '2024-04-19 01:10:22+00', NULL, NULL, NULL, NULL, NULL),
	('sub_1OvrIWKQnrcgpBBRbMO1uyPh', 'deac59ce-1181-4188-bf6e-835df747a82e', 'active', '{}', 'price_1OvUxRKQnrcgpBBRD1jxJ00f', 1, false, '2024-03-19 01:17:00+00', '2024-03-19 01:17:00+00', '2024-04-19 01:17:00+00', NULL, NULL, NULL, NULL, NULL),
	('sub_1OvsFaKQnrcgpBBR3ps3OZTf', 'df5514b6-7544-42eb-ad9f-c09aaa63bd05', 'active', '{}', 'price_1OvUxRKQnrcgpBBRD1jxJ00f', 1, false, '2024-03-19 02:18:02+00', '2024-03-19 02:18:02+00', '2024-04-19 02:18:02+00', NULL, NULL, NULL, NULL, NULL),
	('sub_1Ow3QgKQnrcgpBBRojKHHF5A', 'e4d58d83-b44d-4830-a2f6-7b5f6b1d2778', 'active', '{}', 'price_1OvUxRKQnrcgpBBRD1jxJ00f', 1, false, '2024-03-19 14:14:14+00', '2024-03-19 14:14:14+00', '2024-04-19 14:14:14+00', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."users" ("id", "full_name", "avatar_url", "billing_address", "payment_method") VALUES
	('93eb3b92-54eb-4cef-a594-86d460495e90', NULL, NULL, NULL, NULL),
	('0df60a88-e060-4e67-ae62-16e683cff696', NULL, NULL, NULL, NULL),
	('a441a82e-87bf-455a-aa3d-502c45f1a52e', NULL, NULL, NULL, NULL),
	('979657be-8309-4e23-8d52-1f97ec10fc9a', NULL, NULL, NULL, NULL),
	('63681a40-d728-41b5-8530-e2046c0a0898', NULL, NULL, NULL, NULL),
	('8a4004ea-1d7d-4816-9972-9730b843d3d9', NULL, NULL, NULL, NULL),
	('deac59ce-1181-4188-bf6e-835df747a82e', NULL, NULL, NULL, NULL),
	('df5514b6-7544-42eb-ad9f-c09aaa63bd05', NULL, NULL, NULL, NULL),
	('e4d58d83-b44d-4830-a2f6-7b5f6b1d2778', NULL, NULL, NULL, NULL),
	('d42e81b7-5fe5-4227-8cf3-ec97a21453fe', NULL, NULL, NULL, NULL),
	('f0b83f78-daa2-40e8-b375-708bac3c8399', NULL, NULL, NULL, NULL),
	('aace0f77-8098-4940-8faf-26a20f3d2eaa', NULL, NULL, NULL, NULL);


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 19, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
