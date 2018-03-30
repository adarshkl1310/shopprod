class Ja < ApplicationRecord
	    belongs_to :user
	has_many :jcms, dependent: :destroy


	validates_presence_of :product_name, presence:{:message => "product_name can't be blank"}
	validates_presence_of :post_type, presence:{:message => "post_type can't be blank"}
	validates_presence_of :description,presence:{:message => "description can't be blank"}
  	validates_presence_of :market_type, presence:{:message => "market_type can't be blank"}  	
   
end
