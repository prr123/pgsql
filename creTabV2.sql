create schema if not exists ndocstore;
create type docstore.imgtyp as enum ('jpg','png','bmp','gif','tiff','eps','raw');
create table if not exists docstore.buckets (
uuid uuid,
name varchar(20),
owner varchar(20)
);
create table if not exists docstore.objects (
id uuid,
bucket uuid,
name varchar(20),
createdOn timestamp,
uploadedBy varchar(25),
mime varchar(30),
supp json
);
