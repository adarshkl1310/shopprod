class CreateYcms < ActiveRecord::Migration[5.1]
  def change
    create_table :ycms do |t|
      t.text :content
      t.references :ya, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
