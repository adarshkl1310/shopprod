class CreateCcms < ActiveRecord::Migration[5.1]
  def change
    create_table :ccms do |t|
      t.text :content
      t.references :ca, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
