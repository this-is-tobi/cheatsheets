# Pgrestore

## Global

### Restore postgresql database

```sh
PGPASSWORD=<db_password> pg_restore -Fc -U <db_user> -d <db_name> <dump_file>
```
