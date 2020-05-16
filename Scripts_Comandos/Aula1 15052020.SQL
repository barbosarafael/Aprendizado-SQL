family_members
id	name	gender	species	num_books_read
1	Dave	male	human	200
2	Mary	female	human	180
3	Pickles	male	dog	0


#--- Lesson 1: SELECT *

SELECT * FROM family_members;


#--- Lesson 2: SELECT specific columns 

Can you return just the name and species columns?

SELECT name, species FROM family_members;


#--- Lesson 3: WHERE ... Equals

Can you run a query that returns all of the rows that refer to dogs?

SELECT * FROM family_members WHERE species = "dog";


#--- Lesson 4: WHERE ... Greater than

Can you run return all rows of family members whose num_books_read is greater than 190?

SELECT * FROM family_members WHERE num_books_read > 190;


#--- Lesson 5: WHERE ... Greater than or equal

Can you return all rows in family_members where num_books_read is a value greater or equal to 180?

SELECT * FROM family_members WHERE num_books_read >= 180;


Current tables:
friends_of_pickles
id	name	gender	species	height_cm
1	Dave	male	human	180
2	Mary	female	human	160
3	Fry	male	cat	30
4	Leela	female	cat	25
5	Odie	male	dog	40
6	Jumpy	male	dog	35
7	Sneakers male	dog	55


#--- Lesson 6: AND

Can you find all of Pickles' friends that are dogs and under the height of 45cm?

SELECT * FROM friends_of_pickles WHERE species = "dog" AND height_cm < 45;

Result:
id	name	gender	species	height_cm
5	Odie	male	dog	40
6	Jumpy	male	dog	35


#--- Lesson 7: OR

Can you find all of Pickles' friends that are dogs or under the height of 45cm?

SELECT * FROM friends_of_pickles WHERE species = "dog" OR height_cm < 45;

Result:
id	name	gender	species	height_cm
3	Fry	male	cat	30
4	Leela	female	cat	25
5	Odie	male	dog	40
6	Jumpy	male	dog	35
7	Sneakers male	dog	55

