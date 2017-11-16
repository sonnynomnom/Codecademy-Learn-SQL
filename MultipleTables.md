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

CREATE TABLE trips(id INTEGER PRIMARY KEY, date TEXT, pickup_time TEXT, pickup_long TEXT, pickup_lat TEXT, dropoff_time TEXT, dropoff_long TEXT, dropoff_lat TEXT, customer_id INTEGER, driver_id INTEGER, type TEXT, cost INTEGER, tip INTEGER);

CREATE TABLE riders(id INTEGER PRIMARY KEY, first TEXT, last TEXT, username TEXT, location TEXT, rating INTEGER, referred INTEGER, first_trip_id INTEGER, last_trip_id INTEGER, total_trips INTEGER, signup_timestamp1 TEXT, timestamp1 TEXT);

CREATE TABLE self_driving_cars(id INTEGER PRIMARY KEY, model TEXT, OS TEXT, engineer TEXT, status TEXT, trips_completed INTEGER);

...

INSERT INTO trips(id, date, pickup_time, pickup_long, pickup_lat, dropoff_time, dropoff_long, dropoff_lat, customer_id, driver_id, type, cost, tip) VALUES (4927, '2017-12-05', '8:00 AM', '40.6413 N', '73.7781 W', '8:15 AM', '40.6413 N', '73.7781 W', 2, 1, 'X', 10.00, 2.00);

INSERT INTO trips(id, date, pickup_time, pickup_long, pickup_lat, dropoff_time, dropoff_long, dropoff_lat, customer_id, driver_id, type, cost, tip) VALUES (4928, '2017-12-05', '8:10 AM', '41.6413 N', '79.1254 W', '8:35 AM', '41.6413 N', '72.7781 W', 3, 3, 'POOL', 32.00, 0.00);

INSERT INTO trips(id, date, pickup_time, pickup_long, pickup_lat, dropoff_time, dropoff_long, dropoff_lat, customer_id, driver_id, type, cost, tip) VALUES (4929, '2017-12-06', '7:45 AM', '42.6413 N', '72.7781 W', '9:01 AM', '42.6413 N', '79.1254 W', 4, 4, 'X', 65.00, 3.00);

...

INSERT INTO riders(id, first, last, username, location, rating, referred, last_trip_id, total_trips) VALUES (101, 'Sonny', 'Li', '@sonnynomnom', 'bushwick', 4.66, NULL, 4444, 923);

INSERT INTO riders(id, first, last, username, location, rating, referred, last_trip_id, total_trips) VALUES (106, 'Chris', 'Christie', '@chrischristie', 'jersey', 2.32, NULL, 2331, 64);

...

INSERT INTO self_driving_cars(id, model, OS, engineer_id, status, trip_completed) VALUES (1, 'Ada001', 'Finux', 23, 'active', 45);

INSERT INTO self_driving_cars(id, model, OS, engineer_id, status, trip_completed) VALUES (1, 'Ada002', 'Finux', 23, 'active', 30);

INSERT INTO self_driving_cars(id, model, OS, engineer_id, status, trip_completed) VALUES (1, 'Edsger', 'iApollo', 123, 'active', 154);


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
