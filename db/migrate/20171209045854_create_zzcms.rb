class CreateZzcms < ActiveRecord::Migration[5.1]
  def change
    create_table :zzcms do |t|
      t.text :content
      
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
