class AddAttachmentUphotoToProfils < ActiveRecord::Migration[5.1]
  def self.up
    change_table :profils do |t|
      t.attachment :uphoto
    end
  end

  def self.down
    remove_attachment :profils, :uphoto
  end
end
