#!/bin/bash

psql -U postgres -d postgresdb -c "CREATE USER emiliouser WITH PASSWORD '12345678';"
psql -U postgres -d postgresdb -c "GRANT ALL PRIVILEGES ON DATABASE postgresdb TO emiliouser;"