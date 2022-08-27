/*Queries that provide answers to the questions FROM all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon%';
SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' and '2019-01-01';
SELECT * FROM animals WHERE escape_attempts < '3';
SELECT * FROM animals WHERE neutere = '1';
SELECT * FROM animals WHERE name not like 'Gabumon';
SELECT * FROM animals WHERE weight_kg Between '10.4' and '17.3';
SELECT date_of_birth FROM animals WHERE name='Agumon' or name='Pikach';
SELECT * FROM animals WHERE weight_kg <=17.3 and weight_kg >= 10.4;

-- day 2
BEGIN
UPDATE animals SET species='unspecified';
ROLLBACK;

BEGIN
UPDATE animals SET species='digimon' WHERE name LIKE '%mon%';
UPDATE animals set species='pokemon' WHERE name not like '%mon';
COMMIT;

BEGIN;
DELETE FROM animals;
ROLLBACK;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT sp1;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO sp1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;
SELECT COUNT(*)
FROM animals;
SELECT COUNT(escape_attempts)
FROM animals
WHERE escape_attempts = 0;
SELECT AVG(weight_kg)
FROM animals;
SELECT AVG(escape_attempts)
FROM animals
GROUP BY neutered;
SELECT species,
  MIN(weight_kg) as MIN_WEIGHT,
  MAX(weight_kg) as MAX_WEIGHT
FROM animals
GROUP BY species;
SELECT species,
  AVG(escape_attempts) as Average_escape_attempts
FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;


-- day 3

SELECT full_name , name FROM owners o inner JOIN animals a 
ON a.owner_id = o.id WHERE o.full_name='Melody Pond';

SELECT s.name , a.name FROM species s JOIN animals a 
ON a.species_id = s.idWHERE s.name = 'Pokemon';

SELECT full_name , name FROM owners o 
left JOIN animals a ON a.owner_id = o.id;

SELECT s.name,count(*) as number FROM species s JOIN animals a 
ON a.species_id = s.id GROUP BY s.name;

SELECT a.name , o.full_name, s.name as species 
FROM animals a 
JOIN owners o ON o.id = a.owner_id
JOIN species s ON s.id = a.species_id
WHERE o.full_name='Jennifer Orwell' and s.name = 'Digimon';

SELECT a.name FROM animals a
JOIN owners o 
ON o.id = a.owner_id
WHERE a.escape_attempts=0 and o.full_name='Dean Winchester';

SELECT owners.full_name , count(*) 
FROM animals 
JOIN owners 
ON owners.id = animals.owner_id
GROUP BY owners.full_name
ORDER BY count desc
LIMIT 1;

day 4


select animals.name ,visits.date_of_visit 
from animals join visits 
on animals.id = visits.animal_id 
where visits.vet_id= 1 
order by date_of_visit DESC 
limit 1;

select count(*) from vets 
join visits 
on vets.id = visits.vet_id 
where vets.id=3; 

select v.name , s.name from vets v 
left join specializations sp on v.id = sp.vet_id
left join species s on s.id = sp.species_id;

select a.name, vet.name , v.date_of_visit from animals a 
JOIN visits v on a.id = v.animal_id 
join vets vet on vet.id = v.vet_id
where vet.id=(select id from vets where name='Stephanie Mendez') and 
v.date_of_visit between '2020-04-01' and '2020-08-30'; 

select a.name , count(*) from animals a 
join visits v on a.id = v.animal_id 
group by a.name
order by count(*) desc
limit 1;

select a.name , v.date_of_visit from animals a 
join visits v on a.id = v.animal_id 
join vets vet on vet.id = v.vet_id 
where vet.name='Maisy Smith' 
order by v.date_of_visit ASC 
limit 1;

select a.name, vet.name , v.date_of_visit from animals a 
join visits v on v.animal_id = a.id 
join vets vet on vet.id = v.vet_id
order by v.date_of_visit DESC
limit 1;

select count(*) from visits v 
join animals a on a.id = v.animal_id
join vets vet on vet.id = v.vet_id 
left join specializations s on s.vet_id = vet.id 
where s.species_id != a.species_id or s.species_id is NULL;


select sp.name as species , count(*) from visits v 
join animals a on a.id = v.animal_id
join species sp on sp.id = a.species_id
join vets vet on vet.id = v.vet_id
where vet_id=2
group by sp.name 
limit 1;