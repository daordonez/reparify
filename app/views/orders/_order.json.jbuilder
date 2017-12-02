json.extract! order, :id, :fecha_pedido, :valorPedido, :provider_id, :created_at, :updated_at
json.url order_url(order, format: :json)
