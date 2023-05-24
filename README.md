# APIs to scrape

A mock-up API of a music streaming service so you can learn how web scraping and APIs work.

## Getting started

We'll post a link to the website and API here eventually.

## Running this project on your own server

- Run the simulate.R script in src/simulate folder to generate the databases for the Flask app and FastAPI
- Install required Python packages

```
pip install fastapi
pip install fastapi_utils
pip install sqlalchemy
pip install pydantic
pip install uvicorn
pip install gunicorn
pip install flask
pip install flask_sqlalchemy
```

## How to start the API
- Clone repository locally
- Open terminal
- Go to the `fastapi` folder inside the repository
- Run the following command: `uvicorn main:app --port 8080`
- If you want to the FastAPI connection, press Ctrl + c in the terminal to quit.

## How to open the documentation;
If you want to check the documentation, you can go to following address when uvicorn is started: 
- `http://127.0.0.1:8080/docs`
- Uvicorn will show you which link is used when running the application.

## How to start the flask app
- Clone repository locally
- Open terminal
- Go to the `flask_app` folder inside the repository
- Run the following command: `gunicorn main:app --bind 127.0.0.1:8000`
- If you want to the Flask connection, press Ctrl + c in the terminal to quit.

## How to change the data
- Clone repository locally
- Open the simulate.R file within the src/simulate folder
- Make your adjustments
- Run the complete file and the databases within the Flask and FastAPI folder will be updated.

