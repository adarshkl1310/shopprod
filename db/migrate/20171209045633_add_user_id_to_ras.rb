class AddUserIdToRas < ActiveRecord::Migration[5.1]
  def change
    add_column :ras, :user_id, :integer
  end
end
