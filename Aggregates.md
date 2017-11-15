# CodecademySQL

`./upload workspaces/sql_unit_4 --type:sql`

```sql
CREATE TABLE albums_new(id INTEGER, name TEXT, artist_id INTEGER, year INTEGER);

INSERT INTO albums_new(id, name, artist_id, year) VALUES (1, 'Blonde', NULL, 2016);
INSERT INTO albums_new(id, name, artist_id, year) VALUES (2, 'Return to Love', NULL, 2016);
INSERT INTO albums_new(id, name, artist_id, year) VALUES (3, 'Haunts EP', NULL, 2017);

UPDATE albums_new
SET id = 15
WHERE name = 'Blonde';

UPDATE albums_new
SET id = 16
WHERE name = 'Return to Love';

UPDATE albums_new
SET id = 17
WHERE name = 'Haunts EP';
```


```sql
INSERT INTO movies(id, name, genre, year, imdb_rating) VALUES (221, 'The Good, the Bad and the Ugly', NULL, NULL, NULL);

```

./upload workspaces/sql_unit_2 --type:sql

```sql
UPDATE movies
SET genre = NULL
WHERE name = 'Ali Wong: Baby Cobra';
```


## Project

```sql

CREATE TABLE startups(name TEXT, location TEXT, category TEXT, employees INTEGER, raised INTEGER, valuation INTEGER, founded INTEGER, stage TEXT, ceo TEXT, info TEXT);


INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Pied Piper', 'Silicon Valley', 'Cloud Computing', 6, 5000000, 50000000, 2014, 'A', 'Richard Hendricks', 'Middle-out Compression');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Hooli', 'Silicon Valley', 'Enterprise', 92013000, 580000000, 49500000000, 1997, NULL, 'Gavin Bensen', 'MAKING THE WORLD A BETTER PLACE');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Raviga Capital Management', 'Silicon Valley', 'Venture Capital', 12, 300000000, 3000000000, 2012, NULL, 'Peter Gregory', 'We See the Big Picture');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Aviato', 'Silicon Valley', 'Travel', 3, 250000, 2500000, 2006, 'Acquired', 'Erlich Bachman', 'Software Aggregation Program');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('SEEFOOD', 'Silicon Valley', 'Mobile', 2, NULL, 15000000, 2016, 'Acquired', 'Jian Yang', 'The Shazam of Food');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Forbid', 'New York', 'Mobile', 25, 1400000, 5000000, 2013, 'Acquired', 'Charlie Dattolo', 'Charge Users $10 for Calling Their Ex');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Soulstice', 'New York', 'Fitness', 300, 30000000, 120000000, 2014, 'B', NULL, NULL);

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('E-Corp', 'New York', 'Enterprise', 10000, NULL, 66000000000, 2006, NULL, 'Phillip Price', 'Together We Can Change the Wolrd');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Allsafe Cybersecurity', 'New York', 'Security', 250, 123000000, 1000000000, 2014, NULL, 'Gideon Goddard', NULL);

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('fsociety', 'Brooklyn', 'Games', 5, NULL, NULL, 2015, 'Stealth', 'Elliot Alderson', 'Fun Society Arcade');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Sum', 'Brooklyn', 'Pizza', 4.4, '$$', 'A');

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

```





# Multiple Tables





## 2. Primary Key

**Narrative**

The primary key in the `artists` is literally an `id` value for a record. We're going to use this value to connect `artists` to the `albums` they have produced.

**Checkpoint 1**

We have created a table named `albums` for you. Create a second table named `artists`.

In the code editor, type:

```sql
CREATE TABLE artists(id INTEGER PRIMARY KEY, name TEXT);
```

**Tests.activeBatsTest('test.bats', callback);**

table_exists() {
  sqlite3 output.sqlite "SELECT * FROM $1 LIMIT 1"
}

column_exists?() {
  sqlite3 output.sqlite "SELECT $2 FROM $1"
}

@test "Create an 'artists' table" {
  run table_exists artists
  [ "$status" -eq 0 ]
}

@test "Include an id column" {
  run column_exists? artists id
  [ "$status" -eq 0 ]
}

@test "Include a name column" {
  run column_exists? artists name
  [ "$status" -eq 0 ]
}

@test "Artists table should be empty." {
  run sqlite3 output.sqlite "SELECT COUNT(*) FROM artists"
  [ "$output" -eq 0 ]
}

@test "Artists table should have two columns." {
  run sqlite3 output.sqlite "INSERT INTO artists VALUES(1,2)"
  [ "$status" -eq 0 ]
}

@test "Artists table should have a primary key." {
  run sqlite3 output.sqlite "INSERT INTO artists(id) VALUES(1)"
  [ "$status" -eq 19 ]
}

@test "Delete data inserted for tests" {
  sqlite3 output.sqlite "DELETE FROM artists WHERE id > 0"
}








**Checkpoint 1**

Sometimes our data needs a massive change, type the following to recreate our `albums` table safely even if the table doesn't exist.

```sql
 DROP TABLE IF EXISTS albums;

 CREATE TABLE IF NOT EXISTS albums(
    id INTEGER PRIMARY KEY,
    name TEXT,
    artist_id INTEGER,
    year INTEGER);
```

**Tests.activeBatsTest('test.bats', callback);**

table_exists() {
  sqlite3 output.sqlite "SELECT * FROM $1 LIMIT 1"
}

column_exists?() {
  sqlite3 output.sqlite "SELECT $2 FROM $1"
}

