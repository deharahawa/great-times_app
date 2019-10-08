class CreateNegociacaos < ActiveRecord::Migration[6.0]
  def change
    create_table :negociacaos do |t|
      t.float :salario_combinado
      t.string :status_negociacao

      t.timestamps
    end
  end
end
