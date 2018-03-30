class CreateEcms < ActiveRecord::Migration[5.1]
  def change
    create_table :ecms do |t|
      t.text :content
      t.references :ea, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
