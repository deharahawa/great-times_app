class GrupoMusicals < ActiveRecord::Migration[6.0]
  def change
	     change_column :grupo_musicals, :telefone, :integer, limit: 8
  end
end
