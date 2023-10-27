"""
This is the same idea as `request_formats.py`, except it defines the response formats that the
backend sends to the frontend (instead of vice-versa).
"""

from pydantic import BaseModel


class Recommendation(BaseModel):
    """
    Again, this is an oversimplified example just being used for demonstration purposes.
    """

    # the response must include a movie_id key with an int value
    movie_id: int

    # it also must include the movie's title, which would be a string
    movie_title: str

    # optionally, it could include a path to an image for the movie
    movie_img: str | None = None
