class CreateGeneros < ActiveRecord::Migration[6.0]
  def change
    create_table :generos do |t|
      t.text :nome_genero

      t.timestamps
    end
  end
end
