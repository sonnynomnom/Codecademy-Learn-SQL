# Codecademy - [Learn SQL](https://www.codecademy.com/learn/learn-sql)

---

./upload --workspace workspaces/learn-sql-baby-names/ --type sql

Quit: Type `.quit` or use <kbd>Ctrl</kbd> + <kbd>D</kbd>.

Add file: `touch sqlite3 union.sqlite`

Upload: `./upload workspaces/sql_unit_2 --type:sql`



```sql
INSERT INTO movies(id, name, genre, year, imdb_rating) VALUES (221, 'The Good, the Bad and the Ugly', NULL, NULL, NULL);
INSERT INTO movies(id, name, genre, year, imdb_rating) VALUES (222, 'Dawn of the Dead', 'horror', 1978, NULL);
INSERT INTO movies(id, name, genre, year, imdb_rating) VALUES (223, 'Shawn of the Dead', 'comedy', 2004, NULL);
INSERT INTO movies(id, name, genre, year, imdb_rating) VALUES (224, 'Star Wars: The Force Awakens', 'action', 2015, 8.1);
INSERT INTO movies(id, name, genre, year, imdb_rating) VALUES (225, 'Star Wars: The Last Jedi', 'action', 2017, NULL);
INSERT INTO movies(id, name, genre, year, imdb_rating) VALUES (226, 'The Shining', 'horror', 1985, 8.4);
INSERT INTO movies(id, name, genre, year, imdb_rating) VALUES (227, 'The Devil and Daniel Johnston', NULL, 2005, 8.0);
INSERT INTO movies(id, name, genre, year, imdb_rating) VALUES (228, 'Ali Wong: Baby Cobra', 'comedy', 2016, NULL);
INSERT INTO movies(id, name, genre, year, imdb_rating) VALUES (229, 'The Big Sick', 'romance', 2017, NULL);
INSERT INTO movies(id, name, genre, year, imdb_rating) VALUES (230, 'Deadpool', 'action', 2016, NULL);
```

```sql
UPDATE movies
SET genre = NULL
WHERE name = 'Ali Wong: Baby Cobra';
```

```sql
DROP TABLE nomnom;
```

# Queries

## 14. Case

**Checkpoint 2**

Following this format, edit the previous query and create our very own rating system:

- IMDb ratings above 7 is 'good'
- IMDb ratings above 5 is 'ok'
- everything else is 'mmm'

Finish the `CASE` by renaming it with an alias of your choosing.

**Hint:**

```sql
SELECT name,
 CASE
  WHEN imdb_rating > 7 THEN 'good'
  WHEN imdb_rating > 5 THEN 'ok'
  ELSE 'mmm'
 END AS whatever
FROM movies;
```

The result should have two columns.

**Tests.activeBatsTest('test2.bats', callback);**

@test "The query didn't return any results." {
    touch empty.txt
    run diff output.txt empty.txt
    [ "$status" -eq 1 ]
}

@test "Remove the previous query." {
	sqlite3 output.sqlite "SELECT name,
 CASE
  WHEN genre = 'romance' THEN 'chill'
  WHEN genre = 'comedy' THEN 'chill'
  ELSE 'not chill'
 END AS mood
FROM movies; SELECT name,
 CASE
  WHEN imdb_rating > 7 THEN 'good'
  WHEN imdb_rating > 5 THEN 'ok'
  ELSE 'mmm'
 END AS ratings
FROM movies;" > tmp.txt
  run diff output.txt tmp.txt
  [ "$status" -eq 1 ]
}

@test "Type the code in the code editor using the appropriate clauses." {
  	sqlite3 output.sqlite "SELECT name,
 CASE
  WHEN imdb_rating > 7 THEN 'good'
  WHEN imdb_rating > 5 THEN 'ok'
  ELSE 'mmm'
 END AS ratings
FROM movies;"  > tmp.txt
  	run diff output.txt tmp.txt
  	[ "$status" -eq 0 ]
}


# Queries - Restaurants

We have put together a table of restaurants called `nomnom` and we need your help to answer some questions. Use the SQL commands you just learned and find the best dinner spots in the city.

Let's begin!

