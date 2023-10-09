use erp_odonto;

-- Trigger para la tabla erp_odo_rol
DELIMITER |
/*  erp_odo_rol -> id_rol  */
DROP TRIGGER IF EXISTS erp_odo_in_rol;
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

-- Trigger para la tabla erpo_pais
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_pais;
CREATE TRIGGER erp_odo_in_pais 
BEFORE INSERT ON erp_odo_pais FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_pais);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO01-0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END if;
SET NEW.id_pais = COD;
END 
|
DELIMITER ;

-- Trigger para la tabla erpo_prov (tabla provincia)
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_doc_prov;
CREATE TRIGGER erp_odo_in_doc_prov
BEFORE INSERT ON erp_odo_doc_prov FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_doc_prov);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO01-0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END if;
SET NEW.id_doc_prov = COD;
END 
|
DELIMITER ;

-- Trigger para la tabla erpo_identidad
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_doc_identidad;
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


-- Trigger para la tabla erpo_rrhh
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_rrhh;
CREATE TRIGGER erp_odo_in_rrhh
BEFORE INSERT ON erp_odo_rrhh FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_rrhh);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO01-0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END if;
SET NEW.id_rrhh = COD;
END 
|
DELIMITER ;

-- Trigger para la tabla erpo_usersistema
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_doc_usersistema;
CREATE TRIGGER erp_odo_in_doc_usersistema
BEFORE INSERT ON erp_odo_doc_usersistema FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_doc_usersistema);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO01-0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END if;
SET NEW.id_doc_usersistema = COD;
END 
|
DELIMITER ;

-- Trigger para la tabla erp_odo_umedida 
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_umedida;
CREATE TRIGGER erp_odo_in_umedida 
BEFORE INSERT ON erp_odo_umedida FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_umedida);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO01-0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END if;
SET NEW.id_umedida = COD;
END 
|
DELIMITER ;

-- Trigger para la tabla erp_odo_proveedor
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_proveedor;
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

-- Trigger para la tabla erpo_material
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_doc_material;
CREATE TRIGGER erp_odo_in_doc_material
BEFORE INSERT ON erp_odo_doc_material FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_doc_material);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO01-0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END if;
SET NEW.id_doc_material = COD;
END 
|
DELIMITER ;

-- Trigger para la tabla erpo_paciente
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_doc_paciente;
CREATE TRIGGER erp_odo_in_doc_paciente
BEFORE INSERT ON erp_odo_doc_paciente FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_doc_paciente);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO01-0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END if;
SET NEW.id_doc_paciente = COD;
END 
|
DELIMITER ;

-- Trigger para la tabla erpo_servicio
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_doc_servicio;
CREATE TRIGGER erp_odo_in_doc_servicio
BEFORE INSERT ON erp_odo_doc_servicio FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_doc_servicio);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO01-0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END if;
SET NEW.id_doc_servicio = COD;
END 
|
DELIMITER ;

-- Trigger para la tabla erpo_cita
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_doc_cita;
CREATE TRIGGER erp_odo_in_doc_cita
BEFORE INSERT ON erp_odo_doc_cita FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_doc_cita);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO01-0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END if;
SET NEW.id_doc_cita = COD;
END 
|
DELIMITER ;

-- Trigger para la tabla erp_odo_Umaterial
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_Umaterial;
CREATE TRIGGER erp_odo_in_Umaterial
BEFORE INSERT ON erp_odo_Umaterial FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_Umaterial);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
SET NEW.id_Umaterial = COD;
END
|
DELIMITER ;

-- Trigger para la tabla erp_odo_producto
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_producto;
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
DROP TRIGGER IF EXISTS erp_odo_in_stock;
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

-- Trigger para la tabla erp_odo_Historial Medico
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_Hmedico;
CREATE TRIGGER erp_odo_in_Hmedico
BEFORE INSERT ON erp_odo_Hmedico FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_Hmedico);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
SET NEW.id_Hmedico = COD;
END
|
DELIMITER ;

-- Trigger para la tabla erp_odo_facturas
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_facturas;
CREATE TRIGGER erp_odo_in_facturas
BEFORE INSERT ON erp_odo_facturas FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_facturas);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
SET NEW.id_facturas = COD;
END
|
DELIMITER ;

-- Trigger para la tabla erp_odo_pagos
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_pagos;
CREATE TRIGGER erp_odo_in_pagos
BEFORE INSERT ON erp_odo_pagos FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_pagos);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
SET NEW.id_pagos = COD;
END
|
DELIMITER ;


-- Trigger para la tabla erp_odo_imgDentales
DELIMITER |
DROP TRIGGER IF EXISTS erp_odo_in_imgDentales;
CREATE TRIGGER erp_odo_in_imgDentales
BEFORE INSERT ON erp_odo_imgDentales FOR EACH ROW BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erp_odo_imgDentales);
    IF(next_id<10) THEN
      SET COD = CONCAT('ERPODO0', next_id);
    ELSE IF(next_id<100) THEN
      SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
SET NEW.id_imgDentales = COD;
END
|
DELIMITER ;