@test "Create an 'albums' table" {
  run table_exists albums
  [ "$status" -eq 0 ]
}

@test "Include an id column" {
  run column_exists? albums id
  [ "$status" -eq 0 ]
}

@test "Include a name column" {
  run column_exists? albums name
  [ "$status" -eq 0 ]
}

@test "Include a year column" {
  run column_exists? albums year
  [ "$status" -eq 0 ]
}

@test "Include a artist_id column" {
  run column_exists? albums artist_id
  [ "$status" -eq 0 ]
}

@test "Albums table should be empty." {
  run sqlite3 output.sqlite "SELECT COUNT(*) FROM albums"
  [ "$output" -eq 0 ]
}

@test "Albums table should have four columns." {
  run sqlite3 output.sqlite "INSERT INTO albums VALUES(1,2,3,4)"
  [ "$status" -eq 0 ]
}

@test "Albums table should have a primary key." {
  run sqlite3 output.sqlite "INSERT INTO albums(id) VALUES(1)"
  [ "$status" -eq 19 ]
}

@test "Delete data inserted for tests" {
  sqlite3 output.sqlite "DELETE FROM albums WHERE id > 0"
}




## 8. Multiple Table Creation (DELETED)

**Narrative**

```sql
 DROP TABLE IF EXISTS albums;

 CREATE TABLE IF NOT EXISTS albums(
   id INTEGER PRIMARY KEY,
   name TEXT,
   artist_id INTEGER,
   year INTEGER);
```

`DROP TABLE IF EXISTS` is a SQL command that will drop a table or do nothing, depending on if the table already exists. Usually if you attempt to drop a table that does not exist your SQL client will throw an error but in this case, it will fail silently. This is best for situations where your data is in an unknown state and you intend to reseed it.

`CREATE TABLE IF NOT EXISTS`, by contrast, will create a table or do nothing, depending on if the table already exists. These two are frequently used together when a database has an external source of truth and the two have fallen out of sync.

**Checkpoint 1**

Of course, usually, we will want to recreate the table somewhat differently than before. Let's fix something about that albums table this time. Type:

```sql
 DROP TABLE IF EXISTS albums;

 CREATE TABLE IF NOT EXISTS albums(
   id INTEGER PRIMARY KEY,
   name TEXT,
   year INTEGER,
   artist_id INTEGER,
   FOREIGN KEY(artist_id) REFERENCES artist(id)
 );
```

**Tests.activeBatsTest('test.bats', callback);**

table_exists() {
  sqlite3 output.sqlite "SELECT * FROM $1 LIMIT 1"
}

column_exists?() {
  sqlite3 output.sqlite "SELECT $2 FROM $1"
}

get_lowercase_schema() {
	sqlite3 output.sqlite "SELECT sql FROM sqlite_master WHERE TYPE='table' AND NAME='$1'" | tr -d '\n' | tr '[[:upper:]]' '[[:lower:]]'
}

@test "Create an 'albums' table" {
  run table_exists albums
  [ "$status" -eq 0 ]
}

@test "Include an id column" {
  run column_exists? albums id
  [ "$status" -eq 0 ]
}

@test "Include a name column" {
  run column_exists? albums name
  [ "$status" -eq 0 ]
}

@test "Include a year column" {
  run column_exists? albums year
  [ "$status" -eq 0 ]
}

@test "Include a artist_id column" {
  run column_exists? albums artist_id
  [ "$status" -eq 0 ]
}

@test "Albums table should be empty." {
  run sqlite3 output.sqlite "SELECT COUNT(*) FROM albums"
  [ "$output" -eq 0 ]
}

@test "Albums table should have four columns." {
  run sqlite3 output.sqlite "INSERT INTO albums VALUES(1,2,3,4)"
  [ "$status" -eq 0 ]
}

@test "Albums table should have a primary key." {
  run sqlite3 output.sqlite "INSERT INTO albums(id) VALUES(1)"
  [ "$status" -eq 19 ]
}  

@test "Make sure the columns have appropriate constraints set." {
  run get_lowercase_schema albums
  [[ $output =~ foreign[[:space:]]*key\(artist_id\)[[:space:]]*references[[:space:]]*artist\(id\) ]]
}

@test "Delete data inserted for tests" {
  sqlite3 output.sqlite "DELETE FROM albums WHERE id > 0"
}

**Config**

Command to be run the first time user starts this exercise.

cp ./.exercise_1.sqlite db.sqlite



## 9. Foreign Key Constraints (DELETED)

**Narrative**

```sql
 DROP TABLE IF EXISTS albums;

 CREATE TABLE IF NOT EXISTS albums(
   id INTEGER PRIMARY KEY,
   name TEXT,
   year INTEGER,
   artist_id INTEGER,
   FOREIGN KEY(artist_id) REFERENCES artist(id)
 );
```

`FOREIGN KEY` can also be a _constraint_, specified using this syntax.

`artist_id` is a column belonging to the table currently being defined.

If we try to `INSERT` data into our `albums` table where the new value for `artist_id` does not match an `id` in our `artist` table, we can't. This is valuable for validating our data (and making sure we don't insert the wrong information into our database)!

**Checkpoints**

In this lesson we learned about relationships between tables in relational databases. We also learned how to query data from multiple tables using SQL.

Let's summarize what we've learned so far.

**Config**

Command to be run the first time user starts this exercise.

cp ./.exercise_1.sqlite db.sqlite
