CREATE TABLE schema_info (version integer);
CREATE TABLE stories ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255) DEFAULT NULL, "link" varchar(255) DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL, "user_id" integer);
CREATE TABLE users ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "login" varchar(255) DEFAULT NULL, "password" varchar(255) DEFAULT NULL, "name" varchar(255) DEFAULT NULL, "email" varchar(255) DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE votes ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "story_id" integer DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL, "user_id" integer);
INSERT INTO schema_info (version) VALUES (3)