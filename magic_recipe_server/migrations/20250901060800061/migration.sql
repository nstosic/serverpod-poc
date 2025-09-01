BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "public_event" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "photoUrl" text,
    "startDate" timestamp without time zone NOT NULL,
    "endDate" timestamp without time zone NOT NULL,
    "attendees" json NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "email" text NOT NULL,
    "photoUrl" text
);


--
-- MIGRATION VERSION FOR magic_recipe
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('magic_recipe', '20250901060800061', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250901060800061', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
