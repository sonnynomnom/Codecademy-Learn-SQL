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




```sql
CREATE TABLE nomnom(name TEXT, neighborhood TEXT, cuisine TEXT, review INTEGER, price TEXT, health TEXT);


INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Peter Luger Steak House', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Jongro BBQ', 'Midtown', 'Korean', 4.5, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Pocha 32', 'Midtown', 'Korean', 4.0, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Nom Wah Tea Parlor', 'Chinatown', 'Chinese', 4.2, '$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Roberta''s', 'Brooklyn', 'Pizza', 4.4, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Speedy Romeo', 'Brooklyn', 'Pizza', 4.4, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Bunna Cafe', 'Brooklyn', 'Ethiopian', 4.6, '$$', 'A');

```


# Newspaper Headlines

```py
import pandas as pd

f = pd.read_csv("/Users/sonny/Desktop/uci-news-aggregator.csv")

keep_col = ['ID', 'TITLE', 'URL', 'PUBLISHER', 'CATEGORY', 'TIMESTAMP']

new_f = f[keep_col]

new_f.to_csv("newFile.csv", index=False)
```

422417 x 6

```py
f2 = pd.read_csv("/Users/sonny/Desktop/newFile.csv")
```

lowercase column names:

```py
f2.columns = [x.lower() for x in f2.columns]
```

move `url` to the right:

```py
f2 = f2[['id', 'title', 'publisher', 'category', 'timestamp', 'url']]
```

only take 1000 rows:

```py
f2 = f2[:1000]
```

```py
f2.to_csv("headlines.csv", index=False)
```

```bash
cd Desktop
touch db.sqlite
sqlite3 db

sqlite> CREATE TABLE news (
   'id' INTEGER,
   'title' TEXT,
   'publisher' TEXT,
   'category' TEXT,
   'timestampe' TEXT,
   'url' DATETIME
   );
   
.mode csv

.import /Users/sonny/Desktop/headlines.csv headlines
 
.schema
```

