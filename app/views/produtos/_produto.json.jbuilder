json.extract! produto, :id, :nome, :descricao, :qtd, :valor, :created_at, :updated_at
json.url produto_url(produto, format: :json)
