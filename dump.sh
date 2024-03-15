# With pg_dump on machine
PGPASSWORD="password" pg_dump -U postgres -h localhost --data-only --inserts structmldb > ./init-scripts/2-dump.sql

# With pg_dump from inside the docker container
docker exec -it postgres-docker-mydatabase-1 sh -c "PGPASSWORD="password" pg_dump -U postgres -h localhost --data-only --inserts structmldb > /docker-entrypoint-initdb.d/2-dump.sql"