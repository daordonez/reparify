json.extract! invoice, :id, :customer_id, :item_id, :baseimponible_prec, :ivaimponilbe_prec, :importetotal_prec, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
