class CreateShopcms < ActiveRecord::Migration[5.1]
  def change
    create_table :shopcms do |t|
      t.text :content
      t.references :shop, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
