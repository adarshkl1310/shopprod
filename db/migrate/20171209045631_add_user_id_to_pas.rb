class AddUserIdToPas < ActiveRecord::Migration[5.1]
  def change
    add_column :pas, :user_id, :integer
  end
end
