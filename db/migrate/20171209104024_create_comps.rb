class CreateComps < ActiveRecord::Migration[5.1]
  def change
    create_table :comps do |t|
       t.string  :company_name
       t.string  :company_phone
       t.string :company_address
       t.integer :year_establishment
       t.integer :total_employees
       t.string  :total_company_revenue
       t.string  :total_annual_revenue
       t.string  :target_contry
       t.string :oem_odm
       t.string :standard_certification
       t.string :success_failure
       t.timestamps
    end
  end
end


     