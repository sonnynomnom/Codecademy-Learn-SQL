/* Freeform Project: Writing Queries */
/* Sonny Li */

-- 1. Return all of the unique years in the movies table.
SELECT DISTINCT year FROM movies;

-- 2. Return all of the unique years in the movies table sorted from oldest to newest.
SELECT DISTINCT year FROM movies ORDER BY year ASC;

-- 3. Return all movies that are dramas.
SELECT * FROM movies WHERE genre = 'drama';

-- 4. Return all of the movies with names that contain "bride".
SELECT * FROM movies WHERE name LIKE '%bride%';

-- 5. Return all of the movies that were made between 2000 and 2015.
SELECT * FROM movies WHERE year BETWEEN 2000 AND 2015;

-- 6. Return all of the movies that were made in 1995 or have an IMDb rating of 9.
SELECT * FROM movies WHERE year = 1995 OR imdb_rating = 9;

-- 7. Return the name and IMDb rating of every movie made after 2009 in aphabetical order.
SELECT name, imdb_rating FROM movies WHERE year > 2009 ORDER BY name ASC;

-- 8. Return 3 movies with an IMDb rating of 7.
SELECT * FROM movies WHERE imdb_rating = 7 LIMIT 3;

-- 9. Return 10 movies with an IMDb rating greater than 6, are comedies, were made after 1995, and sorted by IMDb rating from highest to lowest. (Hint: you can use AND more than once in a statement)
SELECT * FROM movies WHERE imdb_rating > 6 AND genre = 'comedy' AND year > 1995 ORDER BY imdb_rating DESC LIMIT 10;

-- 10. Return all movies named 'Cast Away'.
SELECT * FROM movies WHERE name = 'Cast Away';

-- 11. Return all movies with an IMDb rating not equal to 7.
SELECT * FROM movies WHERE imdb_rating != 7;

-- 12. Return all movies with a horror genre and an IMDb rating less than 6.
SELECT * FROM movies WHERE genre = 'horror' AND imdb_rating < 6;

-- 13. Return 10 movies with an IMDb rating greater than 8 sorted by their genre.
SELECT * FROM movies WHERE imdb_rating > 8 ORDER BY genre ASC LIMIT 10;

-- 14. Return all movies that include 'King' in the name.
SELECT * FROM movies WHERE name LIKE '%King%';

-- 15. Return all movies with names that end with the word 'Out'.
SELECT * FROM movies WHERE name LIKE '%Out';

-- 16. Return all movies with names that begin with the word "The" sorted by IMDb rating from highest to lowest.
SELECT * FROM movies WHERE name LIKE 'The%' ORDER BY imdb_rating DESC;

-- 17. Return all of the movies.
SELECT * FROM movies;

-- 18. Return the name and id of each movie with an id greater than 125.
SELECT name, id FROM movies WHERE id > 125;

-- 19. Return all movies with names that begin with 'X-Men'.
SELECT * FROM movies WHERE name LIKE 'X-Men%';

-- 20. Return the first 10 movies sorted in reverse alphabetical order.
SELECT * FROM movies DESC LIMIT 10;

-- 21. Return the id, name, and genre of all movies that are romances.
SELECT id, name, genre FROM movies WHERE genre = 'romance';

-- 22. Return all of the Twilight movies in order from the year they were released from oldest to newest.
SELECT * FROM movies WHERE name LIKE '%Twilight%' ORDER BY year ASC;

-- 23. Return all of the movies that were released in 2012 that are comedies.
SELECT * FROM movies WHERE year = 2012 AND genre = 'comedy';
