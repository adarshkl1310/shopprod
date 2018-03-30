class Buysel < ApplicationRecord


	belongs_to :user
	has_many :buyselcms,dependent: :destroy


  has_attached_file :hphoto, styles: { medium: "200x200>", thumb: "150x150>" },:default_url => "/assets/images/Image-Missing.png"

  validates_attachment_content_type :hphoto, content_type: /\Aimage\/.*\z/
  validates_presence_of :product_name, presence:{:message => "product_name can't be blank"}
	validates_presence_of :post_type, presence:{:message => "post_type can't be blank"}
	validates_presence_of :description,presence:{:message => "description can't be blank"}
    	



def self.search(search)
  if search
    self.where("product_name like ?", "%#{search}%")
  else
  self.all
  end
end



end
