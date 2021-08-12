
#!/bin/bash

node server.js &
sleep 5 &&
curl 10.100.102.201:8081 &&
if [[ "x$?" == "x0" ]];
then    echo good;
else exit 1;
fi

