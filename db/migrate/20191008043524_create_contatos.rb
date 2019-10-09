class CreateContatos < ActiveRecord::Migration[6.0]
  def change
    create_table :contatos do |t|
      t.text :nome_contato
      t.text :email_contato
      t.integer :telefone
      t.text :texto

      t.timestamps
    end
  end
end
