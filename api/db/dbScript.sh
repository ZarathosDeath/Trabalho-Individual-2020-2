echo "Initializing Postgres"
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  GRANT ALL PRIVILEGES ON DATABASE myproject TO myuser;
  ALTER USER myuser CREATEDB;
EOSQL