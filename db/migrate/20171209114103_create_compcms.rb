class CreateCompcms < ActiveRecord::Migration[5.1]
  def change
    create_table :compcms do |t|
      t.text :content
      t.references :comp, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
