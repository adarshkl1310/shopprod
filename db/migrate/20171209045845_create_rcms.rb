class CreateRcms < ActiveRecord::Migration[5.1]
  def change
    create_table :rcms do |t|
      t.text :content
      t.references :ra, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
