USE erp_odonto;

-- Tabla pais
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_pais (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_pais VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  cmp_pais VARCHAR(50) NOT NULL,
  cmp_capital VARCHAR(30) NOT NULL,
  cmp_codigo_iso VARCHAR(10) NOT NULL COMMENT 'ejm: Perú: PER; Bolivia: BOL',
  cmp_moneda VARCHAR(30) COMMENT 'Peru: Soles; Mexico: Pesos mexicanos',
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PAÍS';

-- Tabla provincia
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_provincia (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_provincia VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_pais INT,
  cmp_codigo_postal VARCHAR(20) NOT NULL,
  cmp_provincia VARCHAR(50) NOT NULL,
  cmp_distrito VARCHAR(50) NOT NULL,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_pais) REFERENCES erpo_pais(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PROVINCIA';

-- Tabla documento de identidad
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_tipodocidentidad (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_tipodocidentidad VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  cmp_detalle VARCHAR(100) NULL COMMENT 'detalle del documento de identidad',
  cmp_tipo_docidentidad VARCHAR(100) NOT NULL COMMENT 'dni, passport, cedula de identidad, ruc,',
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TIPO DE DOCUMENTO DE IDENTIDAD';

-- Tabla empresa
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_empresa (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_empresa VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_tipodocidentidad INT,
  cmp_razonsocial VARCHAR(100) NOT NULL,
  cmp_direccion VARCHAR(30) NOT NULL,
  cmp_telefono VARCHAR(15),
  cmp_email VARCHAR(100),
  cmp_logo LONGBLOB NOT NULL COMMENT 'Logo en formato img',
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_tipodocidentidad) REFERENCES erpo_tipodocidentidad(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='EMPRESA';

-- Tabla cliente
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_cliente (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_cliente VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_tipodocidentidad INT,
  id_pais INT,
  id_provincia INT,
  cmp_telefono VARCHAR(15),
  cmp_email VARCHAR(150),
  cmp_docidentidad VARCHAR(50) COMMENT 'dni: 2020344576, ruc: 10..., 20..., ',
  cmp_nombre VARCHAR(200),
  cmp_apellido VARCHAR(50),
  cmp_direccion VARCHAR(30) NOT NULL,
  cmp_tipo_cliente VARCHAR (100) NULL COMMENT 'persona natural, corporativo, asegurado, etc',
  cmp_e binary(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_tipodocidentidad) REFERENCES erpo_tipodocidentidad(id),
  FOREIGN KEY (id_pais) REFERENCES erpo_pais(id),
  FOREIGN KEY (id_provincia) REFERENCES erpo_provincia(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='CLIENTE';

-- Tabla paciente
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_paciente (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_paciente VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_tipodocidentidad INT,
  id_provincia INT,
  id_pais INT,
  id_cliente INT,
  cmp_docidentidad VARCHAR(50) COMMENT 'dni: 2020344576, ruc: 10..., 20..., ',
  cmp_nombre VARCHAR(200),
  cmp_apellido VARCHAR(250),
  cmp_direccion VARCHAR(50) NOT NULL,
  cmp_telefono VARCHAR(15),
  cmp_email VARCHAR(255),
  cmp_antecedentes_medicos TEXT,
  cmp_historial_dental TEXT,
  cmp_cliente binary(1) DEFAULT '0' COMMENT 'determinamos si el paciente es el cliente quien efectuara los pagos',
  cmp_e binary(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_cliente) REFERENCES erpo_cliente(id),
  FOREIGN KEY (id_provincia) REFERENCES erpo_provincia(id),
  FOREIGN KEY (id_pais) REFERENCES erpo_pais(id),
  FOREIGN KEY (id_tipodocidentidad) REFERENCES erpo_tipodocidentidad(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PACIENTE';

-- Tabla unidad de medida
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_umedida (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_umedida VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  cmp_nombre VARCHAR(25) NOT NULL,
  cmp_simbolo VARCHAR(5) NOT NULL,
  cmp_equivalencia VARCHAR(100) NOT NULL,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='UNIDAD DE MEDIDA';

-- Tabla proveedor
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_proveedor (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_proveedor VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_pais INT,
  cmp_razon_social VARCHAR(100) NOT NULL,
  cmp_nombre_comercial VARCHAR(100),
  cmp_ruc VARCHAR(11) NOT NULL UNIQUE,
  cmp_telefono VARCHAR(15) NOT NULL,
  cmp_email VARCHAR(50) NOT NULL,
  cmp_direccion VARCHAR(255) NOT NULL,
  cmp_pagina_web VARCHAR(100) NOT NULL,
  cmp_gerente VARCHAR(100) NOT NULL,
  cmp_vendedor VARCHAR(100) NOT NULL,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_pais) REFERENCES erpo_pais(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PROVEEDOR';

-- Tabla producto
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_producto (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_producto VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_umedida INT,
  id_proveedor INT,
  cmp_nombre VARCHAR(30) NOT NULL,
  cmp_descripcion TEXT NOT NULL,
  cmp_precio INT NOT NULL,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_umedida) REFERENCES erpo_umedida(id),
  FOREIGN KEY (id_proveedor) REFERENCES erpo_proveedor(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PRODUCTO';

-- Tabla proveedor_producto m:m
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_proveedorproducto (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_proveedorproducto VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_proveedor INT,
  id_producto INT,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_proveedor) REFERENCES erpo_proveedor(id),
  FOREIGN KEY (id_producto) REFERENCES erpo_producto(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PROVEEDOR::PRODUCTO';

-- Tabla stock
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_stock (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_stock VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_producto INT,
  cmp_cantidad INT NOT NULL,
  cmp_fecha_entrada DATETIME NOT NULL,
  cmp_fecha_caducidad DATE NOT NULL,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_producto) REFERENCES erpo_producto(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='STOCK';

-- Tabla stock reserva
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_stockreserva (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_stockreserva VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_producto INT,
  id_stock INT,
  id_cliente INT,
  id_paciente INT,
  cmp_cantidad_reservada INT,
  cmp_fecha_reserva DATE NOT NULL,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_producto) REFERENCES erpo_producto(id),
  FOREIGN KEY (id_stock) REFERENCES erpo_stock(id),
  FOREIGN KEY (id_paciente) REFERENCES erpo_paciente(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='STOCK RESERVA';

-- Tabla personal
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_personal (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_personal VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_provincia INT,
  id_tipodocidentidad INT,
  cmp_nombre VARCHAR(50) NOT NULL,
  cmp_apellido VARCHAR(100) NOT NULL,
  cmp_fecha_nac DATE,
  cmp_t_fijo VARCHAR(12) NOT NULL,
  cmp_t_movil VARCHAR(12) NOT NULL,
  cmp_t_familiar VARCHAR(12) NOT NULL,
  cmp_t_descr_tfamiliar VARCHAR(12) NOT NULL,
  cmp_email VARCHAR(50) NOT NULL UNIQUE,
  cmp_area VARCHAR(30) NOT NULL,
  cmp_cargo VARCHAR(100) NOT NULL,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_provincia) REFERENCES erpo_provincia(id),
  FOREIGN KEY (id_tipodocidentidad) REFERENCES erpo_tipodocidentidad(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PERSONAL';

-- Tabla cita
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_cita (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_cita VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_paciente INT,
  id_stockreserva INT,
  id_personal INT,
  cmp_fecha_cita DATE NOT NULL,
  cmp_diagnostico VARCHAR(30) NOT NULL,
  cmp_descripcion TEXT NOT NULL,
  cmp_tratamientos_realizados VARCHAR(30) NOT NULL,
  cmp_medicamentos_recetados VARCHAR(30) NOT NULL,
  cmp_notas_medicas TEXT NOT NULL,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_paciente) REFERENCES erpo_paciente(id),
  FOREIGN KEY (id_stockreserva) REFERENCES erpo_stockreserva(id),
  FOREIGN KEY (id_personal) REFERENCES erpo_personal(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='CITA';

-- Tabla uso de material
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_usomaterial (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_usomaterial VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_stock INT,
  cmp_detalle_uso_material TEXT NOT NULL,
  cmp_unidad_consumo VARCHAR(15) NOT NULL,
  cmp_fecha_uso DATE NOT NULL,
  cmp_cantidad_uso INT,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_stock) REFERENCES erpo_stock(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='USO MATERIAL';

-- Tabla pagos
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_pagos (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_pagos VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_usomaterial INT,
  cmp_fecha_pago DATE NOT NULL,
  cmp_monto_pago INT NOT NULL,
  cmp_metodo_pago VARCHAR(30) NOT NULL COMMENT 'Efectivo, tarjeta de credito, tarjeta de debito, transferencia bancaria, deposito bancario, cheque',
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_usomaterial) REFERENCES erpo_usomaterial(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PAGOS';

-- Tabla comprobante pago
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_comprobante_pago (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_comprobante_pago VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_pago INT,
  id_cita INT,
  id_producto INT,
  id_proveedor INT,
  id_cliente INT,
  cmp_fecha_emision DATE,
  cmp_monto DECIMAL(10, 2),
  cmp_estaddo_pago VARCHAR(20),
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_pago) REFERENCES erpo_pagos(id),
  FOREIGN KEY (id_cita) REFERENCES erpo_cita(id),
  FOREIGN KEY (id_producto) REFERENCES erpo_producto(id),
  FOREIGN KEY (id_proveedor) REFERENCES erpo_proveedor(id),
  FOREIGN KEY (id_cliente) REFERENCES erpo_cliente(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PAGO';

-- Tabla factura
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_factura (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_factura VARCHAR(20),
  id_comprobante_pago INT,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_comprobante_pago) REFERENCES erpo_comprobante_pago(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='FACTURA';

-- Tabla boleta
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_boleta (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_boleta VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_comprobante INT,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_comprobante) REFERENCES erpo_comprobante_pago(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='BOLETA';

-- Tabla ticket
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_ticket (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_ticket VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_comprobante INT,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_comprobante) REFERENCES erpo_comprobante_pago(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TICKET';

-- Tabla rol
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_rol (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_rol VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  cmp_rol VARCHAR(50) NOT NULL,
  cmp_descripcion VARCHAR(150) NOT NULL,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='ROL';

-- Tabla imgenes dentales
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_imgdentales (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_imgdentales VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_paciente INT,
  cmp_fecha_img DATE NOT NULL,
  cmp_tipo_img VARCHAR(30) NOT NULL COMMENT 'Radiografia, imagen dental, fotografia intraoral',
  cmp_imagen LONGBLOB NOT NULL COMMENT 'Imagenes',
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_paciente) REFERENCES erpo_paciente(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='IMAGENES DENTALES';

-- Tabla usuario de sistema
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_usersistema (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_usersistema VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_personal INT,
  id_rol INT,
  cmp_username VARCHAR(30) NOT NULL UNIQUE,
  cmp_pass VARBINARY(60) NOT NULL COMMENT 'seguridad con hash',
  cmp_fingerprint VARBINARY(60) NOT NULL COMMENT 'seguridad con huella dactilar',
  cmp_e binary(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_personal) REFERENCES erpo_personal(id),
  FOREIGN KEY (id_rol) REFERENCES erpo_rol(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='USUARIO DE SISTEMA';

-- Tabla area
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_area (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_area VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_personal INT COMMENT 'Personal asignado a cada area como dentista, asistente, recepcionista',
  id_cita INT COMMENT 'llevar un registro de las citas programadas para el ingreso a las areas, en citas se va a ver que material va a usar',
  cmp_nombre_area VARCHAR(255) NOT NULL COMMENT 'consultorio 1, consultorio 2, recepcion, laboratorio',
  cmp_descripcion TEXT NOT NULL,
  cmp_ubicacion VARCHAR(100) NOT NULL COMMENT 'En que parte del edificio se encuentra',
  cmp_responsable VARCHAR(100) NOT NULL COMMENT 'El personal responsable del area, como el dentista, gerente de la recepcion, jefe de rrhh',
  cmp_horario VARCHAR(100) NOT NULL COMMENT 'Horario en las que el area opera/esta abierta',
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_personal) REFERENCES erpo_personal(id),
  FOREIGN KEY (id_cita) REFERENCES erpo_cita(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='AREA';

-- Tabla servicio
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_servicio (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_servicio VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_cita INT,
  cmp_nombre_servicio VARCHAR(255) NOT NULL,
  cmp_costo DECIMAL(10, 2) NOT NULL,
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_cita) REFERENCES erpo_cita(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='SERVICIO';

-- Tabla procesos
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_procesos (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_procesos VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  cmp_proceso varchar(100) NOT NULL COMMENT 'proceso u accion realizada',
  cmp_detalle varchar(100) NOT NULL COMMENT 'detalle del proceso',
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PROCESOS';

-- Tabla auditoria
CREATE TABLE IF NOT EXISTS erp_odonto.erpo_auditoria (
  id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
  id_auditoria VARCHAR(20) NOT NULL UNIQUE COMMENT 'Codigo generado por trigger',
  id_usersistema INT COMMENT 'es el usuario quien realizo la acción',
  id_procesos INT COMMENT 'es la accion realizada',
  cmp_fecha_hora TIMESTAMP,
  cmp_ip VARCHAR (40) COMMENT 'este campo controla IPV4 y IPV6',
  cmp_e BINARY(1) DEFAULT '1' COMMENT 'ESTADO 1:active 0:down',
  FOREIGN KEY (id_usersistema) REFERENCES erpo_usersistema(id),
  FOREIGN KEY (id_procesos) REFERENCES erpo_procesos(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='AUDITORIA';
