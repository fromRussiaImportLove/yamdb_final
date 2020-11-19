FROM python:3.8-slim

ENV STATIC_ROOT = '/static'
VOLUME /static
#EXPOSE 8000

WORKDIR /code
COPY deploy/requirements.prod.txt requirements.txt
RUN pip install --upgrade pip && pip install --no-cache-dir -r /code/requirements.txt

COPY . /code
RUN ./manage.py collectstatic --noinput

CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000

