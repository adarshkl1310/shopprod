class AddUserIdToSas < ActiveRecord::Migration[5.1]
  def change
    add_column :sas, :user_id, :integer
  end
end
