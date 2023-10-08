use erp_odonto;

-- Trigger para la tabla erp_odo_rol
DELIMITER |
/*  erp_odo_rol -> id_rol  */
DROP PROCEDURE IF EXISTS erp_odo_in_rol;
CREATE TRIGGER erp_odo_in_rol
BEFORE INSERT ON erp_odo_rol FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) +1 FROM erp_odo_rol);
		IF(next_id<10)THEN
      SET COD = CONCAT('ERPODO01-0',next_id);
    ELSE IF(next_id<100) THEN
      SET COD= CONCAT('ERPODO01-',next_id);
		END IF;
    END IF;
SET NEW.id_rol = COD;
END
|
DELIMITER ;

-- Trigger para la tabla erp_odo_direccion
DELIMITER |
DROP PROCEDURE IF EXISTS erp_odo_in_direccion;
CREATE TRIGGER erp_odo_in_direccion 
BEFORE INSERT ON erp_odo_direccion FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_direccion);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO01-0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END if;
SET NEW.id_direccion = COD;
END 
|
DELIMITER ;

-- Trigger para la tabla erp_odo_doc_identidad
DELIMITER |
DROP PROCEDURE IF EXISTS erp_odo_in_doc_identidad;
CREATE TRIGGER erp_odo_in_doc_identidad
BEFORE INSERT ON erp_odo_doc_identidad FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_doc_identidad);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO01-0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END if;
SET NEW.id_doc_identidad = COD;
END 
|
DELIMITER ;


-- Trigger para la tabla erp_odo_personal
DELIMITER |
DROP PROCEDURE IF EXISTS erp_odo_in_personal;
CREATE TRIGGER erp_odo_in_personal
BEFORE INSERT ON erp_odo_personal FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_personal);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO01-0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END if;
SET NEW.id_personal = COD;
END 
|
DELIMITER ;

-- Trigger para la tabla erp_odo_unidad_medida 
DELIMITER |
DROP PROCEDURE IF EXISTS erp_odo_in_unidad_medida;
CREATE TRIGGER erp_odo_in_unidad_medida 
BEFORE INSERT ON erp_odo_unidad_medida FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_unidad_medida);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO01-0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END if;
SET NEW.id_unidad_medida = COD;
END 
|
DELIMITER ;

-- Trigger para la tabla erp_odo_proveedor
DELIMITER |
DROP PROCEDURE IF EXISTS erp_odo_in_proveedor;
CREATE TRIGGER erp_odo_in_proveedor 
BEFORE INSERT ON erp_odo_proveedor FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_proveedor);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
SET NEW.id_proveedor = COD;
END
|

DELIMITER ;

-- Trigger para la tabla erp_odo_uso_material
DELIMITER |
DROP PROCEDURE IF EXISTS erp_odo_in_uso_material;
CREATE TRIGGER erp_odo_in_uso_material
BEFORE INSERT ON erp_odo_uso_material FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_uso_material);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
SET NEW.id_uso_material = COD;
END
|
DELIMITER ;

-- Trigger para la tabla erp_odo_producto
DELIMITER |
DROP PROCEDURE IF EXISTS erp_odo_in_producto;
CREATE TRIGGER erp_odo_in_producto
BEFORE INSERT ON erp_odo_producto FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_producto);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
SET NEW.id_producto = COD;
END
|
DELIMITER ;

-- Trigger para la tabla erp_odo_stock
DELIMITER |
DROP PROCEDURE IF EXISTS erp_odo_in_stock;
CREATE TRIGGER erp_odo_in_stock
BEFORE INSERT ON erp_odo_stock FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_stock);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
SET NEW.id_stock = COD;
END
|
DELIMITER ;
