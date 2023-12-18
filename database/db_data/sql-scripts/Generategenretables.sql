insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 0 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 0 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 1 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 1 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 2 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 2 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 3 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 3 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 4 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 4 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 5 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 5 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 6 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 6 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 7 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 7 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 8 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 8 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 9 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 9 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 10 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 10 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 11 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 11 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 12 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 12 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 13 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 13 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 14 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 14 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 15 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 15 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 16 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 16 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 17 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 17 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 18 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 18 and rt.rating > 2.5 group by rt.movieId order by score desc;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 19 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 19 and rt.rating > 2.5 group by rt.movieId order by score desc;

select * from moviesgenrescores where movie_id >= 0 order by score desc;

select * from users;