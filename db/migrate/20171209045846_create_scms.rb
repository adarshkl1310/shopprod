class CreateScms < ActiveRecord::Migration[5.1]
  def change
    create_table :scms do |t|
      t.text :content
      t.references :sa, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
