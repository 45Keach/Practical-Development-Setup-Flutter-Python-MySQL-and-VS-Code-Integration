# Task 2 — MySQL Database Management

## Commands
```bash
mysql -u root -p
```

Run `sql/school.sql`, then paste your **actual** `SELECT * FROM students;` output here.

## Security reflection
Do not use MySQL `root` for application connections. Root has broad administrative privileges, so leaked application credentials could compromise unrelated databases or accounts. Use a dedicated least-privileged account instead:

```sql
CREATE USER 'school_app'@'localhost'
IDENTIFIED BY 'REPLACE_WITH_A_STRONG_UNIQUE_PASSWORD';

GRANT SELECT, INSERT, UPDATE, DELETE
ON school.students TO 'school_app'@'localhost';

SHOW GRANTS FOR 'school_app'@'localhost';
```

For read-only access, grant only `SELECT`. Never commit a real password.