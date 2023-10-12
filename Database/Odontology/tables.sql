USE  erp_odonto;

-- Tabla paciente
DROP TABLE IF EXISTS erpo_paciente;
CREATE TABLE erpo_paciente (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_paciente VARCHAR(20) COMMENT 'Codigo generado por trigger',
  tipo_alergia VARCHAR(40) NOT NULL,
  id_docidentidad INT,
  id_provincia INT,
  FOREIGN KEY(id_docidentidad) REFERENCES erpo_docidentidad(id),
  FOREIGN KEY(id_provincia) REFERENCES erpo_provincia(id)
);

-- Tabla imagenes dentales
DROP TABLE IF EXISTS erpo_imgdentales;
CREATE TABLE erpo_imgdentales (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_imgdentales VARCHAR(20) COMMENT 'Codigo generado por trigger',
  fecha_img DATE NOT NULL,
  tipo_img VARCHAR(30) NOT NULL COMMENT 'radiografia, imagen dental, fotografia intraoral',
  enlace_img VARCHAR(50) NOT NULL COMMENT 'link del tipo_img',
  id_paciente INT,
  FOREIGN KEY(id_paciente) REFERENCES erpo_paciente(id)
);

-- Tabla factura
DROP TABLE IF EXISTS erpo_factura;
CREATE TABLE erpo_factura (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_factura VARCHAR(20) COMMENT 'Codigo generado por trigger',
  fecha_factura DATE NOT NULL,
  detalle_tratamiento TEXT NOT NULL,
  total_factura INT
);

-- Tabla pagos
DROP TABLE IF EXISTS erpo_pagos;
CREATE TABLE erpo_pagos (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_pagos VARCHAR(20) COMMENT 'Codigo generado por trigger',
  fecha_pago DATE NOT NULL,
  monto_pago INT NOT NULL,
  metodo_pago VARCHAR(30),
  id_factura INT,
  FOREIGN KEY (id_factura) REFERENCES erpo_factura(id)
);

-- Tabla proveedores
DROP TABLE IF EXISTS erpo_proveedor;
CREATE TABLE erpo_proveedor (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_proveedor VARCHAR(20) COMMENT 'Codigo generado por trigger',
  razon_social VARCHAR(100) NOT NULL,
  ruc VARCHAR(11) NOT NULL UNIQUE,
  telefono VARCHAR(15) NOT NULL,
  email VARCHAR(50) NOT NULL,
  id_pais INT,
  FOREIGN KEY (id_pais) REFERENCES erpo_pais(id)
);

-- Tabla unidades de medida
DROP TABLE IF EXISTS erpo_umedida;
CREATE TABLE erpo_umedida (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cod_umedida VARCHAR(20) COMMENT 'Codigo generado por trigger',
  nombre VARCHAR(5) NOT NULL,
  simbolo VARCHAR(5) NOT NULL,
  equivalencia VARCHAR(100) NOT NULL
);

-- Tabla producto
DROP TABLE IF EXISTS erpo_producto;
CREATE TABLE erpo_producto (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_producto VARCHAR(20) COMMENT 'Codigo generado por trigger',
  nombre VARCHAR(30) NOT NULL,
  descripcion TEXT,
  precio INT NOT NULL,
  id_umedida INT,
  id_proveedor INT,
  FOREIGN KEY(id_umedida) REFERENCES erpo_umedida(id),
  FOREIGN KEY(id_proveedor) REFERENCES erpo_proveedor(id)
);

-- Tabla de stock
DROP TABLE IF EXISTS erpo_stock;
CREATE TABLE erpo_stock (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  cod_stock VARCHAR(20) COMMENT 'Codigo generado por trigger',
  cantidad INT NOT NULL,
  fecha_entrada DATETIME NOT NULL,
  fecha_caducidad DATE NOT NULL,
  id_producto INT,
  id_proveedor INT,
  FOREIGN KEY (id_producto) REFERENCES erpo_producto(id),
  FOREIGN KEY (id_proveedor) REFERENCES erpo_proveedor(id)
);

-- Tabla Recursos Humanos
DROP TABLE IF EXISTS erpo_rrhh;
CREATE TABLE erpo_rrhh (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_rrhh VARCHAR(20) COMMENT 'Codigo generado por trigger',
  nombre VARCHAR(50)NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  telefono VARCHAR(12) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  id_provincia INT,
  id_docidentidad INT,
  FOREIGN KEY (id_provincia) REFERENCES erpo_provincia(id),
  FOREIGN KEY (id_docidentidad) REFERENCES erpo_docidentidad(id)
);

-- Tabla cita
DROP TABLE IF EXISTS erpo_cita;
CREATE TABLE erpo_cita (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_cita VARCHAR(20) COMMENT 'Codigo generado por trigger',
  fecha_cita DATE NOT NULL,
  diagnostico VARCHAR(30) NOT NULL,
  descripcion TEXT,
  tratamientos_realizados VARCHAR(30) NOT NULL,
  medicamentos_recetados VARCHAR(30) NOT NULL,
  notas_medicas TEXT,
  id_factura INT,
  id_paciente INT,
  id_stock INT,
  id_rrhh INT,
  FOREIGN KEY(id_factura) REFERENCES erpo_factura(id),
  FOREIGN KEY(id_paciente) REFERENCES erpo_paciente(id),
  FOREIGN KEY(id_stock) REFERENCES erpo_stock(id),
  FOREIGN KEY(id_rrhh) REFERENCES erpo_rrhh(id)
);

-- Tabla uso material
DROP TABLE IF EXISTS erpo_usomaterial;
CREATE TABLE erpo_usomaterial (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_usomaterial VARCHAR(20) COMMENT 'Codigo generado por trigger',
  detalle_uso_material TEXT NOT NULL,
  unidad_consumo VARCHAR(15) NOT NULL,
  fecha_uso DATE NOT NULL,
  cantidad_uso INT,
  id_stock INT,
  FOREIGN KEY(id_stock) REFERENCES erpo_stock(id)
);

-- Tabla roles
DROP TABLE IF EXISTS erpo_rol;
CREATE TABLE erpo_rol (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  cod_rol VARCHAR(20) COMMENT 'Codigo generado por trigger',
  rol VARCHAR(50) NOT NULL,
  descripcion VARCHAR(50) NOT NULL
);

-- Tabla Usuario Sistema
DROP TABLE IF EXISTS erpo_usersistema;
CREATE TABLE erpo_usersistema (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  cod_usersistema VARCHAR(20) COMMENT 'Codigo generado por trigger',
  username VARCHAR(30),
  contrasenia VARBINARY(60),
  fingerprint VARBINARY(60) COMMENT 'seguridad con huella dactilar',
  id_rrhh INT,
  id_rol INT,
  FOREIGN KEY(id_rrhh) REFERENCES erpo_rrhh(id),
  FOREIGN KEY(id_rol) REFERENCES erpo_rol(id)
);
