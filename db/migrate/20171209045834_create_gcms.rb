class CreateGcms < ActiveRecord::Migration[5.1]
  def change
    create_table :gcms do |t|
      t.text :content
      t.references :ga, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
