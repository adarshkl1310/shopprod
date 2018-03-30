class AddUserIdToVas < ActiveRecord::Migration[5.1]
  def change
    add_column :vas, :user_id, :integer
  end
end
