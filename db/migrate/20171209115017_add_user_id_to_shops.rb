class AddUserIdToShops < ActiveRecord::Migration[5.1]
  def change
    add_column :shops, :user_id, :integer
  end
end
