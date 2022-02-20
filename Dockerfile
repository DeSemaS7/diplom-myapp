FROM nginx
RUN echo "<img src="https://storage.yandexcloud.net/desema-cloud-public-bucket/cat.jpg" alt="cat">" > /usr/share/nginx/html/index.html
CMD echo "<br> running inside $HOSTNAME on STAGE env" >> /usr/share/nginx/html/index.html  \
 && nginx -g "daemon off;"
