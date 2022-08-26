INSERT INTO animals (id, "name", date_of_birth, escape_attempts, neutered, weight_kg, species) VALUES 
('1', 'Charmander', '2020-02-03', '0', '0', '11', ''), 
('2', 'Plantmon', '2021-11-15', '2', '1', '5.7', ''), 
('3', 'Squirtle', '1993-04-02', '3', '0', '12.13', ''), 
('4', ' Angemon', '2015-05-12', '1', '0', '45', ''), 
('5', 'Boarmon', '2005-05-07', '7', '1', '20.4', ''), 
('6', 'Blossom', '1998-11-13', '3', '1', '17', ''),
 ('7', 'Ditto', '2022-05-14', '4', '1', '22', '')

 BEGIN
UPDATE animals SET species='unspecified';
SELECT * FROM animals;
ROLLBACK;
BEGIN ACTION
delete from animals where animals.date_of_birth > '2021-1-1';
SELECT * from animals
SAVEPOINT sp1;
SELECT * from animals
UPDATE animals set weight_kg = weight_kg * -1;
SELECT * from animals
ROLLBACK to sp1
SELECT * from animals
UPDATE animals set weight_kg = weight_kg * -1 where weight_kg < 0;
SELECT * from animals
commit
SELECT * from animals
SELECT count(*) from animals;
SELECT count(*) from animals where escape_attempts = 0;
SELECT avg(weight_kg) from animals;
SELECT avg(escape_attempts) from animals group by neutered;
SELECT species ,min(weight_kg) , max(weight_kg) from animals GROUP by species;
SELECT species, avg(escape_attempts) from animals
where date_of_birth > '1990-01-01' and date_of_birth < '2000-01-01'
group by species; 





