class AddAttachmentSphotoToShops < ActiveRecord::Migration[5.1]
  def self.up
    change_table :shops do |t|
      t.attachment :sphoto
    end
  end

  def self.down
    remove_attachment :shops, :sphoto
  end
end
