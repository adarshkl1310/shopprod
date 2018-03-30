class AddUserIdToComps < ActiveRecord::Migration[5.1]
  def change
    add_column :comps, :user_id, :integer
  end
end
