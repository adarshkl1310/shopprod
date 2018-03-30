class CreateFcms < ActiveRecord::Migration[5.1]
  def change
    create_table :fcms do |t|
      t.text :content
      t.references :fa, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
