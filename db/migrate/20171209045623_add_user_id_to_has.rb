class AddUserIdToHas < ActiveRecord::Migration[5.1]
  def change
    add_column :has, :user_id, :integer
  end
end
