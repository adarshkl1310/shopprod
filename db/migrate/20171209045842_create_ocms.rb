class CreateOcms < ActiveRecord::Migration[5.1]
  def change
    create_table :ocms do |t|
      t.text :content
      t.references :oa, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
