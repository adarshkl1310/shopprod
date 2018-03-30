class AddUserIdToYas < ActiveRecord::Migration[5.1]
  def change
    add_column :yas, :user_id, :integer
  end
end
