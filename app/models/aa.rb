class Aa < ApplicationRecord

    belongs_to :user
	has_many :acms,dependent: :destroy
    
	
   validates :product_name, :presence => true
   validates :post_type, :presence => true
validates :market_type, :presence => true
validates :description, :presence => true

end


