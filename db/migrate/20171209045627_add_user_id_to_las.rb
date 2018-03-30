class AddUserIdToLas < ActiveRecord::Migration[5.1]
  def change
    add_column :las, :user_id, :integer
  end
end
