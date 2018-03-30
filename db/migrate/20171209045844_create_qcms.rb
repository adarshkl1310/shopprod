class CreateQcms < ActiveRecord::Migration[5.1]
  def change
    create_table :qcms do |t|
      t.text :content
      t.references :qa, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
