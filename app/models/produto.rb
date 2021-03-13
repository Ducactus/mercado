class Produto < ApplicationRecord
	has_many :clientes_produtos
	has_many :clientes, through: :clientes_produtos

	validates :nome,:qtd,:valor, presence: {message: " campo não preenchido."}
	validates :descricao, length: {maximum: 250}
	validates :qtd, numericality: {greater_than_or_equal_to: 1}
	validates :valor, numericality: {greater_than_or_equal_to: 0}
	validates :nome, uniqueness: true
	validates :nome, length: {maximum: 50}

end
