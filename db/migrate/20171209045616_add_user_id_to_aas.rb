class AddUserIdToAas < ActiveRecord::Migration[5.1]
  def change
    add_column :aas, :user_id, :integer
  end
end
