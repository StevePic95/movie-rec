-- This file is used for the initial database setup. It is only
-- invoked if the persistent data directory is empty, which the 
-- image interprets to mean that it is being run for the first time.
--
-- The code has been split up into 8 similar chunks, each of which 
-- builds one of the 8 tables in the database. For each, the table 
-- is first created, then the data is loaded in from the csv files.

CREATE TABLE movies (
  movie_id INT,
  title VARCHAR(100),
  imdb_id INT,
  tmdb_id INT
);
LOAD DATA INFILE '/var/lib/setup_data/movies.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE genres (
  genre_id INT,
  genre_name VARCHAR(100)
);
LOAD DATA INFILE '/var/lib/setup_data/genres.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE users (
  user_id INT
);
LOAD DATA INFILE '/var/lib/setup_data/users.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE tag_options (
  tag_id INT,
  tag_name VARCHAR(100)
);
LOAD DATA INFILE '/var/lib/setup_data/tag_options.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE ratings (
  rating_id INT,
  user_id INT,
  movie_id INT,
  rating_value FLOAT
);
LOAD DATA INFILE '/var/lib/setup_data/ratings.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE movie_genres (
  movie_id INT,
  genre_id INT,
);
LOAD DATA INFILE '/var/lib/setup_data/movie_genres.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE movie_tags (
  movie_id INT,
  tag_id INT,
  relevance FLOAT
);
LOAD DATA INFILE '/var/lib/setup_data/movie_tags.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE tag_instances (
  tag_instance_id INT,
  user_id INT,
  movie_id INT,
  tag_name VARCHAR(100)
);
LOAD DATA INFILE '/var/lib/setup_data/tag_instances.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

