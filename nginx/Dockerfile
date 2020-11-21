FROM nginx:1.19.4

RUN rm /etc/nginx/conf.d/default.conf && mkdir -p /code/static
COPY nginx.conf /etc/nginx/conf.d
