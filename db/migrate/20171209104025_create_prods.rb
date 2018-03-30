class CreateProds < ActiveRecord::Migration[5.1]
  def change
    create_table :prods do |t|
      t.string :product_name
	  t.string :product_price
	
      t.timestamps
    end
  end
end
