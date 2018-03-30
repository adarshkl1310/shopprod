class CreateContants < ActiveRecord::Migration[5.1]
  def change
    create_table :contants do |t|
     
      t.string :phone_email_number
      t.string :detail

      t.timestamps

    end
  end
end
