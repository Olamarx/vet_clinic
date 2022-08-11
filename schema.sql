/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    name varchar(100)
);

-- This is how it is on my terminal
postgres=# CREATE TABLE vet_clinic(
postgres(# id integer,
postgres(# date_of_birth date,
postgres(# escape_attempts integer,
postgres(# neutered boolean,
postgres(# weight_kg decimal);

-- I forgot to add the name and i altered it.
postgres=# ALTER TABLE vet_clinic
postgres-# ADD name varchar(100);
ALTER TABLE
postgres=# \d vet_clinic


-- Add a column species of type string to your animals table. Modify your schema.sql file.
postgres=# ALTER TABLE animals
postgres-# ADD species varchar(100);


-- Third task

postgres=# CREATE TABLE owners (id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, full_name VARCHAR(120), age INT);

postgres=# CREATE TABLE species (id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, name VARCHAR(120));

postgres=# ALTER TABLE animals DROP COLUMN species;

postgres=# ALTER TABLE animals ADD COLUMN species_id INT,ADD COLUMN owner_id INT,ADD FOREIGN KEY (species_id) REFERENCES species(id), ADD FOREIGN KEY (owner_id) REFERENCES owners(id);