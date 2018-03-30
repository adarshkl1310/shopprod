class CreateProfils < ActiveRecord::Migration[5.1]
  def change
    create_table :profils do |t|
       t.integer :date_of_birth
      t.timestamps
    end
  end
end
