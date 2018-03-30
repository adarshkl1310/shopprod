class CreateBcms < ActiveRecord::Migration[5.1]
  def change
    create_table :bcms do |t|
      t.text :content
      t.references :ba, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
