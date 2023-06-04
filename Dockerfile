FROM r-base

WORKDIR /app

COPY . /app

RUN echo 'deb http://deb.debian.org/debian/ sid main' > /etc/apt/sources.list
RUN apt-get update && apt-get install -y libcurl4-openssl-dev
RUN R -e "install.packages(c('data.table', 'DBI', 'RSQLite', 'curl'), repos='http://cran.rstudio.com/')"


#RUN wget https://repo.anaconda.com/miniconda/Miniconda3-py38_23.3.1-0-Linux-x86_64.sh && Miniconda3-py38_23.3.1-0-Linux-x86_64.sh