# Speedtest
Internet speed measurement, storage and historical graph representation.

Based on:
https://github.com/robinmanuelthiel/speedtest/


## Setup

1. Run `bash run-docker-compose.sh`. (Priviledges can be granted with `chmod +x run-docker-compose.sh` if needed.)
2. Login to `localhost:3000` to setup Grafana. Default credentials are "admin".
3. Add data source.    
    a) "Configuration" >> "Data Sources" >> "Add".   
    b) InfluxDB uses URL `http://influxdb:8086` by default.   
    c) Default database is `speedtest`.   
