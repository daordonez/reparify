json.extract! customer, :id, :nombre_apellido1, :nombre_apellido2, :nombre_primero, :dni, :direccion_completa, :cp, :formapago_hab, :created_at, :updated_at
json.url customer_url(customer, format: :json)
