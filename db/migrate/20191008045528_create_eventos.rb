class CreateEventos < ActiveRecord::Migration[6.0]
  def change
    create_table :eventos do |t|
      t.string :nome
      t.date :data_evento
      t.string :data_limite_inscricao
      t.integer :capacidade
      t.binary :imagem
      t.text :descricao

      t.timestamps
    end
  end
end
