
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

COPY ./app /app
WORKDIR /app
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

# FROM node
# WORKDIR /app
# COPY package.json /app
# RUN npm install
# COPY . /app
# EXPOSE 8080
# CMD node index.js