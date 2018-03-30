class CreateVcms < ActiveRecord::Migration[5.1]
  def change
    create_table :vcms do |t|
      t.text :content
      t.references :va, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
