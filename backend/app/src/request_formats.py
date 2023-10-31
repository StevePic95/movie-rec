"""
This file defines the formats for request bodies to the main backend application. Usually, the
name for these is "data models", but I thought that name could get confusing since we're mostly
working with ML models.

Only in a separate file to keep things organized in the `app.py` file.
"""


from pydantic import BaseModel


class UserData(BaseModel):
    """
    This is a basic example of how you define a request format. The real version of this would
    use fields that actually exist in MovieLens, and probably include much more detail.
    """

    # the request must include an "age" key with an int value
    age: int

    # request must include a "liked_movies" key with a list of strings value
    liked_movies: list[str]

    # because this field has a default value, including it in the request is optional
    # (in Python 3.11, type hints can use "|" as "OR")
    favorite_genre: str | None = None


