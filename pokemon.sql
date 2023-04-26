-- this chunk creates a pokemon table with the pokedex_number as the primary
--key
CREATE TABLE pokemon
(
  pokedex_number CHAR NOT NULL,
  name CHAR NOT NULL,
  height_m INT NOT NULL,
  weight_kg INT NOT NULL,
  generation CHAR NOT NULL,
  PRIMARY KEY (pokedex_number)
);

--this code chunk creates a table which keeps track of the pokemon's type(s)
--the pokedex_number is its foreign key
CREATE TABLE Type
(
  pokedex_number CHAR NOT NULL,
  type_1 CHAR NOT NULL,
  type_2,
  pokedex_number CHAR NOT NULL,
  FOREIGN KEY (pokedex_number) REFERENCES pokemon(pokedex_number)
);

--this code chunk creates a table to store the pokemon's abilities. A pokemon
--can have up to six abilities. pokemon_number is foreign key 
CREATE TABLE Abilities
(
  ability_1 CHAR NOT NULL,
  ability_2 TEXT,
  ability_3 TEXT,
  ability_4 TEXT,
  ability_5 TEXT,
  ability_5 TEXT,
  ability_6 TEXT,
  pokedex_number CHAR NOT NULL,
  FOREIGN KEY (pokedex_number) REFERENCES pokemon(pokedex_number)
);

-- this table keeps track of the damage a pokemon can do against different 
--types of pokemon. pokemon_number is foreign key
CREATE TABLE Damage
(
  against_bug INT NOT NULL,
  against_dark INT NOT NULL,
  against_dragon INT NOT NULL,
  against_electric INT NOT NULL,
  against_fairy INT NOT NULL,
  against_figjt INT NOT NULL,
  against_fire INT NOT NULL,
  against_flying INT NOT NULL,
  against_ghost INT NOT NULL,
  against_grass INT NOT NULL,
  against_ground INT NOT NULL,
  against_ice INT NOT NULL,
  against_normal INT NOT NULL,
  against_poison INT NOT NULL,
  against_psychic INT NOT NULL,
  against_rock INT NOT NULL,
  against_steel INT NOT NULL,
  against_water INT NOT NULL,
  pokedex_number CHAR NOT NULL,
  FOREIGN KEY (pokedex_number) REFERENCES pokemon(pokedex_number)
);

--this code creates a table to keep track of certain stats of a pokemon,
--pokedex_number is the foreign key
CREATE TABLE Stats
(
  hp INT NOT NULL,
  attack INT NOT NULL,
  base_total INT NOT NULL,
  capture_rate INT NOT NULL,
  defense INT NOT NULL,
  expereince_growth INT NOT NULL,
  percentage_male INT NOT NULL,
  sp_attack INT NOT NULL,
  sp_defence INT NOT NULL,
  speed INT NOT NULL,
  pokedex_number CHAR NOT NULL,
  FOREIGN KEY (pokedex_number) REFERENCES pokemon(pokedex_number)
);

--this code chunk keeps track of stats related to a pokemon's base
--the pokedex_number is its foreign key
CREATE TABLE Base
(
  base_total INT NOT NULL,
  base_happiness INT NOT NULL,
  base_egg_steps INT NOT NULL,
  pokedex_number INT NOT NULL,
  FOREIGN KEY (pokedex_number) REFERENCES pokemon(pokedex_number)
);

--this table keeps track of the pokemon's classification, the primary key is
--the name / classification, and the foreign key is the pokedex_number
CREATE TABLE Classification
(
  name CHAR NOT NULL,
  pokedex_number CHAR NOT NULL,
  PRIMARY KEY (name),
  FOREIGN KEY (pokedex_number) REFERENCES pokemon(pokedex_number)
);
