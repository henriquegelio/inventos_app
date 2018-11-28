class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :descricao
      t.integer :preco

      t.timestamps
    end
  end
end
