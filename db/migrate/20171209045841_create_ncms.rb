class CreateNcms < ActiveRecord::Migration[5.1]
  def change
    create_table :ncms do |t|
      t.text :content
      t.references :na, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
