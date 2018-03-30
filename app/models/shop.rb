class Shop < ApplicationRecord

		belongs_to :user
    has_many :shopcms,dependent: :destroy

     	validates_presence_of :shop_name, presence:{:message => "product_name can't be blank"}
	    validates_presence_of :market_type, presence:{:message => "product_name can't be blank"}
      
	validates_presence_of :description,presence:{:message => "description can't be blank"}
    	
      validates_presence_of :timeing, presence:{:message => "product_name can't be blank"}
      validates_presence_of :shop_city, presence:{:message => "product_name can't be blank"}
      
  validates_presence_of :shop_country,presence:{:message => "description can't be blank"}

       has_attached_file :sphoto, styles: { medium: "200x200>", thumb: "150x150>" },:default_url => ""

  validates_attachment_content_type :sphoto, content_type: /\Aimage\/.*\z/

		def self.search(search)
  if search
    self.where("shop_name like ?", "%#{search}%")
  else
  self.all
  end
end
end


