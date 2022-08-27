CREATE TABLE animals (
  id int DEFAULT NULL,
  "name" varchar(10) NOT NULL,
  date_of_birth date NOT NULL,
  escape_attempts int NOT NULL,
  neutered boolean NOT NULL,
  weight_kg decimal(5,0) NOT NULL,
) 
alter table animals add column species VARCHAR(20);

CREATE TABLE owners(
    id INT GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(50),
    age INT,
    PRIMARY KEY(id)
    
);

CREATE TABLE species(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50), 
    PRIMARY KEY(id)
);


ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD species_id INT;

ALTER TABLE animals ADD CONSTRAINT species_id
    FOREIGN KEY (species_id)
     REFERENCES species(id)

;

ALTER TABLE animals ADD owner_id INT;

ALTER TABLE animals
    ADD CONSTRAINT owner_id
        FOREIGN KEY (owner_id)
            REFERENCES owners(id)


create table vets(id int generated always as identity PRIMARY key ,
	name varchar(40),
	age int ,
  date_of_graduation date 
				 );

CREATE TABLE specializations (
    vet_id INT,
    species_id INT,
    PRIMARY KEY(vet_id, species_id),
    CONSTRAINT fk_vets
      FOREIGN KEY(vet_id) 
	  REFERENCES vets(id),
    CONSTRAINT fk_species
      FOREIGN KEY(species_id) 
	  REFERENCES species(id)
);

CREATE TABLE visits (
  vet_id INT REFERENCES vets(id),
  animal_id INT REFERENCES animals(id),
  date_of_visit DATE,
	PRIMARY KEY ("ID")
);
