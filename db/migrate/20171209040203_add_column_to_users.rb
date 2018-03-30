class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
   	add_column :users, :username,       :string
     add_column :users, :contry,        :string
     add_column :users, :business_type, :string
     add_column :users, :mobile_number, :string
     add_column :users, :city,          :string	
     add_column :users, :industry,      :string
  end
end
