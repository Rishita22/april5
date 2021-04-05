FROM httpd:latest
RUN rm -rf /usr/local/apache2/htdocs/index.html
RUN apt update -y
RUN apt install wget -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page265/woodo.zip
RUN apt install unzip -y
RUN unzip woodo.zip
RUN rm -rf woodo.zip
RUN mv woodo/* /usr/local/apache2/htdocs
CMD httpd-foreground
