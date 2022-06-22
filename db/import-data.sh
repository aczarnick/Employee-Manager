 #!/bin/bash 

# Found here:
# https://dotnetthoughts.net/initialize-mssql-in-docker-container/
for i in {1..50};
do
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Q@ckingDuck2133 -d master -i setup.sql
    if [ $? -eq 0 ]
    then
        echo "setup.sql completed"
        break
    else
        echo "not ready yet..."
        sleep 1
    fi
done