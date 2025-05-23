#!/bin/bash

# ---------- CONFIG ----------
MYSQL_USER="root"
MYSQL_PASS="your_mysql_pass"
MYSQL_DB="codtech"
MYSQL_RESTORE_DB="codtech_restore"

PG_USER="postgres"
PG_DB="codtech_pg"
PG_RESTORE_DB="codtech_pg_restore"

MYSQL_BACKUP="mysql_backup.sql"
PG_BACKUP="pg_backup.backup"
# ----------------------------

echo "=== MySQL BACKUP ==="
mysqldump -u $MYSQL_USER -p$MYSQL_PASS $MYSQL_DB > $MYSQL_BACKUP

echo "=== MySQL RESTORE ==="
mysql -u $MYSQL_USER -p$MYSQL_PASS -e "CREATE DATABASE IF NOT EXISTS $MYSQL_RESTORE_DB;"
mysql -u $MYSQL_USER -p$MYSQL_PASS $MYSQL_RESTORE_DB < $MYSQL_BACKUP

echo "=== PostgreSQL BACKUP ==="
pg_dump -U $PG_USER -F c -f $PG_BACKUP $PG_DB

echo "=== PostgreSQL RESTORE ==="
createdb -U $PG_USER $PG_RESTORE_DB
pg_restore -U $PG_USER -d $PG_RESTORE_DB $PG_BACKUP

echo "=== DONE! ==="
