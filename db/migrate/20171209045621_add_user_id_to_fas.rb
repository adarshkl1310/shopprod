class AddUserIdToFas < ActiveRecord::Migration[5.1]
  def change
    add_column :fas, :user_id, :integer
  end
end
