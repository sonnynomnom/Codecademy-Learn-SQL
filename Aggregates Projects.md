# Codecademy - [Learn SQL](https://www.codecademy.com/learn/learn-sql)

---

**Hillary's new upload script:**

```bash
./upload --workspace workspaces/learn-sql-baby-names/ --type sql
```

**Quit:** Type `.quit` or use <kbd>Ctrl</kbd> + <kbd>D</kbd>.

**Add file:** `touch sqlite3 union.sqlite`

**Old Upload:** `./upload workspaces/sql_unit_2 --type:sql`



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

# Baby Names 👶🏼

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
WHERE Count < 500;
```

Delete column `Id`:

```sql
CREATE TABLE babies (name TEXT, year INTEGER, gender TEXT, number INTEGER);
```

```sql
INSERT INTO babies SELECT Name, Year, Gender, Count FROM baby;
```

```sql
DROP TABLE baby;
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

# Hacker News 🗞

```bash
$ python2
```

```py
import pandas as pd

f = pd.read_csv("/Users/sonny/Desktop/hacker_news.csv")

f = f[['title', 'by', 'score', 'timestamp', 'url']]
```

only take 4000 rows:

```py
f = f[:3997]
```

```py
f.to_csv("hacker_news.csv", index=False)
```

delete the first row

```bash
cd Desktop
touch db.sqlite
sqlite3 db.sqlite

sqlite>CREATE TABLE hacker_news (
   'title' TEXT,
   'by' TEXT,
   'score' INTEGER,
   'timestamp' DATETIME,
   'url' TEXT
);
   
.mode csv

.import /Users/sonny/Desktop/hacker_news.csv hacker_news
 
.schema

UPDATE hacker_news 
SET score = NULL 
WHERE score = "";

UPDATE hacker_news 
SET title = NULL 
WHERE title = "";

UPDATE hacker_news 
SET by = NULL 
WHERE by = "";

UPDATE hacker_news 
SET timestamp = NULL 
WHERE timestamp = "";

UPDATE hacker_news 
SET url = NULL 
WHERE url = "";

INSERT INTO hacker_news (title, by, score, timestamp, url) VALUES ('Magic Leap 2.0', 'scorpiosister', 0, '2018-05-08T09:40:10Z', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');

INSERT INTO hacker_news (title, by, score, timestamp, url) VALUES ('Codecademy Launched Intro to Data Analysis!', 'sonnynomnom', 4, '2017-12-21T10:35:12Z', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');

INSERT INTO hacker_news (title, by, score, timestamp, url) VALUES ('One Hack, One New York', 'sonnynomnom', 0, '2017-12-30T08:25:56Z', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
```

# The Met 🗿

Let's look at some blin! Find all of the pieces that contain gold.

1. Where are the artworks are coming from? COUNT GROUPBY
2. Which artist is the MET interested in? SUM
3. Which department hosts the largest number of artworks?

4. You are asked to research the pieces created during World War II, which began in 1939 and ended in 1945. How many pieces in the collection were created during this time?

5. Find the oldest piece in the collection.

6. What is the total square feet across all museum locations?

7. There are all kinds of things in the Met's collection. Which category of objects is most popular? Use `COUNT` and the `category` field




```bash
$ python2
```

```py
import pandas as pd

f = pd.read_csv("/Users/sonny/Desktop/met.csv")

f = f[['Object ID', 'Department', 'Object Name', 'Title', 'Artist Display Name', 'Object Date', 'Medium', 'Country']]
```


only take 4000 rows:

```py
f = f[:4000]
```

```py
f.to_csv("met.csv", index=False)
```

delete the first row

```bash
cd Desktop
touch db.sqlite
sqlite3 db.sqlite

sqlite>CREATE TABLE met (
   'id' INTEGER,
   'department' TEXT,
   'category' TEXT,
   'title' TEXT,
   'artist' TEXT,
   'date' TEXT,
   'medium' TEXT,
   'country' TEXT
);
   
.mode csv

.import /Users/sonny/Desktop/met.csv met
 
.schema

UPDATE met
SET department = NULL 
WHERE department = "";

UPDATE met
SET category = NULL 
WHERE category = "";

UPDATE met
SET title = NULL 
WHERE title = "";

UPDATE met
SET artist = NULL 
WHERE artist = "";

UPDATE met
SET date = NULL 
WHERE date = "";

UPDATE met
SET medium = NULL 
WHERE medium = "";

UPDATE met
SET country = NULL 
WHERE country = "";
```
