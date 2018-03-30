class CreateMcms < ActiveRecord::Migration[5.1]
  def change
    create_table :mcms do |t|
      t.text :content
      t.references :ma, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
