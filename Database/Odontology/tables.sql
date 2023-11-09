USE erp_odonto;

-- Tabla de factura
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_factura (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_factura VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  fecha_factura DATE NOT NULL,
  detalle_tratamiento TEXT NOT NULL,
  total_factura INT
);

-- Tabla de documento de identidad
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_docidentidad (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_docidentidad VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  tipo_docidentidad VARCHAR(100) NOT NULL COMMENT 'dni, passport, cedula de identidad, ruc',
  numero_doc INT NOT NULL,
  genero VARCHAR(20) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  fecha_emision DATE NOT NULL,
  fecha_caducidad DATE NOT NULL,
  direccion VARCHAR(30) NOT NULL
);

-- Tabla de pais
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_pais ( 
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY, 
  cod_pais VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger', 
  pais VARCHAR(50) NOT NULL, 
  capital VARCHAR(30) NOT NULL, 
  codigo_iso VARCHAR(10) NOT NULL COMMENT 'ejm: Perú: PER; Bolivia: BOL', 
  provincia VARCHAR(30) NOT NULL, 
  distrito VARCHAR(50) NOT NULL, 
  moneda VARCHAR(30) COMMENT 'Peru: Soles; Mexico: Pesos mexicanos'
);

-- Tabla de provincia
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_provincia (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_provincia VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  provincia VARCHAR(50) NOT NULL,
  codigo_postal VARCHAR(20) NOT NULL,
  distrito VARCHAR(20) NOT NULL,
  id_pais INT,
  FOREIGN KEY(id_pais) REFERENCES erpo_pais(id)
);

-- Tabla de paciente
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_paciente (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_paciente VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  tipo_alergia VARCHAR(40) NOT NULL,
  id_docidentidad INT,
  id_provincia INT,
  FOREIGN KEY(id_docidentidad) REFERENCES erpo_docidentidad(id),
  FOREIGN KEY(id_provincia) REFERENCES erpo_provincia(id)
);

-- Tabla de imagenes dentales
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_imgdentales (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_imgdentales VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  fecha_img DATE NOT NULL,
  tipo_img VARCHAR(30) NOT NULL COMMENT 'Radiografia, imagen dental, fotografia intraoral',
  imagen LONGBLOB NOT NULL COMMENT 'Imagenes',
  id_paciente INT,
  FOREIGN KEY(id_paciente) REFERENCES erpo_paciente(id)
);

-- Tabla de comprobante
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_comprobante (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_comprobante VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  tipo_comprobante VARCHAR(50) NOT NULL COMMENT 'Factura, Boleta, ticket de compra'
);

-- Tabla de pagos
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_pagos (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_pagos VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  fecha_pago DATE NOT NULL,
  monto_pago INT NOT NULL,
  metodo_pago VARCHAR(30) NOT NULL COMMENT 'Efectivo, tarjeta de credito, tarjeta de debito, transferencia bancaria, deposito bancario, cheque',
  id_factura INT,
  id_comprobante INT,
  FOREIGN KEY (id_factura) REFERENCES erpo_factura(id),
  FOREIGN KEY (id_comprobante) REFERENCES erpo_comprobante(id)
);

-- Tabla de pago comprobante
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_pagocomprobante (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_pagocomprobante VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_pago INT,
  id_comprobante INT,
  FOREIGN KEY (id_pago) REFERENCES erpo_pagos(id),
  FOREIGN KEY (id_comprobante) REFERENCES erpo_comprobante(id)
);

-- Tabla de proveedor
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_proveedor (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_proveedor VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  razon_social VARCHAR(100) NOT NULL,
  nombre_comercial VARCHAR(100),
  ruc VARCHAR(11) NOT NULL UNIQUE,
  telefono VARCHAR(15) NOT NULL,
  email VARCHAR(50) NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  pagina_web VARCHAR(100) NOT NULL,
  gerente VARCHAR(100) NOT NULL,
  vendedor VARCHAR(100) NOT NULL,
  id_pais INT,
  FOREIGN KEY (id_pais) REFERENCES erpo_pais(id)
);

-- Tabla de unidad de medida
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_umedida (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cod_umedida VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  nombre VARCHAR(5) NOT NULL,
  simbolo VARCHAR(5) NOT NULL,
  equivalencia VARCHAR(100) NOT NULL
);

-- Tabla de producto
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_producto (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_producto VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  nombre VARCHAR(30) NOT NULL,
  descripcion TEXT NOT NULL,
  precio INT NOT NULL,
  id_umedida INT,
  id_proveedor INT,
  FOREIGN KEY(id_umedida) REFERENCES erpo_umedida(id),
  FOREIGN KEY(id_proveedor) REFERENCES erpo_proveedor(id)
);

