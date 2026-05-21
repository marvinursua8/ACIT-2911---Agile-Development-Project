drop extension if exists "pg_net";

create sequence "public"."connectiontest_id_seq";

create sequence "public"."users_id_seq";


  create table "public"."connectiontest" (
    "id" integer not null default nextval('public.connectiontest_id_seq'::regclass),
    "status" character varying(255) not null
      );



  create table "public"."users" (
    "id" integer not null default nextval('public.users_id_seq'::regclass),
    "first_name" character varying(20) not null,
    "last_name" character varying(20) not null,
    "email" character varying(30) not null,
    "phone_number" character varying(12) not null
      );


alter table "public"."animals" alter column "breed" set data type text using "breed"::text;

alter table "public"."animals" alter column "color" set data type text using "color"::text;

alter table "public"."animals" alter column "gender" set data type text using "gender"::text;

alter table "public"."animals" alter column "name" set data type text using "name"::text;

alter table "public"."animals" alter column "species" set data type text using "species"::text;

alter table "public"."contacts" alter column "animal" set data type text using "animal"::text;

alter table "public"."contacts" alter column "email" set data type text using "email"::text;

alter table "public"."contacts" alter column "message" set data type text using "message"::text;

alter table "public"."contacts" alter column "name" set data type text using "name"::text;

alter table "public"."contacts" alter column "phone" set data type text using "phone"::text;

alter sequence "public"."connectiontest_id_seq" owned by "public"."connectiontest"."id";

alter sequence "public"."users_id_seq" owned by "public"."users"."id";

CREATE UNIQUE INDEX connectiontest_pkey ON public.connectiontest USING btree (id);

CREATE UNIQUE INDEX users_pkey ON public.users USING btree (id);

alter table "public"."connectiontest" add constraint "connectiontest_pkey" PRIMARY KEY using index "connectiontest_pkey";

alter table "public"."users" add constraint "users_pkey" PRIMARY KEY using index "users_pkey";

grant delete on table "public"."connectiontest" to "anon";

grant insert on table "public"."connectiontest" to "anon";

grant references on table "public"."connectiontest" to "anon";

grant select on table "public"."connectiontest" to "anon";

grant trigger on table "public"."connectiontest" to "anon";

grant truncate on table "public"."connectiontest" to "anon";

grant update on table "public"."connectiontest" to "anon";

grant delete on table "public"."connectiontest" to "authenticated";

grant insert on table "public"."connectiontest" to "authenticated";

grant references on table "public"."connectiontest" to "authenticated";

grant select on table "public"."connectiontest" to "authenticated";

grant trigger on table "public"."connectiontest" to "authenticated";

grant truncate on table "public"."connectiontest" to "authenticated";

grant update on table "public"."connectiontest" to "authenticated";

grant delete on table "public"."connectiontest" to "service_role";

grant insert on table "public"."connectiontest" to "service_role";

grant references on table "public"."connectiontest" to "service_role";

grant select on table "public"."connectiontest" to "service_role";

grant trigger on table "public"."connectiontest" to "service_role";

grant truncate on table "public"."connectiontest" to "service_role";

grant update on table "public"."connectiontest" to "service_role";

grant delete on table "public"."users" to "anon";

grant insert on table "public"."users" to "anon";

grant references on table "public"."users" to "anon";

grant select on table "public"."users" to "anon";

grant trigger on table "public"."users" to "anon";

grant truncate on table "public"."users" to "anon";

grant update on table "public"."users" to "anon";

grant delete on table "public"."users" to "authenticated";

grant insert on table "public"."users" to "authenticated";

grant references on table "public"."users" to "authenticated";

grant select on table "public"."users" to "authenticated";

grant trigger on table "public"."users" to "authenticated";

grant truncate on table "public"."users" to "authenticated";

grant update on table "public"."users" to "authenticated";

grant delete on table "public"."users" to "service_role";

grant insert on table "public"."users" to "service_role";

grant references on table "public"."users" to "service_role";

grant select on table "public"."users" to "service_role";

grant trigger on table "public"."users" to "service_role";

grant truncate on table "public"."users" to "service_role";

grant update on table "public"."users" to "service_role";


