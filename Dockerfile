 FROM ubuntu:latest

 WORKDIR /app

RUN apt-get update && apt-get install -y apache2 git
 
RUN git clone https://github.com/AgusFassola/finalFassolaAgustin.git /var/www/html
 
EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]