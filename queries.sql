/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name = 'Luna';

-- Find all animals whose name ends in "mon".
postgres=# SELECT * FROM  WHERE name LIKE '%mon';

-- List the name of all animals born between 2016 and 2019.
postgres=# SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

-- List the name of all animals that are neutered and have less than 3 escape attempts.
postgres=# SELECT * FROM animals WHERE neutered = 't' AND escape_attempts < 3;

-- List the date of birth of all animals named either "Agumon" or "Pikachu".
postgres=# SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';

-- List name and escape attempts of animals that weigh more than 10.5kg
postgres=# SELECT name, escape_attempts FROM animals WHERE weight_kg >10.5;

-- Find all animals that are neutered.
postgres=# SELECT * FROM animals WHERE neutered = 't';

-- Find all animals not named Gabumon.
postgres=# SELECT * FROM animals WHERE name <> 'Gabumon';

-- Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg)
postgres=# SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

-- Deleted and rolled back  
postgres=# BEGIN;
BEGIN
postgres=*# SAVEPOINT delete_table;
SAVEPOINT
postgres=*# DELETE FROM animals;
DELETE 11
postgres=*# --ROLLBACK TO delete_table;
postgres=*# ROLLBACK TO delete_table;
ROLLBACK
postgres=*# COMMIT;
COMMIT

-- How many animals are there?
postgres=# SELECT FROM animals;

-- How many animals have never tried to escape?
postgres=# SELECT FROM animals
postgres-# WHERE escape_attempts = 0;

-- What is the average weight of animals?
postgres=# SELECT avg(weight_kg) FROM animals;


-- Who escapes the most, neutered or not neutered animals?
postgres=# SELECT neutered, avg(escape_attempts) "Average of escape attempts" FROM animals GROUP BY neutered;

-- What is the minimum and maximum weight of each type of animal?
postgres=# SELECT
postgres-# species,
postgres-# MIN(weight_KG) "Min Weight",
postgres-# MAX(weight_KG) "Max Weight"
postgres-# FROM animals GROUP BY species;


-- What is the average number of escape attempts per animal type of those born between 1990 and 2000?
postgres=# SELECT
postgres-# species,
postgres-# AVG(escape_attempts) "Average attempts of escape" FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;

-- Third task

postgres=# SELECT name, full_name Owner FROM owners JOIN animals ON owners.id = animals.owner_id WHERE owners.full_name = 'Melody Pond';
postgres=# SELECT animals.name, species.name FROM animals JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';
postgres=# SELECT animals.name, owners.full_name FROM animals FULL JOIN owners ON owners.id = animals.owner_id;
postgres=# SELECT count(animals.name), species.name FROM species JOIN animals ON species.id = animals.species_id GROUP BY species.name;
postgres=# SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Jennifer Orwell';
postgres=# SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;
postgres=# SELECT owners.full_name, count(animals.name) as animals FROM animals JOIN owners ON animals.owner_id = owners.id GROUP BY owners.full_name ORDER BY animals DESC;
