FROM python:3.6-slim

RUN mkdir /code
WORKDIR /code

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["sh", "start.sh"]