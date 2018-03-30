class CreateJcms < ActiveRecord::Migration[5.1]
  def change
    create_table :jcms do |t|
      t.text :content
      t.references :ja, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
