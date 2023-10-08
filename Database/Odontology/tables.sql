-- Tabla de roles
CREATE TABLE erp_odo_rol (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_rol VARCHAR(20) NOT NULL UNIQUE,
  rol VARCHAR(50) NOT NULL,
  descripcion VARCHAR(50) NOT NULL
);

-- Tabla de usuario de sistema
CREATE TABLE erp_odo_usuario_sistema(
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
	id_usuario_sistema VARCHAR(20) NOT NULL UNIQUE,
  username VARCHAR(30),
  contraseña VARCHAR(60),
  id_personal INT,
  FOREIGN KEY (id_personal) REFERENCES t_personal(id)
);

-- Tabla de dirección
CREATE TABLE erp_odo_direccion (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_direccion VARCHAR(20) NOT NULL UNIQUE,
  pais VARCHAR(50) NOT NULL,
  provincia VARCHAR(50) NOT NULL,
  distrito VARCHAR(50) NOT NULL,
  calle VARCHAR(100) NOT NULL
);

-- Tabla de documento de indentidad
CREATE TABLE erp_odo_doc_identidad (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_doc_identidad VARCHAR(20) NOT NULL UNIQUE,
  tipo_doc_identidad VARCHAR(100) NOT NULL,
  numero_doc VARCHAR(12) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  fecha_emision DATE,
  fecha_caducidad DATE 
);

-- Tabla de personal
CREATE TABLE erp_odo_personal (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_personal VARCHAR(20) NOT NULL UNIQUE,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  telefono VARCHAR(12) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  id_rol INT,
  id_direccion INT,
  id_doc_identidad INT,
  FOREIGN KEY (id_rol) REFERENCES erp_odo_rol(id),
  FOREIGN KEY (id_direccion) REFERENCES erp_odo_direccion(id),
  FOREIGN KEY (id_doc_identidad) REFERENCES erp_odo_doc_identidad(id)
);

-- Tabla de unidades de medida
CREATE TABLE erp_odo_unidad_medida (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_unidad_medida VARCHAR(20) NOT NULL UNIQUE,
  nombre VARCHAR(50) NOT NULL,
  simbolo VARCHAR(5) NOT NULL,
  equivalencia VARCHAR(100) NOT NULL
);

-- Tabla de proveedores
CREATE TABLE erp_odo_proveedor (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_proveedor VARCHAR(20) NOT NULL UNIQUE,
  razon_social VARCHAR(100) NOT NULL,
  ruc CHAR(11) NOT NULL UNIQUE,
  telefono VARCHAR(15) NOT NULL,
  email VARCHAR(50) NOT NULL,
  id_direccion INT,
  FOREIGN KEY (id_direccion) REFERENCES erp_odo_direccion(id)
);

-- Tabla de uso de material
CREATE TABLE erp_odo_uso_material (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_uso_material VARCHAR(20) NOT NULL UNIQUE,
  detalle_uso_material TEXT NOT NULL,
  unidad_consumo VARCHAR(15) NOT NULL,
  fecha_uso DATE NOT NULL,
  cantidad_uso INT NOT NULL
);

-- Tabla de productos
CREATE TABLE erp_odo_producto (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_producto VARCHAR(20) NOT NULL UNIQUE,
  detalle TEXT NOT NULL,
  presentacion VARCHAR(50) NOT NULL,
  id_personal INT,
  id_unidad_medida INT,
  id_uso_material INT,
  FOREIGN KEY (id_personal) REFERENCES erp_odo_personal(id),
  FOREIGN KEY (id_unidad_medida) REFERENCES erp_odo_unidad_medida(id),
  FOREIGN KEY (id_uso_material) REFERENCES erp_odo_uso_material(id)
);

-- Tabla de stock
CREATE TABLE erp_odo_stock (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_stock VARCHAR(20) NOT NULL UNIQUE,
  cantidad INT NOT NULL,
  fecha_entrada DATETIME NOT NULL,
  fecha_caducidad DATE NOT NULL,
  id_proveedor INT,
  id_producto INT,
  FOREIGN KEY (id_proveedor) REFERENCES erp_odo_proveedor(id),
  FOREIGN KEY (id_producto) REFERENCES erp_odo_producto(id)
);
