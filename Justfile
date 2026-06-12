set dotenv-load

migrations_dir := "schema/"

project  := env_var_or_default("SPANNER_PROJECT_ID",  "apex-494315")
instance := env_var_or_default("SPANNER_INSTANCE_ID", "apex-spanner-instance")
database := env_var_or_default("SPANNER_DATABASE_ID", "apex-database")

# Apply all pending migrations
migrate-up:
    wrench migrate up \
        --project  {{project}} \
        --instance {{instance}} \
        --database {{database}} \
        --directory {{migrations_dir}} 

# Show which migrations have and haven't been applied
migrate-status:
    wrench migrate \
        --project  {{project}} \
        --instance {{instance}} \
        --database {{database}} \
        --directory {{migrations_dir}} \
        status

# Roll back the last applied migration
migrate-down:
    wrench migrate \
        --project  {{project}} \
        --instance {{instance}} \
        --database {{database}} \
        --directory {{migrations_dir}} \
        down

# Create a new migration file: just migrate-create add-playback-uri
migrate-create name:
    wrench migrate \
        --directory {{migrations_dir}} \
        create {{name}}


migrate-repair:
  wrench migrate repair \
        --project  {{project}} \
        --instance {{instance}} \
        --database {{database}} \
        --directory {{migrations_dir}}

