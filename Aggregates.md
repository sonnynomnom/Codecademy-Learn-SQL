# CodecademySQL

`./upload workspaces/sql_unit_3 --type:sql`

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


`./upload workspaces/sql_unit_3 --type:sql`

```sql
UPDATE movies
SET genre = NULL
WHERE name = 'Ali Wong: Baby Cobra';
```


## Project

```sql

CREATE TABLE startups(name TEXT, location TEXT, category TEXT, employees INTEGER, raised INTEGER, valuation INTEGER, founded INTEGER, stage TEXT, ceo TEXT, info TEXT);

DROP TABLE startups;


INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Pied Piper', 'Silicon Valley', 'Cloud Computing', 6, 5000000, 50000000, 2014, 'A', 'Richard Hendricks', 'A Middle-Out Compression Solution');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Hooli', 'Silicon Valley', 'Enterprise', 9000, 580000000, 49500000000, 1997, NULL, 'Gavin Bensen', 'Hooli Is About People');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Raviga Capital', 'Silicon Valley', 'Venture Capital', 12, 300000000, 3000000000, 2012, NULL, 'Peter Gregory', 'Share Only In Success');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Aviato', 'Silicon Valley', 'Travel', 3, 250000, 2500000, 2006, 'Acquired', 'Erlich Bachman', 'Software Aggregation Program');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('SEE FOOD', 'Silicon Valley', 'Mobile', 2, NULL, 15000000, 2016, 'Acquired', 'Jian-Yang', 'The Shazam of Food');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Forbid', 'New York', 'Mobile', 25, 1400000, 5000000, 2013, 'Acquired', 'Charlie Dattolo', 'Charge Users $10 for Calling Their Ex');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Soulstice', 'New York', 'Fitness', 300, 30000000, 120000000, 2014, 'B', NULL, 'What are your goals today?');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('E-Corp', 'New York', 'Enterprise', 10000, NULL, 66000000000, 2006, NULL, 'Phillip Price', 'Together We Can Change the Wolrd');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Allsafe Cybersecurity', 'New York', 'Security', 250, 123000000, 1000000000, 2014, NULL, 'Gideon Goddard', NULL);

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('fsociety', 'Brooklyn', 'Games', 5, NULL, NULL, 2015, 'Stealth', 'Elliot Alderson', 'Fun Society Arcade');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Summit Ice', 'Los Angeles', 'Fashion', 2, 50000, 800000, 2015, 'Seed', 'Nathan Fielder', 'Raising Awareness of the Holocaust');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('The Movement', 'Los Angeles', 'Fitness', 3, 15000, NULL, 2015, 'Seed', 'Nathan Fielder', 'No Gym. No Weights. Just Results.');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('WUPHF!', 'Scranton', 'Social', 6, 25000, 10000, 2010, 'Seed', 'Ryan Howard', 'Cross-Portal Messaging System');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Fakeblock', 'Irvine', 'Mobile', 2, 3, NULL, 2013, 'Seed', 'George Michael', 'OC''s Most Popular Digital Wood Instrument');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Magic Heap', 'Fort Lauderdale', 'Augmented Reality', 500, 1800000000, 8000000000, 2013, 'D', 'Johnny Malkovich', 'Virtual Retinal Display');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('HoloGrail', 'San Francisco', 'Technology', 30, 51000000, 1800000000, 2016, 'B', 'Hezekiah Wood', 'Hologram Video Chat');









```
