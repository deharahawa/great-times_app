class CreateEstabelecimentos < ActiveRecord::Migration[6.0]
  def change
    create_table :estabelecimentos do |t|
      t.string :nome
      t.string :nome_proprietario
      t.string :email
      t.string :senha
      t.text :descricao
      t.integer :capacidade
      t.string :endereco
      t.integer :numero
      t.string :cidade
      t.string :estado
      t.string :pais
      t.integer :cnpj
      t.integer :telefone
      t.binary :imagem

      t.timestamps
    end
  end
end
