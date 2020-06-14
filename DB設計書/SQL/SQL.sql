-- Role: exitpj

-- DROP ROLE exitpj;

CREATE ROLE exitpj LOGIN
  ENCRYPTED PASSWORD 'md54aaad3b21230282941d6e5382187e771'
  SUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;

-- Schema: animal

-- DROP SCHEMA animal;

CREATE SCHEMA animal

-- Table: "ANIMAL"

--DROP TABLE animal."ANIMAL" cascade;

CREATE TABLE animal."ANIMAL"
(
  id integer NOT NULL,
  name character varying(20) NOT NULL,
  gender_type integer NOT NULL,
  birthday date NOT NULL,
  favorite boolean NOT NULL,
  delete boolean NOT NULL,
  regist_time timestamp without time zone NOT NULL DEFAULT now(),
  update_time timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT "PK_ANIMAL" PRIMARY KEY (id)
);

-- Table: "FAVORITE_CLOTHES"

--DROP TABLE animal."FAVORITE_CLOTHES" cascade;

CREATE TABLE animal."FAVORITE_CLOTHES"
(
  id integer NOT NULL,
  animal_id integer NOT NULL,
  favorite_clothes character varying(20) NOT NULL,
  regist_time timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT "PK_FAVORITE_CLOTHES" PRIMARY KEY (id),
  CONSTRAINT "FK_FAVORITE_CLOTHES" FOREIGN KEY (animal_id)
      REFERENCES animal."ANIMAL" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);