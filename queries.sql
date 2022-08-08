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
