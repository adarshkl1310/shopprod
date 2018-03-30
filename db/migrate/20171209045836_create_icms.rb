class CreateIcms < ActiveRecord::Migration[5.1]
  def change
    create_table :icms do |t|
      t.text :content
      t.references :ii, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
