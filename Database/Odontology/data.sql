USE erp_odonto;

INSERT INTO erpo_umedida (nombre, simbolo, equivalencia)
VALUES ('metros', 'm', 'cm');

INSERT INTO erpo_producto (nombre, descripcion, precio, id_umedida)
VALUES ('ACEITE DE BEBE', 'd', '1', 1);

INSERT INTO erpo_usersistema (nombre, apellido, username, correo, contrasenia, fingerprint)
VALUES ('Pablo vigas', 'de la cruz', 'Pablovugass', 'pablo@gmail.com', 'pablo1234', '');
