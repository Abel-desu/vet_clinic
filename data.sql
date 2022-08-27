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

