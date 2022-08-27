CREATE TABLE animals (
  id int DEFAULT NULL,
  "name" varchar(10) NOT NULL,
  date_of_birth date NOT NULL,
  escape_attempts int NOT NULL,
  neutered boolean NOT NULL,
  weight_kg decimal(5,0) NOT NULL,
) 
alter table animals add column species VARCHAR(20);
