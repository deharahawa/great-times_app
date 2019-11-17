class AddColumnsToPlay < ActiveRecord::Migration[6.0]
  def change
    add_column :plays, :age, :int
    add_column :plays, :intruments_play, :text
    add_column :plays, :instruments_own, :text
    add_column :plays, :social, :text
    add_column :plays, :setlist, :text
  end
end
