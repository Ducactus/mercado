class Cliente < ApplicationRecord
	has_many :clientes_produtos
	has_many :produtos, through: :clientes_produtos
end
