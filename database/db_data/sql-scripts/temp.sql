select * from users;

select * from ratings;

select * from genres;

select * from genres order by genre_id asc;

update users set Action = 0.0, Adventure = 0.0342, Animation = 0.0, Children = 0.0892, Comedy = 0.0, Crime = 0.326, Documentary = 0.0, Drama = 0.132, Fantasy = 0.0123, SciFi = 0.125, Thriller = 0.0512, War = 0.0235, Western = 0.186, IMAX = 0.0548, none = 0.0 where users.user_id = 3;

#create temporary table Adventure select movie_id, movie_id = 0.0 as score from movie_genre where genre_id = 1 limit 10;

select * from Adventure order by score desc;

update Adventure set score = 1427 where movie_id = 53;

select * from users;