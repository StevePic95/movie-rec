"""
This file contains some general helpers that don't really belong anywhere else. These are the 
kinds of things that could be defined in the main script, but would end up making it cluttered.
"""

import numpy as np

import app.src.request_formats as requests
import app.src.response_formats as responses


def convert_userdata_to_model_input(userdata: requests.UserData) -> np.ndarray:
    """
    We might use a helper function like this to convert a UserData object to something that
    the model can actually take as input. This is a numpy array, but PyTorch models would
    probably use a Tensor instead.
    """
    age = userdata.age
    fav_genre = userdata.favorite_genre
    liked_movies = userdata.liked_movies

    # Note: this is a stupid array that wouldn't work for a real model
    return np.array([age, fav_genre, liked_movies])

def convert_movie_id_to_recommendation(movie_id: int) -> responses.Recommendation:
    """
    In reality, this would probably make a query to the database to fetch the information,
    but that's not set up yet.
    """

    def fake_db_query(movie_id: int) -> list[str]:
        """
        Pretend this connects to the db and makes a query like:
            `SELECT title, img_path FROM movies WHERE id = ${movie_id}`
        """
        return ["The Lego Movie", "/app/data/images/the_lego_movie.png"]

    query_results = fake_db_query(movie_id)
    title, img_path = query_results[0], query_results[1]

    return responses.Recommendation(movie_id=movie_id, movie_title=title, movie_img=img_path)

