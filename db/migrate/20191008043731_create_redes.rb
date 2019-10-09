class CreateRedes < ActiveRecord::Migration[6.0]
  def change
    create_table :redes do |t|
      t.text :nome_rede

      t.timestamps
    end
  end
end
