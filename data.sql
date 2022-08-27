insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
    values('Charmander','2020-02-08',0,false,-11);

  insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
    values('Plantmon','2021-11-15',2,TRUE,-5.7);    

   insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
 values('Squirtle','1993-04-02',3,false,-12.13); 
 insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
 values('Angemon','2005-06-12',1,true,-45); 
 insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
 values  ('Boarmon','2005-06-07',7,true,20.4); 
 insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
 values    ('Blossom','1998-10-13',3,true,17);   
 insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
 values    ('Ditto','2022-05-14',4,true,22)


BEGIN
insert into owners(full_name,age)
values('Sam Smith',34),
      ('Jennifer Orwell' , 19),
	   ('Bob',45),
	   ('Melody Pond',77),
	   ('Dean Winchester',14),
	   ('Jodie Whittaker',38)
COMMIT;

BEGIN;
 INSERT into species (name) values('Pokemon'),('Digimon')  
COMMIT;

BEGIN; 
UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Digimon' )
WHERE name LIKE '%mon%';
UPDATE animals SET species_id =(  SELECT id FROM species WHERE name = 'Pokemon')
WHERE species_id IS NULL;
COMMIT;

Update animals Set owner_id = 1 Where name = 'Agumon'

Update animals Set owner_id = 2 WHERE name = 'Gabumon' OR name = 'Pikachu';

Update animals Set owner_id = 3WHERE name IN('Devimon', 'Plantmon');

Update animals Set owner_id = 5 WHERE name IN('Angemon','Boarmon');

BEGIN;
INSERT INTO vets(name,age,date_of_graduation)
VALUES('William Tatcher', 45, '2000-04-23'), 
  ('Maisy Smith', 26, '2019-01-17'),
  ('Stephanie Mendez', 64, '1981-05-04'),
  ('Jack Harkness', 38, '2008-06-08')
;
COMMIT;


BEGIN;
INSERT INTO specializations (vet_id, species_id)
VALUES (1, 1),
  (3, 1),
  (3, 2),
  (4, 2);
COMMIT;


  insert into visits (animal_id, vet_id,date_of_visit)
       VALUES((select id from animals where name='Gabumon'),(select id from vets WHERE name='Jack Harkness'),'2021-02-02'),
	           ((select id from animals where name='Pikachu'),(select id from vets WHERE name='Maisy Smith'),'2020-01-05'),
	           ((select id from animals where name='Pikachu'),(select id from vets WHERE name='Maisy Smith'),'2020-03-08'),
	           ((select id from animals where name='Pikachu'),(select id from vets WHERE name='Maisy Smith'),'2020-05-14'),
	           ((select id from animals where name='Devimon'),(select id from vets WHERE name='Stephanie Mendez'),'2021-05-04'),
	           ((select id from animals where name='Charmander'),(select id from vets WHERE name='Jack Harkness'),'2021-02-24'),
	           ((select id from animals where name='Plantmon'),(select id from vets WHERE name='Maisy Smith'),'2019-12-21'),
	           ((select id from animals where name='Plantmon'),(select id from vets WHERE name='William Tatcher'),'2020-08-10'),
	           ((select id from animals where name='Plantmon'),(select id from vets WHERE name='Maisy Smith'),'2021-04-07'),
	           ((select id from animals where name='Squirtle'),(select id from vets WHERE name='Stephanie Mendez'),'2019-09-29'),
	           ((select id from animals where name='Angemon'),(select id from vets WHERE name='Jack Harkness'),'2020-10-03'),
	           ((select id from animals where name='Angemon'),(select id from vets WHERE name='Jack Harkness'),'2020-11-04'),
	           ((select id from animals where name='Boarmon'),(select id from vets WHERE name='Maisy Smith'),'2019-01-24'),
	           ((select id from animals where name='Boarmon'),(select id from vets WHERE name='Maisy Smith'),'2019-05-15'),
	           ((select id from animals where name='Boarmon'),(select id from vets WHERE name='Maisy Smith'),'2020-02-27'),
	           ((select id from animals where name='Boarmon'),(select id from vets WHERE name='Maisy Smith'),'2020-08-03'),
	           ((select id from animals where name='Blossom'),(select id from vets WHERE name='Stephanie Mendez'),'2020-05-24'),
	           ((select id from animals where name='Blossom'),(select id from vets WHERE name='William Tatcher'),'2021-01-11');   
               

