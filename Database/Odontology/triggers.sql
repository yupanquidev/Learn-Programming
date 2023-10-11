-- Trigger para la tabla erpo_rol
DELIMITER |
/*  erp_odo_rol -> id_rol  */
DROP TRIGGER IF EXISTS erpo_in_rol;
CREATE TRIGGER erpo_in_rol
  BEFORE INSERT
  ON erpo_rol
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erpo_rol);
  IF (next_id < 10) THEN
    SET COD = CONCAT('ERPODO0', next_id);
  ELSE
    IF (next_id < 100) THEN
  	  SET COD = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET NEW.id_rol = COD;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_pais
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_pais;
CREATE TRIGGER erpo_in_pais
  BEFORE INSERT
  ON erpo_pais
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE COD VARCHAR(20);
  SET next_id = (SELECT count(*) + 1 FROM erpo_pais);
  IF (next_id < 10) THEN
  	SET COD = CONCAT('ERPODO01-0', next_id);
  ELSE
  	IF (next_id < 100) THEN
  		SET COD = CONCAT('ERPODO01-', next_id);
  	END IF;
  END if;
  SET NEW.id_pais = COD;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_prov (tabla provincia)
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_prov;
CREATE TRIGGER erpo_in_prov
	BEFORE INSERT
	ON erpo_prov
	FOR EACH ROW
BEGIN
	DECLARE next_id INT;
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_prov);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO01-0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END if;
	SET NEW.id_provincia = COD;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_identidad
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_identidad;
CREATE TRIGGER erpo_in_identidad
	BEFORE INSERT
	ON erpo_docIdentidad
	FOR EACH ROW
BEGIN
	DECLARE next_id INT;
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_docIdentidad);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO01-0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END if;
	SET NEW.id_docidentidad = COD;
END
|
DELIMITER ;


-- Trigger para la tabla erpo_rrhh
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_rrhh;
CREATE TRIGGER erpo_in_rrhh
	BEFORE INSERT
	ON erpo_rrhh
	FOR EACH ROW
BEGIN
	DECLARE next_id INT;
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_rrhh);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO01-0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END if;
	SET NEW.id_rrhh = COD;
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
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_usersistema);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO01-0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END if;
	SET NEW.id_usersistema = COD;
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
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_umedida);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO01-0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END if;
	SET NEW.id_umedida = COD;
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
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_proveedor);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END IF;
	SET NEW.id_proveedor = COD;
END
|

DELIMITER ;

-- Trigger para la tabla erpo_material
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_meterial;
CREATE TRIGGER erpo_in_meterial
	BEFORE INSERT
	ON erpo_material
	FOR EACH ROW
BEGIN
	DECLARE next_id INT;
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_material);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO01-0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END if;
	SET NEW.id_material = COD;
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
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_paciente);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO01-0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END if;
	SET NEW.id_paciente = COD;
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
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_servicio);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO01-0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END if;
	SET NEW.id_servicio = COD;
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
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_cita);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO01-0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END if;
	SET NEW.id_cita = COD;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_Umaterial
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_Umaterial;
CREATE TRIGGER erpo_in_Umaterial
	BEFORE INSERT
	ON erpo_Umaterial
	FOR EACH ROW
BEGIN
	DECLARE next_id INT;
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_Umaterial);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END IF;
	SET NEW.id_Umaterial = COD;
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
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_producto);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END IF;
	SET NEW.id_producto = COD;
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
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_stock);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END IF;
	SET NEW.id_stock = COD;
END
|
DELIMITER ;

-- Trigger para la tabla erp_odo_Historial Medico
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_Hmedico;
CREATE TRIGGER erpo_in_Hmedico
	BEFORE INSERT
	ON erpo_Hmedico
	FOR EACH ROW
BEGIN
	DECLARE next_id INT;
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_Hmedico);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END IF;
	SET NEW.id_Hmedico = COD;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_facturas
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_facturas;
CREATE TRIGGER erpo_in_facturas
	BEFORE INSERT
	ON erpo_facturas
	FOR EACH ROW
BEGIN
	DECLARE next_id INT;
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_facturas);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END IF;
	SET NEW.id_facturas = COD;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_pagos
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_pagos;
CREATE TRIGGER erpo_in_pagos
	BEFORE INSERT
	ON erpo_pagos
	FOR EACH ROW
BEGIN
	DECLARE next_id INT;
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_pagos);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END IF;
	SET NEW.id_pagos = COD;
END
|
DELIMITER ;


-- Trigger para la tabla erpo_imgDentales
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_imgDentales;
CREATE TRIGGER erpo_in_imgDentales
	BEFORE INSERT
	ON erpo_imgDentales
	FOR EACH ROW
BEGIN
	DECLARE next_id INT;
	DECLARE COD VARCHAR(20);
	SET next_id = (SELECT count(*) + 1 FROM erpo_imgDentales);
	IF (next_id < 10) THEN
		SET COD = CONCAT('ERPODO0', next_id);
	ELSE
		IF (next_id < 100) THEN
			SET COD = CONCAT('ERPODO01-', next_id);
		END IF;
	END IF;
	SET NEW.id_imgDentales = COD;
END
|
DELIMITER ;
