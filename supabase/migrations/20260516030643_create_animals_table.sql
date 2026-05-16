create table public.animals (
  id serial not null,
  name character varying(20) not null,
  species character varying(20) not null,
  breed character varying(20) not null,
  gender character varying(10) not null,
  age integer not null,
  size character varying(255) not null,
  color character varying(20) not null,
  house_trained character varying(255) not null,
  description character varying(255) not null,
  adopted boolean not null,
  constraint animals_pkey primary key (id),
  constraint animals_house_trained_check check (
    (
      (house_trained)::text = any (
        (
          array[
            'House trained'::character varying,
            'Not house trained'::character varying
          ]
        )::text[]
      )
    )
  ),
  constraint animals_size_check check (
    (
      (size)::text = any (
        (
          array[
            'small'::character varying,
            'medium'::character varying,
            'large'::character varying
          ]
        )::text[]
      )
    )
  )
) TABLESPACE pg_default;