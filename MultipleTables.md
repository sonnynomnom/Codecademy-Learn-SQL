# CodecademySQL

`./upload workspaces/sql_unit_4 --type:sql`

```sql
CREATE TABLE albums_new(id INTEGER, name TEXT, artist_id INTEGER, year INTEGER);

INSERT INTO albums_new(id, name, artist_id, year) VALUES (1, 'Blonde', NULL, 2016);

UPDATE albums_new
SET id = 15
WHERE name = 'Blonde';

```


## Project

```sql

CREATE TABLE trips(id INTEGER PRIMARY KEY, date TEXT, pickup TEXT, dropoff TEXT, rider_id INTEGER, car_id INTEGER, type TEXT, cost INTEGER, tip INTEGER);

CREATE TABLE riders(id INTEGER PRIMARY KEY, first TEXT, last TEXT, username TEXT, rating INTEGER, referred INTEGER, last_trip INTEGER, total_trips INTEGER);

CREATE TABLE cars(id INTEGER PRIMARY KEY, model TEXT, OS TEXT, engineer TEXT, status TEXT, trips_completed INTEGER);

DROP TABLE trips;

DROP TABLE riders;

DROP TABLE cars;

INSERT INTO trips(id, date, pickup, dropoff, rider_id, car_id, type, cost, tip) VALUES (1001, '2017-12-05', '06:45', '07:10', 102, 1, 'X', 28.60, 2.40);

INSERT INTO trips(id, date, pickup, dropoff, rider_id, car_id, type, cost, tip) VALUES (1002, '2017-12-05', '08:00', '08:15', 101, 5, 'POOL', 9.10, 0);

INSERT INTO trips(id, date, pickup, dropoff, rider_id, car_id, type, cost, tip) VALUES (1003, '2017-12-05', '09:30', '09:50', 104, 4, 'X', 24.00, 3.00);

INSERT INTO trips(id, date, pickup, dropoff, rider_id, car_id, type, cost, tip) VALUES (1004, '2017-12-05', '13:40', '14:05', 105, 1, 'X', 31.20, 0);

INSERT INTO trips(id, date, pickup, dropoff, rider_id, car_id, type, cost, tip) VALUES (1005, '2017-12-05', '15:15', '16:00', 103, 2, 'POOL', 18.95, 0);

INSERT INTO trips(id, date, pickup, dropoff, rider_id, car_id, type, cost, tip) VALUES (1006, '2017-12-05', '08:20', '18:55', 101, 3, 'XL', 78.00, 7.00);



INSERT INTO riders(id, first, last, username, rating, referred, last_trip, total_trips) VALUES (101, 'Sonny', 'Li', '@sonnynomnom', 4.66, 102, 1006, 923);

INSERT INTO riders(id, first, last, username, rating, referred, last_trip, total_trips) VALUES (106, 'Chris', 'Christie', '@chrischristie', 0.75, NULL, 666, 420);



INSERT INTO cars(id, model, OS, engineer, status, trips_completed) VALUES (1, 'Ada001', 'Finux', 23, 'active', 45);

INSERT INTO cars(id, model, OS, engineer, status, trips_completed) VALUES (2, 'Ada002', 'Finux', 23, 'active', 30);

INSERT INTO cars(id, model, OS, engineer, status, trips_completed) VALUES (3, 'Turing XL', 'iApollo', 32, 'active', 154);

INSERT INTO cars(id, model, OS, engineer, status, trips_completed) VALUES (4, 'Akira', 'QNX', 45, 'active', 22);

INSERT INTO cars(id, model, OS, engineer, status, trips_completed) VALUES (5, 'Akira', 'QNX', 45, 'maintenance', 2);

```

# DELETED Project

1. Create a table named `tracks` with an `id`, `title`, and `album_id` column. The `id` column should be the `PRIMARY KEY`.
2. "Smooth Criminal" is a track from Michael Jackson's "Bad" album. Add this track to the database.
3. Add more tracks to the database.
4. Combine the `albums` and `tracks` tables using an `INNER JOIN`. Order the query by `album_id`.
5. Combine the `albums` and `artists` table using a `LEFT OUTER JOIN`. Let `albums` be the left table.
6. Combine the `albums` and `artists` table using a `LEFT OUTER JOIN`. Let `artists` be the left table.
7. Use any join you like to combine the `albums` and `tracks` table. Rename the `album_id` column to `Albums`.


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
