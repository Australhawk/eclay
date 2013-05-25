class AddAttachmentImageToWorks < ActiveRecord::Migration
  def self.up
    change_table :works do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :works, :image
  end
end
