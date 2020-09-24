  # The FROM instruction sets the Base Image for subsequent instructions.
# Using Nginx as Base Image
FROM ubuntu

RUN echo "deb http://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list && echo "deb-src http://repo.percona.com/apt jessie main" >> /etc/apt/sources.list.d/percona.list && apt-key adv --keyserver keys.gnupg.net --recv-keys 8507EFA5

RUN apt update && apt install -y --no-install-recommends percona-xtrabackup-80 mysql-client nmap && rm -rf /var/lib/apt/lists/*
