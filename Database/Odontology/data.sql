USE erp_odonto;

INSERT INTO erpo_pais (cmp_pais, cmp_capital, cmp_codigo_iso, cmp_moneda)
VALUES
  ('Perú', 'Lima', 'PE', 'SOL'),
  ('Bolivia', 'La Paz', 'BO', 'BOL'),
  ('Chile', 'Santiago', 'CL', 'CLP'),
  ('Colombia', 'Bogotá', 'CO', 'COP'),
  ('Ecuador', 'Quito', 'EC', 'USD'),
  ('Paraguay', 'Asunción', 'PY', 'PYG'),
  ('Uruguay', 'Montevideo', 'UY', 'UYU'),
  ('Venezuela', 'Caracas', 'VE', 'VES'),
  ('Argentina', 'Buenos Aires', 'AR', 'ARS');

INSERT INTO erp_odonto.erpo_provincia (id_pais, cmp_codigo_postal, cmp_provincia, cmp_distrito)
VALUES
  (1, '15001', 'Lima', 'Lima'),
  (1, '15002', 'Lima', 'Barranco'),
  (1, '15003', 'Lima', 'Chorrillos'),
  (1, '15004', 'Lima', 'Lince'),
  (1, '15005', 'Lima', 'Miraflores'),
  (1, '15006', 'Lima', 'Rimac'),
  (1, '15007', 'Lima', 'San Isidro'),
  (1, '15008', 'Lima', 'Independencia'),
  (1, '15009', 'Lima', 'San Juan de Lurigancho'),
  (1, '15010', 'Lima', 'San Martin de Porres'),
  (1, '15011', 'Lima', 'San Miguel'),
  (1, '15012', 'Lima', 'Santiago de Surco'),
  (1, '15013', 'Lima', 'Surquillo'),
  (1, '15014', 'Lima', 'La Victoria'),
  (1, '15015', 'Lima', 'Lurigancho'),
  (1, '15016', 'Lima', 'Lurin'),
  (1, '15017', 'Lima', 'Pachacamac'),
  (1, '15018', 'Lima', 'Pucusana'),
  (1, '15019', 'Lima', 'Pueblo Libre'),
  (1, '15020', 'Lima', 'Puente Piedra'),
  (1, '15021', 'Lima', 'Punta Hermosa'),
  (1, '15022', 'Lima', 'Punta Negra'),
  (1, '15023', 'Lima', 'Rímac'),
  (1, '15024', 'Lima', 'San Bartolo'),
  (1, '15025', 'Lima', 'San Borja'),
  (1, '15026', 'Lima', 'San Isidro'),
  (1, '15027', 'Lima', 'San Juan de Lurigancho'),
  (1, '15028', 'Lima', 'San Juan de Miraflores'),
  (1, '08001', 'Cusco', 'Cusco'),
  (1, '08002', 'Cusco', 'Acomayo'),
  (1, '08003', 'Cusco', 'Anta'),
  (1, '08004', 'Cusco', 'Calca'),
  (1, '08005', 'Cusco', 'Canas'),
  (1, '08006', 'Cusco', 'Canchis'),
  (1, '08007', 'Cusco', 'Chumbivilcas'),
  (1, '08008', 'Cusco', 'Espinar'),
  (1, '08009', 'Cusco', 'La Convención'),
  (1, '08010', 'Cusco', 'Paruro'),
  (1, '08011', 'Cusco', 'Paucartambo'),
  (1, '08012', 'Cusco', 'Quispicanchi'),
  (1, '08013', 'Cusco', 'Urubamba');

INSERT INTO erpo_tipodocidentidad (cmp_tipo_docidentidad)
VALUES
  ('DNI'),
  ('RUC'),
  ('CARNET EXTRANJERIA'),
  ('PASAPORTE');
