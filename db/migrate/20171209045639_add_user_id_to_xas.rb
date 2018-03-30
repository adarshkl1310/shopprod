class AddUserIdToXas < ActiveRecord::Migration[5.1]
  def change
    add_column :xas, :user_id, :integer
  end
end
