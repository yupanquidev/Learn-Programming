CREATE TABLE ventas (
  id SERIAL PRIMARY KEY NOT NULL,
  fecha_venta DATE NOT NULL,
  detalles_venta JSONB NOT NULL
)

-- Insertar de datos de tipo JSONB
INSERT INTO ventas (fecha_venta, detalles_venta)
VALUES 
  ('2024-02-28', '{
    "cliente": "Juan Perez",
    "total": 26.75,
    "dni": "6775699LP",
    "direccion": {
      "descripcion": "Avenida 6 de Agosto",
      "nro": "7B",
      "ciudad": "Cusco"
    },
    "productos": [
      {
        "nombre": "Producto 1",
        "precio": 10.50,
        "cantidad": 2
      },
      {
        "nombre": "Producto 2",
        "precio": 5.75,
        "cantidad": 1
      }
    ]
  }'),
  ('2024-02-28', '{
    "cliente": "William Perez",
    "total": 15.55,
    "dni": "5663345SC",
    "direccion": {
      "descripcion": "Plaza Tupac Amaru",
      "nro": "1234",
      "ciudad": "Cusco"
    },
    "productos": [
      {
        "nombre": "Producto 1",
        "precio": 10.50,
        "cantidad": 2
      },
      {
        "nombre": "Producto 3",
        "precio": 15.75,
        "cantidad": 1
      }
    ]
  }');

-- Actualizar datos de tipo JSONB
-- Función para actualizar datos de tipo JSONB
-- jsonb_set(jsonb, text[], jsonb[, boolean])
UPDATE ventas SET detalles_venta = ''
WHERE id = 2;
