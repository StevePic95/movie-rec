"""
This is the file where we'd define the models we use to make predictions/recommendations. In the
future, we might want to expand this into its own folder, but keeping things simple for now.
"""

import numpy as np
import tensorflow as tf

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
    
class UserModel:
    """
    Model accepts data for one particular user at a time and makes relative predictions based on
    content they have already consumed. In particular, it takes two parameters.
    """
    def __init__(self, user_preferences : np.ndarray):
        self.user_preferences = user_preferences

    @staticmethod
    def embed(user_preferences, movie_features, embedding_dim = 4):
        """
        PARAMS - 
        user_preferences : feature matrix of user's accumulated movie feature matrices.
        movie_features : feature matrix of movie
        embedding_dim : dimensionality of embeddings

        DESCRIPTION -
        Normalizes user preferences and movie features to the same dimensionality via embedding layers.
        """
        # Defining embedding layers
        user_embedding_layer = tf.keras.layers.Embedding(input_dim=np.max(user_preferences) + 1, output_dim=embedding_dim)
        movie_embedding_layer = tf.keras.layers.Embedding(input_dim=np.max(movie_features) + 1, output_dim=embedding_dim)
        # Reshaping the data to fit the embedding layer input
        user_preferences = user_preferences.reshape(-1)
        movie_features = movie_features.reshape(-1)

        # Creating embeddings for user preferences and movie features
        user_embeddings = user_embedding_layer(user_preferences)
        movie_embeddings = movie_embedding_layer(movie_features)

        # Reshaping the embeddings to their original shapes
        user_embeddings = tf.reshape(user_embeddings, (-1, user_preferences.shape[0], embedding_dim))
        movie_embeddings = tf.reshape(movie_embeddings, (-1, movie_features.shape[0], embedding_dim))
        return user_embeddings, movie_embeddings

    def predict(user_id, x : np.ndarray) -> np.ndarray: 
        """
        PARAMS -
        user_id : id of the active user.
        x : movie features matrix. 
        """
        print(x)

    @staticmethod    
    def calculate_similarity(user_preferences : np.ndarray , movie_features : np.ndarray) -> np.ndarray:
        """
        PARAMS - 
        user_preferences : user features matrix.
        movie_features : movie features matrix.

        PRECONDITIONS - 
        user_preferences and movie_features must be of the same dimensionality for the cosine similarity to work.
        """
        return np.dot(user_preferences, movie_features) / (np.linalg.norm(user_preferences) * np.linalg.norm(movie_features))

