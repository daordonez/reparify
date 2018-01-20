json.extract! company, :id, :nombre, :razonsocial, :cif, :direccion, :cp, :telefono, :logo, :active, :created_at, :updated_at
json.url company_url(company, format: :json)
