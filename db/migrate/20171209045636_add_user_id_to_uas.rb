class AddUserIdToUas < ActiveRecord::Migration[5.1]
  def change
    add_column :uas, :user_id, :integer
  end
end
