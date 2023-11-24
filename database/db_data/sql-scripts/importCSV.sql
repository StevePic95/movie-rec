LOAD DATA LOCAL INFILE 'C:/Users/zwolf/Documents/GitHub/movie-rec/database/db_data/processed_csvs/ratings.csv' 
INTO TABLE ratings 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/zwolf/Documents/GitHub/movie-rec/database/db_data/processed_csvs/user_genre_scores.csv' 
INTO TABLE users 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;