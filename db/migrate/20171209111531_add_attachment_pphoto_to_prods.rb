class AddAttachmentPphotoToProds < ActiveRecord::Migration[5.1]
  def self.up
    change_table :prods do |t|
      t.attachment :pphoto
    end
  end

  def self.down
    remove_attachment :prods, :pphoto
  end
end
