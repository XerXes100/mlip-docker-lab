# syntax=docker/dockerfile:1

FROM python:3.9-slim

# TODO [1]: Set WORKDIR to /app
WORKDIR /app

# TODO [2.1]: Copy the requirements.txt file to the WORKDIR
COPY requirements.txt requirements.txt
COPY iris_model.pkl iris_model.pkl

# TODO [2.2]: Install the requirements
RUN pip3 install -r requirements.txt

# TODO [3]: Copy the server to the WORKDIR
COPY server.py server.py

# TODO [4]: Set the command to run the app
CMD ["python3", "server.py"]