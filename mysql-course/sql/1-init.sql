CREATE DATABASE IF NOT EXISTS covid;
CREATE DATABASE IF NOT EXISTS examples;
CREATE DATABASE IF NOT EXISTS sakila;

DROP USER IF EXISTS 'cours'@'%';
DROP USER IF EXISTS 'cours'@'localhost';
DROP USER IF EXISTS 'cours'@'127.0.0.1';

CREATE USER IF NOT EXISTS 'cours'@'%'
  IDENTIFIED BY 'cours';
CREATE USER IF NOT EXISTS 'exam'@'%'
  IDENTIFIED BY 'exam';

GRANT ALL PRIVILEGES ON examples.* TO 'cours'@'%';
GRANT ALL PRIVILEGES ON sakila.* TO 'cours'@'%';
GRANT ALL PRIVILEGES ON covid.* TO 'exam'@'%';