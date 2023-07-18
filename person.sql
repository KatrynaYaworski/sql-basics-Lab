-- 1 Create a table called person that records a person’s id, name, age, height (in cm) , city, favorite_color. 
--The id should be an auto-incrementing id/primary key (use type: SERIAL)
create TABLE person (
	id SERIAL PRIMARY KEY,
  	name VARCHAR(100) NOT NULL,
  	age INTEGER,
  	height INTEGER,
  	city VARCHAR(100),
  	favorite_color VARCHAR(200)
)

-- 2 Add 5 different people into the person database. 
-- Remember to not include the person_id because it should auto-increment.

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Katryna', 31, 67, 'Dallas', 'lilac'),
('Kayla', 30, 58, 'Virginia', 'Emerald'),
('Garrett', 32, 69, 'Ottawa', 'Orange'),
('Kenzie', 1, 22, 'Dallas', 'Blue'),
('Ben', 9, 36, 'Fort Worth', 'Red');

-- 3 Select all the people in the person table by height from tallest to shortest.

select * FROM person Order by height desc

-- 4 Select all the people in the person table by height from shortest to tallest.

select * FROM person Order by height asc

-- 5 Select all the people in the person table by age from oldest to youngest.

select * FROM person Order by age desc

-- 6 Select all the people in the person table older than age 20.

select * FROM person WHERE age > 20

-- 7 Select all the people in the person table that are exactly 18.

select * FROM person WHERE age = 18

-- 8 Select all the people in the person table that are less than 20 and older than 30.

select * FROM person WHERE age > 30 OR age < 20;

-- 9 Select all the people in the person table that are not 27 (use not equals).
select * FROM person WHERE age !=27;

-- 10 Select all the people in the person table where their favorite color is not red.
select * FROM person WHERE favorite_color !='Red';

-- 11 Select all the people in the person table where their favorite color is not red and is not blue.
select * FROM person WHERE favorite_color !='Red' and favorite_color !='Blue';

-- 12 Select all the people in the person table where their favorite color is orange or green.
select * FROM person WHERE favorite_color ='Orange' OR favorite_color ='Green';

-- 13 Select all the people in the person table where their favorite color is orange, green or blue (use IN).
select * FROM person WHERE favorite_color IN('Orange', 'Green', 'Blue');

-- 14 Select all the people in the person table where their favorite color is yellow or purple (use IN).
select * FROM person WHERE favorite_color IN('Yellow', 'Purple');
