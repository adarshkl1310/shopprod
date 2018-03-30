class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :shop_name
      t.string :market_type
      t.string :description 
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :sunday
      t.string :timeing 
      t.string :shop_city
      t.string :shop_country
      t.string :website_link
      t.string :min_order
      t.string :supply_ability
      t.string :delivery_time
      t.string :transportation  

      t.timestamps
    end
  end
end
