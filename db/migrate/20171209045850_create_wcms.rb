class CreateWcms < ActiveRecord::Migration[5.1]
  def change
    create_table :wcms do |t|
      t.text :content
      t.references :wa, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
