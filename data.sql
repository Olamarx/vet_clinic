/* Populate database with sample data. */

INSERT INTO animals (name) VALUES ('Luna');
INSERT INTO animals (name) VALUES ('Daisy');
INSERT INTO animals (name) VALUES ('Charlie');

-- The way I did it
postgres=# INSERT INTO vet_clinic (id, date_of_birth, escape_attempts, neutered, weight_kg, name) VALUES (1, '2020-02-03', 0, 't', 10.23, 'Agumon'), (2, '2018-11-15', 2, 't', 8.00, 'Gabumon'), (3, '2021-01-07', 2, 'f', 15.04, 'Pikachu'), (4, '2017-05-12', 5, 't', 11.00, 'Devimon');


postgres=# INSERT INTO animals (id, date_of_birth, escape_attempts, neutered, weight_kg, name) VALUES (5, '2020-02-08', 0, 'f', -11.00, 'Charmander'), (6, '2021-11-15', 2, 't', -5.7, 'Plantmon'), (7, '1993-04-02', 3, 'f', -12.13, 'Squirtle'), (8, '2005-06-12', 7, 't', -45.00, 'Angemon'), (9, '2005-05-07', 7, 't', 20.40, 'Boarmon'), (10, '1998-10-13', 3, 't', 17.00, 'Blossom'), (11, '2022-05-14', 4, 't', 22.00, 'Ditto');

-- Third task

postgres=# INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34), ('Jennifer Orwell', 19), ('Bob', 45), ('Melody Pond', 77), ('Dean Winchester', 14), ('Jodie Whittaker', 38);
postgres=# INSERT INTO species (name) VALUES ('Pokemon'), ('Digimon');
postgres=# UPDATE animals SET species_id = species.id FROM species WHERE species.name = 'Digimon' AND animals.name LIKE '%mon'; UPDATE animals SET species_id = species.id FROM species WHERE animals.name NOT LIKE '%mon' AND species.name = 'Pokemon';
postgres=# UPDATE animals SET owner_id = owners.id FROM owners WHERE owners.full_name = 'Sam Smith' AND animals.name = 'Agumon';
postgres=# UPDATE animals SET owner_id = owners.id FROM owners WHERE owners.full_name = 'Jennifer Orwell' AND (animals.name = 'Gabumon' OR animals.name = 'Pikachu');
postgres=# UPDATE animals SET owner_id = owners.id FROM owners WHERE owners.full_name = 'Bob' AND (animals.name = 'Devimon' OR animals.name = 'Plantmon');
postgres=# UPDATE animals SET owner_id = owners.id FROM owners WHERE owners.full_name = 'Melody Pond' AND (animals.name = 'Charmander' OR animals.name = 'Squirtle' OR animals.name = 'Blossom');
postgres=# UPDATE animals SET owner_id = owners.id FROM owners WHERE owners.full_name = 'Dean Winchester' AND (animals.name = 'Angemon' OR animals.name = 'Boarmon');
