class CreatePcms < ActiveRecord::Migration[5.1]
  def change
    create_table :pcms do |t|
      t.text :content
      t.references :pa, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
