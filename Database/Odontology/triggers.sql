USE erp_odonto;

-- Trigger para la tabla erpo_pais
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_pais;
CREATE TRIGGER erpo_in_pais
  BEFORE INSERT
  ON erpo_pais
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_pais);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_pais = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_provincia
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_prov;
CREATE TRIGGER erpo_in_prov
  BEFORE INSERT
  ON erpo_provincia
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_provincia);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_provincia = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_docidentidad
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_tipodocidentidad;
CREATE TRIGGER erpo_in_tipodocidentidad
  BEFORE INSERT
  ON erpo_tipodocidentidad
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_tipodocidentidad);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_tipodocidentidad = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_empresa
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_empresa;
CREATE TRIGGER erpo_in_empresa
  BEFORE INSERT
  ON erpo_empresa
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_empresa);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_empresa = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_cliente
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_cliente;
CREATE TRIGGER erpo_in_cliente
  BEFORE INSERT
  ON erpo_cliente
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_cliente);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_cliente = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_paciente
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_paciente;
CREATE TRIGGER erpo_in_paciente
  BEFORE INSERT
  ON erpo_paciente
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_paciente);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_paciente = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erp_odo_umedida
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_umedida;
CREATE TRIGGER erpo_in_umedida
  BEFORE INSERT
  ON erpo_umedida
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_umedida);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_umedida = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_proveedor
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_proveedor;
CREATE TRIGGER erpo_in_proveedor
  BEFORE INSERT
  ON erpo_proveedor
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_proveedor);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_proveedor = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_producto
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_producto;
CREATE TRIGGER erpo_in_producto
  BEFORE INSERT
  ON erpo_producto
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_producto);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-000', next_id);
  ELSEIF (next_id < 100) THEN
    SET cod = CONCAT('ERPODO01-00', next_id);
  ELSEIF (next_id < 1000) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSEIF (next_id < 10000) THEN
    SET cod = CONCAT('ERPODO01-', next_id);
  ELSE
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Se ha alcanzado el límite de 9999 datos en la tabla erpo_producto';
  END IF;
  SET new.id_producto = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_proveedorproducto
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_proveedorproducto;
CREATE TRIGGER erpo_in_proveedorproducto
  BEFORE INSERT
  ON erpo_proveedorproducto
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_proveedorproducto);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_proveedorproducto = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_stock
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_stock;
CREATE TRIGGER erpo_in_stock
  BEFORE INSERT
  ON erpo_stock
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_stock);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_stock = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_stockreserva
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_stockreserva;
CREATE TRIGGER erpo_in_stockreserva
  BEFORE INSERT
  ON erpo_stockreserva
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_stockreserva);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_stockreserva = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_personal
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_personal;
CREATE TRIGGER erpo_in_personal
  BEFORE INSERT
  ON erpo_personal
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_personal);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_personal = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_cita
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_cita;
CREATE TRIGGER erpo_in_cita
  BEFORE INSERT
  ON erpo_cita
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_cita);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_cita = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_usomaterial
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_usomaterial;
CREATE TRIGGER erpo_in_usomaterial
  BEFORE INSERT
  ON erpo_usomaterial
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_usomaterial);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_usomaterial = cod;
END
|
DELIMITER ;

-- Trigger para la tabla pagos
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_pagos;
CREATE TRIGGER erpo_in_pagos
  BEFORE INSERT
  ON erpo_pagos
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_pagos);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_pagos = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_comprobante_pago
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_comprobante_pago;
CREATE TRIGGER erpo_in_comprobante_pago
  BEFORE INSERT
  ON erpo_comprobante_pago
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_comprobante_pago);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_comprobante_pago = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_facturas
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_factura;
CREATE TRIGGER erpo_in_factura
  BEFORE INSERT
  ON erpo_factura
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_factura);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_factura = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_boleta
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_boleta;
CREATE TRIGGER erpo_in_boleta
  BEFORE INSERT
  ON erpo_boleta
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_boleta);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_boleta = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_ticket
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_ticket;
CREATE TRIGGER erpo_in_ticket
  BEFORE INSERT
  ON erpo_ticket
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_ticket);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_ticket  = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_rol
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_rol;
CREATE TRIGGER erpo_in_rol
  BEFORE INSERT
  ON erpo_rol
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_rol);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_rol = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_imgdentales
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_imgdentales;
CREATE TRIGGER erpo_in_imgdentales
  BEFORE INSERT
  ON erpo_imgdentales
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_imgdentales);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_imgdentales = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_usersistema
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_usersistema;
CREATE TRIGGER erpo_in_usersistema
  BEFORE INSERT
  ON erpo_usersistema
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_usersistema);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_usersistema = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_area
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_area;
CREATE TRIGGER erpo_in_area
  BEFORE INSERT
  ON erpo_area
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_area);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_area = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_servicio
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_servicio;
CREATE TRIGGER erpo_in_servicio
  BEFORE INSERT
  ON erpo_servicio
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_servicio);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_servicio = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_procesos
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_procesos;
CREATE TRIGGER erpo_in_procesos
  BEFORE INSERT
  ON erpo_procesos
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_procesos);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-000', next_id);
  ELSEIF (next_id < 100) THEN
    SET cod = CONCAT('ERPODO01-00', next_id);
  ELSEIF (next_id < 1000) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSEIF (next_id < 10000) THEN
    SET cod = CONCAT('ERPODO01-', next_id);
  ELSE
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Se ha alcanzado el límite de 9999 datos en la tabla erpo_procesos';
  END IF;
  SET new.id_procesos = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_auditoria
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_auditoria;
CREATE TRIGGER erpo_in_auditoria
  BEFORE INSERT
  ON erpo_auditoria
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_auditoria);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.id_auditoria = cod;
END
|
DELIMITER ;
