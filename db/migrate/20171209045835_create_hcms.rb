class CreateHcms < ActiveRecord::Migration[5.1]
  def change
    create_table :hcms do |t|
      t.text :content
      t.references :ha, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
