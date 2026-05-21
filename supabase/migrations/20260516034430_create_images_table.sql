create table if not exists public.images (
  id serial not null,
  url text not null,
  animal_id integer not null,
  is_primary boolean not null,
  constraint images_pkey primary key (id),
  constraint images_animal_id_fkey foreign KEY (animal_id) references animals (id)
) TABLESPACE pg_default;

create index IF not exists image_animal_id on public.images using btree (animal_id) TABLESPACE pg_default;