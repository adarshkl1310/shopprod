class CreateDcms < ActiveRecord::Migration[5.1]
  def change
    create_table :dcms do |t|
      t.text :content
      t.references :da, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
