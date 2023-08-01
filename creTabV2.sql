create schema if not exists docstore;
DO $$ BEGIN
create type docstore.imgtyp as enum ('jpg','png','bmp','gif','tiff','eps','raw');
Exception
	when duplicate_object then null;
END $$;

create table if not exists docstore.buckets (
buckId uuid,
id serial,
name varchar(20),
owner varchar(20)
);
create table if not exists docstore.objects (
objId uuid,
id serial,
name varchar(20),
createdOn timestamp,
uploadedBy varchar(25),
mime varchar(30),
supp json
);
create table if not exists docstore.users (
userId serial,
email varchar(25) unique,
createdOn timestamp,
priv varchar(25) []
);
