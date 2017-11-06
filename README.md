# CodecademySQL

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

./upload workspaces/sql_unit_2 --type:sql

```sql
UPDATE movies
SET genre = NULL
WHERE name = 'Ali Wong: Baby Cobra';
```



# Multiple Tables

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

---

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
