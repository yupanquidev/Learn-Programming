-- CREAMOS LA BD
DROP DATABASE IF EXISTS erp_odonto;
CREATE DATABASE erp_odonto CHARACTER SET utf8;
USE erp_odonto;

-- CREAMOS LOS USUARIOS PERMITIDOS
-- usuario: ithya
DROP USER IF EXISTS 'ithya';
CREATE USER 'ithya' IDENTIFIED BY 'hyait';
GRANT INSERT, SELECT, UPDATE, DELETE ON erp_odonto.* TO 'ithya'@'%';

-- usuario: iteacq
DROP USER IF EXISTS 'iteacq';
CREATE USER 'iteacq' IDENTIFIED BY 'eacqit';
GRANT INSERT, SELECT, UPDATE, DELETE ON erp_odonto.* TO 'iteacq'@'%';

-- ACTUALIZAMOS LOS PERMISOS CREADOS
FLUSH PRIVILEGES;


/* DROP USER IF EXISTS 'it_dev';
CREATE USER 'it_dev' IDENTIFIED BY 'it_dev**%%--2023_iT_etnia';
GRANT ALL PRIVILEGES ON erp_odonto.* TO 'it_dev'@'%';

DROP USER IF EXISTS 'it_admin';
CREATE USER 'it_admin' IDENTIFIED BY 'it_admin**%%--2023_iT_etnia';
GRANT INSERT, SELECT, UPDATE, DELETE ON erp_odonto.* TO 'it_admin'@'%';

DROP USER IF EXISTS 'it_user';
CREATE USER 'it_user' IDENTIFIED BY 'it_user**%%--2023_iT_etnia';
GRANT INSERT, SELECT, UPDATE ON erp_odonto.* TO 'it_user'@'%';

FLUSH PRIVILEGES; */