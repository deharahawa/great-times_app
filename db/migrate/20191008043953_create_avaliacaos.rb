class CreateAvaliacaos < ActiveRecord::Migration[6.0]
  def change
    create_table :avaliacaos do |t|
      t.text :avaliacao_texto

      t.timestamps
    end
  end
end
