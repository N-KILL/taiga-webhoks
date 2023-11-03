--
-- Class TaigaConsumer as table taiga_consumer
--

CREATE TABLE "taiga_consumer" (
  "id" serial,
  "data" json NOT NULL
);

ALTER TABLE ONLY "taiga_consumer"
  ADD CONSTRAINT taiga_consumer_pkey PRIMARY KEY (id);


