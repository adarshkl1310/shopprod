class CreateTcms < ActiveRecord::Migration[5.1]
  def change
    create_table :tcms do |t|
      t.text :content
      t.references :tt, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
