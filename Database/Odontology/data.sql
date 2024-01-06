USE erp_odonto;

INSERT INTO erpo_umedida (nombre, simbolo, equivalencia)
VALUES ('metros', 'm', 'cm');

INSERT INTO erpo_producto (nombre, descripcion, precio, id_umedida)
VALUES ('ACEITE DE BEBE', 'd', '1', 1);

INSERT INTO erpo_usersistema (nombre, apellido, username, correo, contrasenia, fingerprint)
VALUES ('Pablo vigas', 'de la cruz', 'Pablovugass', 'pablo@gmail.com', 'pablo1234', '');

-- Inserciones para la tabla erpo_rol
INSERT INTO erp_odonto.erpo_rol (rol, descripcion, estado)
VALUES
('TRABAJADOR', 'Usuario con acceso a las funciones básicas del sistema', '1'),
('ADMIN', 'Usuario con acceso a todas las funciones del sistema', '1'),
('ROOT', 'Usuario con acceso total al sistema, incluyendo la capacidad de realizar cambios en la configuración', '1');

-- Trabajadores
INSERT INTO erp_odonto.erpo_personal (nombre, apellido, dni, fecha_nacimiento, cmp_area, cargo, correo, telefono, direccion, cmp_e)
VALUES
('Juan', 'Perez', '7894561234', '1990-01-01', 'Recepcion', 'Recepcionista', 'juan.perez@example.com', '987654321', 'Calle 123, 456, Cusco', '1'),
('Maria', 'Gonzalez', '1234567890', '1985-02-02', 'Odontología', 'Auxiliar dental', 'maria.gonzalez@example.com', '6543210987', 'Calle 456, 789, Cusco', '1'),
('Pedro', 'Sanchez', '2345678901', '1980-03-03', 'Odontología', 'Higienista dental', 'pedro.sanchez@example.com', '3210987654', 'Calle 789, 123, Cusco', '1');
-- Administradores
('Carlos', 'Rodriguez', '3456789012', '1975-04-04', 'Administración', 'Director', 'carlos.rodriguez@example.com', '4321098765', 'Calle 101, 202, Cusco', '1');
('Sofia', 'Martinez', '4567890123', '1970-05-05', 'Administración', 'Gerente', 'sofia.martinez@example.com', '5432109876', 'Calle 202, 303, Cusco', '1');
-- Root
('Juan', 'Perez', '5678901234', '1965-06-06', 'Administración', 'Administrador de sistemas', 'root@example.com', '6543210987', 'Calle 303, 404, Cusco', '1');



-- Inserciones para la tabla erpo_usersistema
INSERT INTO erp_odonto.erpo_usersistema (nombre, apellido, username, correo, contrasenia, fingerprint, id_rol) VALUES
('Juan', 'Perez', 'juanperez', 'juan.perez@example.com', 'contrasenia123', 'huelladigital1', '1'),
('Maria', 'Gonzalez', 'mariagonzalez', 'maria.gonzalez@example.com', 'contrasenia456', 'huelladigital2', '1'),
('Pedro', 'Sanchez', 'pedrosanches', 'pedro.sanchez@example.com', 'contrasenia789', 'huelladigital3', '1'),
('Carlos', 'Rodriguez', 'carlosrodriguez', 'carlos.rodriguez@example.com', 'contrasenia123', 'huelladigital4', '2'),
('Sofia', 'Martinez', 'sofiamartinez', 'sofia.martinez@example.com', 'contrasenia456', 'huelladigital5', '2'),
('Juan', 'Perez', 'root', 'root@example.com', 'contrasenia789', 'huelladigital6', '3');
