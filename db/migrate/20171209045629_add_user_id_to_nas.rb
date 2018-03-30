class AddUserIdToNas < ActiveRecord::Migration[5.1]
  def change
    add_column :nas, :user_id, :integer
  end
end
