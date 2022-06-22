# Found relevant information from
# https://dotnetthoughts.net/initialize-mssql-in-docker-container/
# https://www.softwaredeveloper.blog/initialize-mssql-in-docker-container

FROM mcr.microsoft.com/mssql/server:2019-latest

# needed to execute CHMOD without making a dir. 
# probably should just mkdir
USER root

WORKDIR /db
EXPOSE 1433

COPY . .

# adds execution privelage 
RUN chmod +x entrypoint.sh

ENV SA_PASSWORD Q@ckingDuck2133
ENV ACCEPT_EULA Y

CMD /bin/bash ./entrypoint.sh