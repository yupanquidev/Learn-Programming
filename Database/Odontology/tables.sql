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
  id_docidentidad VARCHAR(20) COMMENT 'cod generado por trigger',
  tipo_docidentidad VARCHAR(100) NOT NULL COMMENT 'dni, passport, cedula de identidad, ruc',
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
  id_rol INT,
  id_pais INT,
  id_docIdentidad INT,
  FOREIGN KEY (id_rol) REFERENCES erpo_rol(id),
  FOREIGN KEY (id_pais) REFERENCES erpo_pais(id),
  FOREIGN KEY (id_docIdentidad) REFERENCES erpo_docIdentidad(id)
);

-- Tabla Usuario Sistema
CREATE TABLE erpo_usersistema(
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_usersistema VARCHAR(20) COMMENT 'cod generado por trigger',
  username VARCHAR(30),
  contraseña VARBINARY(60),
  id_rrhh INT,
  fingerprint VARBINARY(60) COMMENT 'seguridad con huella dactilar',
  FOREIGN KEY(id_rrhh) REFERENCES erpo_rrhh(id)
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

-- Tabla Material
CREATE TABLE erpo_material(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_material VARCHAR(20) COMMENT 'cod generado por trigger',
  id_proveedor INT,
  nombre VARCHAR(50) NOT NULL,
  descripcion TEXT,
  FOREIGN KEY(id_proveedor) REFERENCES erpo_proveedor(id)
);

-- Tabla paciente
CREATE TABLE erpo_paciente(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_paciente VARCHAR(20) COMMENT 'cod generado por trigger',
  id_docidentidad INT,
  id_provincia INT,
  tipo_alergia VARCHAR(40) NOT NULL,
  FOREIGN KEY(id_docidentidad) REFERENCES erpo_docidentidad(id),
  FOREIGN KEY(id_provincia) REFERENCES erpo_prov(id)
);
-- Tabla servicio
CREATE TABLE erpo_servicio(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_servicio VARCHAR(20) COMMENT 'cod generado por trigger',
  nombre_serv VARCHAR(50) NOT NULL,
  descripcion TEXT NOT NULL,
  precio_serv INT
);

-- Tabla cita
CREATE TABLE erpo_cita(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_cita VARCHAR(20) COMMENT 'cod generado por trigger',
  id_paciente INT,
  id_servicio INT,
  fecha_cita DATE NOT NULL,
  descripcion TEXT,
  FOREIGN KEY(id_paciente) REFERENCES erpo_paciente(id),
  FOREIGN KEY(id_servicio) REFERENCES erpo_servicio(id)
);

-- Tabla material
CREATE TABLE erpo_Umaterial(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_Umaterial VARCHAR(20) COMMENT 'cod generado por trigger',
  id_cita INT,
  id_material INT,
  detalle_uso_material TEXT NOT NULL,
  unidad_consumo VARCHAR(15) NOT NULL,
  fecha_uso DATE NOT NULL,
  cantidad_uso INT,
  FOREIGN KEY(id_cita) REFERENCES erpo_cita(id),
  FOREIGN KEY(id_material) REFERENCES erpo_material(id)
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

-- Tabla historial medico
CREATE TABLE erpo_Hmedico(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_Hmedico VARCHAR(20) COMMENT 'cod generado por trigger',
  id_paciente INT,
  fecha_visita DATE,
  diagnostico VARCHAR(30) NOT NULL,
  tratamientos_realizado VARCHAR(30) NOT NULL,
  medicamentos_recetados VARCHAR(30) NOT NULL,
  notas_medicas TEXT,
  FOREIGN KEY (id_paciente) REFERENCES erpo_paciente(id)    
);

-- Tabla facturas
CREATE TABLE erpo_facturas(
 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_facturas VARCHAR(20) COMMENT 'cod generado por trigger',
  id_paciente INT,
  fecha_factura DATE NOT NULL,
  detalle_tratamiento TEXT NOT NULL,
  total_factura INT,
  FOREIGN KEY(id_paciente) REFERENCES erpo_paciente(id)
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
