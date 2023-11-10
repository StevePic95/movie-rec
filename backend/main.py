"""
All this file does is run a uvicorn server to host the backend on port 9000.
"""


import uvicorn
import pathlib


if __name__ == "__main__":

    # first argument is basically saying "look in the 'app' folder, get the 'app.py' file,
    # then use the 'app' object in that file as the backend"
    uvicorn.run("app.app:app", host="0.0.0.0", port=9000, reload=True)
