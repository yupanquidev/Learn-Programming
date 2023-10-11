-- Tabla roles
CREATE TABLE erpo_rol(
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_rol VARCHAR(20) COMMENT 'cod generado por trigger',
  rol VARCHAR(50) NOT NULL,
  descripcion VARCHAR(50) NOT NULL
);

-- Tabla pais
CREATE TABLE erpo_pais (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_pais VARCHAR(20) COMMENT 'cod generado por trigger',
  nombre_pais VARCHAR(50),
  capital VARCHAR(30) NOT NULL,
  codigo_ISO VARCHAR(10) NOT NULL COMMENT 'ejm: Perú: PER; Bolivia: BOL',
  provincia VARCHAR(30) NOT NULL,
  distrito VARCHAR(50) NOT NULL,
  moneda VARCHAR(30) COMMENT 'Peru: Soles; Mexico: Pesos mexicanos'
);

-- Tabla provincia
CREATE TABLE erpo_prov(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_provincia VARCHAR(20) COMMENT 'cod generado por trigger',
  id_pais INT,
  nombreProvincia VARCHAR(50) NOT NULL,
  codigo_postal VARCHAR(20) NOT NULL,
  distrito VARCHAR(20) NOT NULL,
  FOREIGN KEY(id_pais) REFERENCES erpo_pais(id)
);

-- Tabla de documento identidad
CREATE TABLE erpo_docIdentidad(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_docIdentidad VARCHAR(20) COMMENT 'cod generado por trigger',
  tipo_docIdentidad VARCHAR(100) NOT NULL COMMENT 'dni, passport, cedula de identidad, ruc',
  numero_doc INT NOT NULL,
  genero VARCHAR(20) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  fecha_emision DATE NOT NULL,
  fecha_caducidad DATE NOT NULL,
  direccion VARCHAR(30) NOT NULL
);

-- Tabla Recursos Humanos
CREATE TABLE erpo_rrhh(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_rrhh VARCHAR(20) COMMENT 'cod generado por trigger',
  nombre VARCHAR(50)NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  telefono VARCHAR(12) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  id_provincia INT,
  id_docIdentidad INT,
  FOREIGN KEY (id_provincia) REFERENCES erpo_prov(id),
  FOREIGN KEY (id_docIdentidad) REFERENCES erpo_docIdentidad(id)
);

-- Tabla Usuario Sistema
CREATE TABLE erpo_usersistema(
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_usersistema VARCHAR(20) COMMENT 'cod generado por trigger',
  username VARCHAR(30),
  contraseña VARBINARY(60),
  id_rrhh INT,
  id_rol INT,
  fingerprint VARBINARY(60) COMMENT 'seguridad con huella dactilar',
  FOREIGN KEY(id_rrhh) REFERENCES erpo_rrhh(id),
  FOREIGN KEY(id_rol) REFERENCES erpo_rol(id)
);

-- Tabla unidades de medida
CREATE TABLE erpo_umedida(
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_umedida VARCHAR(20) COMMENT 'cod generado por trigger',
  nombre VARCHAR(5) NOT NULL,
  simbolo VARCHAR(5) NOT NULL,
  equivalencia VARCHAR(100) NOT NULL
);

-- Tabla proveedores
CREATE TABLE erpo_proveedor(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_proveedor VARCHAR(20) COMMENT 'cod generado por trigger',
  razon_social VARCHAR(100) NOT NULL,
  ruc VARCHAR(11) NOT NULL UNIQUE,
  telefono VARCHAR(15) NOT NULL,
  email VARCHAR(50) NOT NULL,
  id_pais INT,
  FOREIGN KEY (id_pais) REFERENCES erpo_pais(id)
);

-- Tabla paciente
CREATE TABLE erpo_paciente(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_paciente VARCHAR(20) COMMENT 'cod generado por trigger',
  id_docIdentidad INT,
  id_provincia INT,
  tipo_alergia VARCHAR(40) NOT NULL,
  FOREIGN KEY(id_docIdentidad) REFERENCES erpo_docIdentidad(id),
  FOREIGN KEY(id_provincia) REFERENCES erpo_prov(id)
);

-- Tabla producto
CREATE TABLE erpo_producto(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_producto VARCHAR(20) COMMENT 'cod generado por trigger',
  id_umedida INT,
  id_proveedor INT,
  nombre VARCHAR(30) NOT NULL,
  descripcion TEXT,
  precio INT NOT NULL,
  FOREIGN KEY(id_umedida) REFERENCES erpo_umedida(id),
  FOREIGN KEY(id_proveedor) REFERENCES erpo_proveedor(id)
);

-- Tabla de stock
CREATE TABLE erpo_stock (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_stock VARCHAR(20) COMMENT 'cod generado por trigger',
  cantidad INT NOT NULL,
  fecha_entrada DATETIME NOT NULL,
  fecha_caducidad DATE NOT NULL,
  id_proveedor INT,
  id_producto INT,
  FOREIGN KEY (id_proveedor) REFERENCES erpo_proveedor(id),
  FOREIGN KEY (id_producto) REFERENCES erpo_producto(id)
);

-- Tabla cita
CREATE TABLE erpo_cita(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_cita VARCHAR(20) COMMENT 'cod generado por trigger',
  id_paciente INT,
  id_stock INT,
  id_rrhh INT,
  fecha_cita DATE NOT NULL,
  diagnostico VARCHAR(30) NOT NULL,
  descripcion TEXT,
  tratamientos_realizados VARCHAR(30) NOT NULL,
  medicamentos_recetados VARCHAR(30) NOT NULL,
  notas_medicas TEXT,
  FOREIGN KEY(id_paciente) REFERENCES erpo_paciente(id),
  FOREIGN KEY(id_stock) REFERENCES erpo_stock(id),
  FOREIGN KEY(id_rrhh) REFERENCES erpo_rrhh(id)
);

-- Tabla facturas
CREATE TABLE erpo_facturas(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_facturas VARCHAR(20) COMMENT 'cod generado por trigger',
  id_cita INT,
  fecha_factura DATE NOT NULL,
  detalle_tratamiento TEXT NOT NULL,
  total_factura INT,
  FOREIGN KEY(id_cita) REFERENCES erpo_cita(id)
);

-- Tabla uso material
CREATE TABLE erpo_Umaterial(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_Umaterial VARCHAR(20) COMMENT 'cod generado por trigger',
  id_stock INT,
  id_material INT,
  detalle_uso_material TEXT NOT NULL,
  unidad_consumo VARCHAR(15) NOT NULL,
  fecha_uso DATE NOT NULL,
  cantidad_uso INT,
  FOREIGN KEY(id_stock) REFERENCES erpo_stock(id)
);

-- Tabla pagos
CREATE TABLE erpo_pagos(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_pagos VARCHAR(20) COMMENT 'cod generado por trigger',
  id_facturas INT,
  fecha_pago DATE NOT NULL,
  monto_pago INT NOT NULL,
  metodo_pago VARCHAR(30),
  FOREIGN KEY (id_facturas) REFERENCES erpo_facturas(id)
);

-- Tabla imagenes dentales
CREATE TABLE erpo_imgDentales(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_imgDentales VARCHAR(20) COMMENT 'cod generado por trigger',
  id_paciente INT,
  fecha_img DATE NOT NULL,
  tipo_img VARCHAR(30) NOT NULL COMMENT 'radiografia, imagen dental, fotografia intraoral',
  enlace_img VARCHAR(50) NOT NULL COMMENT 'link del tipo_img',
  FOREIGN KEY(id_paciente) REFERENCES erpo_paciente(id)
);
