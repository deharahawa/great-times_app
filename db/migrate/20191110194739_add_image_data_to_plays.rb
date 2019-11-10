class AddImageDataToPlays < ActiveRecord::Migration[6.0]
  def change
    add_column :plays, :image_data, :text
  end
end
