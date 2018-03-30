class AddUserIdToProds < ActiveRecord::Migration[5.1]
  def change
    add_column :prods, :user_id, :integer
  end
end
