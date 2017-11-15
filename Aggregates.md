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

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Magic Heap', 'Fort Lauderdale', 'Augmented Reality', 500, 1800000000, 8000000000, 2013, 'D', 'Johnny Malkovich', '¯\_(ツ)_/¯');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('HoloGrail', 'San Francisco', 'Technology', 30, 51000000, 1800000000, 2016, 'B', 'Daniel Li', 'Volumetric Display');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Voice2Txt', 'San Francisco', 'Mobile', 16, 1800000, 15000000, 2012, 'Seed', 'Cole Romano', 'Transcribes Voicemails to Texts');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('V-Arrr', 'San Francisco', 'Virtual Reality', 6, 750000, 2500000, 2015, 'Seed', 'Cole Romano', 'Pirate-Themed VR App');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('REBU', 'San Francisco', 'Logisctics', 15000, 11500000000, 70000000, 2009, 'G', 'Kravis Talanick', 'Ridesharing Platform');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Rave New World', 'San Francisco', 'Social', 8, 250000, 6000000, 2014, NULL, 'Sam Guss', 'Social Media for the EDM Community');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('WaterCnC', 'San Francisco', 'Travel', 4000, 4400000000, 25000000000, 2008, 'F', 'Crian Besky', 'Water Sharing Platform for Cooks and Chefs');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('RankerBot', 'San Francisco', 'Algorithms', 5, 1500000, 7600000, 2013, 'Acquired', 'Delaney', 'Water Sharing Platform for Cooks and Chefs');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Xandesk', 'San Francisco', 'Customer Service', 100, 75500000, 640000000, 2012, 'IPO', 'Ronald Paris', 'Keep Frowning');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Everyday.me', 'San Francisco', 'Mobile', 35, NULL, NULL, 2012, 'Seed', 'Yu-Kuan Lin', 'Journal that Captures the Special Moments');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('StarsNGripes', 'Boulder', 'Social', 3, 2000000, 560000000, 2015, 'A', 'Gregory Hilt', 'Yelp for US Landmarks and Tourist Attractions');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('SoCorny', 'Omaha', 'Technology', 65, 25000000, 2000000000, 2013, 'B', 'Elon Tusk', 'Analytics Platform for Corn Production');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('VeVork', 'New York', 'Real Estate', 200, 750000000, 20000000000, 2010, 'G', 'Mada Nammneu', 'Co-relaxing Space for Vampires');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Brrr', 'New York', 'Gambling', 10, 5000000, 322000000, 2012, 'A', 'Solo', 'eSports Betting');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('BackPax', 'New York', 'Education', 2, 80000, 14000000, 2017, 'Seed', 'Jose Ferreira', 'MOOCs are Boo Hoo');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('CapitalPunishment', 'New York', 'Mobile', 15, 500000, 10000000, 2008, 'A', 'Cole Romano', 'Stock Market Brawler Game');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Son of a Fletch', 'New York', 'Social', 4, 300000, 3000000, 2014, 'Seed', 'CC Vaught', 'Social Media App for Archery Enthusiasts');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Yas Queen', 'New York', 'Health Care', 300, 45000000, 980000000, 2015, 'A', 'Jamie Brieman', 'Accelerating Breast Cancer Research');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Geocities-Lite', 'New York', 'Social', 20, 1000000, 50000000, 2012, 'A', 'Jim Jason', 'Mobile Friendly Geocities');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Cluster.ly', 'New York', 'Big Data Analytics', 10, 750000, 15000000, 2015, 'B', 'Hillary Green', NULL);

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Codefellas', 'New York', 'Education', 50, 50000000, 10000000000, 2012, 'A', 'Zane Sims', 'The Not So Easy Way to Learn to Code');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('kryptoPark', 'Palo Alto', 'Security', 70, 75000000, 10000000000, 2011, 'B', 'Joe Wang', 'Password Mgmt for Password Mgmt Services');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('zZz', 'Palo Alto', 'SaaS', 20, 50000000, 800000000, 2008, 'C', 'Henry Campbell', 'Dream Tracking/Recording');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Pita Pan', 'Palo Alto', 'Technology', 40, 30000000, 5500000000, 2015, 'B', 'Schuylar Croom', 'Drone Food Delivery Service');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('nova.ai', 'Palo Alto', 'Enterprise', 340, 3000000, 25000000, 2013, 'A', 'Nick Kinsella', NULL);

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('XNA', 'Palo Alto', 'Health Care', 250, 540000000, 760000000000, 2012, 'C', 'Owen Pilsner', 'Genome Database');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Cloud Nine', 'Palo Alto', 'Cloud Computing', 35, 36000000, 140000000, 2013, 'A', 'Jase Farmer', NULL);

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Scramptons', 'Long Island', 'Security', 5, 200000, 8000000000, 2017, 'Seed', 'Henri Bernard', 'Home Security');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Carcheesian Plane', 'Paris', 'Education', 30, 3000000, 50000000, 2012, 'A', 'Jim Mussen', 'A Gouda Place to Learn Math');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Dungees and Dragos', 'Atlanta', 'Games', 3, 300000, 1600000, 2014, 'Seed', 'Stuart Stickler', 'Tabletop Gaming for the Insufferable');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('VaporWear', 'Virginia Beach', 'Social', 15, 450000, 14000000, 2017, 'Seed', 'TJ Harris', 'Social Network for Vaping Enthusiasts');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('RICE Media', 'Brooklyn', 'Video Streaming', 3000, 730000000, NULL, 1994, NULL, 'Shayna Craftsman', '2cool4school');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Townie666', 'Brooklyn', NULL, 2, 20000, 80000, 2017, 'Seed', 'Sonny Li', '*_*');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Kimberly', 'Brooklyn', NULL, 2, 100000, 8500000, 2018, 'Seed', 'Jillian Kuzmin', 'Synthetic Diamonds');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Wakeful', 'Brooklyn', 'Virtual Reality', 3, 30000, 1800000, 2016, 'Seed', 'Maria Epstein', 'Meditation VR App');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('MLGB', 'Columbus', 'E-commerce', 2, 50000, 500000, 2012, 'Seed', 'Xin Xin', 'Authentic Streetwear or DDoS''ed');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('PostGurt', 'Savannah', 'Social', 6, 550000, 200000000, 2013, 'Seed', 'Lauretta Brieman', 'Subscription Based Yogurt in the Mail');

INSERT INTO startups(name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES ('Kimberly', 'Brooklyn', NULL, 2, 100000, 8500000, 2018, 'Seed', 'Jillian Kuzmin', 'Synthetic Diamonds');




```
