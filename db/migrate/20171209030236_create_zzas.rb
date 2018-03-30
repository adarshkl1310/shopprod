class CreateZzas < ActiveRecord::Migration[5.1]
  def change
    create_table :zzas do |t|
      t.string :shop_name
      t.string :offer
      t.string :offerdaystart
      t.string :offerdayend
      t.timestamps
    end
  end
end
