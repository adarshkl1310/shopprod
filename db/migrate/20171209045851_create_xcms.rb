class CreateXcms < ActiveRecord::Migration[5.1]
  def change
    create_table :xcms do |t|
      t.text :content
      t.references :xa, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
