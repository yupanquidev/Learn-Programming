USE erp_odonto;

INSERT INTO erpo_umedida (nombre, simbolo, equivalencia)
VALUES ('metros', 'm', 'cm');

INSERT INTO erpo_producto (nombre, descripcion, precio, id_umedida)
VALUES ('ACEITE DE BEBE', 'd', '1', 1);

INSERT INTO erpo_usersistema (nombre, apellido, username, correo, contrasenia, fingerprint)
VALUES ('Pablo vigas', 'de la cruz', 'Pablovugass', 'pablo@gmail.com', 'pablo1234', '');

-- Inserciones para la tabla erpo_rol
INSERT INTO erp_odonto.erpo_rol (cmp_rol, cmp_descripcion, cmp_e)
VALUES
('TRABAJADOR', 'Usuario con acceso a las funciones básicas del sistema', '1'),
('ADMIN', 'Usuario con acceso a todas las funciones del sistema', '1'),
('ROOT', 'Usuario con acceso total al sistema, incluyendo la capacidad de realizar cambios en la configuración', '1');

-- Trabajadores
INSERT INTO erp_odonto.erpo_personal (id_provincia, id_tipodocidentidad, cmp_nombre, cmp_apellido, cmp_fecha_nac, cmp_t_fijo, cmp_t_movil, cmp_t_familiar, cmp_t_descr_tfamiliar, cmp_email, cmp_area, cmp_cargo, cmp_e)
VALUES
(, , 'Juan', 'Perez', '1990-01-01', '0123456789','9876543210', '0987654321', 'Madre', 'juan.perez@example.com', 'Administración', 'Contador', '1'),
(2, 2, 'María', 'González', '1985-05-22', '1234567890', '0987654321', '0123456789', 'Padre', 'maria.gonzalez@example.com', 'Recursos Humanos', 'Asistente'),
(3, 1, 'pedro', 'Sánchez', '1992-10-08', '0987654321', '1234567890', '9876543210', 'Esposa', 'pedro.sanchez@example.com', 'Ventas', 'Ejecutivo'),
(1, 3, 'Ana', 'López', '1988-07-17', '9876543210', '0123456789', '1234567890', 'Hermano', 'ana.lopez@example.com', 'Marketing', 'Diseñadora');
(2, 1, 'Pedro', 'Ramírez', '1995-12-25', '0123456789', '9876543210', '0987654321', 'Abuela', 'pedro.ramirez@example.com', 'Soporte Técnico', 'Analista');



(1, 1, 'Juan', 'Pérez', '1990-01-15', '0123456789', '9876543210', '0987654321', 'Madre', 'juan.perez@example.com', 'Administración', 'Contador');
(2, 2, 'María', 'González', '1985-05-22', '1234567890', '0987654321', '0123456789', 'Padre', 'maria.gonzalez@example.com', 'Recursos Humanos', 'Asistente');
(3, 1, 'Carlos', 'Sánchez', '1992-10-08', '0987654321', '1234567890', '9876543210', 'Esposa', 'carlos.sanchez@example.com', 'Ventas', 'Ejecutivo');
(1, 3, 'Ana', 'López', '1988-07-17', '9876543210', '0123456789', '1234567890', 'Hermano', 'ana.lopez@example.com', 'Marketing', 'Diseñadora');
(2, 1, 'Pedro', 'Ramírez', '1995-12-25', '0123456789', '9876543210', '0987654321', 'Abuela', 'pedro.ramirez@example.com', 'Soporte Técnico', 'Analista');

('Juan', 'Perez', '7894561234', '1990-01-01', 'Recepcion', 'Recepcionista', 'juan.perez@example.com', '987654321', 'Calle 123, 456, Cusco', '1'),
('Maria', 'Gonzalez', '1234567890', '1985-02-02', 'Odontología', 'Auxiliar dental', 'maria.gonzalez@example.com', '6543210987', 'Calle 456, 789, Cusco', '1'),
('Pedro', 'Sanchez', '2345678901', '1980-03-03', 'Odontología', 'Higienista dental', 'pedro.sanchez@example.com', '3210987654', 'Calle 789, 123, Cusco', '1');
-- Administradores
('Carlos', 'Rodriguez', '3456789012', '1975-04-04', 'Administración', 'Director', 'carlos.rodriguez@example.com', '4321098765', 'Calle 101, 202, Cusco', '1');
('Sofia', 'Martinez', '4567890123', '1970-05-05', 'Administración', 'Gerente', 'sofia.martinez@example.com', '5432109876', 'Calle 202, 303, Cusco', '1');
-- Root
('Juan', 'Perez', '5678901234', '1965-06-06', 'Administración', 'Administrador de sistemas', 'root@example.com', '6543210987', 'Calle 303, 404, Cusco', '1');

-- Inserciones para la tabla erpo_usersistema
INSERT INTO erp_odonto.erpo_usersistema (id_personal, id_rol, cmp_username, cmp_pass, cmp_fingerprint, cmp_e) 
VALUES
(1, 1, 'juanperez', 'contrasenia123', 'huelladigital1', '1'),
(2, 1, 'mariagonzalez', 'contrasenia456', 'huelladigital2', '1'),
(3, 1, 'pedrosanches', 'contrasenia789', 'huelladigital3', '1'),
(4, 2, 'carlosrodriguez', 'contrasenia123', 'huelladigital4', '1'),
(5, 2, 'sofiamartinez', 'contrasenia456', 'huelladigital5', '1'),
(6, 3, 'Manuelito', 'contrasenia7789', 'huelladigital6', '1');




INSERT INTO erp_odonto.erpo_usersistema (id_personal, id_rol, username, nombre, apellido, correo, contrasenia, fingerprint) 
(11, 1, 'juanperez', 'Juan', 'Perez', 'juan.perez@example.com', 'contrasenia123', 'huelladigital1', ),
(11, 1, 'mariagonzalez', 'Maria', 'Gonzalez', 'maria.gonzalez@example.com', 'contrasenia456', 'huelladigital2', ),
(11, 1, 'pedrosanches', 'Pedro', 'Sanchez', 'pedro.sanchez@example.com', 'contrasenia789', 'huelladigital3', ),
(11, 2, 'carlosrodriguez', 'Carlos', 'Rodriguez', 'carlos.rodriguez@example.com', 'contrasenia123', 'huelladigital4', ),
(11, 2, 'sofiamartinez', 'Sofia', 'Martinez', 'sofia.martinez@example.com', 'contrasenia456', 'huelladigital5', ),
(11, 3, 'root@example.com', 'Juan', 'Perez', 'root', 'contrasenia789', 'huelladigital6', );
