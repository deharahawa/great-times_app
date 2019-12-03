class AddAttachmentImageToPlays < ActiveRecord::Migration[6.0]
  def self.up
    change_table :plays do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :plays, :image
  end
end
