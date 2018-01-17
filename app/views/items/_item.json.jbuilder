json.extract! item, :id, :nombre_art, :descripcion_art, :baseimponible_prec, :ivaimponible_prec, :total_prec, :created_at, :updated_at
json.url item_url(item, format: :json)
