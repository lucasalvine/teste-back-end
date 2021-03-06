PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20190523160106');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2019-05-23 16:06:52.615349','2019-05-23 16:06:52.615349');
CREATE TABLE IF NOT EXISTS "contacts" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO contacts VALUES(5,'das','das','2019-05-26 03:12:31.271031','2019-05-26 03:12:31.271031');
INSERT INTO contacts VALUES(6,'','','2019-05-26 03:19:31.803037','2019-05-26 03:19:31.803037');
INSERT INTO contacts VALUES(7,'','','2019-05-26 03:20:55.677763','2019-05-26 03:20:55.677763');
INSERT INTO contacts VALUES(8,'çicas','açlsd','2019-05-26 03:25:50.556207','2019-05-26 03:25:50.556207');
INSERT INTO contacts VALUES(9,'lucas cunha','lucas@hsia.com','2019-05-26 23:24:22.356761','2019-05-26 23:24:22.356761');
INSERT INTO contacts VALUES(10,'asas','lucas@hsia.com','2019-05-26 23:27:48.801140','2019-05-26 23:27:48.801140');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('contacts',10);
COMMIT;
