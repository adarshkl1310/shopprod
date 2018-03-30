class AddUserIdToKas < ActiveRecord::Migration[5.1]
  def change
    add_column :kas, :user_id, :integer
  end
end
