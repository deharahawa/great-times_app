class CreateGrupoMusicals < ActiveRecord::Migration[6.0]
  def change
    create_table :grupo_musicals do |t|
      t.string :nome
      t.string :sobrenome
      t.string :nome_artistico
      t.string :email
      t.string :senha
      t.datetime :data_nascimento
      t.string :endereco
      t.integer :numero
      t.integer :cep
      t.string :cidade
      t.string :estado
      t.string :pais
      t.integer :telefone
      t.text :biografia
      t.float :salario_hora
      t.binary :imagens
      t.binary :video
      t.integer :cpf
      t.integer :pontos

      t.timestamps
    end
  end
end
