"""
This is the file where we'd define the models we use to make predictions/recommendations. In the
future, we might want to expand this into its own folder, but keeping things simple for now.
"""

import numpy as np


class WorldsWorstMovieRecommender:
    """
    This is a stupid model that just recommends the lego movie no matter what. For demonstration
    purposes only.
    """

    def predict(self, x: np.ndarray) -> np.ndarray:
        """
        The model accepts and returns raw data. It won't deal with the request and response 
        formats we've defined. Input and output should be processed somewhere else so the models
        only have to do their job.

        Here let's assume it's a model that returns a NumPy array where the index of each element
        corresponds to a movie ID, and the value of each element is the predicted probability that
        the user will like that movie. In this case, the index of the highest element would tell 
        you the best recommendation for the user represented by input argument `x`.
        """
        # lol
        if x == x:
            x = x

        lego_movie_id = 77

        # create an array of random values between 0 and 1 (length 100)
        result = np.random.rand(100)

        # because this is a stupid model, let's make sure the lego movie is always returned
        result = result / 2  # vector-style scalar division
        result[lego_movie_id] = 1.0

        return result
