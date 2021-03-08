class CreateClientesProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes_produtos do |t|
      t.references :cliente, :produto

      t.timestamps
    end
  end
end
