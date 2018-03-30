class AddUserIdToContants < ActiveRecord::Migration[5.1]
  def change
    add_column :contants, :user_id, :integer
  end
end
