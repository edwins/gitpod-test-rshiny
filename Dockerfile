FROM rocker/shiny:3.6.3

RUN apt-get update && apt-get install -y \
    things-i-want-to-install
    
COPY shiny-app/app.R /srv/shiny-app/app.R
