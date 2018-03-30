class AddUserIdToEas < ActiveRecord::Migration[5.1]
  def change
    add_column :eas, :user_id, :integer
  end
end
