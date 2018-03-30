class AddAttachmentHphotoToBuysels < ActiveRecord::Migration[5.1]
  def self.up
    change_table :buysels do |t|
      t.attachment :hphoto
    end
  end

  def self.down
    remove_attachment :buysels, :hphoto
  end
end
