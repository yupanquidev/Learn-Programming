-- Creamos la Base de Datos.
DROP DATABASE IF EXISTS erp_odonto;
CREATE DATABASE IF NOT EXISTS erp_odonto DEFAULT CHARACTER SET utf8;
USE erp_odonto;

-- Creamos usuarios permitidos.
-- Usuario: ithya
DROP USER IF EXISTS 'ithya';
CREATE USER 'ithya' IDENTIFIED BY 'hyait';
GRANT INSERT, SELECT, UPDATE, DELETE ON erp_odonto.* TO 'ithya'@'%';

-- Usuario: iteacq
DROP USER IF EXISTS 'iteacq';
CREATE USER 'iteacq' IDENTIFIED BY 'eacqit';
GRANT INSERT, SELECT, UPDATE, DELETE ON erp_odonto.* TO 'iteacq'@'%';

-- Actualizamos los permisos creados.
FLUSH PRIVILEGES;
