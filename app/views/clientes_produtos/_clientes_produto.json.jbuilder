json.extract! clientes_produto, :id, :produto_id, :cliente_id, :created_at, :updated_at
json.url clientes_produto_url(clientes_produto, format: :json)
