class CreateTipoEstabelecimentos < ActiveRecord::Migration[6.0]
  def change
    create_table :tipo_estabelecimentos do |t|
      t.text :nome_tipo

      t.timestamps
    end
  end
end
