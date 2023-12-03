#create table ActionMovies (
#movie_id int not null,
#score int,
#foreign key (movie_id) references ratings(movieId)
#);

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 0 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 0 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 1 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 1 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 2 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 2 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 3 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 3 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 4 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 4 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 5 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 5 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 6 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 6 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 7 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 7 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 8 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 8 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 9 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 9 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 10 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 10 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 11 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 11 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 12 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 12 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 13 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 13 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 14 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 14 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 15 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 15 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 16 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 16 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 17 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 17 group by rt.movieId order by score desc limit 1000;

insert into moviesgenrescores select rt.movieId as movie_id, sum(rt.rating) as score, 18 as genre_id from ratings as rt inner join movie_genre as mg on rt.movieId = mg.movie_id where mg.genre_id = 18 group by rt.movieId order by score desc limit 1000;

select * from moviesgenrescores;

#select movieId, sum(rating) as score from ratings where userId < 10 group by movieId order by score desc;

#update ratings as rt, movie_genre as mg set rt.genre_id = mg.genre_id where rt.movieId = mg.movie_id;

#update moviesgenrescores set genre_id = 1;

#select * from ratings where userId < 100;

#select movie_id, max(score) as score from moviesgenrescores as mgs group by movie_id order by score desc;

#select * from users where user_id = 1;

#DROP TEMPORARY TABLE if exists moviescoresaugmented;


/*
#CREATE TEMPORARY TABLE moviescoresaugmented select movie_id, score * 0.125 as score
#	from moviesgenrescores as mgs 
#    where genre_id = 0;

#insert into moviescoresaugmented select movie_id, score * 0.326
	from moviesgenrescores as mgs 
    where genre_id = 1;
    
#insert into moviescoresaugmented select movie_id, score * 0.012
	from moviesgenrescores as mgs 
    where genre_id = 2;
    
#insert into moviescoresaugmented select movie_id, score * 0.051
	from moviesgenrescores as mgs 
    where genre_id = 3;
    
#insert into moviescoresaugmented select movie_id, score * 0.132
	from moviesgenrescores as mgs 
    where genre_id = 4;
    
insert into moviescoresaugmented select movie_id, score * 0.0
	from moviesgenrescores as mgs 
    where genre_id = 5;
    
insert into moviescoresaugmented select movie_id, score * 0.0
	from moviesgenrescores as mgs 
    where genre_id = 6;
    
insert into moviescoresaugmented select movie_id, score * 0.186
	from moviesgenrescores as mgs 
    where genre_id = 7;
    
insert into moviescoresaugmented select movie_id, score * 0.089
	from moviesgenrescores as mgs 
    where genre_id = 8;
    
insert into moviescoresaugmented select movie_id, score * 0.000
	from moviesgenrescores as mgs 
    where genre_id = 9;
    
insert into moviescoresaugmented select movie_id, score * 0.000
	from moviesgenrescores as mgs 
    where genre_id = 10;
    
insert into moviescoresaugmented select movie_id, score * 0.000
	from moviesgenrescores as mgs 
    where genre_id = 11;
    
insert into moviescoresaugmented select movie_id, score * 0.000
	from moviesgenrescores as mgs 
    where genre_id = 12;
    
insert into moviescoresaugmented select movie_id, score * 0.000
	from moviesgenrescores as mgs 
    where genre_id = 13;
    
insert into moviescoresaugmented select movie_id, score * 0.034
	from moviesgenrescores as mgs 
    where genre_id = 14;
    
insert into moviescoresaugmented select movie_id, score * 0.000
	from moviesgenrescores as mgs 
    where genre_id = 15;
    
insert into moviescoresaugmented select movie_id, score * 0.024
	from moviesgenrescores as mgs 
    where genre_id = 16;
    
insert into moviescoresaugmented select movie_id, score * 0.055
	from moviesgenrescores as mgs 
    where genre_id = 17;
    
insert into moviescoresaugmented select movie_id, score * 0.000
	from moviesgenrescores as mgs 
    where genre_id = 18;
    
insert into moviescoresaugmented select movie_id, score * 0.000
	from moviesgenrescores as mgs 
    where genre_id = 19;
    
    

#select * from moviescoresaugmented order by movie_id;

select movie_id, max(score) as score from moviescoresaugmented as msa group by movie_id order by score desc;

#select * from moviesgenrescores;
*/
