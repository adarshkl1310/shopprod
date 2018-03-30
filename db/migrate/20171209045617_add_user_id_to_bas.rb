class AddUserIdToBas < ActiveRecord::Migration[5.1]
  def change
    add_column :bas, :user_id, :integer
  end
end
