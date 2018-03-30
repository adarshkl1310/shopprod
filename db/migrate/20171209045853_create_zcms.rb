class CreateZcms < ActiveRecord::Migration[5.1]
  def change
    create_table :zcms do |t|
      t.text :content
      t.references :za, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
