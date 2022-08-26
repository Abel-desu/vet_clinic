CREATE TABLE animals (
  id int NOT NULL,
  name varchar NOT NULL,
  date_of_birth date NOT NULL,
  escape_attempts int NOT NULL,
  neutere BOOLEAN NOT NULL,
  weight_kg decimal NOT NULL
) 

alter table animals add column species VARCHAR(50);

