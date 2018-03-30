class AddUserIdToJas < ActiveRecord::Migration[5.1]
  def change
    add_column :jas, :user_id, :integer
  end
end
