class AddUserIdToGas < ActiveRecord::Migration[5.1]
  def change
    add_column :gas, :user_id, :integer
  end
end
