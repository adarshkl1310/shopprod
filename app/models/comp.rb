class Comp < ApplicationRecord

	has_many :compcms , dependent: :destroy
	belongs_to :user

	validates_presence_of :company_name, presence:{:message => "product_name can't be blank"}
	    validates_presence_of :company_phone, presence:{:message => "product_name can't be blank"}
      
	validates_presence_of :company_address,presence:{:message => "description can't be blank"}
    	
      validates_presence_of :year_establishment, presence:{:message => "product_name can't be blank"}
      validates_presence_of :total_employees, presence:{:message => "product_name can't be blank"}
      


end

