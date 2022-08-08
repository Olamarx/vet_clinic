/* Populate database with sample data. */

INSERT INTO animals (name) VALUES ('Luna');
INSERT INTO animals (name) VALUES ('Daisy');
INSERT INTO animals (name) VALUES ('Charlie');

-- The way I did it
postgres=# INSERT INTO vet_clinic (id, date_of_birth, escape_attempts, neutered, weight_kg, name) VALUES (1, '2020-02-03', 0, 't', 10.23, 'Agumon'), (2, '2018-11-15', 2, 't', 8.00, 'Gabumon'), (3, '2021-01-07', 2, 'f', 15.04, 'Pikachu'), (4, '2017-05-12', 5, 't', 11.00, 'Devimon');