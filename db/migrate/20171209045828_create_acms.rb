class CreateAcms < ActiveRecord::Migration[5.1]
  def change
    create_table :acms do |t|
      t.text :content
      t.references :aa, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
