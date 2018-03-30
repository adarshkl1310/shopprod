class AddUserIdToZas < ActiveRecord::Migration[5.1]
  def change
    add_column :zas, :user_id, :integer
  end
end
