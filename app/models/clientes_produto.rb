class ClientesProduto < ApplicationRecord
	belongs_to :produto
	belongs_to :cliente
end
