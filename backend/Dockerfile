FROM python:3.11.4

WORKDIR /usr/src/

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY main.py ./

# Note: the app folder is mounted as a volume so we don't need to rebuild the image
# each time we update the code. But it will need to be rebuilt if requirements.txt
# changes.

CMD ["python", "main.py"]
