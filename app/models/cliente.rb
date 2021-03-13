class Cliente < ApplicationRecord
	has_many :clientes_produtos
	has_many :produtos, through: :clientes_produtos

	validates :nome,:telefone,:endereco, presence: { message: " Campo deve ser preenchido."}
	validates :nome, uniqueness: { message: " Já cadastrado."}
	validates :telefone, uniqueness: { message: " Já cadastrado."} , on: :update


end