-- Tabla de stock
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_stock (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  cod_stock VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  cantidad INT NOT NULL,
  fecha_entrada DATETIME NOT NULL,
  fecha_caducidad DATE NOT NULL,
  id_producto INT,
  id_proveedor INT,
  FOREIGN KEY (id_producto) REFERENCES erpo_producto(id),
  FOREIGN KEY (id_proveedor) REFERENCES erpo_proveedor(id)
);

-- Tabla de recursos humanos
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_rrhh (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_rrhh VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  telefono VARCHAR(12) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  referencia VARCHAR(12) NOT NULL COMMENT 'Telefono de referencia, algun familiar',
  id_provincia INT,
  id_docidentidad INT,
  FOREIGN KEY (id_provincia) REFERENCES erpo_provincia(id),
  FOREIGN KEY (id_docidentidad) REFERENCES erpo_docidentidad(id)
);

-- Tabla de cita
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_cita (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fecha_cita DATE NOT NULL,
  cod_cita VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  diagnostico VARCHAR(30) NOT NULL,
  descripcion TEXT NOT NULL,
  tratamientos_realizados VARCHAR(30) NOT NULL,
  medicamentos_recetados VARCHAR(30) NOT NULL,
  notas_medicas TEXT NOT NULL,
  id_factura INT,
  id_paciente INT,
  id_stock INT,
  id_rrhh INT,
  FOREIGN KEY(id_factura) REFERENCES erpo_factura(id),
  FOREIGN KEY(id_paciente) REFERENCES erpo_paciente(id),
  FOREIGN KEY(id_stock) REFERENCES erpo_stock(id),
  FOREIGN KEY(id_rrhh) REFERENCES erpo_rrhh(id)
);

-- Tabla de uso de material
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_usomaterial (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cod_usomaterial VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  detalle_uso_material TEXT NOT NULL,
  unidad_consumo VARCHAR(15) NOT NULL,
  fecha_uso DATE NOT NULL,
  cantidad_uso INT,
  id_stock INT,
  FOREIGN KEY(id_stock) REFERENCES erpo_stock(id)
);

-- Tabla de roles
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_rol (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  cod_rol VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  rol VARCHAR(50) NOT NULL,
  descripcion VARCHAR(50) NOT NULL
);

-- Tabla de usuario de sistema
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_usersistema (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  cod_usersistema VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  username VARCHAR(30) NOT NULL UNIQUE,
  contrasenia VARBINARY(60) NOT NULL COMMENT 'seguridad con hash',
  fingerprint VARBINARY(60) NOT NULL COMMENT 'seguridad con huella dactilar',
  id_rrhh INT,
  id_rol INT,
  FOREIGN KEY(id_rrhh) REFERENCES erpo_rrhh(id),
  FOREIGN KEY(id_rol) REFERENCES erpo_rol(id)
);

-- Tabla area
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_area (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  cod_area VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  nombre_area VARCHAR(255) NOT NULL COMMENT 'consultorio 1, consultorio 2, recepcion, laboratorio',
  descripcion TEXT NOT NULL,
  ubicacion VARCHAR(100) NOT NULL COMMENT 'En que parte del edificio se encuentra',
  responsable VARCHAR(100) NOT NULL COMMENT 'El personal responsable del area, como el dentista, gerente de la recepcion, jefe de rrhh',
  horario VARCHAR(100) NOT NULL COMMENT 'Horario en las que el area opera/esta abierta',
  id_rrhh INT COMMENT 'Personal asignado a cada area como dentista, asistente, recepcionista',
  id_cita INT COMMENT 'llevar un registro de las citas programadas para el ingreso a las areas, en citas se va a ver que material va a usar',
  FOREIGN KEY(id_rrhh) REFERENCES erpo_rrhh(id),
  FOREIGN KEY(id_cita) REFERENCES erpo_cita(id)
);


-- Tabla de servicio
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_servicio (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  cod_servicio VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  nombre_servicio VARCHAR(255) NOT NULL,
  costo DECIMAL(10, 2) NOT NULL,
  id_cita INT,
  FOREIGN KEY(id_cita) REFERENCES erpo_cita(id)
);

-- Tabla de cobro
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_cobro (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  cod_cobro VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  costo_total DECIMAL(10, 2) NOT NULL,
  id_servicio INT,
  id_pagos INT,
  FOREIGN KEY (id_servicio) REFERENCES erpo_servicio(id),
  FOREIGN KEY (id_pagos) REFERENCES erpo_pagos(id)
);
