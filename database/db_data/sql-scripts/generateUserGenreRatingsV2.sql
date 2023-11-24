DROP TEMPORARY TABLE if exists genre4;

CREATE TEMPORARY TABLE genre4 select user_id, rtg.rating / count(mg.genre_id) as sumAmt
	from users as usr 
    inner join 
    (	ratings as rtg 
		inner join 
		movie_genre as mg 
        on rtg.movieId = mg.movie_id) 
	on usr.user_id = rtg.userId 
    where genre_id = 4 and user_id < 10 
    group by usr.user_id, mg.movie_id, mg.genre_id, rtg.rating;
    
DROP TEMPORARY TABLE if exists genre4v2;

create temporary table genre4v2 select user_id, sumAmt / (count(sumAmt) * 10)  as sumAmt from genre4 group by user_id, sumAmt;
select user_id, sumAmt  as sumAmt from genre4 group by user_id, sumAmt;
    
update users as usr inner join genre4v2 as gr on usr.user_id = gr.user_id set usr.Comedy = gr.sumAmt where gr.user_id = usr.user_id;
    
select * from genres order by genre_id asc;

select * from moviesgenrescores where genre_id = 9;

select * from moviesgenrescores where genre_id = 1;
