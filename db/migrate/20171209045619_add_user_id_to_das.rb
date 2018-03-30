class AddUserIdToDas < ActiveRecord::Migration[5.1]
  def change
    add_column :das, :user_id, :integer
  end
end
