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

# Baby Names

```sql
DROP TABLE StateNames;
```

```sql
ALTER TABLE NationalNames
RENAME TO baby;
```

```sql
DELETE FROM NationalNames
WHERE Year < 2014;
```

```sql
DELETE FROM baby
WHERE Count < 200;
```

Drop column id!
```sql
ALTER TABLE NationalNames
DROP COLUMN Id;
```


Dataset: https://www.kaggle.com/kaggle/us-baby-names/data  

`Id`, `Name`, `Year`, `Gender`, `Count`

Example: https://www.kaggle.com/kostdiek/us-baby-names-with-sql-python  

SSA: https://www.ssa.gov/OACT/babynames/  

- Find the number of girls who were named Lillian for the full span of time of the database:

```sql
SELECT year, count
FROM NationalNames
WHERE name = 'Lillian' AND gender = 'F';
```

- Find 20 names from the year 2014 where 10 or less people have that name.

```sql
SELECT name
FROM NationalNames
WHERE year = '2014' AND count <= 10
LIMIT 20;
```

- Find 20 distinct names that start with 'L':

```sql
SELECT DISTINCT name
FROM NationalNames
WHERE name LIKE 'L%'
LIMIT 20;
```

- Top Names in 2016.

- Decade?

SELECT name
FROM nationalnames
WHERE year BETWEEN 2000 AND 2009
ORDER BY count
LIMIT 20;


- Your friend has a twin named Bitly and Livly, find a name that ends with "ly".


