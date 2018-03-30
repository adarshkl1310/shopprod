class AddUserIdToOas < ActiveRecord::Migration[5.1]
  def change
    add_column :oas, :user_id, :integer
  end
end
