class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :keywords2
      t.string :keywords3
      t.string :keywords4
      
      t.timestamps
    end
  end
end
