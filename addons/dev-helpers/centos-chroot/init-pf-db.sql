CREATE DATABASE IF NOT EXISTS pf;
GRANT SELECT,INSERT,UPDATE,DELETE,EXECUTE,LOCK TABLES ON pf.* TO pf@'%' IDENTIFIED BY 'packet';
GRANT SELECT,INSERT,UPDATE,DELETE,EXECUTE,LOCK TABLES ON pf.* TO pf@'localhost' IDENTIFIED BY 'packet';
FLUSH PRIVILEGES;
