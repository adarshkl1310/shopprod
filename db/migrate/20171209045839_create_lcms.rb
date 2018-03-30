class CreateLcms < ActiveRecord::Migration[5.1]
  def change
    create_table :lcms do |t|
      t.text :content
      t.references :la, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
