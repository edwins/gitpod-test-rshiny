FROM rocker/shiny:3.6.3
    
COPY shiny-app/app.R /srv/shiny-app/app.R

RUN sed -i 's/run_as shiny;/run_as gitpod shiny;/g' /etc/shiny-server/shiny-server.conf && \ 
    chmod a+x /srv/shiny-app/app.R

ENTRYPOINT /srv/shiny-app/app.R
