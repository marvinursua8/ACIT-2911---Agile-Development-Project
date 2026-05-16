create table public.admin (
  id serial not null,
  username character varying(255) not null,
  password_hash character varying(255) not null,
  constraint admin_pkey primary key (id)
) TABLESPACE pg_default;

create unique INDEX IF not exists admin_username on public.admin using btree (username) TABLESPACE pg_default;