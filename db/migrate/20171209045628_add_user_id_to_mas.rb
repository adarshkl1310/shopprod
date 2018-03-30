class AddUserIdToMas < ActiveRecord::Migration[5.1]
  def change
    add_column :mas, :user_id, :integer
  end
end
