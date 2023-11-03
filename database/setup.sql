CREATE TABLE movies (
  movie_id INT,
  title VARCHAR(100),
  imdb_id INT,
  tmdb_id INT
);

CREATE TABLE genres (
  genre_id INT,
  genre_name VARCHAR(100)
);

CREATE TABLE users (
  user_id INT
);

CREATE TABLE tag_options (
  tag_id INT,
  tag_name VARCHAR(100)
);

CREATE TABLE ratings (
  rating_id INT,
  user_id INT,
  movie_id INT,
  rating_value FLOAT
);

CREATE TABLE movie_genres (
  movie_id INT,
  genre_id INT,
);

CREATE TABLE movie_tags (
  movie_id INT,
  tag_id INT,
  relevance FLOAT
);

CREATE TABLE tag_instances (
  tag_instance_id INT,
  user_id INT,
  movie_id INT,
  tag_name VARCHAR(100)
)

LOAD DATA INFILE '/path/to/csvs/users.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE '/path/to/csvs/products.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

