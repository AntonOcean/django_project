FROM python:3.6-slim

RUN mkdir /code
WORKDIR /code

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

RUN gunicorn -b 0.0.0.0:8000 django_project.wsgi