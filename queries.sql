/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon%';
SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' and '2019-01-01';
SELECT * FROM animals WHERE escape_attempts < '3';
SELECT * FROM animals WHERE neutere = '1';
SELECT * from animals where name not like 'Gabumon';
SELECT * FROM animals WHERE weight_kg Between '10.4' and '17.3';
SELECT date_of_birth FROM animals WHERE name='Agumon' or name='Pikach';
SELECT * FROM animals WHERE weight_kg <=17.3 and weight_kg >= 10.4;
