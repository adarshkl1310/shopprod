class CreateBuyselcms < ActiveRecord::Migration[5.1]
  def change
    create_table :buyselcms do |t|
      t.text :content
      t.references :buysel, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
