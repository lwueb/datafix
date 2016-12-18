FROM quantumobject/docker-shiny

RUN R -e "install.packages(c('dplyr','tidyr','reshape2','openxlsx'), repos='http://cran.rstudio.com/')"

ENV R_ZIPCMD=/usr/bin/zip

COPY ./src/ /srv/shiny-server/datafix
