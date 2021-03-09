class Produto < ApplicationRecord
	has_many :clientes_produtos
	has_many :clientes, through: :clientes_produtos
end
