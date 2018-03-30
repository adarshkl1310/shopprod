class CreateUcms < ActiveRecord::Migration[5.1]
  def change
    create_table :ucms do |t|
      t.text :content
      t.references :ua, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
