BEGIN;

--
-- Class TaigaJob as table taiga_job
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
-- Class TaigaJobCommentaries as table taiga_job_commentaries
--
CREATE TABLE "taiga_job_commentaries" (
    "id" serial PRIMARY KEY,
    "jobIdId" integer NOT NULL,
    "details" text NOT NULL,
    "dateTime" timestamp without time zone NOT NULL,
    "userId" integer
);

--
-- Class TaigaJobUpdates as table taiga_job_updates
--
CREATE TABLE "taiga_job_updates" (
    "id" serial PRIMARY KEY,
    "jobId" integer NOT NULL,
    "type" text NOT NULL,
    "status" text NOT NULL,
    "details" text NOT NULL,
    "dateTime" integer NOT NULL,
    "commentId" integer
);

--
-- Class TaigaProject as table taiga_project
--
CREATE TABLE "taiga_project" (
    "id" serial PRIMARY KEY,
    "title" text NOT NULL,
    "taigaId" integer NOT NULL
);

--
-- Class User as table user
--
CREATE TABLE "user" (
    "id" serial PRIMARY KEY,
    "username" text NOT NULL,
    "taigaId" integer NOT NULL,
    "gitHubId" integer NOT NULL,
    "gitLabId" integer NOT NULL
);

--
-- Class AuthKey as table serverpod_auth_key
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
-- Class CloudStorageEntry as table serverpod_cloud_storage
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
-- Class CloudStorageDirectUploadEntry as table serverpod_cloud_storage_direct_upload
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
-- Class FutureCallEntry as table serverpod_future_call
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
-- Class ServerHealthConnectionInfo as table serverpod_health_connection_info
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
-- Class ServerHealthMetric as table serverpod_health_metric
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
-- Class LogEntry as table serverpod_log
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
-- Class MessageLogEntry as table serverpod_message_log
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
-- Class MethodInfo as table serverpod_method
--
CREATE TABLE "serverpod_method" (
    "id" serial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- Class DatabaseMigrationVersion as table serverpod_migrations
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
-- Class QueryLogEntry as table serverpod_query_log
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
-- Class ReadWriteTestEntry as table serverpod_readwrite_test
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" serial PRIMARY KEY,
    "number" integer NOT NULL
);

--
-- Class RuntimeSettings as table serverpod_runtime_settings
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" serial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- Class SessionLogEntry as table serverpod_session_log
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
-- Foreign relations for "taiga_job" table
--
ALTER TABLE ONLY "taiga_job"
    ADD CONSTRAINT "taiga_job_fk_0"
    FOREIGN KEY("projectId")
    REFERENCES "taiga_project"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "taiga_job_commentaries" table
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
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "taiga_job_updates" table
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
-- Foreign relations for "serverpod_log" table
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_message_log" table
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_query_log" table
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
    VALUES ('taiga_consumer', '20240124143423839', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240124143423839', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
