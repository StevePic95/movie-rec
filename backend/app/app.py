"""
This is the main file for the FastAPI backend. All the services that the frontend calls to request
data will be defined here.

I have created a few separate python modules in this folder that are imported here, mostly just to 
keep this file clean. The only definitions here are for the main process (the `app` variable) and 
its endpoints. However, this is totally subjective and can be changed.
"""

import numpy as np
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

import src.utils as utils
import src.request_formats as requests
import src.response_formats as responses
from src.model import WorldsWorstMovieRecommender


# frontend is also running on localhost, but from port 3000
FRONTEND_PORT = 3000
FRONTEND_HOST = "localhost"

# only localhost connections can make requests to the backend for security
ALLOWED_ORIGINS = [
    f"http://{FRONTEND_HOST}:{FRONTEND_PORT}",
    f"{FRONTEND_HOST}:{FRONTEND_PORT}"
]


stupid_model = WorldsWorstMovieRecommender()

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=ALLOWED_ORIGINS,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"]
)

@app.get("/echo/{input}")
async def echo(input):
    """
    A basic test endpoint that returns the param passed in the URL
    """
    return {"echo": input}

@app.post("/recommend")
async def make_recommendation(userdata: requests.UserData) -> responses.Recommendation:
    """
    A temporary endpoint showing how the backend might use a model to process user data, then
    return a prediction.

    With POST requests like this one, the request body from the frontend must include all the 
    information defined in the UserData class. See the `request_formats.py` file for an idea
    of how we can define these custom request formats.
    """
    input = utils.convert_userdata_to_model_input(userdata)
    predictions = stupid_model.predict(input)

    # see docstring for WorldsWorstMovieRecommender.predict for how this works
    best_recommendation_movie_id = int(np.argmax(predictions))

    return utils.convert_movie_id_to_recommendation(best_recommendation_movie_id)

