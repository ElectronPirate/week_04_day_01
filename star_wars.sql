
DROP TABLE light_sabres;
DROP TABLE characters;

CREATE TABLE characters(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT NOT NULL
);


-- another table



CREATE TABLE light_sabres(
  id SERIAL PRIMARY KEY,
  colour VARCHAR(255),
  hilt_metal VARCHAR(255),
  owner_id INT REFERENCES characters(id)
  );




-- put data in

INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan', false, 100);
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 29);
INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);
INSERT INTO characters (name, darkside, age) VALUES ('Yoda', false, 500);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 27);


INSERT INTO light_sabres (colour, hilt_metal, owner_id) VALUES ('Red', 'Gold', 1);
INSERT INTO light_sabres (colour, hilt_metal, owner_id) VALUES ('Blue', 'Silver', 1);



-- UPDATE characters
-- SET darkside = true;

-- UPDATE characters SET age = 25 WHERE name = 'Obi-Wan';

-- deleting characters

-- DELETE FROM characters
-- WHERE name = 'Darth Maul';


UPDATE characters SET age = 28
WHERE id = 8;

-- WHERE name = 'Anakin Skywalker' OR age = 29;
--
-- WHERE name LIKE = '%An%';


-- reading from database (* after 'select' gives everything)

-- DESC means descending

-- SELECT name, age FROM characters ORDER BY name;

-- display characters by:

SELECT * FROM characters ORDER BY name, age;
SELECT * FROM light_sabres ORDER BY colour;



-- number of characters
--
-- SELECT COUNT(*) FROM characters;

-- in SQL query to join specific items from 2 databases:

-- SELECT characters.name AS character_name,
-- light_sabres.colour
-- FROM characters
-- INNER JOIN light_sabres
-- ON light_sabres.owner_id = characters.id
