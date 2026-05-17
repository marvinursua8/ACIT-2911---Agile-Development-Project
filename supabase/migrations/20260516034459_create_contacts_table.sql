create table if not exists public.contacts (
  id serial not null,
  name character varying(255) not null,
  email character varying(255) not null,
  phone character varying(255) not null,
  animal character varying(255) not null,
  message character varying(255) not null,
  approved boolean not null,
  constraint contacts_pkey primary key (id)
) TABLESPACE pg_default;