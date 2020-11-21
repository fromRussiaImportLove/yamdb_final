FROM python:3.8-slim

ENV STATIC_ROOT = '/static'
VOLUME /static
EXPOSE 8000

WORKDIR /code
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
#CMD python manage.py runserver 0.0.0.0:8000