```sql

CREATE TABLE nomnom(name TEXT, neighborhood TEXT, cuisine TEXT, review INTEGER, price TEXT, health TEXT);


INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Peter Luger Steak House', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Jongro BBQ', 'Midtown', 'Korean', 4.5, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Pocha 32', 'Midtown', 'Korean', 4.0, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Nom Wah Tea Parlor', 'Chinatown', 'Chinese', 4.2, '$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Roberta''s', 'Brooklyn', 'Pizza', 4.4, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Speedy Romeo', 'Brooklyn', 'Pizza', 4.4, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Bunna Cafe', 'Brooklyn', 'Ethiopian', 4.6, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Massawa', 'Uptown', 'Ethiopian', 4.0, '$$', NULL);

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Buddha Bodai', 'Chinatown', 'Vegetarian', 4.2, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Nan Xiang Xiao Long Bao', 'Queens', 'Chinese', 4.2, '$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Mission Chinese Food', 'Downtown', 'Chinese', 3.9, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Baohaus', 'Downtown', 'Chinese', 4.2, '$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('al di la Trattoria', 'Brooklyn', 'Italian', 4.4, '$$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Locanda Vini & Olii', 'Brooklyn', 'Italian', 4.4, '$$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Rao''s', 'Uptown', 'Italian', 4.2, '$$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Minca', 'Downtown', 'Japanese', 4.4, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Kenka', 'Downtown', 'Japanese', 4.3, '$', 'B');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Yakitori Taisho', 'Downtown', 'Japanese', 4.1, '$', 'B');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Xi''an Famous Foods', 'Midtown', 'Chinese', 4.4, '$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Shake Shack', 'Midtown', 'American', 4.4, '$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('The Halal Guys', 'Midtown', 'Mediterranean', 4.4, '$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Foodcademy', 'Midtown', 'American', 4.4, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Sonnyboy''s', 'Brooklyn', 'Chinese', 4.2, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('The Cole Romano Experience', 'Brooklyn', 'Italian', 2.1, '$$$$$', 'C');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Timbo Slice', 'Brooklyn', 'Pizza', 2.8, '$', 'B');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Scorpio Sisters', 'Downtown', 'American', 4.2, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('N.E.D', 'Uptown', 'American', 4.2, '$$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Great NY Noodletown', 'Chinatown', 'Chinese', 4.1, '$$', 'B');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Golden Unicorn', 'Chinatown', 'Chinese', 3.8, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Wo Hop', 'Chinatown', 'Chinese', 4.2, '$$', NULL);

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Di Fara Pizza', 'Brooklyn', 'Pizza', 4.2, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Kang Ho Dong Baekjeong', 'Midtown', 'Korean', 4.3, '$$$', 'C');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Roti Roll Bombay Frankie', 'Uptown', 'Indian', 4.2, '$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Jacob''s Pickles', 'Uptown', 'American', NULL, '$$', NULL);

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Dan and John''s Wings', 'Downtown', 'American', 4.5, '$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Ping''s Seafood', 'Chinatown', 'Chinese', 4.2, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('XO Kitchen', 'Chinatown', 'Chinese', 4.0, '$', 'B');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Carbone', 'Downtown', 'Italian', 4.3, '$$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('I Sodi', 'Downtown', 'Italian', 4.5, '$$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Lilia', 'Brooklyn', 'Italian', 4.4, '$$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Enid''s', 'Brooklyn', 'Soul Food', 4.0, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Jajaja', 'Downtown', 'Vegetarian', 4.5, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Smalls Jazz Club', 'Downtown', 'American', NULL, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Russ & Daughters', 'Downtown', 'American', 4.6, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('The Meatball Shop', 'Downtown', 'American', 4.2, '$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Dirt Candy', 'Downtown', 'Vegetarian', 4.4, '$$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Ippudo', 'Downtown', 'Japanese', 4.4, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('St. Anselm', 'Brooklyn', 'Steak', 4.5, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Marea', 'Midtown', 'Italian', 4.5, '$$$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Lighthouse', 'Brooklyn', 'American', 4.6, '$$', NULL);

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Los Hermanos', 'Brooklyn', 'Mexican', 4.4, '$', NULL);

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('The Standard Biergarten', 'Downtown', 'American', 4.0, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Ootoya', 'Downtown', 'Japanese', 4.5, '$$', 'A');
```

## Adding `rated` Column in `CASE`

```sql
ALTER TABLE movies
ADD rated TEXT;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 1;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 2;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 3;

;UPDATE movies
SET rated = 'PG-13'
WHERE id = 4

UPDATE movies
SET rated = 'PG'
WHERE id = 5;

UPDATE movies
SET rated = 'PG'
WHERE id = 6;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 7;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 8;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 9;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 10;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 11;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 12;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 13;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 14;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 15;

UPDATE movies
SET rated = 'R'
WHERE id = 16;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 17;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 18;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 19;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 20;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 21;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 22;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 23;

UPDATE movies
SET rated = 'PG'
WHERE id = 24;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 25;

UPDATE movies
SET rated = 'PG'
WHERE id = 26;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 27;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 28;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 29;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 30;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 31;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 31;

UPDATE movies
SET rated = 'PG'
WHERE id = 32;

UPDATE movies
SET rated = 'R'
WHERE id = 33;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 34;

UPDATE movies
SET rated = 'PG'
WHERE id = 35;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 36;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 37;

UPDATE movies
SET rated = 'PG'
WHERE id = 38;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 39;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 40;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 41;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 42;

UPDATE movies
SET rated = 'PG'
WHERE id = 43;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 44;

UPDATE movies
SET rated = 'PG-13'
WHERE id = 45;

UPDATE movies
SET rated = 'R'
WHERE id = 6;
```

# Baby Names

- Find the number of girls who were named Lillian for the full span of time of the database:

```sql
SELECT year, count
FROM NationalNames
WHERE name = 'Lillian' AND gender = 'F';
```

- Find the first 20 names from the year 2014 where 10 or less people have that name.

```sql
SELECT name
FROM NationalNames
WHERE year = '2014' AND count <= 10
LIMIT 20;
```

- Find the first 20 distinct names that start with 'L':

```sql

- Rank Top 5 Female Name
- Decade
- Your friend has a twin named Bitly and Livly,




