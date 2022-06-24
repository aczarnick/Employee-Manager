# Found relevant information from
# https://www.softwaredeveloper.blog/initialize-mssql-in-docker-container

FROM mcr.microsoft.com/mssql/server:2019-latest

USER root

ARG MSSQL_PASSWORD

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

EXPOSE 1433

# Copy initialization scripts
COPY . /usr/src/app

# pass password to container
ENV SA_PASSWORD=${MSSQL_PASSWORD}

# accept the end user liscence agreement
ENV ACCEPT_EULA Y

# adds execution privilege 
RUN chmod +x /usr/src/app/import-data.sh

USER mssql
CMD /bin/bash ./entrypoint.sh