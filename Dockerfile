FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY parallax-template.zip /usr/share/nginx/html/parallax-template.zip
RUN cd /usr/share/nginx/html && unzip /usr/share/nginx/html/parallax-template.zip
RUN cp -pr /usr/share/nginx/html/parallax-template/* /usr/share/nginx/html
