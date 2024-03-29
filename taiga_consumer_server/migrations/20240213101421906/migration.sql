BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "figma_action" (
    "id" serial PRIMARY KEY,
    "action" text NOT NULL,
    "huDataId" integer NOT NULL,
    "isActive" boolean NOT NULL,
    "creationDate" timestamp without time zone NOT NULL,
    "inactiveSince" timestamp without time zone,
    "projectId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "figma_day_counter" (
    "id" serial PRIMARY KEY,
    "preparation" text NOT NULL,
    "development" text NOT NULL,
    "approbation" text NOT NULL,
    "finalApprobation" text NOT NULL,
    "quality" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "figma_hu_data" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "refNum" integer NOT NULL,
    "status" text NOT NULL,
    "readyForDev" boolean NOT NULL,
    "sprintId" integer,
    "statusCardId" integer,
    "projectId" integer NOT NULL,
    "lastStatusUpdate" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "figma_sprint_data" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "taigaId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "figma_status_card" (
    "id" serial PRIMARY KEY,
    "approvedId" integer,
    "developmentId" integer,
    "internalTestId" integer,
    "externalTestId" integer,
    "amountOfDaysId" integer
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "figma_status_card_details" (
    "id" serial PRIMARY KEY,
    "byUserId" integer,
    "date" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "taiga_job" (
    "id" serial PRIMARY KEY,
    "type" text NOT NULL,
    "title" text NOT NULL,
    "description" text NOT NULL,
    "status" text NOT NULL,
    "taigaRefNumber" integer NOT NULL,
    "projectId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "taiga_job_commentaries" (
    "id" serial PRIMARY KEY,
    "jobIdId" integer NOT NULL,
    "details" text NOT NULL,
    "dateTime" timestamp without time zone NOT NULL,
    "userId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "taiga_job_updates" (
    "id" serial PRIMARY KEY,
    "jobId" integer NOT NULL,
    "type" text NOT NULL,
    "status" text NOT NULL,
    "details" text NOT NULL,
    "dateTimeEpoch" integer NOT NULL,
    "commentId" integer
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "taiga_project" (
    "id" serial PRIMARY KEY,
    "title" text NOT NULL,
    "taigaId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "users" (
    "id" serial PRIMARY KEY,
    "username" text NOT NULL,
    "userAvatar" text,
    "fullName" text NOT NULL,
    "taigaId" integer,
    "gitHubId" integer,
    "gitLabId" integer
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_key" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "hash" text NOT NULL,
    "scopeNames" json NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_auth_key_userId_idx" ON "serverpod_auth_key" USING btree ("userId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "addedTime" timestamp without time zone NOT NULL,
    "expiration" timestamp without time zone,
    "byteData" bytea NOT NULL,
    "verified" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_path_idx" ON "serverpod_cloud_storage" USING btree ("storageId", "path");
CREATE INDEX "serverpod_cloud_storage_expiration" ON "serverpod_cloud_storage" USING btree ("expiration");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_future_call" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "serializedObject" text,
    "serverId" text NOT NULL,
    "identifier" text
);

-- Indexes
CREATE INDEX "serverpod_future_call_time_idx" ON "serverpod_future_call" USING btree ("time");
CREATE INDEX "serverpod_future_call_serverId_idx" ON "serverpod_future_call" USING btree ("serverId");
CREATE INDEX "serverpod_future_call_identifier_idx" ON "serverpod_future_call" USING btree ("identifier");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" integer NOT NULL,
    "closing" integer NOT NULL,
    "idle" integer NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_health_metric" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" integer NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_message_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "serverId" text NOT NULL,
    "messageId" integer NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_method" (
    "id" serial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_migrations" (
    "id" serial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_query_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" integer,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" serial PRIMARY KEY,
    "number" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" serial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_session_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" integer,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" integer,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "figma_action"
    ADD CONSTRAINT "figma_action_fk_0"
    FOREIGN KEY("huDataId")
    REFERENCES "figma_hu_data"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "figma_action"
    ADD CONSTRAINT "figma_action_fk_1"
    FOREIGN KEY("projectId")
    REFERENCES "taiga_project"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "figma_hu_data"
    ADD CONSTRAINT "figma_hu_data_fk_0"
    FOREIGN KEY("sprintId")
    REFERENCES "figma_sprint_data"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "figma_hu_data"
    ADD CONSTRAINT "figma_hu_data_fk_1"
    FOREIGN KEY("statusCardId")
    REFERENCES "figma_status_card"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "figma_hu_data"
    ADD CONSTRAINT "figma_hu_data_fk_2"
    FOREIGN KEY("projectId")
    REFERENCES "taiga_project"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "figma_status_card"
    ADD CONSTRAINT "figma_status_card_fk_0"
    FOREIGN KEY("approvedId")
    REFERENCES "figma_status_card_details"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "figma_status_card"
    ADD CONSTRAINT "figma_status_card_fk_1"
    FOREIGN KEY("developmentId")
    REFERENCES "figma_status_card_details"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "figma_status_card"
    ADD CONSTRAINT "figma_status_card_fk_2"
    FOREIGN KEY("internalTestId")
    REFERENCES "figma_status_card_details"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "figma_status_card"
    ADD CONSTRAINT "figma_status_card_fk_3"
    FOREIGN KEY("externalTestId")
    REFERENCES "figma_status_card_details"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "figma_status_card"
    ADD CONSTRAINT "figma_status_card_fk_4"
    FOREIGN KEY("amountOfDaysId")
    REFERENCES "figma_day_counter"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "figma_status_card_details"
    ADD CONSTRAINT "figma_status_card_details_fk_0"
    FOREIGN KEY("byUserId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "taiga_job"
    ADD CONSTRAINT "taiga_job_fk_0"
    FOREIGN KEY("projectId")
    REFERENCES "taiga_project"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "taiga_job_commentaries"
    ADD CONSTRAINT "taiga_job_commentaries_fk_0"
    FOREIGN KEY("jobIdId")
    REFERENCES "taiga_job"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "taiga_job_commentaries"
    ADD CONSTRAINT "taiga_job_commentaries_fk_1"
    FOREIGN KEY("userId")
    REFERENCES "users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "taiga_job_updates"
    ADD CONSTRAINT "taiga_job_updates_fk_0"
    FOREIGN KEY("jobId")
    REFERENCES "taiga_job"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "taiga_job_updates"
    ADD CONSTRAINT "taiga_job_updates_fk_1"
    FOREIGN KEY("commentId")
    REFERENCES "taiga_job_commentaries"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_query_log"
    ADD CONSTRAINT "serverpod_query_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR taiga_consumer
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('taiga_consumer', '20240213101421906', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240213101421906', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
