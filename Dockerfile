FROM python:3.8
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt 
WORKDIR /app
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app