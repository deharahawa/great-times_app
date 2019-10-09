class CreateInstrumentos < ActiveRecord::Migration[6.0]
  def change
    create_table :instrumentos do |t|
      t.text :nome_instrumento

      t.timestamps
    end
  end
end
