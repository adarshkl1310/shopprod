class AddUserIdToZzas < ActiveRecord::Migration[5.1]
  def change
    add_column :zzas, :user_id, :integer

     
  end
end
