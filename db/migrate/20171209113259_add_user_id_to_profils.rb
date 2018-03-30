class AddUserIdToProfils < ActiveRecord::Migration[5.1]
  def change
    add_column :profils, :user_id, :integer
  end
end
