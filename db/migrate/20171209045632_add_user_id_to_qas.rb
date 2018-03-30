class AddUserIdToQas < ActiveRecord::Migration[5.1]
  def change
    add_column :qas, :user_id, :integer
  end
end
